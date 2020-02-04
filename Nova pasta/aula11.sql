use cadastro;
select * from cursos;

/*orderna a sua tabele pelo tipo que vc escolher*/
select * from cursos
order by nome;

/*orderna o campo nome de baixo para cima*/
select * from cursos
order by nome desc;

/*selecao de todos os registros com os campos que vc pediu, seria mais uma especie de filtração*/
select ano, carga, nome from cursos
order by nome;

/*vc consegue ordernar em multiplas colunas, tipo filtrar todos os cursos de acordo com os seus respctivos anos*/
select ano, carga, nome from cursos
order by ano;

/*vc consegue ordernar tambem por dois campos*/
select ano, carga, nome from cursos
order by ano, nome;

/*filtrar linha=registros*/
select * from cursos
where ano = '2016'
order by nome;

/*filtrar linha=registros, mostrando so o nome e carga*/
select nome, carga from cursos
where ano = '2016'
order by nome;

select nome, descricao, ano from cursos
where ano <= '2015'
order by nome;

select nome, descricao, ano from cursos
where ano >= '2015'
order by nome;

select nome, descricao, ano from cursos
where ano != '2015'
order by nome;

select nome, descricao, ano from cursos
where ano <> '2015'
order by nome;

/*between= entre ex:entre uma coisa e outra, para saber o que estra enre esses dois, como por exemplo: o que esta
entre o ano de 2014 e 2016*/
select nome, ano from cursos
where ano between '2014' and '2016'
order by ano desc, nome;
/*esse comando so ira mostra os regidtros do campo que vc selecionou exemplo: so ira te mostrar os cursos de 2014 e de 2016*/
select nome, descricao, ano from cursos
where ano in (2014, 2016, 2020)
order by ano; 


select * from cursos
where carga > 35 and totaulas < 30;