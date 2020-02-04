desc gafanhotos;

/*(adicionar colunas)*/
alter table pessoas
add column profissao varchar(10);

/*(apagar colunas)*/
alter table pessoas
drop column profissao;

/*(adicinar uma coluna em uma posição especifica)*/
alter table pessoas
add column profissao varchar(10) after nome;

/*(adicionar uma coluna colocando ela na primeira posição)*/
alter table pessoas
add column codigo int first;

/*modoficar a estrutura de definição*/ /* (not null) = nao ficaar o campo nulo */ /* (default) = auto preechesão*/
alter table pessoas
modify column profissao varchar(20) not null default '';

/*modificar o nome da coluna*/
alter table pessoas
change column profissao prof varchar(20) not null default '';

/*modifica o nome da tabela*/
alter table pessoas
rename to gafanhotos;

select * from pessoas;
select * from gafanhotos;

create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totalaulas int unsigned,
ano year default '2019'
) default charset = utf8;

desc cursos;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);

/*create table if not exists teste (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totalaulas int unsigned,
ano year default '2019'
) default charset = utf8;
apagar as tabelas
drop table if exists teste;*/
