// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTasksCollection on Isar {
  IsarCollection<Tasks> get tasks => this.collection();
}

const TasksSchema = CollectionSchema(
  name: r'Tasks',
  id: 5694065972011835967,
  properties: {
    r'focustime': PropertySchema(
      id: 0,
      name: r'focustime',
      type: IsarType.dateTime,
    ),
    r'isdone': PropertySchema(
      id: 1,
      name: r'isdone',
      type: IsarType.bool,
    ),
    r'taskname': PropertySchema(
      id: 2,
      name: r'taskname',
      type: IsarType.string,
    )
  },
  estimateSize: _tasksEstimateSize,
  serialize: _tasksSerialize,
  deserialize: _tasksDeserialize,
  deserializeProp: _tasksDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'username': LinkSchema(
      id: 4922921693196302584,
      name: r'username',
      target: r'Username',
      single: true,
      linkName: r'tasks',
    )
  },
  embeddedSchemas: {},
  getId: _tasksGetId,
  getLinks: _tasksGetLinks,
  attach: _tasksAttach,
  version: '3.1.0+1',
);

int _tasksEstimateSize(
  Tasks object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.taskname.length * 3;
  return bytesCount;
}

void _tasksSerialize(
  Tasks object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.focustime);
  writer.writeBool(offsets[1], object.isdone);
  writer.writeString(offsets[2], object.taskname);
}

Tasks _tasksDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Tasks();
  object.focustime = reader.readDateTime(offsets[0]);
  object.id = id;
  object.isdone = reader.readBool(offsets[1]);
  object.taskname = reader.readString(offsets[2]);
  return object;
}

P _tasksDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tasksGetId(Tasks object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tasksGetLinks(Tasks object) {
  return [object.username];
}

void _tasksAttach(IsarCollection<dynamic> col, Id id, Tasks object) {
  object.id = id;
  object.username.attach(col, col.isar.collection<Username>(), r'username', id);
}

extension TasksQueryWhereSort on QueryBuilder<Tasks, Tasks, QWhere> {
  QueryBuilder<Tasks, Tasks, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TasksQueryWhere on QueryBuilder<Tasks, Tasks, QWhereClause> {
  QueryBuilder<Tasks, Tasks, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Tasks, Tasks, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterWhereClause> idBetween(
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

extension TasksQueryFilter on QueryBuilder<Tasks, Tasks, QFilterCondition> {
  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> focustimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'focustime',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> focustimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'focustime',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> focustimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'focustime',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> focustimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'focustime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> isdoneEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isdone',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> tasknameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> tasknameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taskname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> tasknameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taskname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> tasknameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taskname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> tasknameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'taskname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> tasknameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'taskname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> tasknameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> tasknameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> tasknameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskname',
        value: '',
      ));
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> tasknameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskname',
        value: '',
      ));
    });
  }
}

extension TasksQueryObject on QueryBuilder<Tasks, Tasks, QFilterCondition> {}

extension TasksQueryLinks on QueryBuilder<Tasks, Tasks, QFilterCondition> {
  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> username(
      FilterQuery<Username> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'username');
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> usernameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'username', 0, true, 0, true);
    });
  }
}

extension TasksQuerySortBy on QueryBuilder<Tasks, Tasks, QSortBy> {
  QueryBuilder<Tasks, Tasks, QAfterSortBy> sortByFocustime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focustime', Sort.asc);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> sortByFocustimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focustime', Sort.desc);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> sortByIsdone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isdone', Sort.asc);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> sortByIsdoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isdone', Sort.desc);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> sortByTaskname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskname', Sort.asc);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> sortByTasknameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskname', Sort.desc);
    });
  }
}

extension TasksQuerySortThenBy on QueryBuilder<Tasks, Tasks, QSortThenBy> {
  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenByFocustime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focustime', Sort.asc);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenByFocustimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focustime', Sort.desc);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenByIsdone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isdone', Sort.asc);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenByIsdoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isdone', Sort.desc);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenByTaskname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskname', Sort.asc);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenByTasknameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskname', Sort.desc);
    });
  }
}

extension TasksQueryWhereDistinct on QueryBuilder<Tasks, Tasks, QDistinct> {
  QueryBuilder<Tasks, Tasks, QDistinct> distinctByFocustime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'focustime');
    });
  }

  QueryBuilder<Tasks, Tasks, QDistinct> distinctByIsdone() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isdone');
    });
  }

  QueryBuilder<Tasks, Tasks, QDistinct> distinctByTaskname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taskname', caseSensitive: caseSensitive);
    });
  }
}

extension TasksQueryProperty on QueryBuilder<Tasks, Tasks, QQueryProperty> {
  QueryBuilder<Tasks, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Tasks, DateTime, QQueryOperations> focustimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'focustime');
    });
  }

  QueryBuilder<Tasks, bool, QQueryOperations> isdoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isdone');
    });
  }

  QueryBuilder<Tasks, String, QQueryOperations> tasknameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taskname');
    });
  }
}
