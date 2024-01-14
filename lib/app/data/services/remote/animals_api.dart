

import 'dart:convert';

import 'package:adopta_y_sonrie/app/data/services/remote/token_provider.dart';
import 'package:adopta_y_sonrie/app/domain/either/either.dart';
import 'package:adopta_y_sonrie/app/domain/failures/http_request_failure.dart';
import 'package:adopta_y_sonrie/app/domain/models/animal/animal.dart';
import 'package:adopta_y_sonrie/app/domain/repositories/animals_repository.dart';
import 'package:http/http.dart';


class PetFinderApi {
  final Client _client;

  PetFinderApi(this._client);

  GetAnimalsFuture getAnimals(String type, int page) async {
    try {
      final token = await TokenProvider().getToken();
      print(token);
      final response = await _client.get(Uri.parse('https://api.petfinder.com/v2/animals?type=$type&page=${page.toString()}'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      if(response.statusCode == 200) {
        final json = jsonDecode(response.body);
        final listAnimals = (json['animals'] as List).map((el) =>
            Animal(
             id: el['id'],
             organizationId: el['organizationId'],
             url: el['url'],
             type: el['type'],
             species: el['species'],
             breeds: Breeds.fromJson(Map<String, dynamic>.from(el['breeds'])), 
             colors: Colors.fromJson(Map<String, dynamic>.from(el['colors'])),
             age: el['age'],
             gender: el['gender'],
             size: el['size'],
             coat: el['coat'],
             attributes: Attributes.fromJson(Map<String, dynamic>.from(el['attributes'])),
             environment: Environment.fromJson(Map<String, dynamic>.from(el['environment'])),
             tags: (el['tags'] as List).map((e) => e.toString()).toList(),
             name: el['name'],
             description: el['description'],
             photos: (el['photos'] as List).map((e) => Photo.fromJson(Map<String, dynamic>.from(e))).toList(),
             videos: (el['videos'] as List).map((e) => Video.fromJson(Map<String, dynamic>.from(e))).toList(),
             status: el['status'],
             publishedAt: el['publishedAt'],
             contact: Contact.fromJson(Map<String, dynamic>.from(el['contact'])),
             links: AnimalLinks.fromJson(Map<String, dynamic>.from(el['_links'])),)
        ).toList();
        final pagination = Pagination(
              countPerPage: json['pagination']['countPerPage'],
              totalCount: json['pagination']['totalCount'],
              currentPage: json['pagination']['currentPage'],
              totalPages: json['pagination']['totalPages'],
              links: PaginationLinks.fromJson(Map<String, dynamic>.from(json['pagination']['links'])),
          );
        final animals = Animals(animals: listAnimals, pagination: pagination);
        return Either.right(animals);
      }
      if(response.statusCode == 404) {
        throw HttpRequestFailure.notFound();
      }
      if(response.statusCode >= 500) {
        throw HttpRequestFailure.server();
      }
      throw HttpRequestFailure.local();
    } catch (e) {
      late HttpRequestFailure failure;
      if(e is HttpRequestFailure) {
        failure = e;
      } else if (e is ClientException) {
        failure = HttpRequestFailure.network();
      } else {
        failure = HttpRequestFailure.local();
      }
      return Either.left(failure);
    }
  }
}