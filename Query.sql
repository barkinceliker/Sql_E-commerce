--What are the product prices by category?(TABLE_Order)
SELECT Order_category,Order_price from TABLE_order WHERE Order_name LIKE '%[A-Z]%' GROUP BY Order_category,Order_price  ORDER BY Order_price desc

Output:
Order_category | Order_price
Category O       | 700
Category N       | 650
Category M       | 600
Category L       | 550
Category K       | 500
Category J       | 450
Category I       | 400
Category H       | 350
Category G       | 300
Category F       | 250
Category E       | 200
Category D       | 150
Category C       | 100
Category B       | 75
Category A       | 50




--What is the query that returns the order quantity based on the destination known order code?(TABLE_order_details)
SELECT @@LANGUAGE as 'Language',Order_delivery_code,Order_quantity,Order_delivery_point,Order_that_has_the_nearest_supplier,Order_created_at FROM TABLE_order_details WHERE Order_quantity LIKE '%[0-3%]'

Output:
Language_    Order_delivery_code   Order_quantity     Order_delivery_point   Order_that_has_the_nearest_supplier			Order_created_at
us_english	CODE001	                  2	                    Point A	             Supplier A	                            	2023-04-20
us_english	CODE002					  1						Point B				 Supplier B									2023-04-21
us_english	CODE003					  3						Point C				 Supplier A									2023-04-22
us_english	CODE004					  2						Point D	             Supplier C									2023-04-23
us_english	CODE005					  1						Point E				 Supplier D									2023-04-24	
us_english	CODE006	                  3	                    Point F				 Supplier B									2023-04-25	
us_english	CODE007					  2						Point G				 Supplier C									2023-04-26	
us_english	CODE008					  1						Point H				 Supplier A									2023-04-27
us_english	CODE009	                  3						Point I				 Supplier B								 	2023-04-28
us_english	CODE010					  2						Point J	             Supplier D									2023-04-29
us_english	CODE011					  1						Point K				 Supplier C									2023-04-30	
us_english	CODE012					  2						Point L				 Supplier A								    2023-05-01
us_english	CODE013					  1						Point M				 Supplier D	                                2023-05-02	
us_english	CODE014					  2						Point N				 Supplier B									2023-05-03	
us_english	CODE015					  3						Point O				 Supplier A									2023-05-04



--What is the query that sorts the query of data with product price greater than or equal to 0 by product price?(TABLE_products)
SELECT Product_name,Product_image_url,Product_brand,Product_supplier,Product_category,Made_IN,Product_price FROM TABLE_products WHERE Product_price>=0 ORDER BY Product_price asc

Output:
Product_name      Product_image_url			  Product_brand   Product_supplier   Product_category       Made_IN		Product_price
Product A		http://imageurl.com/producta	Brand A			Supplier A			1					Country A	100
Product B		http://imageurl.com/productb	Brand B			Supplier B			2					Country B	200
Product C		http://imageurl.com/productc	Brand C			Supplier C			3					Country C	300
Product D		http://imageurl.com/productd	Brand D			Supplier D			4					Country D	400
Product E		http://imageurl.com/producte	Brand E			Supplier E			5					Country E	500
Product F		http://imageurl.com/productf	Brand F			Supplier F			1					Country F	600
Product G		http://imageurl.com/productg	Brand G			Supplier G			2					Country G	700
Product H		http://imageurl.com/producth	Brand H			Supplier H			3					Country H	800
Product I		http://imageurl.com/producti	Brand I			Supplier I			4					Country I	900
Product J		http://imageurl.com/productj	Brand J			Supplier J			5					Country J	1000
Product K		http://imageurl.com/productk	Brand K			Supplier K			1					Country K	1100
Product L		http://imageurl.com/productl	Brand L			Supplier L			2					Country L	1200
Product M		http://imageurl.com/productm	Brand M			Supplier M			3					Country M	1300
Product N		http://imageurl.com/productn	Brand N			Supplier N			4					Country N	1400
Product O		http://imageurl.com/producto	Brand O			Supplier O			5					Country O	1500



--What is the query that distinct counts with category code, and group by according to product category name?(TABLE_product_category)
SELECT Product_category_name, COUNT(DISTINCT Product_category_code) AS Category_code_count
FROM TABLE_product_category
WHERE Product IN (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15) AND Product_category_name LIKE '[A-O]%'
GROUP BY Product_category_name


Output:
Product_category_name    Category_code_count
Category A					1
Category B					1
Category C					1
Category D					1
Category E					1
Category F					1
Category G					1
Category H					1
Category I					1
Category J					1
Category K					1
Category L					1
Category M					1
Category N					1
Category O					1








--What is the query that passes products_that_thenumber_of_companies_with_which_the_supplier_has_a_joint_agreement data with subquery by product_brand?(TABLE_products_supplier)
SELECT Products_supplierID,
	Product_brand, 
	Products_supplier_name,
	Products_supplier_address ,
	Products_supplier_email ,
	Products_phone_number ,
	Products_that_thenumber_of_companies_with_which_the_supplier_has_a_joint_agreement,
	Products_supplier_security_approval,
	Products_supplier_institutional_approval,
	Products_supplier_evaluation_Score 
	FROM TABLE_products_supplier
	WHERE Products_that_thenumber_of_companies_with_which_the_supplier_has_a_joint_agreement=(Select Product_brand FROM TABLE_products_supplier WHERE Product_brand='5') 

Output:
Products_supplierID  Product_brand      Product_supplier_name  Products_supplier_address    Products_supplier_email        Products_that_thenumber_of_companies_with_which_the_supplier_has_a_joint_agreement  Products_supplier_security_approval  Products_supplier_institutional_approval   Products_supplier_evaluation_Score
1						1				Supplier A				Address A					supplierA@email.com	1234567890							5																		1							1											90
12						9				Supplier L				Address L					supplierL@email.com	2345678901							5																		1							0											80



--What is a query with a postal code greater than 0?(Products_supplier_country)
	SELECT *FROM TABLE_products_supplier_address WHERE Products_supplier_country LIKE '%[A-Z]%' AND Products_supplier_postal_code>=0

Output:
Products_supplier_AdressID  Products_supplier  Products_supplier_country  Products_supplier_city  Products_supplier_street  Products_supplier_postal_code  Created_at
	1							1					 USA						New York		    5th Avenue						10022					2022-01-01
	2							1					 USA						Los Angeles		    Rodeo Drive						90210					2022-01-02
	3							2					 UK							London				Oxford Street					11201					2022-01-03
	4							2					 UK							Manchester			Deansgate						35789					2022-01-04
	5							3					 France						Paris				Champs-Élysées					75008					2022-01-05
	6							3					 France						Marseille			Rue de la République			13001					2022-01-06
	7							4					 Japan						Tokyo				Ginza							1040061					2022-01-07
	8							4					 Japan						Osaka				Dotonbori						5420071					2022-01-08
	9							5					 Germany					Berlin				Kurfürstendamm					10707					2022-01-09
	10							5					 Germany					Munich				Maximilianstraße				80539					2022-01-10
	11							6					 China						Beijing				Wangfujing Street				100006					2022-01-11
	12							6					 China						Shanghai			Nanjing Road					200003					2022-01-12
	13							7					 Australia					Sydney				Pitt Street						2000					022-01-13
	14							7					 Australia					Melbourne			Chapel Street					3181					2022-01-14
	15							8					 Brazil						Rio de Janeiro		Avenida Atlântica				22070					2022-01-15


	--What is the question by credit card and payment approval? (TABLE_payment_Methods)
	SELECT * FROM TABLE_payments_Methods Where Payment_Card='Visa' OR Payment_approval='1'
	
	Output:
PaymentsID Payment_card_full_name Payment_type   Payment_card  Payment_Card_number Payment_country Payment_security_code Payment Approval
	1		John Doe	 		   Credit			Visa		1234567890123456		USA					123					1
	3		David Lee			   Credit			Amex		5555555555554444		USA					789					1
	4		Maria Rodriguez		   Debit			Visa		4444333322221111		Mexico				234					1
	6		Anna Kowalski		   Debit			Visa		4111111111111111		Poland				901					1
	8		Jung-Ho Kim			   Debit			Mastercard	5555555555555599		South Korea			789					1
	9		Luisa Fernandez		   Credit			Visa		4111111111111111		Spain				234					0
	10		Hiroshi Nakamura	   Debit			JCB			3566111111111113		Japan				567					1
	11		Sophie Martin		   Credit			Mastercard	5105105105105100		France				890					1
	12		Giovanni Rossi		   Debit			Visa		4917610000000000		Italy				123					0
	13		Mohammad Khan		   Credit			Discover	6011111111111117		Pakistan			456					1
	15		Lucas Silva		       Credit			Amex		378282246310005			Brazil				234					1







--What is the query that returns the country payment id of the value from country shipping?(TABLE_country)
SELECT * 
FROM TABLE_country 
WHERE Country_payment IN (SELECT Country_shipping FROM TABLE_country WHERE Country_shipping='1')


Output:
CountryID	Country_name	 Country_payment Country_shipping Country_fee_rating Conutry_product_stock	Country_foreign_trade_volume
	1		United States		1						1			10				500000					100000000
	3		Mexico				1						3			20				100000					5000000
	6		United Kingdom		1						1			5				500000					75000000
	8		Germany				1						3			15				100000					2500000
	11		China				1						1			30				500000					1000000000
	13		South Korea			1						3			15				100000					5000000




--WHAT IS THE QUERY SELECTED BY Coupon TYPE AND ORDER BY STARTING DAY?(TABLE_coupons)
SELECT * FROM TABLE_coupons WHERE Coupon_type='Percentage'  ORDER BY Coupon_start_date

Output:
CouponID Coupon_name  Coupon_type Coupon_code Coupon_start_date Coupon_last_date
1		  Coupon 1	 Percentage	   COUPON1		2023-05-01		2023-05-31
2		  Coupon 2	 Percentage	   COUPON2		2023-06-01		2023-06-30
5		  Coupon 5	 Percentage	   COUPON5		2023-09-01		2023-09-30
7		  Coupon 7	 Percentage	   COUPON7		2023-11-01		2023-11-30
9		  Coupon 9	 Percentage	   COUPON9		2024-01-01		2024-01-31
11		  Coupon 11	 Percentage	   COUPON11		2024-03-01		2024-03-31
13	      Coupon 13	 Percentage	   COUPON13		2024-05-01		2024-05-31
15		  Coupon 15	 Percentage	   COUPON15		2024-07-01		2024-07-31










--WHAT IS THE QUERY TO PRIORITIZE THE DISCOUNT AMOUNT TO ITS EQUAL AND DISCOUNT RATE LOWER THAN 5(TABLE_discount)
SELECT  Discount_coupon ,Discount_name,Discount_code,Discount_rate,Discount_amount,Discount_about,Discount_start_date,Discount_end_date,Created_at FROM TABLE_discount 
WHERE Discount_rate=(SELECT Discount_amount=0) AND Discount_amount<=5



Output:
Discount_coupon      Discount_name                 Discount_code   Discount_rate       Discount_amount  Discount_about				Discount_start_date Discount_end_date    Created_at
2					$5 off on your first order		WELCOME5		 0					 5.00			Valid for first order only	 2023-05-01			  2023-05-31		 2023-04-20
5					Free shipping on all orders		FREESHIP		 0					 0.00			Valid for all products	     2023-05-01			  2023-05-31		 2023-04-20




--WHAT IS THE QUERY THAT GETS TOTAL FEEDBACK, AVERAGE SCORE AND TOTAL, UNIQUE CUSTOMERS, NUMBER OF DISCOUNTS, TOTAL DISCOUNT CODE USED, DIFFERENT PRODUCT COUNTERS RECEIVED, DIFFERENT PRODUCT CATEGORY COUNTERS?(TABLE_cusomers_feedback)
SELECT 
    COUNT(*) AS total_feedback_count,
    SUM(Customer_rating) AS total_rating_sum,
    AVG(Customer_rating) AS average_rating,
    COUNT(DISTINCT Customer) AS unique_customers_count,
    COUNT(DISTINCT The_discount_code_used_by_the_customer) AS unique_discount_codes_count,
    SUM(CASE WHEN The_discount_code_used_by_the_customer <> '' THEN 1 ELSE 0 END) AS total_discount_codes_used,
    COUNT(DISTINCT Product_purchased_by_the_customer) AS unique_products_purchased_count,
    COUNT(DISTINCT Product_category_purchased_by_the_customer) AS unique_product_categories_count
FROM 
    TABLE_customers_feedback;


Output:
total_feedback_count   total_rating_sum   average_rating   unique_customers_count		unique_discount_codes_count    total_discounts_codes_used	total_products_purchased_count	  unique_product_categories_count
	12						47				3					 12								12							 12						       12								4
		

	
--What is the query that returns the total number of order tracking, the number of unique product categories ordered, and the number of unique products ordered?(TABLE_order_tracking)
Select 
COUNT(*) AS total_order_tracking,
COUNT(DISTINCT Product_category) AS unique_Product_category,
COUNT(DISTINCT Product) AS unique_Product
FROM TABLE_order_tracking


Output:
total_order_tracking    unique_Product_category   unique_Product
	 15							3						15




--What is the query that shows any record in the Employee field that contains the characters "A-Z" in the Contracted_company_name field, as well as any record with uppercase letters?"(TABLE_checks_or_gifts_given)
SELECT Check_GiftsID,Contracted_company_name,Employee FROM TABLE_checks_or_gifts_given where Employee LIKE '%[A-Z]%' or Contracted_company_name LIKE '%A-Z%'

Output:
Check_GiftsID  Contracted_company_name		Employee
	1					ABC Inc.			John Doe
	2					XYZ Ltd.			Jane Smith
	3					DEF Corp.			Bob Johnson
	4					GHI LLC				Susan Brown
	5					JKL Co.				David Lee
	6					MNO Inc.			Emily Davis
	7					PQR Ltd.			Michael Wilson
	8					STU Corp.			Sarah Kim
	9					VWX LLC				Jason Chen
	10					YZA Co.				Linda Wu
	11					BCD Inc.			Kevin Lee
	12					EFG Ltd.			Amanda Nguyen
	13					HIJ Corp.			Brian Lee
	14					KLM LLC				Karen Chang
	15					NOP Co.			    Lee

--What is the query that sorts the results in descending order by department, average age, and average years of work?(TABLE_employee_details)
	SELECT Employee_Department,
       AVG(Employee_age) AS avg_age,
       AVG(Employee_work_years) AS avg_work_years,
       COUNT(*) AS employee_count
FROM TABLE_employee_details
GROUP BY Employee_Department,
         CASE
            WHEN Employee_age BETWEEN 18 AND 30 THEN '18-30'
            WHEN Employee_age BETWEEN 31 AND 40 THEN '31-40'
            WHEN Employee_age BETWEEN 41 AND 50 THEN '41-50'
            ELSE '51+'
         END,
         CASE
            WHEN Employee_work_years BETWEEN 2 AND 5 THEN '2-5'
            WHEN Employee_work_years BETWEEN 6 AND 10 THEN '6-10'
            ELSE '11+'
         END
ORDER BY Employee_Department, avg_age DESC, avg_work_years DESC;




Output:
Employee_Department  avg_age  avg_work_years  employee_count
	Finance				30			6				2
	HR					28			4				2
	IT					31			5				2
	IT					25			2				2
	Marketing			32			5				2
	Marketing			27			3				2
	Sales				35			8				2
	Sales				30			5				1










---What is the query that lists the total number of employees, average number of employees, number of unique job roles, total salary, average salary, average vacation days, average sick leave days and average overtime hours for each department, and department phone information?(TABLE_employee_departments_details)
Select 
COUNT (Department_name) AS Total_Department,
SUM(Employee) AS Total_department_employee,
AVG(Employee) AS Employee_average,
SUM(Department_employee_number) AS Total_Department_employee_number,
COUNT(DISTINCT Department_job_role) AS Unique_department_job_role,
SUM(Department_average_salary) AS Departments_total_salary,
AVG(Department_average_salary) AS Total_Average,
AVG(Department_vacation_days_of_year) AS Average_vacation_days,
AVG(Department_sick_leave_days_of_year) AS Average_sick_days,
AVG(Department_total_overtime_hours) AS Average_overtime_hours,
Department_phone
FROM TABLE_employee_departments_details
GROUP BY Department_phone



Output:
Unique_supervisorID     Supervisor_name    Supervisor_age   Average_supervisor_age    Supervisor_Country     Unique_supervisor_country      Supervisor_email	Supervisor_phone    Supervisor_performance_rating    
1	10	10	8	1	55000	55000	18	8	4	555-1357
1	9	9	20	1	80000	80000	25	10	8	555-2468
1	1	1	30	1	90000	90000	28	10	9	555-3690
1	6	6	15	1	65000	65000	20	10	5	555-4321
1	7	7	10	1	40000	40000	15	5	3	555-5678
1	4	4	18	1	75000	75000	20	8	6	555-7530
1	2	2	12	1	70000	70000	22	12	7	555-7890
1	3	3	25	1	50000	50000	15	8	4	555-9876










--What is the query that is calculated by grouping information such as the number of managers with which characteristics, their average age, the number of managers in different countries, performance evaluations?(TABLE_supervisor_details)
SELECT 
COUNT(*) Unique_supervisorID ,
Supervisor_name,
Supervisor_age,
AVG(Supervisor_age) AS Average_Supervisor_age,
Supervisor_country,
COUNT(DISTINCT Supervisor_country) Unique_Supervisor_country,
Supervisor_email,
Supervisor_phone,
Supervisor_performance_rating
FROM TABLE_supervisor_details
GROUP BY 
Supervisor_name,Supervisor_age,Supervisor_country,Supervisor_email,Supervisor_phone,Supervisor_performance_rating



Output:
Unique_supervisorID			Supervisor_name    Supervisor_age   Average_supervisor_age    Supervisor_Country     Unique_supervisor_country      Supervisor_email			 Supervisor_phone    Supervisor_performance_rating  
	1						 Amy Johnson		  28					28						USA						1						amy.johnson@example.com		   5558889999				15
	1						 Bob Johnson		  50					50						Mexico					1						bob.johnson@example.com		   5555555555				15
	1						 David Kim			  35					35						Canada					1						david.kim@example.com	       5554443333				15
	1						 Emily Wilson		  37					37						Canada					1						emily.wilson@example.com	   5559998888				15
    1						 Jane Doe			  40					40						Canada					1						jane.doe@example.com	       5559876543				15
    1						 John Smith			  30					30						USA						1						john.smith@example.com	       5551234567				15
	1						 Juan Garcia		  60					60						Mexico					1						juan.garcia@example.com		   5552221111				15
	1						 Karen Martinez	      55					55						Mexico					1						karen.martinez@example.com	   5557778888				15
	1						 Kevin Lee	          32					32						USA						1						kevin.lee@example.com	       5556667777				15
	1						 Lisa Chen			  38					38						Canada					1						lisa.chen@example.com	       5556667777				15
	1						 Maria Sanchez		  48					48						Mexico					1						maria.sanchez@example.com	   5554445555				15
	1					 	 Mike Miller		  42					42						USA						1						mike.miller@example.com	       5553334444				15
	1						 Pedro Hernandez	  52					52						Mexico					1						pedro.hernandez@example.com	   5551113333				15
	1						 Steven Lee	          44					44						Canada					1						steven.lee@example.com		   5552223333				15
	1						 Susan Lee			  45					45						USA						1						susan.lee@example.com	       5551112222				15



--What is the query that aggregates and groups the number of employees, job role name, job characteristics, and job description information for each job role?(TABLE_department_job_role_details )
SELECT 
COUNT(Job_roleID) AS Employee_Count,
Job_role_name AS Role_name,
Job_specification,
Job_description
FROM TABLE_department_job_role_details 
GROUP BY Job_role_name,Job_specification,Job_description




Output:
Employee_Count	Role_name					Job_specification												Job_description
	1			Accountant					Minimum of 3 years experience in accounting					Responsible for investment
	1			Accountant					Minimum of 3 years experience in accounting					Responsible for managing company finances
	1			Human Resources	Manager		Minimum of 5 years experience in HR 						Responsible for human relations
	1			Human Resources	 Manager	Minimum of 5 years experience in HR							Responsible for managing employee relations and recruitment
	1			Marketing Specialist		Minimum of 3 years experience in marketing					Responsible for promoting and advertising the company
	1			Marketing Specialist		Minimum of 3 years experience in marketing					Responsible for sales
	1			Sales Representative		Minimum of 2 years experience in sales						Responsible for discounts
	1			Sales Representative		Minimum of 2 years experience in sales						Responsible for selling company products and services
	1			Software Developer			Minimum of 2 years experience in software development		Responsible for developing back-end
	1			Software Developer			Minimum of 2 years experience in software development		Responsible for developing software applications










--What is the query from the table TABLE_contracted_companies_detail_list that lists the names of companies with above average annual net income, annual net income, average net income of all companies in the table, and the difference between each company's average net income?(TABLE_contracted_companies_detail_list)
	SELECT 
    Company_name,
    Annual_net_profit_of_companies,
    (SELECT AVG(Annual_net_profit_of_companies) FROM TABLE_contracted_companies_detail_list) AS avg_net_profit,
    (Annual_net_profit_of_companies - (SELECT AVG(Annual_net_profit_of_companies) FROM TABLE_contracted_companies_detail_list)) AS diff_from_avg_profit
FROM 
    TABLE_contracted_companies_detail_list
WHERE 
    Annual_net_profit_of_companies > (SELECT AVG(Annual_net_profit_of_companies) FROM TABLE_contracted_companies_detail_list);

	
	Output:

	Company_name   Annual_net_profit_of_companies   avg_net_profit  diff_from_avg_profit
	XYZ Corporation		1500000000					1162500000		337500000
	DEF Enterprises		1200000000					1162500000		37500000
	HIJ Corporation		1700000000					1162500000		537500000
	RST Enterprises		1300000000					1162500000		137500000
	JKL Corporation		1600000000					1162500000		437500000






--What is the query that allows contract companies serving more than 10 countries and with annual net profits of more than $1 billion to be ranked according to the number of employees according to the discount rates they get by making bulk purchases?(TABLE_contracted_companies_detail_list)

	SELECT c.Company_name, c.Company_employee_number, p.Supplier_Bulk_discount, p.Discounted_price
FROM TABLE_contracted_companies_detail_list c
INNER JOIN (
	SELECT Supplier_paymentID, Supplier_Bulk_discount, Discounted_price
	FROM TABLE_supplier_payments
	WHERE Supplier_bulk_purchase = 1
) p ON c.CompanyID = p.Supplier_paymentID
WHERE c.Number_of_countries_served_by_the_company >= 10
	AND c.Annual_net_profit_of_companies >= 1000000000
ORDER BY p.Supplier_Bulk_discount DESC, c.Company_employee_number DESC;


Output:
Company_name	 Company_employee_number	Supplier_Bulk_discount  Discounted_price
JKL Corporation		 85000						40							300
RST Enterprises		 90000						30							350
HIJ Corporation		 80000						25							375
DEF Enterprises		 80000						15							425
XYZ Corporation		 75000						10							450
ABC Company			 60000						5							475





--What is the query written according to the department condition?(TABLE_DEPARTMENT_SWOT_ANALYSIS)
SELECT * FROM TABLE_DEPARTMENT_SWOT_ANALYSIS
WHERE Department = '4'




Output:
Department		Department_strengths		Department_weakness			Department_oppurtinities		Department_changes		 Creation_date
	4			Experienced staff			High turnover rate			New technology adoption			Regulatory changes		 2022-01-03