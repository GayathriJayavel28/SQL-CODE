USE movierentalsystem

CREATE TABLE customers  (
  Customer_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  First_Name VARCHAR(100) DEFAULT NULL,
  Last_Name VARCHAR(50) DEFAULT NULL,
  Email VARCHAR(50) DEFAULT NULL,
  Phone_Num VARCHAR(10) DEFAULT NULL,
  Address VARCHAR(200) DEFAULT NULL)
  
  CREATE TABLE movies (
  Movie_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Title VARCHAR(100) DEFAULT NULL,
  Genre VARCHAR(50) DEFAULT NULL,
  Release_year YEAR DEFAULT NULL,
  Duration_Minutes INT DEFAULT NULL,
  Movie_Language VARCHAR(50) DEFAULT NULL)
 
CREATE TABLE inventory (
  inventory_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Movie_id INT DEFAULT NULL,
  Available BOOLEAN,
  Location VARCHAR(40) DEFAULT NULL,
  FOREIGN KEY (Movie_id) REFERENCES movies(Movie_id))
 
  CREATE TABLE rental (
  Rental_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Customer_id INT DEFAULT NULL,
  Rental_Date DATETIME DEFAULT NULL,
  Due_Date DATETIME DEFAULT NULL,
  Return_Date DATETIME DEFAULT NULL,
  Rental_Status VARCHAR(70) DEFAULT NULL,
  FOREIGN KEY (Customer_id) REFERENCES customers (Customer_id))
  
  CREATE TABLE payments (
  Payment_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Customer_id INT DEFAULT NULL,
  Rental_id INT DEFAULT NULL,
  Amount DECIMAL(5,2) DEFAULT NULL,
  Payment_Date DATETIME DEFAULT NULL,
  Payment_Method VARCHAR(40) DEFAULT NULL,
  FOREIGN KEY (Customer_id) REFERENCES customers (Customer_id),
  FOREIGN KEY (Rental_id) REFERENCES rental (Rental_id))

  CREATE TABLE staff (
  Staff_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  First_Name VARCHAR(100) DEFAULT NULL,
  Last_Name VARCHAR(50) DEFAULT NULL,
  Email VARCHAR(100) DEFAULT NULL,
  Username VARCHAR(70) DEFAULT NULL,
  Staff_Password VARCHAR(70) DEFAULT NULL,
  Staff_Role VARCHAR(50) DEFAULT NULL)
  
  CREATE TABLE moviereviews (
  Review_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Movie_id INT DEFAULT NULL,
  Customer_id INT DEFAULT NULL,
  Rating INT DEFAULT NULL,
  Review_Comment TEXT,
  Review_Date DATETIME DEFAULT NULL,
  FOREIGN KEY (Movie_id) REFERENCES movies (Movie_id),
  FOREIGN KEY (Customer_id) REFERENCES customers (Customer_id))

DROP TABLE customers
DROP TABLE  movies
DROP TABLE inventory
DROP TABLE  rental
DROP TABLE  payments
DROP TABLE  staff
DROP TABLE moviereviews

SELECT* FROM customers
SELECT * FROM movies
SELECT* FROM inventory
SELECT * FROM rental
SELECT * FROM payments
SELECT * FROM staff
SELECT * FROM moviereviews


INSERT INTO customers (First_name,Last_name, email, phone_num, address) VALUES
('John',' Doe', 'john1@gmail.com', '9003495341', '483 Main St,Velachery'),
('Jane',' Smith', 'jane2@gmail.com', '7700434502', '458 Main St,Perungudi'),
('Mark',' Brown', 'mark3@gmail.com', '6334595003', '1178 Main St,Tharamani'),
('Alice',' Johnson', 'alice4@gmail.com', '6558549434', '7894 Main St,Thiruvanmiyur'),
('Tom',' Hardy', 'tom5@gmail.com', '7859424535', '6983 Main St,Indhiranagar'),
('Nancy',' Drew', 'nancy6@gmail.com', '8795643516', '789 Main St,Kasthuribainagar'),
('Steve',' Rogers', 'steve7@gmail.com', '9589454677', '1458 Main St,Kotturpuram'),
('Bruce',' Wayne', 'bruce8@gmail.com', '9044809735', '2365 Main St,Greenways'),
('Clark',' Kent', 'clark9@gmail.com', '9977976645', '1598 Main St,Mandhaveli'),
('Diana',' Prince', 'diana10@gmail.com', '9154667654', '8975 Main St,Mylapore'),
('Barry',' Allen', 'barry11@gmail.com', '9090976511', '2365 Main St,Triplicane'),
('Peter','Parker', 'peter12@gmail.com', '8835906573', '4789 Main St,Lighthouse'),
('Tony',' Stark', 'tony13@gmail.com', '7879676430', '686 Main St,Thiruchengode'),
('Natasha','Romanoff', 'natasha14@gmail.com', '9004903467','Main St,Salem'),
('Stephen',' Strange', 'stephen16@gmail.com', '9568546516', '138 Main St,Tnagar'),
('Sam',' Wilson', 'sam17@gmail.com', '9456789237', '6598 Main St,Annanagar'),
('Bucky',' Barnes', 'bucky18@gmail..com', '7898765445', '4580 Main St,Perambur'),
('Scott',' Lang', 'scott19@gmail.com', '9565957864', '5465 Main St, KK nagar'),
('Hope',' Pym', 'hope20@gmail.com', '6789435071', '515 Main St, Koyambedu'),
('Carol',' Danvers', 'carol21@gmail.com', '9945578765', '143 Main St,Guindy'),
('Nick',' Fury', 'nick22@gmail.com', '7987454645', '355 Main St,Porur'),
('Phil',' Coulson', 'phil23@gmail.com', '8787754343', '651 Main St,Thambaram'),
('Shuri','thiya', 'shuri24@gmail.com', '6345678907', '355 Main St,Namakkal'),
('Challa','kutty', 'tchalla25@gmail.com', '9568798825', '645 Main St,Erode'),
('gayu','alexa', 'gayu28@gmail.com', '9568953453', '645 Main St,Velechery')

INSERT INTO Movies (Title,Genre,Release_year,Duration_Minutes,Movie_Language) VALUES
('Avengers', 'Action', 2012, 155, 'English'),
('Inception', 'Sci-Fi', 2010, 150, 'English'),
('Interstellar', 'Sci-Fi', 2014,167, 'Tamil'),
('Joker', 'Drama', 2019,150, 'Tamil'),
('Frozen', 'Animation', 2013,145, 'English'),
('Parasite', 'Thriller', 2019, 130, 'Korean'),
('Titanic', 'Romance', 1997, 152, 'Hindi'),
('Gladiator', 'Action', 2000, 159, 'English'),
('The Matrix', 'Sci-Fi', 1999,150, 'Spanish'),
('Shrek', 'Comedy', 2001, 135, 'English'),
('The Dark Knight', 'Action', 2008,178, 'Hindi'),
('Coco', 'Animation', 2017,124, 'Spanish'),
('Avengers: Endgame', 'Action', 2019,167, 'English'),
('Girl Friend', 'Drama', 2019,150, 'Korean'),
('Iron Man', 'Action', 2008, 150, 'English'),
('Toy Story', 'Animation', 1995,160, 'Hindi'),
('Zootopia', 'Animation', 2016,170, 'English'),
('Black Panther', 'Action', 2018, 180, 'Tamil'),
('Moana', 'Animation', 2016, 155, 'Tamil'),
('Doctor Strange', 'Action', 2016,134, 'Hindi'),
('The Lion King', 'Animation', 1994,157, 'Hindi'),
('Jumanji', 'Adventure', 1995, 158, 'English'),
('Inside Out', 'Animation', 2015, 123, 'Hindi'),
('Deadpool', 'Action', 2016, 120, 'English'),
('Thor: Ragnarok', 'Action', 2017, 75, 'English')

INSERT INTO Inventory (Movie_id,Available,Location) VALUES
(1, TRUE,'Audi 1'),
(2, FALSE,'Audi 7'),
(3, TRUE,'Audi 5'),
(4, TRUE,'Audi 11'),
(5, TRUE,'Audi 4'),
(6, FALSE,'Audi 7'),
(7, FALSE,'Audi 9'),
(8,TRUE,'Audi 6'),
(9,TRUE,'Audi 2'),
(10,TRUE,'Audi 3'),
(11,FALSE,'Audi 10'),
(12,TRUE,'Audi 11'),
(13,TRUE,'Audi 3'),
(14,TRUE,'Audi 1'),
(15,FALSE,'Audi 9'),
(16,FALSE,'Audi 5'),
(17,TRUE,'Audi 6'),
(18,TRUE,'Audi 8'),
(19,FALSE,'Audi 7'),
(20,TRUE,'Audi 4'),
(21,TRUE,'Audi 1'),
(22,TRUE,'Audi 2'),
(23,TRUE,'Audi 10'),
(24,TRUE,'Audi 3'),
(25,FALSE,'Audi 11')

INSERT INTO rental (Customer_id,Rental_date,Due_Date,Return_Date,Rental_Status) VALUES
(1,'2023-06-01', '2023-06-06', '2023-06-05', 'Returned'),
(2,'2023-06-02', '2023-06-07', '2023-06-07', 'Returned'),
(3,'2023-06-03', '2023-06-08', '2023-06-10', NULL),
(4,'2023-06-04', '2023-06-09', '2023-06-08', 'Returned'),
(5,'2023-06-05', '2023-06-10', '2023-06-09', 'Returned'),
(6,'2023-06-06', '2023-06-11', '2023-06-13', NULL),
(7,'2023-06-07', '2023-06-12', '2023-06-11', 'Returned'),
(8,'2023-06-08', '2023-06-13', '2023-06-14', NULL),
(9,'2023-06-09', '2023-06-14', '2023-06-12', 'Returned'),
(10,'2023-06-10', '2023-06-15', '2023-06-15', 'Returned'),
(11,'2023-06-11', '2023-06-16', '2023-06-17', NULL),
(12,'2023-06-12', '2023-06-17', '2023-06-16', 'Returned'),
(13,'2023-06-13', '2023-06-18', '2023-06-19', NULL),
(14,'2023-06-14', '2023-06-19', '2023-06-18', 'Returned'),
(15,'2023-06-15', '2023-06-20', '2023-06-20', 'Returned'),
(16,'2023-06-16', '2023-06-21', '2023-06-23', NULL),
(17,'2023-06-17', '2023-06-22', '2023-06-22', 'Returned'),
(18,'2023-06-18', '2023-06-23', '2023-06-24', NULL),
(19,'2023-06-19', '2023-06-24', '2023-06-25', NULL),
(20,'2023-06-20', '2023-06-25', '2023-06-24', 'Returned'),
(21,'2023-06-21', '2023-06-26', '2023-06-27', NULL),
(22,'2023-06-22', '2023-06-27', '2023-06-27', 'Returned'),
(23,'2023-06-23', '2023-06-28', '2023-06-29', NULL),
(24,'2023-06-24', '2023-06-29', '2023-06-29', 'Returned'),
(25,'2023-06-27', '2023-06-29', '2023-06-29', 'Returned')

INSERT INTO Payments(customer_id,rental_id,amount,payment_date,payment_method) VALUES
(1, 1, 120.00, '2023-06-05 10:00:00', 'Cash'),
(2, 2, 150.00, '2023-06-07 11:00:00', 'Card'),
(3, 3, 200.00, '2023-06-10 09:30:00', 'Online'),
(4, 4, 90.00, '2023-06-08 08:20:00', 'Cash'),
(5, 5, 100.00, '2023-06-09 12:15:00', 'Card'),
(6, 6, 80.00, '2023-06-13 13:10:00', 'Online'),
(7, 7, 110.00, '2023-06-11 15:00:00', 'Cash'),
(8, 8, 95.00, '2023-06-14 14:40:00', 'Card'),
(9, 9, 130.00, '2023-06-12 16:30:00', 'Online'),
(10, 10, 70.00, '2023-06-15 10:10:00', 'Cash'),
(11, 11, 140.00, '2023-06-17 09:50:00', 'Card'),
(12, 12, 115.00, '2023-06-16 17:20:00', 'Online'),
(13, 13, 125.00, '2023-06-19 18:00:00', 'Cash'),
(14, 14, 105.00, '2023-06-18 08:30:00', 'Card'),
(15, 15, 155.00, '2023-06-20 19:10:00', 'Online'),
(16, 16, 160.00, '2023-06-23 20:00:00', 'Cash'),
(17, 17, 135.00, '2023-06-22 10:00:00', 'Card'),
(18, 18, 175.00, '2023-06-24 12:00:00', 'Online'),
(19, 19, 145.00, '2023-06-25 14:00:00', 'Cash'),
(20, 20, 165.00, '2023-06-24 15:30:00', 'Card'),
(21, 21, 170.00, '2023-06-27 16:15:00', 'Online'),
(22, 22, 180.00, '2023-06-27 17:00:00', 'Cash'),
(23, 23, 190.00, '2023-06-29 18:45:00', 'Card'),
(24, 24, 185.00, '2023-06-29 19:30:00', 'Online'),
(25, 25, 200.00, '2023-07-01 20:15:00', 'Cash')

INSERT INTO Staff (First_name,last_name,email,username,staff_password,staff_role) VALUES
('Ravi ','Kumar','ravi@gmail.com','ravikumar', 'pass1234','Manager'),
('Meena',' Patel','meena@gmail.com','meenapatel', 'pass5678' ,'Clerk' ),
('Arjun' ,'Singh', 'arjun@gmail.com','arjunsingh', 'abc123', 'Assistant'),
('Divya',' Sharma', 'divya@gmail.com','divyasharma', 'xyz456', 'Manager'),
('Karan',' Mehta', 'karan@gmail.com','karanmehta', 'pqr789' ,'Clerk'),
('Priya ','Verma', 'priya@gmail.com', 'priyaverma','stu321', 'Assistant'),
('Vikram',' Rao', 'vikram@gmail.com','vikramrao', 'hello456', 'Manager'),
('Ayesha',' Khan', 'ayesha@gmail.com','ayeshakhan', 'bye789', 'Clerk'),
('Manoj',' Yadav', 'manoj@gmail.com', 'manojyadav','rock123', 'Assistant'),
('Sneha',' Roy', 'sneha@gmail.com','sneharay', 'lock456', 'Manager'),
('Rahul ','Dev', 'rahul@gmail.com', 'rahuldev','sun123', 'Clerk'),
('Anjali ','Nair', 'anjali@gmail.com', 'anjalinair','moon456', 'Assistant'),
('Siddharth',' Jain', 'sid@gmail.com','siddharthjain', 'java123', 'Manager'),
('Neha',' Sinha', 'neha@gmail.com','nehasinha', 'sql456', 'Clerk'),
('Farhan ','Ali', 'farhan@gmail.com','farhanali', 'python789', 'Assistant'),
('Kriti ','Kapoor', 'kriti@gmail.com', 'kritikapoor','html123', 'Manager'),
('Rajeev ','Reddy', 'rajeev@gmail.com','rajeevreddy', 'css456', 'Clerk'),
('Tanvi',' Das', 'tanvi@gmail.com', 'tanvidas','node789', 'Assistant'),
('Imran',' Pathan', 'imran@gmail.com', 'imranpathan','api123', 'Manager'),
('Deepika',' Iyer', 'deepika@gmail.com', 'deepikaiyer','json456', 'Clerk'),
('Suresh',' Menon', 'suresh@gmail.com', 'sureshmenon','xml789', 'Assistant'),
('Lavanya','Ravi', 'lavanya@gmail.com', 'lavanyaravi','web123', 'Manager'),
('Harsha',' Naveen', 'harsha@gmail.com', 'harshanaveen','net456', 'Clerk'),
('Shivani','Shree', 'shivani@gmail.com','shivanishree', 'data789', 'Assistant'),
('Anirudh','Basha', 'anirudh@gmail.com','anirudhbasha', 'cloud123', 'Manager')

INSERT INTO Moviereviews (Movie_id,customer_id,rating,review_comment,review_date)VALUES
(1, 1, 5, 'Amazing movie!', '2023-06-01 12:00:00'),
(2, 2, 4, 'Great plot and action.', '2023-06-02 13:00:00'),
(3, 3, 5, 'A masterpiece!', '2023-06-03 14:00:00'),
(4, 4, 3, 'Good but slow.', '2023-06-04 15:00:00'),
(5, 5, 4, 'Loved the animation.', '2023-06-05 16:00:00'),
(6, 6, 5, 'Thrilling experience!', '2023-06-06 17:00:00'),
(7, 7, 5, 'Classic romance.', '2023-06-07 18:00:00'),
(8, 8, 4, 'Intense and powerful.', '2023-06-08 19:00:00'),
(9, 9, 5, 'Revolutionary sci-fi!', '2023-06-09 20:00:00'),
(10, 10, 4, 'Fun and family friendly.', '2023-06-10 21:00:00'),
(11, 11, 4, 'Heartwarming story.', '2023-06-11 12:00:00'),
(12, 12, 5, 'Dark and brilliant.', '2023-06-12 13:00:00'),
(13, 13, 5, 'Musical and emotional.', '2023-06-13 14:00:00'),
(14, 14, 5, 'Epic conclusion!', '2023-06-14 15:00:00'),
(15, 15, 4, 'Strong performance.', '2023-06-15 16:00:00'),
(16, 16, 5, 'Childhood favorite!', '2023-06-16 17:00:00'),
(17, 17, 4, 'Fun and clever.', '2023-06-17 18:00:00'),
(18, 18, 5, 'Culturally rich.', '2023-06-18 19:00:00'),
(19, 19, 4, 'Great music and visuals.', '2023-06-19 20:00:00'),
(20, 20, 5, 'Mind-bending magic!', '2023-06-20 21:00:00'),
(21, 21, 5, 'Iconic songs.', '2023-06-21 12:00:00'),
(22, 22, 4, 'Nostalgic fun.', '2023-06-22 13:00:00'),
(23, 23, 5, 'Emotional and deep.', '2023-06-23 14:00:00'),
(24, 24, 4, 'Funny and wild.', '2023-06-24 15:00:00'),
(25, 25, 5, 'Best Thor movie!', '2023-06-25 16:00:00')


SELECT First_Name, last_name, Email 
FROM Customers

/*1*/
SELECT * FROM movies 
WHERE release_year > 2015

/*2*/
SELECT * FROM inventory 
WHERE Available=0

/*3*/
SELECT * FROM rental 
WHERE rental_status = 'returned'

/*4*/
SELECT * FROM movies 
WHERE duration_minutes > 120

/*5*/
SELECT first_name, rental_date 
FROM customers
LEFT JOIN rental ON customers.customer_id=rental.customer_id

/*6*/
SELECT title, location 
FROM movies
RIGHT JOIN inventory ON movies.movie_id=inventory.movie_id


/*7*/
SELECT amount, payment_date 
FROM rental
RIGHT JOIN payments ON rental.rental_id=payments.rental_id

/*8*/
SELECT rental_id, amount, payment_date, first_name 
FROM payments
JOIN customers ON payments.customer_id=customers.customer_id

/*9*/
SELECT review_id, First_Name, Last_Name, title 
FROM moviereviews
JOIN movies ON moviereviews.movie_id=movies.movie_id
JOIN customers ON customers.customer_id=moviereviews.customer_id

/*10*/
SELECT first_name, amount, payment_method 
FROM customers
JOIN payments ON customers.customer_id=payments.customer_id

/*11*/
SELECT DISTINCT first_name, last_name, rental_date 
FROM customers
JOIN rental ON customers.customer_id=rental.customer_id
WHERE YEAR(rental.rental_date)=2023

/*12*/
SELECT * FROM payments
WHERE Payment_method= 'online'

/*13*/
SELECT * FROM rental 
WHERE return_date > due_date

/*14*/
SELECT * FROM customers 
WHERE phone_num 
LIKE'90%'

/*15*/
SELECT * FROM movies
WHERE genre='action' 
AND duration_minutes < 100

/*16*/
SELECT first_name, last_name, COUNT(rental_id) 
FROM customers
JOIN rental ON customers.customer_id=rental.customer_id
GROUP BY first_name, last_name

/*17*/
SELECT first_name, last_name, payment_date, SUM(amount) AS amt
FROM payments
JOIN customers ON payments.customer_id=customers.customer_id
GROUP BY first_name, last_name, payment_date
ORDER BY amt DESC

/*18*/
SELECT  genre,AVG(Rating) AS rating
FROM moviereviews AS mr
JOIN movies AS m ON m.movie_id=mr.movie_id
GROUP BY genre 
ORDER BY rating DESC

/*19*/
SELECT first_name, COUNT(review_comment)
FROM customers c
JOIN moviereviews ms ON c.customer_id=ms.customer_id
GROUP BY first_name

/*20*/
SELECT C.customer_id, C.first_name, C.last_name, COUNT(R.rental_ID) AS RS
FROM rental AS R
JOIN customers AS C ON C.customer_id=R.customer_id
GROUP BY C.customer_id, C.first_name, C.last_name
ORDER BY RS LIMIT 1

/*21*/
SELECT first_name, last_name, amount
FROM customers
JOIN payments ON customers.customer_id=payments.customer_id
WHERE amount > (SELECT AVG(amount) FROM payments)

/*22*/
SELECT m.movie_id, m.title, r.available
FROM movies AS m
JOIN inventory AS r ON r.movie_id=m.movie_id
WHERE m.movie_id IS NOT NULL

/*23*/
CREATE VIEW showdetails AS
SELECT C.customer_id, C.first_name, C.last_name, SUM(P.amount)
FROM customers  C
JOIN payments P ON C.customer_id=P.customer_id
GROUP BY C.customer_id, C.first_name, C.last_name

/*24*/
UPDATE rental SET rental_status='OVERDUE' WHERE RENTAL_STATUS IS NULL
SELECT*FROM RENTAL

/*25*/
SELECT title,genre,duration_minutes,
CASE
WHEN duration_minutes<100 THEN'short'
WHEN duration_minutes<150 THEN 'medium'
ELSE 'long'
END AS category
FROM movies;