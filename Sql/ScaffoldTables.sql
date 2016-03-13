create table dbo.Servers (
	Id int identity(1, 1) primary key
,	Name varchar(64) not null
,	Description varchar(256) );

create table dbo.ServerPassords (
	Id int identity(1, 1) primary key
,	Password varchar(64) not null
,	Description varchar(256)
,	Server_Id int foreign key references dbo.Servers(Id) );

create table dbo.Users (
	Id int identity(1, 1) primary key
,	EmailAddress varchar(64) not null
,	Password varchar(64) not null
,	PhoneNumber varchar(11) not null
,	NameFirst varchar(32)
,	NameLast varchar(32) );

create table dbo.Groups (
	Id int identity(1, 1) primary key
,	Name varchar(64) not null );

create table dbo.User_Group (
	Id int identity(1, 1) primary key
,	