// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Categoria extends DataClass implements Insertable<Categoria> {
  final int id;
  final String nome;
  Categoria({@required this.id, @required this.nome});
  factory Categoria.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Categoria(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    return map;
  }

  CategoriasCompanion toCompanion(bool nullToAbsent) {
    return CategoriasCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
    );
  }

  factory Categoria.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Categoria(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
    };
  }

  Categoria copyWith({int id, String nome}) => Categoria(
        id: id ?? this.id,
        nome: nome ?? this.nome,
      );
  @override
  String toString() {
    return (StringBuffer('Categoria(')
          ..write('id: $id, ')
          ..write('nome: $nome')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, nome.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Categoria && other.id == this.id && other.nome == this.nome);
}

class CategoriasCompanion extends UpdateCompanion<Categoria> {
  final Value<int> id;
  final Value<String> nome;
  const CategoriasCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
  });
  CategoriasCompanion.insert({
    this.id = const Value.absent(),
    @required String nome,
  }) : nome = Value(nome);
  static Insertable<Categoria> custom({
    Expression<int> id,
    Expression<String> nome,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
    });
  }

  CategoriasCompanion copyWith({Value<int> id, Value<String> nome}) {
    return CategoriasCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriasCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome')
          ..write(')'))
        .toString();
  }
}

class $CategoriasTable extends Categorias
    with TableInfo<$CategoriasTable, Categoria> {
  final GeneratedDatabase _db;
  final String _alias;
  $CategoriasTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  @override
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn(
      'nome',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, nome];
  @override
  $CategoriasTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'categorias';
  @override
  final String actualTableName = 'categorias';
  @override
  VerificationContext validateIntegrity(Insertable<Categoria> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Categoria map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Categoria.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CategoriasTable createAlias(String alias) {
    return $CategoriasTable(_db, alias);
  }
}

class Produto extends DataClass implements Insertable<Produto> {
  final int id;
  final String nome;
  final double preco;
  final DateTime validade;
  Produto(
      {@required this.id,
      @required this.nome,
      @required this.preco,
      this.validade});
  factory Produto.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Produto(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      preco:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}preco']),
      validade: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}validade']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    if (!nullToAbsent || preco != null) {
      map['preco'] = Variable<double>(preco);
    }
    if (!nullToAbsent || validade != null) {
      map['validade'] = Variable<DateTime>(validade);
    }
    return map;
  }

  ProdutosCompanion toCompanion(bool nullToAbsent) {
    return ProdutosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      preco:
          preco == null && nullToAbsent ? const Value.absent() : Value(preco),
      validade: validade == null && nullToAbsent
          ? const Value.absent()
          : Value(validade),
    );
  }

  factory Produto.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Produto(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      preco: serializer.fromJson<double>(json['preco']),
      validade: serializer.fromJson<DateTime>(json['validade']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'preco': serializer.toJson<double>(preco),
      'validade': serializer.toJson<DateTime>(validade),
    };
  }

  Produto copyWith({int id, String nome, double preco, DateTime validade}) =>
      Produto(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        preco: preco ?? this.preco,
        validade: validade ?? this.validade,
      );
  @override
  String toString() {
    return (StringBuffer('Produto(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('preco: $preco, ')
          ..write('validade: $validade')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(nome.hashCode, $mrjc(preco.hashCode, validade.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Produto &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.preco == this.preco &&
          other.validade == this.validade);
}

class ProdutosCompanion extends UpdateCompanion<Produto> {
  final Value<int> id;
  final Value<String> nome;
  final Value<double> preco;
  final Value<DateTime> validade;
  const ProdutosCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.preco = const Value.absent(),
    this.validade = const Value.absent(),
  });
  ProdutosCompanion.insert({
    this.id = const Value.absent(),
    @required String nome,
    @required double preco,
    this.validade = const Value.absent(),
  })  : nome = Value(nome),
        preco = Value(preco);
  static Insertable<Produto> custom({
    Expression<int> id,
    Expression<String> nome,
    Expression<double> preco,
    Expression<DateTime> validade,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (preco != null) 'preco': preco,
      if (validade != null) 'validade': validade,
    });
  }

  ProdutosCompanion copyWith(
      {Value<int> id,
      Value<String> nome,
      Value<double> preco,
      Value<DateTime> validade}) {
    return ProdutosCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      preco: preco ?? this.preco,
      validade: validade ?? this.validade,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (preco.present) {
      map['preco'] = Variable<double>(preco.value);
    }
    if (validade.present) {
      map['validade'] = Variable<DateTime>(validade.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProdutosCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('preco: $preco, ')
          ..write('validade: $validade')
          ..write(')'))
        .toString();
  }
}

class $ProdutosTable extends Produtos with TableInfo<$ProdutosTable, Produto> {
  final GeneratedDatabase _db;
  final String _alias;
  $ProdutosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  @override
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn(
      'nome',
      $tableName,
      false,
    );
  }

  final VerificationMeta _precoMeta = const VerificationMeta('preco');
  GeneratedRealColumn _preco;
  @override
  GeneratedRealColumn get preco => _preco ??= _constructPreco();
  GeneratedRealColumn _constructPreco() {
    return GeneratedRealColumn(
      'preco',
      $tableName,
      false,
    );
  }

  final VerificationMeta _validadeMeta = const VerificationMeta('validade');
  GeneratedDateTimeColumn _validade;
  @override
  GeneratedDateTimeColumn get validade => _validade ??= _constructValidade();
  GeneratedDateTimeColumn _constructValidade() {
    return GeneratedDateTimeColumn(
      'validade',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, nome, preco, validade];
  @override
  $ProdutosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'produtos';
  @override
  final String actualTableName = 'produtos';
  @override
  VerificationContext validateIntegrity(Insertable<Produto> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('preco')) {
      context.handle(
          _precoMeta, preco.isAcceptableOrUnknown(data['preco'], _precoMeta));
    } else if (isInserting) {
      context.missing(_precoMeta);
    }
    if (data.containsKey('validade')) {
      context.handle(_validadeMeta,
          validade.isAcceptableOrUnknown(data['validade'], _validadeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Produto map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Produto.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ProdutosTable createAlias(String alias) {
    return $ProdutosTable(_db, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final String email;
  final String name;
  final String phone;
  final String profilePicture;
  final String detailPicture;
  User(
      {@required this.email,
      @required this.name,
      this.phone,
      @required this.profilePicture,
      @required this.detailPicture});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return User(
      email:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}email']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      phone:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}phone']),
      profilePicture: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}profile_picture']),
      detailPicture: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}detail_picture']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || profilePicture != null) {
      map['profile_picture'] = Variable<String>(profilePicture);
    }
    if (!nullToAbsent || detailPicture != null) {
      map['detail_picture'] = Variable<String>(detailPicture);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      profilePicture: profilePicture == null && nullToAbsent
          ? const Value.absent()
          : Value(profilePicture),
      detailPicture: detailPicture == null && nullToAbsent
          ? const Value.absent()
          : Value(detailPicture),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      email: serializer.fromJson<String>(json['email']),
      name: serializer.fromJson<String>(json['name']),
      phone: serializer.fromJson<String>(json['phone']),
      profilePicture: serializer.fromJson<String>(json['profilePicture']),
      detailPicture: serializer.fromJson<String>(json['detailPicture']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'email': serializer.toJson<String>(email),
      'name': serializer.toJson<String>(name),
      'phone': serializer.toJson<String>(phone),
      'profilePicture': serializer.toJson<String>(profilePicture),
      'detailPicture': serializer.toJson<String>(detailPicture),
    };
  }

  User copyWith(
          {String email,
          String name,
          String phone,
          String profilePicture,
          String detailPicture}) =>
      User(
        email: email ?? this.email,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        profilePicture: profilePicture ?? this.profilePicture,
        detailPicture: detailPicture ?? this.detailPicture,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('email: $email, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('profilePicture: $profilePicture, ')
          ..write('detailPicture: $detailPicture')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      email.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(phone.hashCode,
              $mrjc(profilePicture.hashCode, detailPicture.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.email == this.email &&
          other.name == this.name &&
          other.phone == this.phone &&
          other.profilePicture == this.profilePicture &&
          other.detailPicture == this.detailPicture);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> email;
  final Value<String> name;
  final Value<String> phone;
  final Value<String> profilePicture;
  final Value<String> detailPicture;
  const UsersCompanion({
    this.email = const Value.absent(),
    this.name = const Value.absent(),
    this.phone = const Value.absent(),
    this.profilePicture = const Value.absent(),
    this.detailPicture = const Value.absent(),
  });
  UsersCompanion.insert({
    @required String email,
    @required String name,
    this.phone = const Value.absent(),
    @required String profilePicture,
    @required String detailPicture,
  })  : email = Value(email),
        name = Value(name),
        profilePicture = Value(profilePicture),
        detailPicture = Value(detailPicture);
  static Insertable<User> custom({
    Expression<String> email,
    Expression<String> name,
    Expression<String> phone,
    Expression<String> profilePicture,
    Expression<String> detailPicture,
  }) {
    return RawValuesInsertable({
      if (email != null) 'email': email,
      if (name != null) 'name': name,
      if (phone != null) 'phone': phone,
      if (profilePicture != null) 'profile_picture': profilePicture,
      if (detailPicture != null) 'detail_picture': detailPicture,
    });
  }

  UsersCompanion copyWith(
      {Value<String> email,
      Value<String> name,
      Value<String> phone,
      Value<String> profilePicture,
      Value<String> detailPicture}) {
    return UsersCompanion(
      email: email ?? this.email,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      profilePicture: profilePicture ?? this.profilePicture,
      detailPicture: detailPicture ?? this.detailPicture,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (profilePicture.present) {
      map['profile_picture'] = Variable<String>(profilePicture.value);
    }
    if (detailPicture.present) {
      map['detail_picture'] = Variable<String>(detailPicture.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('email: $email, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('profilePicture: $profilePicture, ')
          ..write('detailPicture: $detailPicture')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  GeneratedTextColumn _email;
  @override
  GeneratedTextColumn get email => _email ??= _constructEmail();
  GeneratedTextColumn _constructEmail() {
    return GeneratedTextColumn('email', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  GeneratedTextColumn _phone;
  @override
  GeneratedTextColumn get phone => _phone ??= _constructPhone();
  GeneratedTextColumn _constructPhone() {
    return GeneratedTextColumn('phone', $tableName, true,
        minTextLength: 1, maxTextLength: 15);
  }

  final VerificationMeta _profilePictureMeta =
      const VerificationMeta('profilePicture');
  GeneratedTextColumn _profilePicture;
  @override
  GeneratedTextColumn get profilePicture =>
      _profilePicture ??= _constructProfilePicture();
  GeneratedTextColumn _constructProfilePicture() {
    return GeneratedTextColumn('profile_picture', $tableName, false,
        minTextLength: 1, maxTextLength: 150);
  }

  final VerificationMeta _detailPictureMeta =
      const VerificationMeta('detailPicture');
  GeneratedTextColumn _detailPicture;
  @override
  GeneratedTextColumn get detailPicture =>
      _detailPicture ??= _constructDetailPicture();
  GeneratedTextColumn _constructDetailPicture() {
    return GeneratedTextColumn('detail_picture', $tableName, false,
        minTextLength: 1, maxTextLength: 150);
  }

  @override
  List<GeneratedColumn> get $columns =>
      [email, name, phone, profilePicture, detailPicture];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email'], _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone'], _phoneMeta));
    }
    if (data.containsKey('profile_picture')) {
      context.handle(
          _profilePictureMeta,
          profilePicture.isAcceptableOrUnknown(
              data['profile_picture'], _profilePictureMeta));
    } else if (isInserting) {
      context.missing(_profilePictureMeta);
    }
    if (data.containsKey('detail_picture')) {
      context.handle(
          _detailPictureMeta,
          detailPicture.isAcceptableOrUnknown(
              data['detail_picture'], _detailPictureMeta));
    } else if (isInserting) {
      context.missing(_detailPictureMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {email};
  @override
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return User.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $CategoriasTable _categorias;
  $CategoriasTable get categorias => _categorias ??= $CategoriasTable(this);
  $ProdutosTable _produtos;
  $ProdutosTable get produtos => _produtos ??= $ProdutosTable(this);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  ProdutoDao _produtoDao;
  ProdutoDao get produtoDao => _produtoDao ??= ProdutoDao(this as AppDatabase);
  CategoriaDao _categoriaDao;
  CategoriaDao get categoriaDao =>
      _categoriaDao ??= CategoriaDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [categorias, produtos, users];
}
