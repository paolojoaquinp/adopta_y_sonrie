import 'package:freezed_annotation/freezed_annotation.dart';

part 'animal.freezed.dart';
part 'animal.g.dart';

@freezed 
class Animals with _$Animals {
  factory Animals({
    List<Animal>? animals,
    Pagination? pagination,
  }) = _Animals;
}

@freezed
class Animal with _$Animal {
  factory Animal({
    required int id,
    String? organizationId,
    String? url,
    String? type,
    String? species,
    Breeds? breeds,
    Colors? colors,
    String? age,
    String? gender,
    String? size,
    dynamic coat,
    Attributes? attributes,
    Environment? environment,
    List<String>? tags,
    String? name,
    String? description,
    List<Photo>? photos,
    List<Video>? videos,
    String? status,
    String? publishedAt,
    Contact? contact,
    AnimalLinks? links,
  }) = _Animal;

}

@freezed
class Breeds with _$Breeds {
  factory Breeds({
    String?primary,
    dynamic secondary,
    bool? mixed,
    bool? unknown,
  }) = _Breeds;

  factory Breeds.fromJson(Map<String, dynamic> json) => _$BreedsFromJson(json);
}

@freezed
class Attributes with _$Attributes {
  factory Attributes({
    bool? spayedNeutered,
    bool? houseTrained,
    dynamic declawed,
    bool? specialNeeds,
    bool? shotsCurrent,
  }) = _Attributes;

    factory Attributes.fromJson(Map<String, dynamic> json) => _$AttributesFromJson(json);
}


@freezed
class Colors with _$Colors {
  factory Colors({
    dynamic primary,
    dynamic secondary,
    dynamic tertiary,
  }) = _Colors;

  factory Colors.fromJson(Map<String, dynamic> json) => _$ColorsFromJson(json);
}


@freezed
class Contact with _$Contact {
  factory Contact({
    String? email,
    String? phone,
    Address? address,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
}

@freezed
class Address with _$Address {
  factory Address({
    String? address1,
    String? address2,
    String? city,
    String? state,
    String? postcode,
    String? country,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
class Environment with _$Environment {
  factory Environment({
    bool? children,
    bool? dogs,
    bool? cats,
  }) = _Environment;

  factory Environment.fromJson(Map<String, dynamic> json) => _$EnvironmentFromJson(json);
}

@freezed
class AnimalLinks with _$AnimalLinks {
  factory AnimalLinks({
    Next? self,
    Next? type,
    Next? organization,
  }) = _AnimalLinks;

  factory AnimalLinks.fromJson(Map<String, dynamic> json) => _$AnimalLinksFromJson(json);
}

@freezed
class Next with _$Next {
  factory Next({
    String? href,
  }) = _Next;

  factory Next.fromJson(Map<String, dynamic> json) => _$NextFromJson(json);
}

@freezed
class Photo with _$Photo {
  factory Photo({
    String? small,
    String? medium,
    String? large,
    String? full,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}

@freezed
class Video with _$Video {
  factory Video({
    String? embed,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  factory Pagination({
    int? countPerPage,
    int? totalCount,
    int? currentPage,
    int? totalPages,
    PaginationLinks? links,
  }) = _Pagination;

}

@freezed
class PaginationLinks with _$PaginationLinks {
  factory PaginationLinks({
    Next? next,
    Next? previous,
  }) = _PaginationLinks;

  factory PaginationLinks.fromJson(Map<String, dynamic> json) => _$PaginationLinksFromJson(json);
}