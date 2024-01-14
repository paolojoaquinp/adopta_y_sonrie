// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreedsImpl _$$BreedsImplFromJson(Map<String, dynamic> json) => _$BreedsImpl(
      primary: json['primary'] as String?,
      secondary: json['secondary'],
      mixed: json['mixed'] as bool?,
      unknown: json['unknown'] as bool?,
    );

Map<String, dynamic> _$$BreedsImplToJson(_$BreedsImpl instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'secondary': instance.secondary,
      'mixed': instance.mixed,
      'unknown': instance.unknown,
    };

_$AttributesImpl _$$AttributesImplFromJson(Map<String, dynamic> json) =>
    _$AttributesImpl(
      spayedNeutered: json['spayedNeutered'] as bool?,
      houseTrained: json['houseTrained'] as bool?,
      declawed: json['declawed'],
      specialNeeds: json['specialNeeds'] as bool?,
      shotsCurrent: json['shotsCurrent'] as bool?,
    );

Map<String, dynamic> _$$AttributesImplToJson(_$AttributesImpl instance) =>
    <String, dynamic>{
      'spayedNeutered': instance.spayedNeutered,
      'houseTrained': instance.houseTrained,
      'declawed': instance.declawed,
      'specialNeeds': instance.specialNeeds,
      'shotsCurrent': instance.shotsCurrent,
    };

_$ColorsImpl _$$ColorsImplFromJson(Map<String, dynamic> json) => _$ColorsImpl(
      primary: json['primary'],
      secondary: json['secondary'],
      tertiary: json['tertiary'],
    );

Map<String, dynamic> _$$ColorsImplToJson(_$ColorsImpl instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'secondary': instance.secondary,
      'tertiary': instance.tertiary,
    };

_$ContactImpl _$$ContactImplFromJson(Map<String, dynamic> json) =>
    _$ContactImpl(
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContactImplToJson(_$ContactImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
    };

_$EnvironmentImpl _$$EnvironmentImplFromJson(Map<String, dynamic> json) =>
    _$EnvironmentImpl(
      children: json['children'] as bool?,
      dogs: json['dogs'] as bool?,
      cats: json['cats'] as bool?,
    );

Map<String, dynamic> _$$EnvironmentImplToJson(_$EnvironmentImpl instance) =>
    <String, dynamic>{
      'children': instance.children,
      'dogs': instance.dogs,
      'cats': instance.cats,
    };

_$AnimalLinksImpl _$$AnimalLinksImplFromJson(Map<String, dynamic> json) =>
    _$AnimalLinksImpl(
      self: json['self'] == null
          ? null
          : Next.fromJson(json['self'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : Next.fromJson(json['type'] as Map<String, dynamic>),
      organization: json['organization'] == null
          ? null
          : Next.fromJson(json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnimalLinksImplToJson(_$AnimalLinksImpl instance) =>
    <String, dynamic>{
      'self': instance.self,
      'type': instance.type,
      'organization': instance.organization,
    };

_$NextImpl _$$NextImplFromJson(Map<String, dynamic> json) => _$NextImpl(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$NextImplToJson(_$NextImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
    };

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      small: json['small'] as String?,
      medium: json['medium'] as String?,
      large: json['large'] as String?,
      full: json['full'] as String?,
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
      'full': instance.full,
    };

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      embed: json['embed'] as String?,
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'embed': instance.embed,
    };

_$PaginationLinksImpl _$$PaginationLinksImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationLinksImpl(
      next: json['next'] == null
          ? null
          : Next.fromJson(json['next'] as Map<String, dynamic>),
      previous: json['previous'] == null
          ? null
          : Next.fromJson(json['previous'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginationLinksImplToJson(
        _$PaginationLinksImpl instance) =>
    <String, dynamic>{
      'next': instance.next,
      'previous': instance.previous,
    };
