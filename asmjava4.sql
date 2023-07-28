use master
go

create database [asmjava4]
go

use asmJava4
go

create table [user]
(
	id			int	primary key identity,
	username		varchar(20)	unique not null,
	[password]	varchar(20) not null,
	email		varchar(50) unique not null,
	isAdmin		bit	not null default 0,
	isActive	bit not null default 1
)
go

create table video
(
	id		int	primary key identity,
	title	nvarchar(255) not null,
	href	varchar(50) unique not null,
	poster	varchar(255)	null,
	[views]	int		not null default 0,
	shares	int	 not null default 0,
	[description]	nvarchar(255) not null,
	isActive	bit	not null default 1
)
go 

create table history
(
	id	int	primary key identity,
	userId	int foreign key references [user](id),
	videoId	int foreign key references video(id),
	viewedDate	datetime not null default getDate(),
	isLiked	bit not null default 0,
	likedDate	datetime null
)
go

insert into [user] (username, [password], email, isAdmin) values
('cuongdv', '111', 'cuongdvpd06267@gmail.com', 1),
('duyvp', '222', 'duyvppd06268@gmail.com', 0)
go

insert into video (title, href, [description]) values 
(N'2-HOUR STUDY WITH ME', 'kncTDoCPxxQ', N'dearmystudy'),
(N'THỎ BẢY MÀU - THẦN BÀI MIỀN TÂY', '6xHKGf3Ho', N'THỎ BẢY MÀU'),
(N'Nếu học Lập Trình lại từ đâu, mình sẽ học như thế nào?', 'Q2YQbOV2ZNU', N'Phạm Huy Hoàng')
go

insert into history(userId, videoId, isLiked, likedDate) values
(2, 1, 1, getDate()),
(2,3,0,	null)
go
