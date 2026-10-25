create database ClinicaMedica
go
use ClinicaClinicaMedica


create table especialidade(
	idESP int not null,
	especialidade varchar(100) not null,
	primary key(idESP)  
)

create table paciente(
	num_beneficiario int not null,
	nomePAC varchar(100) not null,
	logradouro varchar(200) not null,
	numero int not null,
	cep char(8) not null,
	complemento varchar(255) not null,
	telefone varchar(11) not null,
	primary key (num_beneficiario)
)
create table medico(
	codigo int not null,
	nome varchar(100) not null,
	logradouro varchar(200) not null,
	numero int not null,
	cep char(8) not null,
	complemento varchar(255) not null,
	contato varchar(11) not null,
	especialidadeID int not null,
	foreign key (especialidadeID) references especialidade (idESP),
	primary key(codigo)
)

create table consulta (
	pacienteNum_beneficiario int not NULL ,
	medicoCodigo int not NULL ,
	data_hora datetime not null,
	observacao varchar(255),
	primary key(pacienteNum_beneficiario,medicoCodigo,data_hora),
	foreign key (pacienteNum_beneficiario) references paciente(num_beneficiario),
	foreign key (medicoCodigo) references medico(codigo),
	
)

INSERT INTO especialidade (idESP, especialidade) VALUES
(1, 'Otorrinolaringologista'),
(2, 'Urologista'),
(3, 'Geriatra'),
(4, 'Pediatra')


insert into paciente (num_beneficiario,nomePAC,logradouro,numero,cep,complemento,telefone)values
(99901,'wesley safadawn','rua ruinha', 167 ,'1234567','apartamento','23232323')

insert into medico(codigo,nome,logradouro,numero,cep,complemento,contato,especialidadeID) values
(101010, 'mediquilson','rua dos medicos',6767,'23423','seila','12318765',1)
