use Friendship;

SELECT *
FROM Users;

SELECT *
FROM Friendships;


SELECT  Users.first_name, Users.last_name, Users2.first_name AS friend_first_name, Users2.last_name AS friend_last_name-- 
FROM Users 
LEFT JOIN Friendships
ON Friendships.friend_1_id = Users.id
LEFT JOIN Users AS Users2
ON Friendships.friend_2_id = Users2.id
WHERE Users2.first_name LIKE"Kermit" OR Users.first_name LIKE "Kermit"; -- //ask Noelle

SELECT COUNT(friend_1_id) AS friendship_total
FROM Friendships;

SELECT COUNT(friend_1_id), COUNT(friend_2_id)
FROM Friendships
WHERE friend_1_id = 1 OR friend_2_id = 1;


SELECT COUNT(friend_1_id), COUNT(friend_2_id)
FROM Friendships
WHERE friend_1_id = 2 OR friend_2_id = 2;


SELECT COUNT(friend_1_id), COUNT(friend_2_id)
FROM Friendships
WHERE friend_1_id =3 OR friend_2_id = 3; 

SELECT COUNT(friend_1_id), COUNT(friend_2_id)
FROM Friendships
WHERE friend_1_id =4 OR friend_2_id = 4; 

SELECT COUNT(friend_1_id), COUNT(friend_2_id)
FROM Friendships
WHERE friend_1_id = 5 OR friend_2_id = 5; 


INSERT INTO Users(id,first_name,last_name) VALUES ('6','Chi','Zak');
INSERT INTO Friendships(friend_1_id,friend_2_id) VALUES ('6','2');
INSERT INTO Friendships(friend_1_id,friend_2_id) VALUES ('6','4');
INSERT INTO Friendships(friend_1_id,friend_2_id) VALUES ('6','5');

SELECT *
FROM Users;

SELECT *
FROM Friendships;

SELECT concat(Friend.first_name, ' ', Friend.last_name) as friend_name, concat(Users.first_name, ' ', Users.last_name) as friend_name
FROM Users
LEFT JOIN Friendships ON Friendships.friend_1_id = Users.id
LEFT JOIN Users as Friend ON Friend.id = Friendships.friend_2_id
WHERE Users.first_name LIKE "Eli" OR Friend.first_name LIKE "Eli"
ORDER BY friend_name;

DELETE FROM Friendships WHERE friend_1_id = 2 and friend_2_id =5;


SELECT Users.first_name, Users.last_name, Friend.first_name, Friend.last_name FROM Users
LEFT JOIN Friendships ON Friendships.friend_1_id = Users.id
LEFT JOIN Users  AS friend ON Friendships.friend_2_id = friend.id;








