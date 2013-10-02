create table foo
( id serial primary key
, uid int8 not null
, constraint unique_uid unique (uid)
);
create table bar
( id serial primary key
, foo_uid int8 not null references foo (uid)
);
