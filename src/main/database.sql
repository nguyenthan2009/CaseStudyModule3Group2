use footballmanager;
create table user(
                     id int auto_increment primary key ,
                     fullname varchar(255) not null ,
                     email varchar(255) not null,
                     password varchar(255) not null
);
create table role(
                     id int auto_increment primary key ,
                     role varchar(255) not null
);
create table user_role(
                          id_user int not null ,
                          id_role int not null,
                          primary key (id_user,id_role),
                          foreign key (id_user) references user(id),
                          foreign key (id_role) references role(id)
);
create table player(
                       id int auto_increment primary key ,
                       namePlayer varchar(255) not null ,
                       bornYear int not null ,
                       address varchar(255) not null ,
                       possition varchar(255) not null ,
                       salary double not null ,
                       status varchar(255) not null
);
create table playerStats(
                            id int auto_increment primary key ,
                            id_player int not null ,
                            height double not null,
                            weight double not null ,
                            bmiIndex double not null ,
                            formIndex int not null ,
                            foreign key (id_player) references player(id)
);
create table weekofplayer(
                             id int auto_increment primary key ,
                             id_player int not null ,
                             week int not null ,
                             bonus double not null ,
                             playtimeofWeek int not null,
                             foreign key (id_player) references player(id)

);
create table coach(
                      id int auto_increment primary key ,
                      nameCoach varchar(255) not null ,
                      bornYear int not null ,
                      address varchar(255) not null ,
                      saraly double not null

);
create table weekofCoach(
                            id int auto_increment primary key ,
                            id_coach int not null ,
                            week int not null ,
                            bonus double not null ,
                            foreign key (id_coach) references coach(id)
);