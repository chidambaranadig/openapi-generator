//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Dog {
  /// Returns a new [Dog] instance.
  Dog({
    required this.className,
    this.color = 'red',
    this.breed,
  });

  String className;

  String color;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? breed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Dog &&
     other.className == className &&
     other.color == color &&
     other.breed == breed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (className.hashCode) +
    (color.hashCode) +
    (breed == null ? 0 : breed!.hashCode);

  @override
  String toString() => 'Dog[className=$className, color=$color, breed=$breed]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'className'] = className;
      _json[r'color'] = color;
    if (breed != null) {
      _json[r'breed'] = breed;
    } else {
      _json[r'breed'] = null;
    }
    return _json;
  }

  /// Returns a new [Dog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Dog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Dog[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Dog[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Dog(
        className: mapValueOfType<String>(json, r'className')!,
        color: mapValueOfType<String>(json, r'color') ?? 'red',
        breed: mapValueOfType<String>(json, r'breed'),
      );
    }
    return null;
  }

  static List<Dog>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Dog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Dog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Dog> mapFromJson(dynamic json) {
    final map = <String, Dog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Dog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Dog-objects as value to a dart map
  static Map<String, List<Dog>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Dog>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Dog.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'className',
  };
}

