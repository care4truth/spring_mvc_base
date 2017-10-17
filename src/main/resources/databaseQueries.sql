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


insert into users(username,password,enabled) values('bryan', 'secret' , true);
insert into authorities(username, authority) values ('bryan','ROLE_USER');

insert into users(username,password,enabled) values('chris', 'secret' , true);
insert into authorities(username, authority) values ('chris','ROLE_ADMIN');

insert into authorities(username, authority) values ('chris','ROLE_USER');

alter table users modify password varchar(60) 

update users set password = '$2a$10$dOm0Jux9./H8Hc2tRkEcVePDuBgnHYZr0fk5c66nJ/GRlPzDlbtxi' where username='chris'