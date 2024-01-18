import 'package:adopta_y_sonrie/app/data/services/remote/token_provider.dart';
import 'package:adopta_y_sonrie/app/domain/either/either.dart';
import 'package:adopta_y_sonrie/app/domain/failures/http_request_failure.dart';
import 'package:adopta_y_sonrie/app/domain/models/animal/animal.dart';
import 'package:adopta_y_sonrie/app/domain/repositories/animals_repository.dart';
import 'package:http/http.dart';
import 'package:dio/dio.dart';


class PetFinderApi {
  final Client _client;
  final _dio = Dio();
  final _tokenProvider = TokenProvider();

  PetFinderApi(this._client) {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        options.headers['Authorization'] = 'Bearer ${await TokenProvider().getToken()}';
        print(options.headers);
        return handler.next(options);
      },
    ));
  }


  GetAnimalsFuture getAnimals() async {
    try {
      final response = await _dio.get(
        'https://api.petfinder.com/v2/animals',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      if(response.statusCode == 200) {
        final json = response.data;
        final listAnimals = (json['animals'] as List).map((el) =>
            Animal(
              id: el['id'],
              organizationId: el['organization_id'],
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
              publishedAt: el['published_at'],
              contact: Contact.fromJson(Map<String, dynamic>.from(el['contact'])),
              links: AnimalLinks.fromJson(Map<String, dynamic>.from(el['_links'])),
            )
        ).toList();
        final pagination = Pagination(
              countPerPage: json['pagination']['count_per_page'],
              totalCount: json['pagination']['total_count'],
              currentPage: json['pagination']['current_page'],
              totalPages: json['pagination']['total_pages'],
              links: PaginationLinks(
                next: json['pagination']['_links']['next'] != null ? Next(href: json['pagination']['_links']['next']['href']) : null,
                previous: json['pagination']['_links']['previous'] != null ? Next(href: json['pagination']['_links']['previous']['href']) : null,
              )
          );
        final animals = Animals(animals: listAnimals, pagination: pagination);
        return Either.right(animals);
      }
      if(response.statusCode == 404) {
        throw HttpRequestFailure.notFound();
      }
      if(response.statusCode! >= 500) {
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


  GetAnimalsFuture getAnimalsNext(String? url) async {
    try {
      final parameter = url!.split('v2/animals?page=').last;
      final response = await _dio.get(
        'https://api.petfinder.com/v2/animals',
        queryParameters: {
          'page': parameter,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      if(response.statusCode == 200) {
        final json = response.data;
        final listAnimals = (json['animals'] as List).map((el) =>
            Animal(
              id: el['id'],
              organizationId: el['organization_id'],
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
              publishedAt: el['published_at'],
              contact: Contact.fromJson(Map<String, dynamic>.from(el['contact'])),
              links: AnimalLinks.fromJson(Map<String, dynamic>.from(el['_links'])),
            )
        ).toList();
        final pagination = Pagination(
              countPerPage: json['pagination']['count_per_page'],
              totalCount: json['pagination']['total_count'],
              currentPage: json['pagination']['current_page'],
              totalPages: json['pagination']['total_pages'],
              links: PaginationLinks(
                next: json['pagination']['_links']['next'] != null ? Next(href: json['pagination']['_links']['next']['href']) : null,
                previous: json['pagination']['_links']['previous'] != null ? Next(href: json['pagination']['_links']['previous']['href']) : null,
              )
          );
        final animals = Animals(animals: listAnimals, pagination: pagination);
        return Either.right(animals);
      }
      if(response.statusCode == 404) {
        throw HttpRequestFailure.notFound();
      }
      if(response.statusCode! >= 500) {
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
  GetAnimalsFuture getAnimalsNextByType(String? type, String? url) async {
    try {
      final parameter = url!.split('v2/animals?page=').last;
      final fixed = parameter.split('&type=$type').first;
      final response = await _dio.get(
        'https://api.petfinder.com/v2/animals',
        queryParameters: {
          'page': fixed,
          'type': type,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      if(response.statusCode == 200) {
        final json = response.data;
        final listAnimals = (json['animals'] as List).map((el) =>
            Animal(
              id: el['id'],
              organizationId: el['organization_id'],
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
              publishedAt: el['published_at'],
              contact: Contact.fromJson(Map<String, dynamic>.from(el['contact'])),
              links: AnimalLinks.fromJson(Map<String, dynamic>.from(el['_links'])),
            )
        ).toList();
        final pagination = Pagination(
              countPerPage: json['pagination']['count_per_page'],
              totalCount: json['pagination']['total_count'],
              currentPage: json['pagination']['current_page'],
              totalPages: json['pagination']['total_pages'],
              links: PaginationLinks(
                next: json['pagination']['_links']['next'] != null ? Next(href: json['pagination']['_links']['next']['href']) : null,
                previous: json['pagination']['_links']['previous'] != null ? Next(href: json['pagination']['_links']['previous']['href']) : null,
              )
          );
        final animals = Animals(animals: listAnimals, pagination: pagination);
        return Either.right(animals);
      }
      if(response.statusCode == 404) {
        throw HttpRequestFailure.notFound();
      }
      if(response.statusCode! >= 500) {
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
  GetAnimalsFuture getAnimalsByType(String type, int page) async {
    try {
      final response = await _dio.get(
        'https://api.petfinder.com/v2/animals',
        queryParameters: {
          'type': type,
          'page': page.toString(),
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      if(response.statusCode == 200) {
        final json = response.data;
        final listAnimals = (json['animals'] as List).map((el) =>
            Animal(
              id: el['id'],
              organizationId: el['organization_id'],
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
              publishedAt: el['published_at'],
              contact: Contact.fromJson(Map<String, dynamic>.from(el['contact'])),
              links: AnimalLinks.fromJson(Map<String, dynamic>.from(el['_links'])),
            )
        ).toList();
        final pagination = Pagination(
              countPerPage: json['pagination']['count_per_page'],
              totalCount: json['pagination']['total_count'],
              currentPage: json['pagination']['current_page'],
              totalPages: json['pagination']['total_pages'],
              links: PaginationLinks(
                next: json['pagination']['_links']['next'] != null ? Next(href: json['pagination']['_links']['next']['href']) : null,
                previous: json['pagination']['_links']['previous'] != null ? Next(href: json['pagination']['_links']['previous']['href']) : null,
              )
          );
        final animals = Animals(animals: listAnimals, pagination: pagination);
        return Either.right(animals);
      }
      if(response.statusCode == 404) {
        throw HttpRequestFailure.notFound();
      }
      if(response.statusCode! >= 500) {
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