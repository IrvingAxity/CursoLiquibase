--liquibase formatted sql

--changeset irving:1 labels:example-label context:example-context
--comment: table person creation
create table person (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE person;

--changeset irving:2 labels:example-label context:example-context
--comment: table company creation
create table company (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE company;

--changeset irving:3 labels:example-label context:example-context
--comment: example comment
alter table person add column country varchar(2)
--rollback ALTER TABLE person DROP COLUMN country;

--changeset irving:4 
create table ejemplo(
    id int primary key,
    name varchar(80)
);

--changeset irving:5 
insert into ejemplo (id, name) values (1, "Irving");
insert into ejemplo (id, name) values (2, "Yahir");