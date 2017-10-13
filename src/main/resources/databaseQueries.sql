create table users(
  username varchar(50) not null  primary key,
  password varchar(50) not null, 
enabled  boolean not null);

create table authorities ( 
username varchar(50) not null,
authority varchar(500)  not null,
constraint fk_authorities_users
FOREIGN KEY(username) REFERENCES users(username));

create unique index ix_auth_username on authorities (username,authority);


insert into users(username,password,enabled) values("bryan", "secret" , true);
insert into authorities(username, authority) values ("bryan","ROLE_USER");