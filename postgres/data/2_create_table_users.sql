create table demo_schema.users
(
    id varchar(36) not null
        constraint user_pk
            primary key,
    registered_at timestamp not null
);

alter table demo_schema.users owner to demo;

create unique index user_id_uindex
	on demo_schema.users (id);

create table demo_schema.user_auths
(
    user_id varchar(36) not null
        constraint user_auth_pk
            primary key
        constraint fk_user_auths_id
            references demo_schema.users,
    login_id varchar(256) not null,
    login_password varchar(256) not null
);

alter table demo_schema.user_auths owner to demo;

create unique index user_auth_user_id_uindex
	on demo_schema.user_auths (user_id);

create unique index user_auths_login_id_uindex
	on demo_schema.user_auths (login_id);

create table demo_schema.user_profiles
(
    user_id varchar(36) not null
        constraint user_profiles_pk
            primary key
        constraint fk_user_profiles_id
            references demo_schema.users,
    name varchar(256) not null,
    mail_address varchar(256) not null
);

alter table demo_schema.user_profiles owner to demo;

create unique index user_profiles_user_id_uindex
	on demo_schema.user_profiles (user_id);

create unique index user_profiles_mail_address_uindex
	on demo_schema.user_profiles (mail_address);
