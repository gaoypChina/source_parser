// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSettingCollection on Isar {
  IsarCollection<Setting> get settings => this.collection();
}

const SettingSchema = CollectionSchema(
  name: r'settings',
  id: -5221820136678325216,
  properties: {
    r'background_color': PropertySchema(
      id: 0,
      name: r'background_color',
      type: IsarType.long,
    ),
    r'cache_duration': PropertySchema(
      id: 1,
      name: r'cache_duration',
      type: IsarType.double,
    ),
    r'color_seed': PropertySchema(
      id: 2,
      name: r'color_seed',
      type: IsarType.long,
    ),
    r'dark_mode': PropertySchema(
      id: 3,
      name: r'dark_mode',
      type: IsarType.bool,
    ),
    r'debug_mode': PropertySchema(
      id: 4,
      name: r'debug_mode',
      type: IsarType.bool,
    ),
    r'e_ink_mode': PropertySchema(
      id: 5,
      name: r'e_ink_mode',
      type: IsarType.bool,
    ),
    r'explore_source': PropertySchema(
      id: 6,
      name: r'explore_source',
      type: IsarType.long,
    ),
    r'font_size': PropertySchema(
      id: 7,
      name: r'font_size',
      type: IsarType.long,
    ),
    r'line_space': PropertySchema(
      id: 8,
      name: r'line_space',
      type: IsarType.double,
    ),
    r'max_concurrent': PropertySchema(
      id: 9,
      name: r'max_concurrent',
      type: IsarType.double,
    ),
    r'shelf_mode': PropertySchema(
      id: 10,
      name: r'shelf_mode',
      type: IsarType.string,
    ),
    r'turning_mode': PropertySchema(
      id: 11,
      name: r'turning_mode',
      type: IsarType.long,
    )
  },
  estimateSize: _settingEstimateSize,
  serialize: _settingSerialize,
  deserialize: _settingDeserialize,
  deserializeProp: _settingDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _settingGetId,
  getLinks: _settingGetLinks,
  attach: _settingAttach,
  version: '3.1.0+1',
);

int _settingEstimateSize(
  Setting object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.shelfMode.length * 3;
  return bytesCount;
}

void _settingSerialize(
  Setting object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.backgroundColor);
  writer.writeDouble(offsets[1], object.cacheDuration);
  writer.writeLong(offsets[2], object.colorSeed);
  writer.writeBool(offsets[3], object.darkMode);
  writer.writeBool(offsets[4], object.debugMode);
  writer.writeBool(offsets[5], object.eInkMode);
  writer.writeLong(offsets[6], object.exploreSource);
  writer.writeLong(offsets[7], object.fontSize);
  writer.writeDouble(offsets[8], object.lineSpace);
  writer.writeDouble(offsets[9], object.maxConcurrent);
  writer.writeString(offsets[10], object.shelfMode);
  writer.writeLong(offsets[11], object.turningMode);
}

Setting _settingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Setting();
  object.backgroundColor = reader.readLong(offsets[0]);
  object.cacheDuration = reader.readDouble(offsets[1]);
  object.colorSeed = reader.readLong(offsets[2]);
  object.darkMode = reader.readBool(offsets[3]);
  object.debugMode = reader.readBool(offsets[4]);
  object.eInkMode = reader.readBool(offsets[5]);
  object.exploreSource = reader.readLong(offsets[6]);
  object.fontSize = reader.readLong(offsets[7]);
  object.id = id;
  object.lineSpace = reader.readDouble(offsets[8]);
  object.maxConcurrent = reader.readDouble(offsets[9]);
  object.shelfMode = reader.readString(offsets[10]);
  object.turningMode = reader.readLong(offsets[11]);
  return object;
}

P _settingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _settingGetId(Setting object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _settingGetLinks(Setting object) {
  return [];
}

void _settingAttach(IsarCollection<dynamic> col, Id id, Setting object) {
  object.id = id;
}

extension SettingQueryWhereSort on QueryBuilder<Setting, Setting, QWhere> {
  QueryBuilder<Setting, Setting, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SettingQueryWhere on QueryBuilder<Setting, Setting, QWhereClause> {
  QueryBuilder<Setting, Setting, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SettingQueryFilter
    on QueryBuilder<Setting, Setting, QFilterCondition> {
  QueryBuilder<Setting, Setting, QAfterFilterCondition> backgroundColorEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'background_color',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      backgroundColorGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'background_color',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> backgroundColorLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'background_color',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> backgroundColorBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'background_color',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> cacheDurationEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cache_duration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      cacheDurationGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cache_duration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> cacheDurationLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cache_duration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> cacheDurationBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cache_duration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> colorSeedEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color_seed',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> colorSeedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'color_seed',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> colorSeedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'color_seed',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> colorSeedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'color_seed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> darkModeEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dark_mode',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> debugModeEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'debug_mode',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> eInkModeEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'e_ink_mode',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> exploreSourceEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'explore_source',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      exploreSourceGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'explore_source',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> exploreSourceLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'explore_source',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> exploreSourceBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'explore_source',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> fontSizeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'font_size',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> fontSizeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'font_size',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> fontSizeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'font_size',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> fontSizeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'font_size',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> lineSpaceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'line_space',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> lineSpaceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'line_space',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> lineSpaceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'line_space',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> lineSpaceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'line_space',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> maxConcurrentEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'max_concurrent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      maxConcurrentGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'max_concurrent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> maxConcurrentLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'max_concurrent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> maxConcurrentBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'max_concurrent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> shelfModeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shelf_mode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> shelfModeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shelf_mode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> shelfModeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shelf_mode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> shelfModeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shelf_mode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> shelfModeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shelf_mode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> shelfModeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shelf_mode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> shelfModeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shelf_mode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> shelfModeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shelf_mode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> shelfModeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shelf_mode',
        value: '',
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> shelfModeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shelf_mode',
        value: '',
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> turningModeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'turning_mode',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> turningModeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'turning_mode',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> turningModeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'turning_mode',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> turningModeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'turning_mode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SettingQueryObject
    on QueryBuilder<Setting, Setting, QFilterCondition> {}

extension SettingQueryLinks
    on QueryBuilder<Setting, Setting, QFilterCondition> {}

extension SettingQuerySortBy on QueryBuilder<Setting, Setting, QSortBy> {
  QueryBuilder<Setting, Setting, QAfterSortBy> sortByBackgroundColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'background_color', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByBackgroundColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'background_color', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByCacheDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cache_duration', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByCacheDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cache_duration', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByColorSeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color_seed', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByColorSeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color_seed', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dark_mode', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByDarkModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dark_mode', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByDebugMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'debug_mode', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByDebugModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'debug_mode', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByEInkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'e_ink_mode', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByEInkModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'e_ink_mode', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByExploreSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'explore_source', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByExploreSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'explore_source', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByFontSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'font_size', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByFontSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'font_size', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByLineSpace() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'line_space', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByLineSpaceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'line_space', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByMaxConcurrent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'max_concurrent', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByMaxConcurrentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'max_concurrent', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByShelfMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shelf_mode', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByShelfModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shelf_mode', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByTurningMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'turning_mode', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByTurningModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'turning_mode', Sort.desc);
    });
  }
}

extension SettingQuerySortThenBy
    on QueryBuilder<Setting, Setting, QSortThenBy> {
  QueryBuilder<Setting, Setting, QAfterSortBy> thenByBackgroundColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'background_color', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByBackgroundColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'background_color', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByCacheDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cache_duration', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByCacheDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cache_duration', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByColorSeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color_seed', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByColorSeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color_seed', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dark_mode', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByDarkModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dark_mode', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByDebugMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'debug_mode', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByDebugModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'debug_mode', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByEInkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'e_ink_mode', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByEInkModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'e_ink_mode', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByExploreSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'explore_source', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByExploreSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'explore_source', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByFontSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'font_size', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByFontSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'font_size', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByLineSpace() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'line_space', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByLineSpaceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'line_space', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByMaxConcurrent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'max_concurrent', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByMaxConcurrentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'max_concurrent', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByShelfMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shelf_mode', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByShelfModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shelf_mode', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByTurningMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'turning_mode', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByTurningModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'turning_mode', Sort.desc);
    });
  }
}

extension SettingQueryWhereDistinct
    on QueryBuilder<Setting, Setting, QDistinct> {
  QueryBuilder<Setting, Setting, QDistinct> distinctByBackgroundColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'background_color');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByCacheDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cache_duration');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByColorSeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'color_seed');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dark_mode');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByDebugMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'debug_mode');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByEInkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'e_ink_mode');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByExploreSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'explore_source');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByFontSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'font_size');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByLineSpace() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'line_space');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByMaxConcurrent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'max_concurrent');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByShelfMode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shelf_mode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByTurningMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'turning_mode');
    });
  }
}

extension SettingQueryProperty
    on QueryBuilder<Setting, Setting, QQueryProperty> {
  QueryBuilder<Setting, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Setting, int, QQueryOperations> backgroundColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'background_color');
    });
  }

  QueryBuilder<Setting, double, QQueryOperations> cacheDurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cache_duration');
    });
  }

  QueryBuilder<Setting, int, QQueryOperations> colorSeedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'color_seed');
    });
  }

  QueryBuilder<Setting, bool, QQueryOperations> darkModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dark_mode');
    });
  }

  QueryBuilder<Setting, bool, QQueryOperations> debugModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'debug_mode');
    });
  }

  QueryBuilder<Setting, bool, QQueryOperations> eInkModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'e_ink_mode');
    });
  }

  QueryBuilder<Setting, int, QQueryOperations> exploreSourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'explore_source');
    });
  }

  QueryBuilder<Setting, int, QQueryOperations> fontSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'font_size');
    });
  }

  QueryBuilder<Setting, double, QQueryOperations> lineSpaceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'line_space');
    });
  }

  QueryBuilder<Setting, double, QQueryOperations> maxConcurrentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'max_concurrent');
    });
  }

  QueryBuilder<Setting, String, QQueryOperations> shelfModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shelf_mode');
    });
  }

  QueryBuilder<Setting, int, QQueryOperations> turningModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'turning_mode');
    });
  }
}
