drop table if exists counts;

create table counts (
  id integer not null auto_increment primary key,
  date date not null,
  count integer default 0,
  
  unique key(date)
);

insert into counts(date, count) values('2014-04-01', 53);
insert into counts(date, count) values('2014-04-03', 123);
insert into counts(date, count) values('2014-04-04', 28);
insert into counts(date, count) values('2014-06-10', 14);
insert into counts(date, count) values('2014-06-12', 314);
insert into counts(date, count) values('2014-09-20', 87);
insert into counts(date, count) values('2014-09-22', 91);
insert into counts(date, count) values('2014-11-23', 54);
insert into counts(date, count) values('2014-12-27', 210);
