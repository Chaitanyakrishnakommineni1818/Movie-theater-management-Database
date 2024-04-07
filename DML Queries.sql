/* INSERT Queries to populate all tables */
--THEATER
INSERT INTO THEATER (THEATER_ID, THEATER_NAME, LOCATION, THEATER_TYPE, THEATER_RATING)
VALUES (1,'Cinemax', 'Dallas', 'Single Screen', 4.2);
INSERT INTO THEATER (THEATER_ID, THEATER_NAME, LOCATION, THEATER_TYPE, THEATER_RATING)
VALUES (2, 'Carnival', 'Richardson', 'Single Screen', 3.7);
INSERT INTO THEATER (THEATER_ID, THEATER_NAME, LOCATION, THEATER_TYPE, THEATER_RATING)
VALUES (3, 'Movietime', 'Fort Worth', 'Multiplex', 3.7);
INSERT INTO THEATER (THEATER_ID, THEATER_NAME, LOCATION, THEATER_TYPE, THEATER_RATING)
VALUES (4, 'INOX', 'Houston', 'Multiplex', 4.9);
INSERT INTO THEATER (THEATER_ID, THEATER_NAME, LOCATION, THEATER_TYPE, THEATER_RATING)
VALUES (5, 'MovieMax', 'San Antonio', 'Multiplex', 4.2);
INSERT INTO THEATER (THEATER_ID, THEATER_NAME, LOCATION, THEATER_TYPE, THEATER_RATING)
VALUES (6, 'Regal', 'Plano', 'Multiplex',null);
INSERT INTO THEATER (THEATER_ID, THEATER_NAME, LOCATION, THEATER_TYPE, THEATER_RATING)
VALUES (7, 'Cinepolis', 'Austin', 'Multiplex', 4.8);
INSERT INTO THEATER (THEATER_ID, THEATER_NAME, LOCATION, THEATER_TYPE, THEATER_RATING)
VALUES (8, 'Metro', 'Austin', 'Multiplex', 4.7);
INSERT INTO THEATER (THEATER_ID, THEATER_NAME, LOCATION, THEATER_TYPE, THEATER_RATING)
VALUES (9, 'PVR', 'Dallas', 'Multiplex', 4.2);
INSERT INTO THEATER (THEATER_ID, THEATER_NAME, LOCATION, THEATER_TYPE, THEATER_RATING)
VALUES (10, 'CineFun', 'El Paso', 'Single Screen', 3.8);

--MOVIE
INSERT INTO movie (MOVIE_ID, THEATER_ID, MOVIE_NAME, DURATION, MOVIE_DATETIME, MOVIE_RATING)
VALUES (1, 2, 'Spiderman: No Way Home', 120, TO_TIMESTAMP('2022-07-02 06:15:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 4.9);
INSERT INTO movie (MOVIE_ID, THEATER_ID, MOVIE_NAME, DURATION, MOVIE_DATETIME, MOVIE_RATING)
VALUES (2, 3, 'Batman', 120, TO_TIMESTAMP('2022-08-14 08:50:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 4.9);
INSERT INTO movie (MOVIE_ID, THEATER_ID, MOVIE_NAME, DURATION, MOVIE_DATETIME, MOVIE_RATING)
VALUES (3, 10, 'Halloween Ends', 110,TO_TIMESTAMP('2022-08-22 05:45:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 5.0);
INSERT INTO movie (MOVIE_ID, THEATER_ID, MOVIE_NAME, DURATION, MOVIE_DATETIME, MOVIE_RATING)
VALUES (4, 7, 'Top Gun: Maverick', 130,TO_TIMESTAMP('2022-10-02  12:15:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 4.7);
INSERT INTO movie (MOVIE_ID, THEATER_ID, MOVIE_NAME, DURATION, MOVIE_DATETIME, MOVIE_RATING)
VALUES (5, 6, 'Wild Is the Wind', 125, TO_TIMESTAMP('2022-04-27 03:50:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 2.6);
INSERT INTO movie (MOVIE_ID, THEATER_ID, MOVIE_NAME, DURATION, MOVIE_DATETIME, MOVIE_RATING)
VALUES (6, 9, 'Spirited', 120, TO_TIMESTAMP('2022-05-20 19:15:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), null);
INSERT INTO movie (MOVIE_ID, THEATER_ID, MOVIE_NAME, DURATION, MOVIE_DATETIME, MOVIE_RATING)
VALUES (7, 5, 'Elvis', 160, TO_TIMESTAMP('2022-07-03 07:25:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 4.2);
INSERT INTO movie (MOVIE_ID, THEATER_ID, MOVIE_NAME, DURATION, MOVIE_DATETIME, MOVIE_RATING)
VALUES (8, 1, 'Glass Onion: A Knives Out Mystery', 130, TO_TIMESTAMP('2022-07-14 17:20:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 4.5);
INSERT INTO movie (MOVIE_ID, THEATER_ID, MOVIE_NAME, DURATION, MOVIE_DATETIME, MOVIE_RATING)
VALUES (9, 1, 'One Piece Film: Red', 115, TO_TIMESTAMP('2022-07-02 06:15:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 4.2);
INSERT INTO movie (MOVIE_ID, THEATER_ID, MOVIE_NAME, DURATION, MOVIE_DATETIME, MOVIE_RATING)
VALUES (10, 4, 'Black Panther: Wakanda Forever', 120, TO_TIMESTAMP('2022-01-01 12:00:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 5);

--CUSTOMER
INSERT INTO CUSTOMER (CUSTOMER_ID, F_NAME, L_NAME, EMAIL, PHONE, ADDRESS)
VALUES (1, 'Jim', 'Allen', 'jallen@email.com', '(218)867-4128', '870 Waldeck Street');
INSERT INTO CUSTOMER (CUSTOMER_ID, F_NAME, L_NAME, EMAIL, PHONE, ADDRESS)
VALUES (2, 'Kate', 'Kerry', 'kk@gmail.com', '(405)349-7761', '4593 Fancher Drive');
INSERT INTO CUSTOMER (CUSTOMER_ID, F_NAME, L_NAME, EMAIL, PHONE, ADDRESS)
VALUES (3, 'Ben', 'Jackson', 'bjack@emsil.com', '(302)219-1780', '750 Synergy Park Blvd');
INSERT INTO CUSTOMER (CUSTOMER_ID, F_NAME, L_NAME, EMAIL, PHONE, ADDRESS)
VALUES (4, 'Jane', 'Nick', 'jane@email.com', '(214)799-8502', '1620 Star Route');
INSERT INTO CUSTOMER (CUSTOMER_ID, F_NAME, L_NAME, EMAIL, PHONE, ADDRESS)
VALUES (5, 'Alex', 'Hale', 'alhale@email.com', '(830)697-6409', '1284 Carolyns Circle');
INSERT INTO CUSTOMER (CUSTOMER_ID, F_NAME, L_NAME, EMAIL, PHONE, ADDRESS)
VALUES (6, 'Bob', 'Jade', 'jade.bob@email.com', '(224)442-7254','1721 Wines Lane');
INSERT INTO CUSTOMER (CUSTOMER_ID, F_NAME, L_NAME, EMAIL, PHONE, ADDRESS)
VALUES (7, 'Matthew', 'Moran', 'mj@email.com', '(334)252-8867', '425 Romines Mill Road');
INSERT INTO CUSTOMER (CUSTOMER_ID, F_NAME, L_NAME, EMAIL, PHONE, ADDRESS)
VALUES (8, 'Jack', 'Black', 'jack@email.com', '(580)837-6871', '4990 Sardis Sta');
INSERT INTO CUSTOMER (CUSTOMER_ID, F_NAME, L_NAME, EMAIL, PHONE, ADDRESS)
VALUES (9, 'Preston', 'Billingsley', 'prestonbil@email.com', '(270)920-7678', '2179 Bell Street');
INSERT INTO CUSTOMER (CUSTOMER_ID, F_NAME, L_NAME, EMAIL, PHONE, ADDRESS)
VALUES (10, 'Nick', 'Campise', 'nickcampise@email.com', '(270)833-9967', '3090 Moore Avenue');

--BOOKING_INFO
INSERT INTO BOOKING_INFO (BOOKING_ID, BOOKING_DATE, TIMINGS, PRICE, NO_OF_TICKETS, CUSTOMER_ID)
VALUES (1, TO_DATE('2022-07-01','YYYY-MM-DD') ,TO_TIMESTAMP('2022-07-01 06:15:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 10, 2, 1);
INSERT INTO BOOKING_INFO (BOOKING_ID, BOOKING_DATE, TIMINGS, PRICE, NO_OF_TICKETS, CUSTOMER_ID)
VALUES (2, TO_DATE('2022-08-20','YYYY-MM-DD'),TO_TIMESTAMP('2022-08-20 05:45:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 10, 2, 10);
INSERT INTO BOOKING_INFO (BOOKING_ID, BOOKING_DATE, TIMINGS, PRICE, NO_OF_TICKETS, CUSTOMER_ID)
VALUES (3,  TO_DATE('2022-04-27','YYYY-MM-DD'),TO_TIMESTAMP('2022-04-27 01:50:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 15, 3, 2);
INSERT INTO BOOKING_INFO (BOOKING_ID, BOOKING_DATE, TIMINGS, PRICE, NO_OF_TICKETS, CUSTOMER_ID)
VALUES (4,  TO_DATE('2022-06-03','YYYY-MM-DD'), TO_TIMESTAMP('2022-06-03 07:25:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'),20, 4, 3);
INSERT INTO BOOKING_INFO (BOOKING_ID, BOOKING_DATE, TIMINGS, PRICE, NO_OF_TICKETS, CUSTOMER_ID)
VALUES (5,   TO_DATE('2022-07-02','YYYY-MM-DD'), TO_TIMESTAMP('2022-07-02 07:25:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 35, 7, 4);
INSERT INTO BOOKING_INFO (BOOKING_ID, BOOKING_DATE, TIMINGS, PRICE, NO_OF_TICKETS, CUSTOMER_ID)
VALUES (6, TO_DATE('2022-08-10','YYYY-MM-DD'), TO_TIMESTAMP('2022-08-10 07:25:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 10, 2, 5);
INSERT INTO BOOKING_INFO (BOOKING_ID, BOOKING_DATE, TIMINGS, PRICE, NO_OF_TICKETS, CUSTOMER_ID)
VALUES (7,  TO_DATE('2021-12-23','YYYY-MM-DD'), TO_TIMESTAMP('2021-12-23 07:25:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 25, 5, 6);
INSERT INTO BOOKING_INFO (BOOKING_ID, BOOKING_DATE, TIMINGS, PRICE, NO_OF_TICKETS, CUSTOMER_ID)
VALUES (8,  TO_DATE('2022-10-01','YYYY-MM-DD'), TO_TIMESTAMP('2022-10-01 07:25:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 15, 3, 7);
INSERT INTO BOOKING_INFO (BOOKING_ID, BOOKING_DATE, TIMINGS, PRICE, NO_OF_TICKETS, CUSTOMER_ID)
VALUES (9, TO_DATE('2022-04-26','YYYY-MM-DD'), TO_TIMESTAMP('2022-04-26 07:25:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 35, 7, 8);
INSERT INTO BOOKING_INFO (BOOKING_ID, BOOKING_DATE, TIMINGS, PRICE, NO_OF_TICKETS, CUSTOMER_ID)
VALUES (10,  TO_DATE('2022-07-09','YYYY-MM-DD'), TO_TIMESTAMP('2022-07-09 07:25:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 10, 5, 9);

--TICKET_TYPE
INSERT INTO TICKET_TYPE (TICKET_TYPE_ID, TIER, PRICE, PERKS, SCREEN_TYPE)
VALUES (1, 'Platinum I', 20,'Best Seats(A-D), Early Access, 15% discount on tickets, 10% discount on food and beverages', '3D/2D Recliner');
INSERT INTO TICKET_TYPE (TICKET_TYPE_ID, TIER, PRICE, PERKS, SCREEN_TYPE)
VALUES (2, 'Platinum II',18,'Best Seats(A-F), Early Access, 10% discount on tickets, 7% discount on food and beverages', '2D Recliner');
INSERT INTO TICKET_TYPE (TICKET_TYPE_ID, TIER, PRICE, PERKS, SCREEN_TYPE)
VALUES (3, 'Platinum III',16,'Best Seats(A-I), Early Access, 5% discount on tickets, 3% discount on food and beverages', '2D Recliner');
INSERT INTO TICKET_TYPE (TICKET_TYPE_ID, TIER, PRICE, PERKS, SCREEN_TYPE)
VALUES (4, 'Gold I', 15,'Middle Row, 5% discount on tickets, Medium Soda free with Large popcorn','3D/2D Premium Glider');
INSERT INTO TICKET_TYPE (TICKET_TYPE_ID, TIER, PRICE, PERKS, SCREEN_TYPE)
VALUES (5, 'Gold II', 13.75,'Middle Row, 3% discount on tickets, Small Soda free with Large popcorn','2D Premium Glider');
INSERT INTO TICKET_TYPE (TICKET_TYPE_ID, TIER, PRICE, PERKS, SCREEN_TYPE)
VALUES (6, 'Gold III', 12,'Middle Row, 3% discount on tickets','2D Premium Glider');
INSERT INTO TICKET_TYPE (TICKET_TYPE_ID, TIER, PRICE, PERKS, SCREEN_TYPE)
VALUES (7, 'Silver I', 10,'Lower Middle Row, 5% discount on orders above 20$','3D/2D Rocker');
INSERT INTO TICKET_TYPE (TICKET_TYPE_ID, TIER, PRICE, PERKS, SCREEN_TYPE)
VALUES (8, 'Silver II', 8.5,'Lower Middle Row, 5% discount on orders above 30$','2D Rocker');
INSERT INTO TICKET_TYPE (TICKET_TYPE_ID, TIER, PRICE, PERKS, SCREEN_TYPE)
VALUES (9, 'Silver III', 7,'Lower Middle Row, 5% discount on orders above 40$','2D Rocker');
INSERT INTO TICKET_TYPE (TICKET_TYPE_ID, TIER, PRICE, PERKS, SCREEN_TYPE)
VALUES (10,'Basic', 5,'No Priority','3D/2D');

--TICKET
INSERT INTO TICKET (TICKET_ID, MOVIE_ID, SEAT_NO, BOOKING_ID, MOVIE_TIME, MOVIE_DATE, SCREEN_NO,TICKET_TYPE_ID)
VALUES (1, 1, '20F', 1,TO_TIMESTAMP('2022-07-02 06:15:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_DATE('2022-07-02','YYYY-MM-DD'), 3,1);
INSERT INTO TICKET (TICKET_ID, MOVIE_ID, SEAT_NO, BOOKING_ID, MOVIE_TIME, MOVIE_DATE, SCREEN_NO,TICKET_TYPE_ID)
VALUES (2, 3, '20G', 2,TO_TIMESTAMP('2022-08-22 05:45:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_DATE('2022-08-22','YYYY-MM-DD'), 3,6);
INSERT INTO TICKET (TICKET_ID, MOVIE_ID, SEAT_NO, BOOKING_ID, MOVIE_TIME, MOVIE_DATE, SCREEN_NO,TICKET_TYPE_ID)
VALUES (3, 5, '11S', 3,TO_TIMESTAMP('2022-04-27 03:50:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_DATE('2022-04-27','YYYY-MM-DD'), 5,9);
INSERT INTO TICKET (TICKET_ID, MOVIE_ID, SEAT_NO, BOOKING_ID, MOVIE_TIME, MOVIE_DATE, SCREEN_NO,TICKET_TYPE_ID)
VALUES (4, 7, '24A', 4, TO_TIMESTAMP('2022-07-03 07:25:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_DATE('2022-07-03','YYYY-MM-DD'), 1,1);
INSERT INTO TICKET (TICKET_ID, MOVIE_ID, SEAT_NO, BOOKING_ID, MOVIE_TIME, MOVIE_DATE, SCREEN_NO,TICKET_TYPE_ID)
VALUES (5, 9, '32E', 5,TO_TIMESTAMP('2022-07-02 06:15:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_DATE('2022-07-02','YYYY-MM-DD'), 2,6);
INSERT INTO TICKET (TICKET_ID, MOVIE_ID, SEAT_NO, BOOKING_ID, MOVIE_TIME, MOVIE_DATE, SCREEN_NO,TICKET_TYPE_ID)
VALUES (6, 2, '18F', 6, TO_TIMESTAMP('2022-08-14 08:50:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_DATE('2022-08-14','YYYY-MM-DD'), 1,5);
INSERT INTO TICKET (TICKET_ID, MOVIE_ID, SEAT_NO, BOOKING_ID, MOVIE_TIME, MOVIE_DATE, SCREEN_NO,TICKET_TYPE_ID)
VALUES (7, 10, '14A',7, TO_TIMESTAMP('2022-01-01 12:00:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_DATE('2022-01-01','YYYY-MM-DD'), 3,2);
INSERT INTO TICKET (TICKET_ID, MOVIE_ID, SEAT_NO, BOOKING_ID, MOVIE_TIME, MOVIE_DATE, SCREEN_NO,TICKET_TYPE_ID)
VALUES (8, 4, '14B', 8,TO_TIMESTAMP('2022-10-02  12:15:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_DATE('2022-10-02','YYYY-MM-DD'), 3,1);
INSERT INTO TICKET (TICKET_ID, MOVIE_ID, SEAT_NO, BOOKING_ID, MOVIE_TIME, MOVIE_DATE, SCREEN_NO,TICKET_TYPE_ID)
VALUES (9, 6, '8C', 9, TO_TIMESTAMP('2022-04-27 03:50:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_DATE('2022-04-27','YYYY-MM-DD'), 2,3);
INSERT INTO TICKET (TICKET_ID, MOVIE_ID, SEAT_NO, BOOKING_ID, MOVIE_TIME, MOVIE_DATE, SCREEN_NO,TICKET_TYPE_ID)
VALUES (10, 8, '16E', 10,  TO_TIMESTAMP('2022-07-14 17:20:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_DATE('2022-07-14','YYYY-MM-DD'), 1,3);

/*Query 1: Select all columns and all rows from one table*/
select *
from THEATER;

/*Query 2: Select five columns and all rows from one table*/
SELECT movie_id, movie_name, duration, movie_datetime, movie_rating
from MOVIE;

/*Query 3: Select all columns from all rows from one view*/
select *
from CUSTOMER_INFO;

/*Query 4: Using a join on 2 tables, select all columns and all rows from the tables without the use of a Cartesian product*/
select * 
from TICKET 
left outer join TICKET_TYPE
on TICKET.ticket_type_id = TICKET_TYPE.ticket_type_id;

/*Query 5: Select and order data retrieved from one table*/
select *
from MOVIE
order by MOVIE_RATING desc nulls last;

/*Query 6: Using a join on 3 tables, select 5 columns from the 3 tables. Use syntax that would limit the output to 10 rows*/
select F_name || ' ' || L_name as Customer_name, T.Seat_No, T.Movie_Time,
T.Screen_No, B.Price
from Customer C
left join BOOKING_INFO B 
on C.Customer_id = B.Customer_id
left join TICKET T 
on T.Booking_id = B.Booking_id
fetch first 10 rows only;

/*Query 7: Select distinct rows using joins on 3 tables*/
select distinct THEATER_NAME, LOCATION
from THEATER T
left join MOVIE M
on T.THEATER_ID = M.THEATER_ID 
left join TICKET TC
on TC.MOVIE_ID = M.MOVIE_ID
where DURATION>120 and movie_date > '27-APR-22';

/*Query 8: Use GROUP BY and HAVING in a select statement using one or more tables*/
select T.THEATER_NAME, M.MOVIE_NAME, AVG(M.MOVIE_RATING) AVG_RATING
from THEATER T
left join MOVIE M
on T.THEATER_ID=M.THEATER_ID 
group by T.THEATER_NAME, M.MOVIE_NAME
having AVG(M.MOVIE_RATING)>3;

/*Query 9: Use IN clause to select data from one or more tables*/
select * 
from THEATER
where LOCATION in ('Dallas','Austin');

/*Query 10: Select length of one column from one table*/
select MOVIE_NAME, LENGTH(Movie_Name) LENGTH
from MOVIE
group by MOVIE_NAME;

/*Query 11: Delete one record from one table. 
Use select statements to demonstrate the table contents before and after the DELETE statement. 
Make sure you use ROLLBACK afterwards so that the data will not be physically removed*/
alter table MOVIE
DISABLE constraint FK_THEATER_ID; --disable foreign key constraint to be able to delete data
select * from theater;
delete from theater
where theater_rating is null;
select * from theater;
ROLLBACK; 

/*Query 12: Update one record from one table. Use select statements to demonstrate the table contents before and after the UPDATE statement. 
Make sure you use ROLLBACK afterwards so that the data will not be physically removed*/
select * from MOVIE;
update MOVIE
set MOVIE_NAME = 'Batman Returns'
where movie_id = 2;
select * from MOVIE;
rollback;

/** Advanced Queries **/
/*Query 13: List name, email, phone of customers along with the tier and perks of the tickets they purchased*/
select f_name || ' ' || l_name customer_name, phone, email, tt.tier, perks
from customer c
left join booking_info b
on c.customer_id=b.customer_id
left join ticket t
on b.booking_id = t.booking_id
left join ticket_type tt
on tt.ticket_type_id = t.ticket_type_id;

/*Query 14: List all theater names, their location and their average rating of theater types 'Multiplex' with average rating greater than 4. 
Order these by average theater rating from highest to last*/
select THEATER_NAME, LOCATION, AVG(THEATER_RATING)
from THEATER
where THEATER_TYPE = 'Multiplex'
group by THEATER_NAME, LOCATION
having avg(THEATER_RATING) > 4
order by avg(THEATER_RATING) desc;

/*Query 15: List movie names, duration, movie_rating, price, perks and screen type of movie played in 3D*/
select M.MOVIE_NAME, DURATION, MOVIE_RATING, PRICE, PERKS, SCREEN_TYPE
from MOVIE M
left join TICKET T
on M.movie_id = T.movie_id
left join TICKET_TYPE TT
on T.ticket_type_id = TT.ticket_type_id
where SCREEN_TYPE like '%3D%';

/*Query 16: List top 3 theaters by rating and the number of movies played at these theaters. Display the name, rating and count of movies*/
select t.THEATER_NAME,THEATER_RATING,count(m.MOVIE_ID) as MOVIE_COUNT 
from THEATER t 
left join MOVIE m 
on t.THEATER_ID = m.THEATER_ID
group by t.THEATER_NAME, THEATER_RATING
order by THEATER_RATING desc nulls last
fetch first 3 rows only;

/*Query 17: List all theater information for theaters that sell type Platinum I tickets*/
select * from THEATER
where theater_id in ( select theater_id from MOVIE
                      where movie_id in (select movie_id from ticket
                                         where ticket_type_id in (select ticket_type_id from ticket_type where tier='Platinum I')
                                         )
                    );

/*Query 18: List movie name, duration, movie rating and movie date of all movies played after 2nd July 2022. Order by rating from highest to least*/
select MOVIE_NAME, DURATION, MOVIE_RATING, MOVIE_DATETIME 
from movie
where MOVIE_DATETIME > '2 jul 2022'
order by MOVIE_RATING desc;

/*Query 19: List customer names who have not spent less than 15$ while booking*/
select F_NAME || ' ' || L_NAME CUSTOMER_NAME
from CUSTOMER
where CUSTOMER_ID not in ( select CUSTOMER_ID from BOOKING_INFO where PRICE <15)
order by F_NAME,L_NAME;

/*Query 20: List all tiers and the count of tickets bought. Count should be greater than 0*/
select  tt.tier, count(ticket_id) ticket_count
from TICKET_TYPE tt
left join TICKET t
on tt.ticket_type_id=t.ticket_type_id
group by tt.tier
having count(ticket_id)<>0
order by ticket_count desc;
