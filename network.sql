--create database Network
--use Network

--create table Users(

--Id int primary key identity,
--Name nvarchar(20),
--Surname nvarchar(20),
--)

--create table Posts(
--Id int primary key identity,
--PostHeader nvarchar(50),
--Context nvarchar(max),
--DatePost date,
--UserId int references Users(Id)

--)

--create table Comments(
--Id int primary key identity,
--ContextComment nvarchar(max),
--PostId int references Posts(Id),
--UserId int references Users(Id),
--DateComment date
--)


--create table Likes(
--Id int primary key identity,
--CommentId int references Comments(Id),
--PostsId int references Posts(Id),
--UserId int references Users(Id)
--)


--select * from Users
--select * from Posts	
--select * from	Comments	

--select * from	Likes

--alter table Posts
--add  LikeCount int 

--create view  ShowInfoPosts as	
--select 

--Posts.PostHeader 'Paylasim',
--Posts.Context 'Paylasimin movzusu ',
--Posts.DatePost 'Paylasildigi vaxt',

--concat(Users.Name, ' ', Users.Surname, ' ')  'Postu paylasan' 





--from Posts

--join Users on Posts.UserId = Users.Id


--select * from ShowInfoPosts



--create view ShowInfoComments as
--select 

--Comments.ContextComment 'Komment',
--Posts.PostHeader 'Kommentin yazildigi post',

--concat(Users.Name, '  ',Users.Surname , '  ') 'Kommenti yazan user' 




--from Comments

--join Posts on Comments.PostId=Posts.Id
--join Users on Comments.UserId = Users.Id


--select * from ShowInfoComments


--create proc usp_GetPostsForDate as


--select 
--*




--from ShowInfoPosts

--exec usp_GetPostsForDate

--alter proc usp_GetPostsForDate 
--@minDate nvarchar(100) = NULL,
--@maxDate nvarchar(100) = NULL

--as

--select * from ShowInfoPosts	

--where 
--ShowInfoPosts.[Paylasildigi vaxt] >=isnull(@minDate,[Paylasildigi vaxt])
--and
--ShowInfoPosts.[Paylasildigi vaxt] <= isnull(@maxDate,[Paylasildigi vaxt])


--exec usp_GetPostsForDate @mindate='2014-02-02', @maxDate='2019.12.30'





--create proc usp_PostsOfUser
--as
--select * from Users

--alter proc usp_PostsOfUser 

--@username nvarchar(50) = null


--as
--select 
--  concat(Users.Name,' ', Users.Surname, ' ') 'Postu paylasan user' ,
--  Posts.PostHeader 'Userin paylasdigi postlar'

--from Users

--join Posts on users.Id = Posts.UserId

--where 
--users.Name  = isnull(@username, Users.Name)




--exec usp_PostsOfUser  @username = 'qedim'






--create proc usp_ShowComments
--as
--select * from Comments

--alter proc usp_ShowComments
--@postId int = null
--as
--select 

--Comments.ContextComment 'Posta aid butun kommentler',
--Comments.DateComment 'Kommentin yazilma tarixi',
--Posts.PostHeader 'Hansi Posta yazilib?'
--from Comments

--join Posts on Comments.PostId = Posts.Id

--where 

--Comments.PostId = isnull(@postId, PostId)



--exec usp_ShowComments @postId = 1



--declare @postId int

--alter function LikeCount(@postId int)

--returns int
--as
--begin
--declare @result int ;	
--declare @count int = 0;







--return @result;




--end
