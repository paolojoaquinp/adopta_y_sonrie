// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Animals {
  List<Animal>? get animals => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimalsCopyWith<Animals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalsCopyWith<$Res> {
  factory $AnimalsCopyWith(Animals value, $Res Function(Animals) then) =
      _$AnimalsCopyWithImpl<$Res, Animals>;
  @useResult
  $Res call({List<Animal>? animals, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$AnimalsCopyWithImpl<$Res, $Val extends Animals>
    implements $AnimalsCopyWith<$Res> {
  _$AnimalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animals = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      animals: freezed == animals
          ? _value.animals
          : animals // ignore: cast_nullable_to_non_nullable
              as List<Animal>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnimalsImplCopyWith<$Res> implements $AnimalsCopyWith<$Res> {
  factory _$$AnimalsImplCopyWith(
          _$AnimalsImpl value, $Res Function(_$AnimalsImpl) then) =
      __$$AnimalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Animal>? animals, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$AnimalsImplCopyWithImpl<$Res>
    extends _$AnimalsCopyWithImpl<$Res, _$AnimalsImpl>
    implements _$$AnimalsImplCopyWith<$Res> {
  __$$AnimalsImplCopyWithImpl(
      _$AnimalsImpl _value, $Res Function(_$AnimalsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animals = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$AnimalsImpl(
      animals: freezed == animals
          ? _value._animals
          : animals // ignore: cast_nullable_to_non_nullable
              as List<Animal>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc

class _$AnimalsImpl implements _Animals {
  _$AnimalsImpl({final List<Animal>? animals, this.pagination})
      : _animals = animals;

  final List<Animal>? _animals;
  @override
  List<Animal>? get animals {
    final value = _animals;
    if (value == null) return null;
    if (_animals is EqualUnmodifiableListView) return _animals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Pagination? pagination;

  @override
  String toString() {
    return 'Animals(animals: $animals, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimalsImpl &&
            const DeepCollectionEquality().equals(other._animals, _animals) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_animals), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimalsImplCopyWith<_$AnimalsImpl> get copyWith =>
      __$$AnimalsImplCopyWithImpl<_$AnimalsImpl>(this, _$identity);
}

abstract class _Animals implements Animals {
  factory _Animals(
      {final List<Animal>? animals,
      final Pagination? pagination}) = _$AnimalsImpl;

  @override
  List<Animal>? get animals;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$AnimalsImplCopyWith<_$AnimalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Animal {
  int get id => throw _privateConstructorUsedError;
  String? get organizationId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get species => throw _privateConstructorUsedError;
  Breeds? get breeds => throw _privateConstructorUsedError;
  Colors? get colors => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  dynamic get coat => throw _privateConstructorUsedError;
  Attributes? get attributes => throw _privateConstructorUsedError;
  Environment? get environment => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Photo>? get photos => throw _privateConstructorUsedError;
  List<Video>? get videos => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get publishedAt => throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;
  AnimalLinks? get links => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimalCopyWith<Animal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalCopyWith<$Res> {
  factory $AnimalCopyWith(Animal value, $Res Function(Animal) then) =
      _$AnimalCopyWithImpl<$Res, Animal>;
  @useResult
  $Res call(
      {int id,
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
      AnimalLinks? links});

  $BreedsCopyWith<$Res>? get breeds;
  $ColorsCopyWith<$Res>? get colors;
  $AttributesCopyWith<$Res>? get attributes;
  $EnvironmentCopyWith<$Res>? get environment;
  $ContactCopyWith<$Res>? get contact;
  $AnimalLinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$AnimalCopyWithImpl<$Res, $Val extends Animal>
    implements $AnimalCopyWith<$Res> {
  _$AnimalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = freezed,
    Object? url = freezed,
    Object? type = freezed,
    Object? species = freezed,
    Object? breeds = freezed,
    Object? colors = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? size = freezed,
    Object? coat = freezed,
    Object? attributes = freezed,
    Object? environment = freezed,
    Object? tags = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? photos = freezed,
    Object? videos = freezed,
    Object? status = freezed,
    Object? publishedAt = freezed,
    Object? contact = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      breeds: freezed == breeds
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as Breeds?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Colors?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      coat: freezed == coat
          ? _value.coat
          : coat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes?,
      environment: freezed == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as AnimalLinks?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BreedsCopyWith<$Res>? get breeds {
    if (_value.breeds == null) {
      return null;
    }

    return $BreedsCopyWith<$Res>(_value.breeds!, (value) {
      return _then(_value.copyWith(breeds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ColorsCopyWith<$Res>? get colors {
    if (_value.colors == null) {
      return null;
    }

    return $ColorsCopyWith<$Res>(_value.colors!, (value) {
      return _then(_value.copyWith(colors: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributesCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $AttributesCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EnvironmentCopyWith<$Res>? get environment {
    if (_value.environment == null) {
      return null;
    }

    return $EnvironmentCopyWith<$Res>(_value.environment!, (value) {
      return _then(_value.copyWith(environment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimalLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $AnimalLinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnimalImplCopyWith<$Res> implements $AnimalCopyWith<$Res> {
  factory _$$AnimalImplCopyWith(
          _$AnimalImpl value, $Res Function(_$AnimalImpl) then) =
      __$$AnimalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
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
      AnimalLinks? links});

  @override
  $BreedsCopyWith<$Res>? get breeds;
  @override
  $ColorsCopyWith<$Res>? get colors;
  @override
  $AttributesCopyWith<$Res>? get attributes;
  @override
  $EnvironmentCopyWith<$Res>? get environment;
  @override
  $ContactCopyWith<$Res>? get contact;
  @override
  $AnimalLinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$$AnimalImplCopyWithImpl<$Res>
    extends _$AnimalCopyWithImpl<$Res, _$AnimalImpl>
    implements _$$AnimalImplCopyWith<$Res> {
  __$$AnimalImplCopyWithImpl(
      _$AnimalImpl _value, $Res Function(_$AnimalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = freezed,
    Object? url = freezed,
    Object? type = freezed,
    Object? species = freezed,
    Object? breeds = freezed,
    Object? colors = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? size = freezed,
    Object? coat = freezed,
    Object? attributes = freezed,
    Object? environment = freezed,
    Object? tags = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? photos = freezed,
    Object? videos = freezed,
    Object? status = freezed,
    Object? publishedAt = freezed,
    Object? contact = freezed,
    Object? links = freezed,
  }) {
    return _then(_$AnimalImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      breeds: freezed == breeds
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as Breeds?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Colors?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      coat: freezed == coat
          ? _value.coat
          : coat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes?,
      environment: freezed == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as AnimalLinks?,
    ));
  }
}

/// @nodoc

class _$AnimalImpl implements _Animal {
  _$AnimalImpl(
      {required this.id,
      this.organizationId,
      this.url,
      this.type,
      this.species,
      this.breeds,
      this.colors,
      this.age,
      this.gender,
      this.size,
      this.coat,
      this.attributes,
      this.environment,
      final List<String>? tags,
      this.name,
      this.description,
      final List<Photo>? photos,
      final List<Video>? videos,
      this.status,
      this.publishedAt,
      this.contact,
      this.links})
      : _tags = tags,
        _photos = photos,
        _videos = videos;

  @override
  final int id;
  @override
  final String? organizationId;
  @override
  final String? url;
  @override
  final String? type;
  @override
  final String? species;
  @override
  final Breeds? breeds;
  @override
  final Colors? colors;
  @override
  final String? age;
  @override
  final String? gender;
  @override
  final String? size;
  @override
  final dynamic coat;
  @override
  final Attributes? attributes;
  @override
  final Environment? environment;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  @override
  final String? description;
  final List<Photo>? _photos;
  @override
  List<Photo>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Video>? _videos;
  @override
  List<Video>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;
  @override
  final String? publishedAt;
  @override
  final Contact? contact;
  @override
  final AnimalLinks? links;

  @override
  String toString() {
    return 'Animal(id: $id, organizationId: $organizationId, url: $url, type: $type, species: $species, breeds: $breeds, colors: $colors, age: $age, gender: $gender, size: $size, coat: $coat, attributes: $attributes, environment: $environment, tags: $tags, name: $name, description: $description, photos: $photos, videos: $videos, status: $status, publishedAt: $publishedAt, contact: $contact, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.breeds, breeds) || other.breeds == breeds) &&
            (identical(other.colors, colors) || other.colors == colors) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other.coat, coat) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            (identical(other.environment, environment) ||
                other.environment == environment) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.links, links) || other.links == links));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        organizationId,
        url,
        type,
        species,
        breeds,
        colors,
        age,
        gender,
        size,
        const DeepCollectionEquality().hash(coat),
        attributes,
        environment,
        const DeepCollectionEquality().hash(_tags),
        name,
        description,
        const DeepCollectionEquality().hash(_photos),
        const DeepCollectionEquality().hash(_videos),
        status,
        publishedAt,
        contact,
        links
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimalImplCopyWith<_$AnimalImpl> get copyWith =>
      __$$AnimalImplCopyWithImpl<_$AnimalImpl>(this, _$identity);
}

abstract class _Animal implements Animal {
  factory _Animal(
      {required final int id,
      final String? organizationId,
      final String? url,
      final String? type,
      final String? species,
      final Breeds? breeds,
      final Colors? colors,
      final String? age,
      final String? gender,
      final String? size,
      final dynamic coat,
      final Attributes? attributes,
      final Environment? environment,
      final List<String>? tags,
      final String? name,
      final String? description,
      final List<Photo>? photos,
      final List<Video>? videos,
      final String? status,
      final String? publishedAt,
      final Contact? contact,
      final AnimalLinks? links}) = _$AnimalImpl;

  @override
  int get id;
  @override
  String? get organizationId;
  @override
  String? get url;
  @override
  String? get type;
  @override
  String? get species;
  @override
  Breeds? get breeds;
  @override
  Colors? get colors;
  @override
  String? get age;
  @override
  String? get gender;
  @override
  String? get size;
  @override
  dynamic get coat;
  @override
  Attributes? get attributes;
  @override
  Environment? get environment;
  @override
  List<String>? get tags;
  @override
  String? get name;
  @override
  String? get description;
  @override
  List<Photo>? get photos;
  @override
  List<Video>? get videos;
  @override
  String? get status;
  @override
  String? get publishedAt;
  @override
  Contact? get contact;
  @override
  AnimalLinks? get links;
  @override
  @JsonKey(ignore: true)
  _$$AnimalImplCopyWith<_$AnimalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Breeds _$BreedsFromJson(Map<String, dynamic> json) {
  return _Breeds.fromJson(json);
}

/// @nodoc
mixin _$Breeds {
  String? get primary => throw _privateConstructorUsedError;
  dynamic get secondary => throw _privateConstructorUsedError;
  bool? get mixed => throw _privateConstructorUsedError;
  bool? get unknown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedsCopyWith<Breeds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedsCopyWith<$Res> {
  factory $BreedsCopyWith(Breeds value, $Res Function(Breeds) then) =
      _$BreedsCopyWithImpl<$Res, Breeds>;
  @useResult
  $Res call({String? primary, dynamic secondary, bool? mixed, bool? unknown});
}

/// @nodoc
class _$BreedsCopyWithImpl<$Res, $Val extends Breeds>
    implements $BreedsCopyWith<$Res> {
  _$BreedsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? mixed = freezed,
    Object? unknown = freezed,
  }) {
    return _then(_value.copyWith(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mixed: freezed == mixed
          ? _value.mixed
          : mixed // ignore: cast_nullable_to_non_nullable
              as bool?,
      unknown: freezed == unknown
          ? _value.unknown
          : unknown // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreedsImplCopyWith<$Res> implements $BreedsCopyWith<$Res> {
  factory _$$BreedsImplCopyWith(
          _$BreedsImpl value, $Res Function(_$BreedsImpl) then) =
      __$$BreedsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? primary, dynamic secondary, bool? mixed, bool? unknown});
}

/// @nodoc
class __$$BreedsImplCopyWithImpl<$Res>
    extends _$BreedsCopyWithImpl<$Res, _$BreedsImpl>
    implements _$$BreedsImplCopyWith<$Res> {
  __$$BreedsImplCopyWithImpl(
      _$BreedsImpl _value, $Res Function(_$BreedsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? mixed = freezed,
    Object? unknown = freezed,
  }) {
    return _then(_$BreedsImpl(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mixed: freezed == mixed
          ? _value.mixed
          : mixed // ignore: cast_nullable_to_non_nullable
              as bool?,
      unknown: freezed == unknown
          ? _value.unknown
          : unknown // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreedsImpl implements _Breeds {
  _$BreedsImpl({this.primary, this.secondary, this.mixed, this.unknown});

  factory _$BreedsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreedsImplFromJson(json);

  @override
  final String? primary;
  @override
  final dynamic secondary;
  @override
  final bool? mixed;
  @override
  final bool? unknown;

  @override
  String toString() {
    return 'Breeds(primary: $primary, secondary: $secondary, mixed: $mixed, unknown: $unknown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedsImpl &&
            (identical(other.primary, primary) || other.primary == primary) &&
            const DeepCollectionEquality().equals(other.secondary, secondary) &&
            (identical(other.mixed, mixed) || other.mixed == mixed) &&
            (identical(other.unknown, unknown) || other.unknown == unknown));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, primary,
      const DeepCollectionEquality().hash(secondary), mixed, unknown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedsImplCopyWith<_$BreedsImpl> get copyWith =>
      __$$BreedsImplCopyWithImpl<_$BreedsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreedsImplToJson(
      this,
    );
  }
}

abstract class _Breeds implements Breeds {
  factory _Breeds(
      {final String? primary,
      final dynamic secondary,
      final bool? mixed,
      final bool? unknown}) = _$BreedsImpl;

  factory _Breeds.fromJson(Map<String, dynamic> json) = _$BreedsImpl.fromJson;

  @override
  String? get primary;
  @override
  dynamic get secondary;
  @override
  bool? get mixed;
  @override
  bool? get unknown;
  @override
  @JsonKey(ignore: true)
  _$$BreedsImplCopyWith<_$BreedsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
mixin _$Attributes {
  bool? get spayedNeutered => throw _privateConstructorUsedError;
  bool? get houseTrained => throw _privateConstructorUsedError;
  dynamic get declawed => throw _privateConstructorUsedError;
  bool? get specialNeeds => throw _privateConstructorUsedError;
  bool? get shotsCurrent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesCopyWith<Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesCopyWith<$Res> {
  factory $AttributesCopyWith(
          Attributes value, $Res Function(Attributes) then) =
      _$AttributesCopyWithImpl<$Res, Attributes>;
  @useResult
  $Res call(
      {bool? spayedNeutered,
      bool? houseTrained,
      dynamic declawed,
      bool? specialNeeds,
      bool? shotsCurrent});
}

/// @nodoc
class _$AttributesCopyWithImpl<$Res, $Val extends Attributes>
    implements $AttributesCopyWith<$Res> {
  _$AttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spayedNeutered = freezed,
    Object? houseTrained = freezed,
    Object? declawed = freezed,
    Object? specialNeeds = freezed,
    Object? shotsCurrent = freezed,
  }) {
    return _then(_value.copyWith(
      spayedNeutered: freezed == spayedNeutered
          ? _value.spayedNeutered
          : spayedNeutered // ignore: cast_nullable_to_non_nullable
              as bool?,
      houseTrained: freezed == houseTrained
          ? _value.houseTrained
          : houseTrained // ignore: cast_nullable_to_non_nullable
              as bool?,
      declawed: freezed == declawed
          ? _value.declawed
          : declawed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      specialNeeds: freezed == specialNeeds
          ? _value.specialNeeds
          : specialNeeds // ignore: cast_nullable_to_non_nullable
              as bool?,
      shotsCurrent: freezed == shotsCurrent
          ? _value.shotsCurrent
          : shotsCurrent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttributesImplCopyWith<$Res>
    implements $AttributesCopyWith<$Res> {
  factory _$$AttributesImplCopyWith(
          _$AttributesImpl value, $Res Function(_$AttributesImpl) then) =
      __$$AttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? spayedNeutered,
      bool? houseTrained,
      dynamic declawed,
      bool? specialNeeds,
      bool? shotsCurrent});
}

/// @nodoc
class __$$AttributesImplCopyWithImpl<$Res>
    extends _$AttributesCopyWithImpl<$Res, _$AttributesImpl>
    implements _$$AttributesImplCopyWith<$Res> {
  __$$AttributesImplCopyWithImpl(
      _$AttributesImpl _value, $Res Function(_$AttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spayedNeutered = freezed,
    Object? houseTrained = freezed,
    Object? declawed = freezed,
    Object? specialNeeds = freezed,
    Object? shotsCurrent = freezed,
  }) {
    return _then(_$AttributesImpl(
      spayedNeutered: freezed == spayedNeutered
          ? _value.spayedNeutered
          : spayedNeutered // ignore: cast_nullable_to_non_nullable
              as bool?,
      houseTrained: freezed == houseTrained
          ? _value.houseTrained
          : houseTrained // ignore: cast_nullable_to_non_nullable
              as bool?,
      declawed: freezed == declawed
          ? _value.declawed
          : declawed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      specialNeeds: freezed == specialNeeds
          ? _value.specialNeeds
          : specialNeeds // ignore: cast_nullable_to_non_nullable
              as bool?,
      shotsCurrent: freezed == shotsCurrent
          ? _value.shotsCurrent
          : shotsCurrent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributesImpl implements _Attributes {
  _$AttributesImpl(
      {this.spayedNeutered,
      this.houseTrained,
      this.declawed,
      this.specialNeeds,
      this.shotsCurrent});

  factory _$AttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributesImplFromJson(json);

  @override
  final bool? spayedNeutered;
  @override
  final bool? houseTrained;
  @override
  final dynamic declawed;
  @override
  final bool? specialNeeds;
  @override
  final bool? shotsCurrent;

  @override
  String toString() {
    return 'Attributes(spayedNeutered: $spayedNeutered, houseTrained: $houseTrained, declawed: $declawed, specialNeeds: $specialNeeds, shotsCurrent: $shotsCurrent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesImpl &&
            (identical(other.spayedNeutered, spayedNeutered) ||
                other.spayedNeutered == spayedNeutered) &&
            (identical(other.houseTrained, houseTrained) ||
                other.houseTrained == houseTrained) &&
            const DeepCollectionEquality().equals(other.declawed, declawed) &&
            (identical(other.specialNeeds, specialNeeds) ||
                other.specialNeeds == specialNeeds) &&
            (identical(other.shotsCurrent, shotsCurrent) ||
                other.shotsCurrent == shotsCurrent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      spayedNeutered,
      houseTrained,
      const DeepCollectionEquality().hash(declawed),
      specialNeeds,
      shotsCurrent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      __$$AttributesImplCopyWithImpl<_$AttributesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributesImplToJson(
      this,
    );
  }
}

abstract class _Attributes implements Attributes {
  factory _Attributes(
      {final bool? spayedNeutered,
      final bool? houseTrained,
      final dynamic declawed,
      final bool? specialNeeds,
      final bool? shotsCurrent}) = _$AttributesImpl;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$AttributesImpl.fromJson;

  @override
  bool? get spayedNeutered;
  @override
  bool? get houseTrained;
  @override
  dynamic get declawed;
  @override
  bool? get specialNeeds;
  @override
  bool? get shotsCurrent;
  @override
  @JsonKey(ignore: true)
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Colors _$ColorsFromJson(Map<String, dynamic> json) {
  return _Colors.fromJson(json);
}

/// @nodoc
mixin _$Colors {
  dynamic get primary => throw _privateConstructorUsedError;
  dynamic get secondary => throw _privateConstructorUsedError;
  dynamic get tertiary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorsCopyWith<Colors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorsCopyWith<$Res> {
  factory $ColorsCopyWith(Colors value, $Res Function(Colors) then) =
      _$ColorsCopyWithImpl<$Res, Colors>;
  @useResult
  $Res call({dynamic primary, dynamic secondary, dynamic tertiary});
}

/// @nodoc
class _$ColorsCopyWithImpl<$Res, $Val extends Colors>
    implements $ColorsCopyWith<$Res> {
  _$ColorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? tertiary = freezed,
  }) {
    return _then(_value.copyWith(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tertiary: freezed == tertiary
          ? _value.tertiary
          : tertiary // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorsImplCopyWith<$Res> implements $ColorsCopyWith<$Res> {
  factory _$$ColorsImplCopyWith(
          _$ColorsImpl value, $Res Function(_$ColorsImpl) then) =
      __$$ColorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic primary, dynamic secondary, dynamic tertiary});
}

/// @nodoc
class __$$ColorsImplCopyWithImpl<$Res>
    extends _$ColorsCopyWithImpl<$Res, _$ColorsImpl>
    implements _$$ColorsImplCopyWith<$Res> {
  __$$ColorsImplCopyWithImpl(
      _$ColorsImpl _value, $Res Function(_$ColorsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? tertiary = freezed,
  }) {
    return _then(_$ColorsImpl(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tertiary: freezed == tertiary
          ? _value.tertiary
          : tertiary // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorsImpl implements _Colors {
  _$ColorsImpl({this.primary, this.secondary, this.tertiary});

  factory _$ColorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorsImplFromJson(json);

  @override
  final dynamic primary;
  @override
  final dynamic secondary;
  @override
  final dynamic tertiary;

  @override
  String toString() {
    return 'Colors(primary: $primary, secondary: $secondary, tertiary: $tertiary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorsImpl &&
            const DeepCollectionEquality().equals(other.primary, primary) &&
            const DeepCollectionEquality().equals(other.secondary, secondary) &&
            const DeepCollectionEquality().equals(other.tertiary, tertiary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(tertiary));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorsImplCopyWith<_$ColorsImpl> get copyWith =>
      __$$ColorsImplCopyWithImpl<_$ColorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorsImplToJson(
      this,
    );
  }
}

abstract class _Colors implements Colors {
  factory _Colors(
      {final dynamic primary,
      final dynamic secondary,
      final dynamic tertiary}) = _$ColorsImpl;

  factory _Colors.fromJson(Map<String, dynamic> json) = _$ColorsImpl.fromJson;

  @override
  dynamic get primary;
  @override
  dynamic get secondary;
  @override
  dynamic get tertiary;
  @override
  @JsonKey(ignore: true)
  _$$ColorsImplCopyWith<_$ColorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call({String? email, String? phone, Address? address});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContactImplCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$ContactImplCopyWith(
          _$ContactImpl value, $Res Function(_$ContactImpl) then) =
      __$$ContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? phone, Address? address});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$ContactImplCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$ContactImpl>
    implements _$$ContactImplCopyWith<$Res> {
  __$$ContactImplCopyWithImpl(
      _$ContactImpl _value, $Res Function(_$ContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
  }) {
    return _then(_$ContactImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactImpl implements _Contact {
  _$ContactImpl({this.email, this.phone, this.address});

  factory _$ContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactImplFromJson(json);

  @override
  final String? email;
  @override
  final String? phone;
  @override
  final Address? address;

  @override
  String toString() {
    return 'Contact(email: $email, phone: $phone, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, phone, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      __$$ContactImplCopyWithImpl<_$ContactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactImplToJson(
      this,
    );
  }
}

abstract class _Contact implements Contact {
  factory _Contact(
      {final String? email,
      final String? phone,
      final Address? address}) = _$ContactImpl;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$ContactImpl.fromJson;

  @override
  String? get email;
  @override
  String? get phone;
  @override
  Address? get address;
  @override
  @JsonKey(ignore: true)
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String? get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postcode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String? address1,
      String? address2,
      String? city,
      String? state,
      String? postcode,
      String? country});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? address1,
      String? address2,
      String? city,
      String? state,
      String? postcode,
      String? country});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
  }) {
    return _then(_$AddressImpl(
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  _$AddressImpl(
      {this.address1,
      this.address2,
      this.city,
      this.state,
      this.postcode,
      this.country});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String? address1;
  @override
  final String? address2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? postcode;
  @override
  final String? country;

  @override
  String toString() {
    return 'Address(address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, address1, address2, city, state, postcode, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  factory _Address(
      {final String? address1,
      final String? address2,
      final String? city,
      final String? state,
      final String? postcode,
      final String? country}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String? get address1;
  @override
  String? get address2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get postcode;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Environment _$EnvironmentFromJson(Map<String, dynamic> json) {
  return _Environment.fromJson(json);
}

/// @nodoc
mixin _$Environment {
  bool? get children => throw _privateConstructorUsedError;
  bool? get dogs => throw _privateConstructorUsedError;
  bool? get cats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnvironmentCopyWith<Environment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentCopyWith<$Res> {
  factory $EnvironmentCopyWith(
          Environment value, $Res Function(Environment) then) =
      _$EnvironmentCopyWithImpl<$Res, Environment>;
  @useResult
  $Res call({bool? children, bool? dogs, bool? cats});
}

/// @nodoc
class _$EnvironmentCopyWithImpl<$Res, $Val extends Environment>
    implements $EnvironmentCopyWith<$Res> {
  _$EnvironmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = freezed,
    Object? dogs = freezed,
    Object? cats = freezed,
  }) {
    return _then(_value.copyWith(
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as bool?,
      dogs: freezed == dogs
          ? _value.dogs
          : dogs // ignore: cast_nullable_to_non_nullable
              as bool?,
      cats: freezed == cats
          ? _value.cats
          : cats // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnvironmentImplCopyWith<$Res>
    implements $EnvironmentCopyWith<$Res> {
  factory _$$EnvironmentImplCopyWith(
          _$EnvironmentImpl value, $Res Function(_$EnvironmentImpl) then) =
      __$$EnvironmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? children, bool? dogs, bool? cats});
}

/// @nodoc
class __$$EnvironmentImplCopyWithImpl<$Res>
    extends _$EnvironmentCopyWithImpl<$Res, _$EnvironmentImpl>
    implements _$$EnvironmentImplCopyWith<$Res> {
  __$$EnvironmentImplCopyWithImpl(
      _$EnvironmentImpl _value, $Res Function(_$EnvironmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = freezed,
    Object? dogs = freezed,
    Object? cats = freezed,
  }) {
    return _then(_$EnvironmentImpl(
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as bool?,
      dogs: freezed == dogs
          ? _value.dogs
          : dogs // ignore: cast_nullable_to_non_nullable
              as bool?,
      cats: freezed == cats
          ? _value.cats
          : cats // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnvironmentImpl implements _Environment {
  _$EnvironmentImpl({this.children, this.dogs, this.cats});

  factory _$EnvironmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnvironmentImplFromJson(json);

  @override
  final bool? children;
  @override
  final bool? dogs;
  @override
  final bool? cats;

  @override
  String toString() {
    return 'Environment(children: $children, dogs: $dogs, cats: $cats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnvironmentImpl &&
            (identical(other.children, children) ||
                other.children == children) &&
            (identical(other.dogs, dogs) || other.dogs == dogs) &&
            (identical(other.cats, cats) || other.cats == cats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, children, dogs, cats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnvironmentImplCopyWith<_$EnvironmentImpl> get copyWith =>
      __$$EnvironmentImplCopyWithImpl<_$EnvironmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnvironmentImplToJson(
      this,
    );
  }
}

abstract class _Environment implements Environment {
  factory _Environment(
      {final bool? children,
      final bool? dogs,
      final bool? cats}) = _$EnvironmentImpl;

  factory _Environment.fromJson(Map<String, dynamic> json) =
      _$EnvironmentImpl.fromJson;

  @override
  bool? get children;
  @override
  bool? get dogs;
  @override
  bool? get cats;
  @override
  @JsonKey(ignore: true)
  _$$EnvironmentImplCopyWith<_$EnvironmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimalLinks _$AnimalLinksFromJson(Map<String, dynamic> json) {
  return _AnimalLinks.fromJson(json);
}

/// @nodoc
mixin _$AnimalLinks {
  Next? get self => throw _privateConstructorUsedError;
  Next? get type => throw _privateConstructorUsedError;
  Next? get organization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimalLinksCopyWith<AnimalLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalLinksCopyWith<$Res> {
  factory $AnimalLinksCopyWith(
          AnimalLinks value, $Res Function(AnimalLinks) then) =
      _$AnimalLinksCopyWithImpl<$Res, AnimalLinks>;
  @useResult
  $Res call({Next? self, Next? type, Next? organization});

  $NextCopyWith<$Res>? get self;
  $NextCopyWith<$Res>? get type;
  $NextCopyWith<$Res>? get organization;
}

/// @nodoc
class _$AnimalLinksCopyWithImpl<$Res, $Val extends AnimalLinks>
    implements $AnimalLinksCopyWith<$Res> {
  _$AnimalLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? type = freezed,
    Object? organization = freezed,
  }) {
    return _then(_value.copyWith(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as Next?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Next?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Next?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NextCopyWith<$Res>? get self {
    if (_value.self == null) {
      return null;
    }

    return $NextCopyWith<$Res>(_value.self!, (value) {
      return _then(_value.copyWith(self: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NextCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $NextCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NextCopyWith<$Res>? get organization {
    if (_value.organization == null) {
      return null;
    }

    return $NextCopyWith<$Res>(_value.organization!, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnimalLinksImplCopyWith<$Res>
    implements $AnimalLinksCopyWith<$Res> {
  factory _$$AnimalLinksImplCopyWith(
          _$AnimalLinksImpl value, $Res Function(_$AnimalLinksImpl) then) =
      __$$AnimalLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Next? self, Next? type, Next? organization});

  @override
  $NextCopyWith<$Res>? get self;
  @override
  $NextCopyWith<$Res>? get type;
  @override
  $NextCopyWith<$Res>? get organization;
}

/// @nodoc
class __$$AnimalLinksImplCopyWithImpl<$Res>
    extends _$AnimalLinksCopyWithImpl<$Res, _$AnimalLinksImpl>
    implements _$$AnimalLinksImplCopyWith<$Res> {
  __$$AnimalLinksImplCopyWithImpl(
      _$AnimalLinksImpl _value, $Res Function(_$AnimalLinksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? type = freezed,
    Object? organization = freezed,
  }) {
    return _then(_$AnimalLinksImpl(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as Next?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Next?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Next?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimalLinksImpl implements _AnimalLinks {
  _$AnimalLinksImpl({this.self, this.type, this.organization});

  factory _$AnimalLinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimalLinksImplFromJson(json);

  @override
  final Next? self;
  @override
  final Next? type;
  @override
  final Next? organization;

  @override
  String toString() {
    return 'AnimalLinks(self: $self, type: $type, organization: $organization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimalLinksImpl &&
            (identical(other.self, self) || other.self == self) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.organization, organization) ||
                other.organization == organization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, self, type, organization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimalLinksImplCopyWith<_$AnimalLinksImpl> get copyWith =>
      __$$AnimalLinksImplCopyWithImpl<_$AnimalLinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimalLinksImplToJson(
      this,
    );
  }
}

abstract class _AnimalLinks implements AnimalLinks {
  factory _AnimalLinks(
      {final Next? self,
      final Next? type,
      final Next? organization}) = _$AnimalLinksImpl;

  factory _AnimalLinks.fromJson(Map<String, dynamic> json) =
      _$AnimalLinksImpl.fromJson;

  @override
  Next? get self;
  @override
  Next? get type;
  @override
  Next? get organization;
  @override
  @JsonKey(ignore: true)
  _$$AnimalLinksImplCopyWith<_$AnimalLinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Next _$NextFromJson(Map<String, dynamic> json) {
  return _Next.fromJson(json);
}

/// @nodoc
mixin _$Next {
  String? get href => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NextCopyWith<Next> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextCopyWith<$Res> {
  factory $NextCopyWith(Next value, $Res Function(Next) then) =
      _$NextCopyWithImpl<$Res, Next>;
  @useResult
  $Res call({String? href});
}

/// @nodoc
class _$NextCopyWithImpl<$Res, $Val extends Next>
    implements $NextCopyWith<$Res> {
  _$NextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
  }) {
    return _then(_value.copyWith(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NextImplCopyWith<$Res> implements $NextCopyWith<$Res> {
  factory _$$NextImplCopyWith(
          _$NextImpl value, $Res Function(_$NextImpl) then) =
      __$$NextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? href});
}

/// @nodoc
class __$$NextImplCopyWithImpl<$Res>
    extends _$NextCopyWithImpl<$Res, _$NextImpl>
    implements _$$NextImplCopyWith<$Res> {
  __$$NextImplCopyWithImpl(_$NextImpl _value, $Res Function(_$NextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
  }) {
    return _then(_$NextImpl(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NextImpl implements _Next {
  _$NextImpl({this.href});

  factory _$NextImpl.fromJson(Map<String, dynamic> json) =>
      _$$NextImplFromJson(json);

  @override
  final String? href;

  @override
  String toString() {
    return 'Next(href: $href)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextImpl &&
            (identical(other.href, href) || other.href == href));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextImplCopyWith<_$NextImpl> get copyWith =>
      __$$NextImplCopyWithImpl<_$NextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NextImplToJson(
      this,
    );
  }
}

abstract class _Next implements Next {
  factory _Next({final String? href}) = _$NextImpl;

  factory _Next.fromJson(Map<String, dynamic> json) = _$NextImpl.fromJson;

  @override
  String? get href;
  @override
  @JsonKey(ignore: true)
  _$$NextImplCopyWith<_$NextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  String? get small => throw _privateConstructorUsedError;
  String? get medium => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;
  String? get full => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res, Photo>;
  @useResult
  $Res call({String? small, String? medium, String? large, String? full});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
    Object? full = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      full: freezed == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoImplCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$PhotoImplCopyWith(
          _$PhotoImpl value, $Res Function(_$PhotoImpl) then) =
      __$$PhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? small, String? medium, String? large, String? full});
}

/// @nodoc
class __$$PhotoImplCopyWithImpl<$Res>
    extends _$PhotoCopyWithImpl<$Res, _$PhotoImpl>
    implements _$$PhotoImplCopyWith<$Res> {
  __$$PhotoImplCopyWithImpl(
      _$PhotoImpl _value, $Res Function(_$PhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
    Object? full = freezed,
  }) {
    return _then(_$PhotoImpl(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      full: freezed == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoImpl implements _Photo {
  _$PhotoImpl({this.small, this.medium, this.large, this.full});

  factory _$PhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoImplFromJson(json);

  @override
  final String? small;
  @override
  final String? medium;
  @override
  final String? large;
  @override
  final String? full;

  @override
  String toString() {
    return 'Photo(small: $small, medium: $medium, large: $large, full: $full)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.full, full) || other.full == full));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, medium, large, full);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      __$$PhotoImplCopyWithImpl<_$PhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoImplToJson(
      this,
    );
  }
}

abstract class _Photo implements Photo {
  factory _Photo(
      {final String? small,
      final String? medium,
      final String? large,
      final String? full}) = _$PhotoImpl;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$PhotoImpl.fromJson;

  @override
  String? get small;
  @override
  String? get medium;
  @override
  String? get large;
  @override
  String? get full;
  @override
  @JsonKey(ignore: true)
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  String? get embed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call({String? embed});
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? embed = freezed,
  }) {
    return _then(_value.copyWith(
      embed: freezed == embed
          ? _value.embed
          : embed // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoImplCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? embed});
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$VideoCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? embed = freezed,
  }) {
    return _then(_$VideoImpl(
      embed: freezed == embed
          ? _value.embed
          : embed // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoImpl implements _Video {
  _$VideoImpl({this.embed});

  factory _$VideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoImplFromJson(json);

  @override
  final String? embed;

  @override
  String toString() {
    return 'Video(embed: $embed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            (identical(other.embed, embed) || other.embed == embed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, embed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoImplToJson(
      this,
    );
  }
}

abstract class _Video implements Video {
  factory _Video({final String? embed}) = _$VideoImpl;

  factory _Video.fromJson(Map<String, dynamic> json) = _$VideoImpl.fromJson;

  @override
  String? get embed;
  @override
  @JsonKey(ignore: true)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Pagination {
  int? get countPerPage => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  PaginationLinks? get links => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call(
      {int? countPerPage,
      int? totalCount,
      int? currentPage,
      int? totalPages,
      PaginationLinks? links});

  $PaginationLinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countPerPage = freezed,
    Object? totalCount = freezed,
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      countPerPage: freezed == countPerPage
          ? _value.countPerPage
          : countPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PaginationLinks?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $PaginationLinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? countPerPage,
      int? totalCount,
      int? currentPage,
      int? totalPages,
      PaginationLinks? links});

  @override
  $PaginationLinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countPerPage = freezed,
    Object? totalCount = freezed,
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? links = freezed,
  }) {
    return _then(_$PaginationImpl(
      countPerPage: freezed == countPerPage
          ? _value.countPerPage
          : countPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PaginationLinks?,
    ));
  }
}

/// @nodoc

class _$PaginationImpl implements _Pagination {
  _$PaginationImpl(
      {this.countPerPage,
      this.totalCount,
      this.currentPage,
      this.totalPages,
      this.links});

  @override
  final int? countPerPage;
  @override
  final int? totalCount;
  @override
  final int? currentPage;
  @override
  final int? totalPages;
  @override
  final PaginationLinks? links;

  @override
  String toString() {
    return 'Pagination(countPerPage: $countPerPage, totalCount: $totalCount, currentPage: $currentPage, totalPages: $totalPages, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.countPerPage, countPerPage) ||
                other.countPerPage == countPerPage) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.links, links) || other.links == links));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, countPerPage, totalCount, currentPage, totalPages, links);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);
}

abstract class _Pagination implements Pagination {
  factory _Pagination(
      {final int? countPerPage,
      final int? totalCount,
      final int? currentPage,
      final int? totalPages,
      final PaginationLinks? links}) = _$PaginationImpl;

  @override
  int? get countPerPage;
  @override
  int? get totalCount;
  @override
  int? get currentPage;
  @override
  int? get totalPages;
  @override
  PaginationLinks? get links;
  @override
  @JsonKey(ignore: true)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationLinks _$PaginationLinksFromJson(Map<String, dynamic> json) {
  return _PaginationLinks.fromJson(json);
}

/// @nodoc
mixin _$PaginationLinks {
  Next? get next => throw _privateConstructorUsedError;
  Next? get previous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationLinksCopyWith<PaginationLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationLinksCopyWith<$Res> {
  factory $PaginationLinksCopyWith(
          PaginationLinks value, $Res Function(PaginationLinks) then) =
      _$PaginationLinksCopyWithImpl<$Res, PaginationLinks>;
  @useResult
  $Res call({Next? next, Next? previous});

  $NextCopyWith<$Res>? get next;
  $NextCopyWith<$Res>? get previous;
}

/// @nodoc
class _$PaginationLinksCopyWithImpl<$Res, $Val extends PaginationLinks>
    implements $PaginationLinksCopyWith<$Res> {
  _$PaginationLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_value.copyWith(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as Next?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as Next?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NextCopyWith<$Res>? get next {
    if (_value.next == null) {
      return null;
    }

    return $NextCopyWith<$Res>(_value.next!, (value) {
      return _then(_value.copyWith(next: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NextCopyWith<$Res>? get previous {
    if (_value.previous == null) {
      return null;
    }

    return $NextCopyWith<$Res>(_value.previous!, (value) {
      return _then(_value.copyWith(previous: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginationLinksImplCopyWith<$Res>
    implements $PaginationLinksCopyWith<$Res> {
  factory _$$PaginationLinksImplCopyWith(_$PaginationLinksImpl value,
          $Res Function(_$PaginationLinksImpl) then) =
      __$$PaginationLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Next? next, Next? previous});

  @override
  $NextCopyWith<$Res>? get next;
  @override
  $NextCopyWith<$Res>? get previous;
}

/// @nodoc
class __$$PaginationLinksImplCopyWithImpl<$Res>
    extends _$PaginationLinksCopyWithImpl<$Res, _$PaginationLinksImpl>
    implements _$$PaginationLinksImplCopyWith<$Res> {
  __$$PaginationLinksImplCopyWithImpl(
      _$PaginationLinksImpl _value, $Res Function(_$PaginationLinksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_$PaginationLinksImpl(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as Next?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as Next?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationLinksImpl implements _PaginationLinks {
  _$PaginationLinksImpl({this.next, this.previous});

  factory _$PaginationLinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationLinksImplFromJson(json);

  @override
  final Next? next;
  @override
  final Next? previous;

  @override
  String toString() {
    return 'PaginationLinks(next: $next, previous: $previous)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationLinksImpl &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, next, previous);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationLinksImplCopyWith<_$PaginationLinksImpl> get copyWith =>
      __$$PaginationLinksImplCopyWithImpl<_$PaginationLinksImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationLinksImplToJson(
      this,
    );
  }
}

abstract class _PaginationLinks implements PaginationLinks {
  factory _PaginationLinks({final Next? next, final Next? previous}) =
      _$PaginationLinksImpl;

  factory _PaginationLinks.fromJson(Map<String, dynamic> json) =
      _$PaginationLinksImpl.fromJson;

  @override
  Next? get next;
  @override
  Next? get previous;
  @override
  @JsonKey(ignore: true)
  _$$PaginationLinksImplCopyWith<_$PaginationLinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
