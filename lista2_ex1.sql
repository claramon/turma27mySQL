create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id int (5) not null auto_increment,
especie varchar (30) not null,
classe varchar (40) not null,
primary key (id)
);

create table tb_personagens(
id int (5) not null auto_increment,
nome varchar (20) not null,
ataque int (10) not null,
defesa int (10) not null,
hp int (10) not null,
habilidade varchar (40) not null,
classe_id int (10) not null,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

INSERT INTO tb_classe (especie, classe) VALUES 
("elfo", "arqueiro"),
("humano", "curandeiro"),
( "humano", "mago-branco"),
("bardo", "musico"),
("orc", "berseker");

select * from tb_classe;

select * from tb_personagens;

INSERT INTO tb_personagens (nome, ataque, defesa, hp, habilidade,classe_id) VALUES 
("Valir",4000,2000,6000, "curar",1),
("Lucas",3500,1500,7000, "tiro perfurante",2),
("Gedione",5000,2000,3000, "grito de furia",3),
("Clara",3000,1800,5000, "Raio de Luz",4),
("Felipe",1000,2000,3000, "fogo",5),
("Marcos",2000,2000,7000, "ar",3),
("Guilherme",4000,5000,3000, "poção",4),
("José",5000,2000,1000, "água",2);

Select * from tb_personagens where ataque > 2000;

Select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens
    inner join tb_classe on tb_classe.id = tb_personagens.classe_id;
    
 select * from tb_personagens
    inner join tb_classe on tb_classe.id = tb_personagens.classe_id  
    where classe="mago-branco";