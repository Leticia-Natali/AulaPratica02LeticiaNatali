create database atividade_praticaII_leticianatali;

use atividade_praticaII_leticianatali;

create table clientes (
	pk_clientes int primary key not null auto_increment,
    nome_completo_clientes varchar(100) not null,
    cpf_clientes varchar(11) not null,
    email_clientes varchar(200) not null,
    telefone_clientes varchar(14) not null
);

create table funcionarios (
	pk_funcionarios int primary key not null auto_increment,
    nome_completo_funcionarios varchar(100) not null,
    email_funcionarios varchar(200) not null,
    telefone_funcionarios varchar(14)
);

create table solicitacoes (
	pk_solicitacoes int primary key not null auto_increment,
    descricao_do_servico_solicitacoes varchar(500) not null,
    urgencia_solicitacoes enum('baixa', 'media', 'alta'),
    status_solicitacoes enum('pendente', 'em andamento', 'finalizada'),
    data_de_abertura datetime,
    fk_clientes int not null,
    foreign key (fk_clientes) references clientes(pk_clientes),
    fk_funcionarios int not null,
    foreign key (fk_funcionarios) references funcionarios(pk_funcionarios)
);

insert into clientes (nome_completo_clientes, cpf_clientes, email_clientes, telefone_clientes)
values ('Leticia Amabile Natali', '00011122233', 'leticianatali@gmail.com', '47 98888-7777');
	  
insert into clientes (nome_completo_clientes, cpf_clientes, email_clientes, telefone_clientes)
values  ('Ed Carlos Natali', '33322211100', 'edcarlosnatali@gmail.com', '47 98816-3029');

select * from funcionarios;

insert into funcionarios (nome_completo_funcionarios, email_funcionarios, telefone_funcionarios)
values ('Gustavo Henrique Natali', 'gustavonatali@gmail.com', '47 92222-5555'),
       ('Guilherme Vinicius Natali', 'guilhermenatali@gmail.com', '47 96666-4444');
       
insert into solicitacoes ( descricao_do_servico_solicitacoes, urgencia_solicitacoes, status_solicitacoes, data_de_abertura)
values ('blablablablablablablablablbalbalbalbalablabalbalbalablabalbalblaba', 'media', 'pendente', '2024-11-21 11:41:00'),
	   ('asdfghjklçqwertyuiopzxcvbnm,qwertyuiopasdfghjkxcvbnm,edfrgtyhjuklwertyu', 'baixa', 'pendente', '2024-11-25 10:30:00');