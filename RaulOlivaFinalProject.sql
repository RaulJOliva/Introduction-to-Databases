/*Raul Oliva
* IT240
* Introduction to Databases
* DePaul University Spring 2019
*/

/*
1.a)
*/


CREATE TABLE customers(
	customerID varchar(10),
	firstname varchar(255),
	lastname varchar(255),
	city varchar(50),
	country varchar(50),
	phoneNumber varchar(255),
	PRIMARY KEY (customerID)
	);

CREATE TABLE orders(
	customerID varchar(10),
	OrderNumber int,
	OrderDate date,
	totalAmount float,
	
	PRIMARY KEY (OrderNumber)
	FOREIGN KEY (customerID) REFERENCES customers(customerID)
	);
	
CREATE TABLE orderLineItems(
	OrderNumber int,
	Qty int,
	SalePrice float,
	itemSold varchar(255),
	
	FOREIGN KEY (OrderNumber) REFERENCES orders(OrderNumber)
);	

CREATE TABLE productInfo(
	itemSold varchar(255),
	retailPrice float,
	Packaging varchar(255),
	isDiscontinued boolean,
	companyName varchar(255),
	
	PRIMARY KEY (itemSold)
	
);

CREATE TABLE supplierInformation(
	companyName varchar(255),
	contactName varchar(255),
	city varchar(50),
	country varchar(50),
	phone varchar(30),
	fax varchar(30),
	
	PRIMARY KEY(companyName)
	
);

/*
1.b)
*/
	
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('1','Paul','Henriot','Reims','France','26.47.15.10');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('2','Karin','Josephs','Münster','Germany','0251-031259');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('3','Mario','Pontes','Rio de Janeiro','Brazil','(21) 555-0091');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('4','Mary','Saveley','Lyon','France','78.32.54.86');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('5','Pascale','Cartrain','Charleroi','Belgium','(071) 23 67 22 20');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('6','Yang','Wang','Bern','Switzerland','0452-076545');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('7','Michael','Holz','Genève','Switzerland','0897-034214');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('8','Paula','Parente','Resende','Brazil','(14) 555-8122');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('9','Carlos','Hernández','San Cristóbal','Venezuela','(5) 555-1340');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('10','Roland','Mendel','Graz','Austria','7675-3425');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('11','Francisco','Chang','México D.F.','Mexico','(5) 555-3392');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('12','Henriette','Pfalzheim','Köln','Germany','0221-0644327');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('13','Bernardo','Batista','Rio de Janeiro','Brazil','(21) 555-4252');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('14','Paula','Wilson','Albuquerque','USA','(505) 555-5939');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('15','Maria','Larsson','Bräcke','Sweden','0695-34 67 21');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('16','Frédérique','Citeaux','Strasbourg','France','88.60.15.31');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('17','Pirkko','Koskitalo','Oulu','Finland','981-443655');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('18','Peter','Franken','München','Germany','089-0877310');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('19','Manuel','Pereira','Caracas','Venezuela','(2) 283-2951');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('20','Karl','Jablonski','Seattle','USA','(206) 555-4112');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('21','Art','Braunschweiger','Lander','USA','(307) 555-4680');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('22','Horst','Kloss','Cunewalde','Germany','0372-035188');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('23','Giovanni','Rovelli','Bergamo','Italy','035-640230');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('24','Miguel','Angel Paolino','México D.F.','Mexico','(5) 555-2933');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('25','Alexander','Feuer','Leipzig','Germany','0342-023176');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('26','Christina','Berglund','Luleå','Sweden','0921-12 34 65');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('27','Renate','Messner','Frankfurt a.M.','Germany','069-0245984');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('28','Alejandra','Camino','Madrid','Spain','(91) 745 6200');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('29','Carlos','González','Barquisimeto','Venezuela','(9) 331-6954');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('30','Janete','Limeira','Rio de Janeiro','Brazil','(21) 555-3412');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('31','Maurizio','Moroni','Reggio Emilia','Italy','0522-556721');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('32','Victoria','Ashworth','London','UK','(171) 555-1212');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('33','Pedro','Afonso','Sao Paulo','Brazil','(11) 555-7647');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('34','Anabela','Domingues','Sao Paulo','Brazil','(11) 555-2167');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('35','Patricia','McKenna','Cork','Ireland','2967 542');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('36','Rita','Müller','Stuttgart','Germany','0711-020361');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('37','José','Pedro Freyre','Sevilla','Spain','(95) 555 82 82');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('38','Rene','Phillips','Anchorage','USA','(907) 555-7584');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('39','Fran','Wilson','Portland','USA','(503) 555-9573');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('40','Ana','Trujillo','México D.F.','Mexico','(5) 555-4729');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('41','Liz','Nixon','Portland','USA','(503) 555-3612');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('42','Janine','Labrune','Nantes','France','40.67.88.88');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('43','Helen','Bennett','Cowes','UK','(198) 555-8888');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('44','Guillermo','Fernández','México D.F.','Mexico','(5) 552-3745');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('45','Philip','Cramer','Brandenburg','Germany','0555-09876');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('46','Jose','Pavarotti','Boise','USA','(208) 555-8097');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('47','Martín','Sommer','Madrid','Spain','(91) 555 22 82');
INSERT INTO customers (customerID, firstname, lastname, city, country, phoneNumber) values ('48','Lino','Rodriguez','Lisboa','Portugal','(1) 354-2534');


INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '1','542378','41094','440');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '2','542379','41095','1863.4');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '3','542380','41098','1813');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '4','542381','41098','670.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '5','542382','41099','3730');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '3','542383','41100','1444.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '6','542384','41101','625.2');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '7','542385','41102','2490.5');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '8','542386','41105','517.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '9','542387','41106','1119.9');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '10','542388','41107','2018.6');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '11','542389','41108','100.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '12','542390','41109','1746.2');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '13','542391','41109','448');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '14','542392','41112','624.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '10','542393','41113','2464.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '15','542394','41114','724.5');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '16','542395','41115','1176');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '17','542396','41116','364.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '18','542397','41119','4031');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '19','542398','41120','1101.2');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '20','542399','41121','676');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '17','542400','41122','1376');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '21','542401','41122','48');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '14','542402','41123','1456');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '22','542403','41126','2142.4');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '1','542404','41127','538.6');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '23','542405','41128','307.2');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '24','542406','41129','420');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '25','542407','41130','1200.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '26','542408','41133','1488.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '27','542409','41134','468');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '26','542410','41135','613.2');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '28','542411','41135','86.5');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '28','542412','41136','155.4');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '29','542413','41137','1414.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '27','542414','41140','1452');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '22','542415','41141','2179.2');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '22','542416','41142','3016');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '30','542417','41143','924');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '31','542418','41144','89');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '32','542419','41147','479.4');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '33','542420','41148','2169');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '13','542421','41148','552.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '34','542422','41149','1296');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '24','542423','41150','848.7');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '14','542424','41151','1887.6');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '1','542425','41154','121.6');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '29','542426','41155','1050.6');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '16','542427','41156','1420');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '35','542428','41157','3127');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '30','542429','41158','349.5');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '23','542430','41161','608');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '36','542431','41161','755');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '5','542432','41162','2708.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '37','542433','41163','1242');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '24','542434','41164','954.4');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '38','542435','41165','4157');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '28','542436','41168','498.5');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '39','542437','41169','424');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '40','542438','41170','88.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '35','542439','41171','1762');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '41','542440','41172','336');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '42','542441','41172','268.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '36','542442','41175','1614.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '22','542443','41176','182.4');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '14','542444','41177','2327');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '43','542445','41178','516.8');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '14','542446','41179','2835');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '39','542447','41182','288');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '43','542448','41183','240.4');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '24','542449','41184','1191.2');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '17','542450','41185','516');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '43','542451','41185','144');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '44','542452','41186','112');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '45','542453','41189','164.4');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '46','542454','41190','6155.9');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '45','542455','41191','1497');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '47','542456','41192','982');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '15','542457','41193','2262.5');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '48','542458','41196','1168');
INSERT INTO orders(customerID,OrderNumber,OrderDate,totalAmount) values( '21','542459','41197','4819.4');


INSERT INTO orderLineItems values('542378','12','14','Queso Cabrales');
INSERT INTO orderLineItems values('542378','10','9.8','Singaporean Hokkien Fried Mee');
INSERT INTO orderLineItems values('542378','5','34.8','Mozzarella di Giovanni');
INSERT INTO orderLineItems values('542379','9','18.6','Tofu');
INSERT INTO orderLineItems values('542379','40','42.4','Manjimup Dried Apples');
INSERT INTO orderLineItems values('542380','10','7.7','Jacks New England Clam Chowder');
INSERT INTO orderLineItems values('542380','35','42.4','Manjimup Dried Apples');
INSERT INTO orderLineItems values('542380','15','16.8','Louisiana Fiery Hot Pepper Sauce');
INSERT INTO orderLineItems values('542381','6','16.8','Gustafs Knäckebröd');
INSERT INTO orderLineItems values('542381','15','15.6','Ravioli Angelo');
INSERT INTO orderLineItems values('542381','20','16.8','Louisiana Fiery Hot Pepper Sauce');
INSERT INTO orderLineItems values('542382','40','64.8','Sir Rodneys Marmalade');
INSERT INTO orderLineItems values('542382','25','2','Geitost');
INSERT INTO orderLineItems values('542382','40','27.2','Camembert Pierrot');
INSERT INTO orderLineItems values('542383','20','10','Gorgonzola Telino');
INSERT INTO orderLineItems values('542383','42','14.4','Chartreuse verte');
INSERT INTO orderLineItems values('542383','40','16','Maxilaku');
INSERT INTO orderLineItems values('542384','15','3.6','Guaraná Fantástica');
INSERT INTO orderLineItems values('542384','21','19.2','Pâté chinois');
INSERT INTO orderLineItems values('542384','21','8','Longlife Tofu');
INSERT INTO orderLineItems values('542385','20','15.2','Chang');
INSERT INTO orderLineItems values('542385','35','13.9','Pavlova');
INSERT INTO orderLineItems values('542385','25','15.2','Inlagd Sill');
INSERT INTO orderLineItems values('542385','30','44','Raclette Courdavault');
INSERT INTO orderLineItems values('542386','15','26.2','Perth Pasties');
INSERT INTO orderLineItems values('542386','12','10.4','Original Frankfurter grüne Soße');
INSERT INTO orderLineItems values('542387','25','35.1','Schoggi Schokolade');
INSERT INTO orderLineItems values('542387','6','14.4','Chartreuse verte');
INSERT INTO orderLineItems values('542387','15','10.4','Original Frankfurter grüne Soße');
INSERT INTO orderLineItems values('542388','50','15.2','Chang');
INSERT INTO orderLineItems values('542388','65','17','Chef Antons Gumbo Mix');
INSERT INTO orderLineItems values('542388','6','25.6','Mascarpone Fabioli');
INSERT INTO orderLineItems values('542389','10','8','Sir Rodneys Scones');
INSERT INTO orderLineItems values('542389','1','20.8','Gravad lax');
INSERT INTO orderLineItems values('542390','16','7.7','Jacks New England Clam Chowder');
INSERT INTO orderLineItems values('542390','50','15.6','Ravioli Angelo');
INSERT INTO orderLineItems values('542390','15','39.4','Tarte au sucre');
INSERT INTO orderLineItems values('542390','21','12','Outback Lager');
INSERT INTO orderLineItems values('542391','20','8','Sir Rodneys Scones');
INSERT INTO orderLineItems values('542391','20','14.4','Steeleye Stout');
INSERT INTO orderLineItems values('542392','12','17','Chef Antons Gumbo Mix');
INSERT INTO orderLineItems values('542392','15','24','Uncle Bobs Organic Dried Pears');
INSERT INTO orderLineItems values('542392','2','30.4','Gnocchi di nonna Alice');
INSERT INTO orderLineItems values('542393','60','13.9','Pavlova');
INSERT INTO orderLineItems values('542393','28','3.6','Guaraná Fantástica');
INSERT INTO orderLineItems values('542393','60','20.7','Nord-Ost Matjeshering');
INSERT INTO orderLineItems values('542393','36','8','Longlife Tofu');
INSERT INTO orderLineItems values('542394','35','15.2','Chang');
INSERT INTO orderLineItems values('542394','25','7.7','Jacks New England Clam Chowder');
INSERT INTO orderLineItems values('542395','30','31.2','Alice Mutton');
INSERT INTO orderLineItems values('542395','20','12','Outback Lager');
INSERT INTO orderLineItems values('542396','12','30.4','Queso Manchego La Pastora');
INSERT INTO orderLineItems values('542397','50','14.7','Boston Crab Meat');
INSERT INTO orderLineItems values('542397','70','44','Raclette Courdavault');
INSERT INTO orderLineItems values('542397','15','14.4','Lakkalikööri');
INSERT INTO orderLineItems values('542398','10','99','Thüringer Rostbratwurst');
INSERT INTO orderLineItems values('542398','4','27.8','Mozzarella di Giovanni');
INSERT INTO orderLineItems values('542399','60','2','Geitost');
INSERT INTO orderLineItems values('542399','20','27.8','Mozzarella di Giovanni');
INSERT INTO orderLineItems values('542400','30','15.2','Inlagd Sill');
INSERT INTO orderLineItems values('542400','25','36.8','Ipoh Coffee');
INSERT INTO orderLineItems values('542401','24','2','Geitost');
INSERT INTO orderLineItems values('542402','6','64.8','Sir Rodneys Marmalade');
INSERT INTO orderLineItems values('542402','40','10','Gorgonzola Telino');
INSERT INTO orderLineItems values('542402','24','27.8','Mozzarella di Giovanni');
INSERT INTO orderLineItems values('542403','24','24.8','Ikura');
INSERT INTO orderLineItems values('542403','15','10','Gorgonzola Telino');
INSERT INTO orderLineItems values('542403','20','2','Geitost');
INSERT INTO orderLineItems values('542403','60','14.7','Boston Crab Meat');
INSERT INTO orderLineItems values('542403','33','14.4','Lakkalikööri');
INSERT INTO orderLineItems values('542404','20','17.2','Flotemysost');
INSERT INTO orderLineItems values('542404','7','27.8','Mozzarella di Giovanni');
INSERT INTO orderLineItems values('542405','12','3.6','Guaraná Fantástica');
INSERT INTO orderLineItems values('542405','6','44','Raclette Courdavault');
INSERT INTO orderLineItems values('542406','15','24.8','Ikura');
INSERT INTO orderLineItems values('542406','10','4.8','Konbu');
INSERT INTO orderLineItems values('542407','20','36.4','Rössle Sauerkraut');
INSERT INTO orderLineItems values('542407','12','39.4','Tarte au sucre');
INSERT INTO orderLineItems values('542408','16','15.5','Gula Malacca');
INSERT INTO orderLineItems values('542408','15','44','Raclette Courdavault');
INSERT INTO orderLineItems values('542408','8','35.1','Vegie-spread');
INSERT INTO orderLineItems values('542408','25','12','Röd Kaviar');
INSERT INTO orderLineItems values('542409','15','31.2','Alice Mutton');
INSERT INTO orderLineItems values('542410','12','3.6','Guaraná Fantástica');
INSERT INTO orderLineItems values('542410','20','19.2','Pâté chinois');
INSERT INTO orderLineItems values('542410','30','6.2','Rhönbräu Klosterbier');
INSERT INTO orderLineItems values('542411','1','7.3','Teatime Chocolate Biscuits');
INSERT INTO orderLineItems values('542411','6','3.6','Guaraná Fantástica');
INSERT INTO orderLineItems values('542411','4','14.4','Steeleye Stout');
INSERT INTO orderLineItems values('542412','6','20.7','Nord-Ost Matjeshering');
INSERT INTO orderLineItems values('542412','2','15.6','Ravioli Angelo');
INSERT INTO orderLineItems values('542413','20','12.4','Genen Shouyu');
INSERT INTO orderLineItems values('542413','18','7.3','Teatime Chocolate Biscuits');
INSERT INTO orderLineItems values('542413','35','27.2','Camembert Pierrot');
INSERT INTO orderLineItems values('542413','3','27.8','Mozzarella di Giovanni');
INSERT INTO orderLineItems values('542414','15','35.1','Schoggi Schokolade');
INSERT INTO orderLineItems values('542414','21','15.5','Gula Malacca');
INSERT INTO orderLineItems values('542414','20','27.2','Camembert Pierrot');
INSERT INTO orderLineItems values('542414','5','11.2','Laughing Lumberjack Lager');
INSERT INTO orderLineItems values('542415','45','14.4','Chai');
INSERT INTO orderLineItems values('542415','40','14.7','Boston Crab Meat');
INSERT INTO orderLineItems values('542415','36','26.2','Perth Pasties');
INSERT INTO orderLineItems values('542416','100','14.4','Steeleye Stout');
INSERT INTO orderLineItems values('542416','40','39.4','Tarte au sucre');
INSERT INTO orderLineItems values('542417','40','13.9','Pavlova');
INSERT INTO orderLineItems values('542417','20','11.2','Sasquatch Ale');
INSERT INTO orderLineItems values('542417','15','9.6','Spegesild');
INSERT INTO orderLineItems values('542418','10','5.9','Tourtière');
INSERT INTO orderLineItems values('542418','3','10','Scottish Longbreads');
INSERT INTO orderLineItems values('542419','30','8','Aniseed Syrup');
INSERT INTO orderLineItems values('542419','9','26.6','Wimmers gute Semmelknödel');
INSERT INTO orderLineItems values('542420','20','17','Chef Antons Gumbo Mix');
INSERT INTO orderLineItems values('542420','15','99','Thüringer Rostbratwurst');
INSERT INTO orderLineItems values('542420','15','16','Maxilaku');
INSERT INTO orderLineItems values('542420','10','10.4','Original Frankfurter grüne Soße');
INSERT INTO orderLineItems values('542421','20','4.8','Konbu');
INSERT INTO orderLineItems values('542421','24','15.5','Gula Malacca');
INSERT INTO orderLineItems values('542421','2','42.4','Manjimup Dried Apples');
INSERT INTO orderLineItems values('542422','20','64.8','Sir Rodneys Marmalade');
INSERT INTO orderLineItems values('542423','12','50','Carnarvon Tigers');
INSERT INTO orderLineItems values('542423','10','3.6','Guaraná Fantástica');
INSERT INTO orderLineItems values('542423','5','35.1','Vegie-spread');
INSERT INTO orderLineItems values('542423','6','6.2','Rhönbräu Klosterbier');
INSERT INTO orderLineItems values('542424','18','14.4','Chai');
INSERT INTO orderLineItems values('542424','15','31.2','Alice Mutton');
INSERT INTO orderLineItems values('542424','15','36.8','Ipoh Coffee');
INSERT INTO orderLineItems values('542424','21','27.2','Camembert Pierrot');
INSERT INTO orderLineItems values('542424','6','6.2','Rhönbräu Klosterbier');
INSERT INTO orderLineItems values('542425','4','30.4','Gnocchi di nonna Alice');
INSERT INTO orderLineItems values('542426','12','16.8','Queso Cabrales');
INSERT INTO orderLineItems values('542426','30','13.9','Pavlova');
INSERT INTO orderLineItems values('542426','15','28.8','Gudbrandsdalsost');
INSERT INTO orderLineItems values('542427','60','14.4','Chartreuse verte');
INSERT INTO orderLineItems values('542427','20','27.8','Mozzarella di Giovanni');
INSERT INTO orderLineItems values('542428','40','15.2','Chang');
INSERT INTO orderLineItems values('542428','40','15.2','Inlagd Sill');
INSERT INTO orderLineItems values('542428','30','44','Raclette Courdavault');
INSERT INTO orderLineItems values('542428','15','39.4','Tarte au sucre');
INSERT INTO orderLineItems values('542429','15','7.3','Teatime Chocolate Biscuits');
INSERT INTO orderLineItems values('542429','20','12','Outback Lager');
INSERT INTO orderLineItems values('542430','30','13.6','Louisiana Hot Spiced Okra');
INSERT INTO orderLineItems values('542430','20','10','Scottish Longbreads');
INSERT INTO orderLineItems values('542431','10','14.7','Boston Crab Meat');
INSERT INTO orderLineItems values('542431','20','30.4','Gnocchi di nonna Alice');
INSERT INTO orderLineItems values('542432','40','31.2','Alice Mutton');
INSERT INTO orderLineItems values('542432','28','36.4','Rössle Sauerkraut');
INSERT INTO orderLineItems values('542432','12','36.8','Ipoh Coffee');
INSERT INTO orderLineItems values('542433','40','14.7','Boston Crab Meat');
INSERT INTO orderLineItems values('542433','30','16.8','Louisiana Fiery Hot Pepper Sauce');
INSERT INTO orderLineItems values('542433','15','10','Scottish Longbreads');
INSERT INTO orderLineItems values('542434','30','16','Maxilaku');
INSERT INTO orderLineItems values('542434','10','44','Raclette Courdavault');
INSERT INTO orderLineItems values('542434','2','17.2','Flotemysost');
INSERT INTO orderLineItems values('542435','25','50','Carnarvon Tigers');
INSERT INTO orderLineItems values('542435','25','99','Thüringer Rostbratwurst');
INSERT INTO orderLineItems values('542435','30','14.4','Chartreuse verte');
INSERT INTO orderLineItems values('542436','10','20.7','Nord-Ost Matjeshering');
INSERT INTO orderLineItems values('542436','10','26.2','Perth Pasties');
INSERT INTO orderLineItems values('542436','5','5.9','Tourtière');
INSERT INTO orderLineItems values('542437','10','39.4','Tarte au sucre');
INSERT INTO orderLineItems values('542437','3','10','Scottish Longbreads');
INSERT INTO orderLineItems values('542438','1','28.8','Gudbrandsdalsost');
INSERT INTO orderLineItems values('542438','5','12','Outback Lager');
INSERT INTO orderLineItems values('542439','20','17.6','Chef Antons Cajun Seasoning');
INSERT INTO orderLineItems values('542439','30','20','Grandmas Boysenberry Spread');
INSERT INTO orderLineItems values('542439','2','11.2','Singaporean Hokkien Fried Mee');
INSERT INTO orderLineItems values('542439','20','36.8','Ipoh Coffee');
INSERT INTO orderLineItems values('542439','3','17.2','Flotemysost');
INSERT INTO orderLineItems values('542440','10','13.9','Pavlova');
INSERT INTO orderLineItems values('542440','5','39.4','Tarte au sucre');
INSERT INTO orderLineItems values('542441','6','11.2','Singaporean Hokkien Fried Mee');
INSERT INTO orderLineItems values('542441','7','28.8','Gudbrandsdalsost');
INSERT INTO orderLineItems values('542442','4','36.4','Rössle Sauerkraut');
INSERT INTO orderLineItems values('542442','24','36.8','Ipoh Coffee');
INSERT INTO orderLineItems values('542442','20','26.2','Perth Pasties');
INSERT INTO orderLineItems values('542442','10','6.2','Rhönbräu Klosterbier');
INSERT INTO orderLineItems values('542443','12','15.2','Inlagd Sill');
INSERT INTO orderLineItems values('542444','40','25.6','Mascarpone Fabioli');
INSERT INTO orderLineItems values('542444','30','10.6','Escargots de Bourgogne');
INSERT INTO orderLineItems values('542444','25','39.4','Tarte au sucre');
INSERT INTO orderLineItems values('542445','14','11.2','Sasquatch Ale');
INSERT INTO orderLineItems values('542445','30','12','Outback Lager');
INSERT INTO orderLineItems values('542446','10','7.7','Jacks New England Clam Chowder');
INSERT INTO orderLineItems values('542446','70','39.4','Tarte au sucre');
INSERT INTO orderLineItems values('542447','20','14.4','Chai');
INSERT INTO orderLineItems values('542448','20','7.7','Jacks New England Clam Chowder');
INSERT INTO orderLineItems values('542448','6','14.4','Lakkalikööri');
INSERT INTO orderLineItems values('542449','8','31.2','Alice Mutton');
INSERT INTO orderLineItems values('542449','14','36.4','Rössle Sauerkraut');
INSERT INTO orderLineItems values('542449','30','14.4','Lakkalikööri');
INSERT INTO orderLineItems values('542450','30','17.2','Flotemysost');
INSERT INTO orderLineItems values('542451','10','14.4','Steeleye Stout');
INSERT INTO orderLineItems values('542452','20','5.6','Filo Mix');
INSERT INTO orderLineItems values('542453','5','12.4','Genen Shouyu');
INSERT INTO orderLineItems values('542453','4','11.2','NuNuCa Nuß-Nougat-Creme');
INSERT INTO orderLineItems values('542453','4','14.4','Chartreuse verte');
INSERT INTO orderLineItems values('542454','21','13.9','Pavlova');
INSERT INTO orderLineItems values('542454','70','14.4','Steeleye Stout');
INSERT INTO orderLineItems values('542454','30','9.6','Spegesild');
INSERT INTO orderLineItems values('542454','40','44','Raclette Courdavault');
INSERT INTO orderLineItems values('542454','80','35.1','Vegie-spread');
INSERT INTO orderLineItems values('542455','6','20','Grandmas Boysenberry Spread');
INSERT INTO orderLineItems values('542455','12','4.8','Konbu');
INSERT INTO orderLineItems values('542455','9','18.6','Tofu');
INSERT INTO orderLineItems values('542455','4','10','Gorgonzola Telino');
INSERT INTO orderLineItems values('542455','40','27.8','Mozzarella di Giovanni');
INSERT INTO orderLineItems values('542456','24','17.6','Chef Antons Cajun Seasoning');
INSERT INTO orderLineItems values('542456','16','15.6','Ravioli Angelo');
INSERT INTO orderLineItems values('542456','50','6.2','Rhönbräu Klosterbier');
INSERT INTO orderLineItems values('542457','25','15.2','Chang');
INSERT INTO orderLineItems values('542457','50','16.8','Queso Cabrales');
INSERT INTO orderLineItems values('542457','35','20.7','Nord-Ost Matjeshering');
INSERT INTO orderLineItems values('542457','30','10.6','Escargots de Bourgogne');
INSERT INTO orderLineItems values('542458','9','44','Raclette Courdavault');
INSERT INTO orderLineItems values('542458','40','16.8','Louisiana Fiery Hot Pepper Sauce');
INSERT INTO orderLineItems values('542458','10','10','Scottish Longbreads');
INSERT INTO orderLineItems values('542459','10','7.3','Teatime Chocolate Biscuits');
INSERT INTO orderLineItems values('542459','8','20.7','Nord-Ost Matjeshering');
INSERT INTO orderLineItems values('542459','20','210.8','Côte de Blaye');
INSERT INTO orderLineItems values('542459','12','30.4','Gnocchi di nonna Alice');

INSERT INTO productInfo VALUES ('Queso Cabrales','21','1 kg pkg.','0','Cooperativa de Quesos Las Cabras');
INSERT INTO productInfo VALUES ('Singaporean Hokkien Fried Mee','14','32 - 1 kg pkgs.','1','Leka Trading');
INSERT INTO productInfo VALUES ('Mozzarella di Giovanni','34.8','24 - 200 g pkgs.','0','Formaggi Fortini s.r.l.');
INSERT INTO productInfo VALUES ('Tofu','23.25','40 - 100 g pkgs.','0','Mayumis');
INSERT INTO productInfo VALUES ('Manjimup Dried Apples','53','50 - 300 g pkgs.','0','Gday, Mate');
INSERT INTO productInfo VALUES ('Jacks New England Clam Chowder','9.65','12 - 12 oz cans','0','New England Seafood Cannery');
INSERT INTO productInfo VALUES ('Louisiana Fiery Hot Pepper Sauce','21.05','32 - 8 oz bottles','0','New Orleans Cajun Delights');
INSERT INTO productInfo VALUES ('Gustafs Knäckebröd','21','24 - 500 g pkgs.','0','PB Knäckebröd AB');
INSERT INTO productInfo VALUES ('Ravioli Angelo','19.5','24 - 250 g pkgs.','0','Pasta Buttini s.r.l.');
INSERT INTO productInfo VALUES ('Sir Rodneys Marmalade','81','30 gift boxes','0','Specialty Biscuits, Ltd.');
INSERT INTO productInfo VALUES ('Geitost','2.5','500 g','0','Norske Meierier');
INSERT INTO productInfo VALUES ('Camembert Pierrot','34','15 - 300 g rounds','0','Gai pâturage');
INSERT INTO productInfo VALUES ('Gorgonzola Telino','12.5','12 - 100 g pkgs','0','Formaggi Fortini s.r.l.');
INSERT INTO productInfo VALUES ('Chartreuse verte','18','750 cc per bottle','0','Aux joyeux ecclésiastiques');
INSERT INTO productInfo VALUES ('Maxilaku','20','24 - 50 g pkgs.','0','Karkki Oy');
INSERT INTO productInfo VALUES ('Guaraná Fantástica','4.5','12 - 355 ml cans','1','Refrescos Americanas LTDA');
INSERT INTO productInfo VALUES ('Pâté chinois','24','24 boxes x 2 pies','0','Ma Maison');
INSERT INTO productInfo VALUES ('Longlife Tofu','10','5 kg pkg.','0','Tokyo Traders');
INSERT INTO productInfo VALUES ('Chang','19','24 - 12 oz bottles','0','Exotic Liquids');
INSERT INTO productInfo VALUES ('Pavlova','17.45','32 - 500 g boxes','0','Pavlova, Ltd.');
INSERT INTO productInfo VALUES ('Inlagd Sill','19','24 - 250 g  jars','0','Svensk Sjöföda AB');
INSERT INTO productInfo VALUES ('Raclette Courdavault','55','5 kg pkg.','0','Gai pâturage');
INSERT INTO productInfo VALUES ('Perth Pasties','32.8','48 pieces','1','Gday, Mate');
INSERT INTO productInfo VALUES ('Original Frankfurter grüne Soße','13','12 boxes','0','Plutzer Lebensmittelgroßmärkte AG');
INSERT INTO productInfo VALUES ('Schoggi Schokolade','43.9','100 - 100 g pieces','0','Heli Süßwaren GmbH & Co. KG');
INSERT INTO productInfo VALUES ('Chef Antons Gumbo Mix','21.35','36 boxes','1','New Orleans Cajun Delights');
INSERT INTO productInfo VALUES ('Mascarpone Fabioli','32','24 - 200 g pkgs.','0','Formaggi Fortini s.r.l.');
INSERT INTO productInfo VALUES ('Sir Rodneys Scones','10','24 pkgs. x 4 pieces','0','Specialty Biscuits, Ltd.');
INSERT INTO productInfo VALUES ('Gravad lax','26','12 - 500 g pkgs.','0','Svensk Sjöföda AB');
INSERT INTO productInfo VALUES ('Tarte au sucre','49.3','48 pies','0','Forêts dérables');
INSERT INTO productInfo VALUES ('Outback Lager','15','24 - 355 ml bottles','0','Pavlova, Ltd.');
INSERT INTO productInfo VALUES ('Steeleye Stout','18','24 - 12 oz bottles','0','Bigfoot Breweries');
INSERT INTO productInfo VALUES ('Uncle Bobs Organic Dried Pears','30','12 - 1 lb pkgs.','0','Grandma Kellys Homestead');
INSERT INTO productInfo VALUES ('Gnocchi di nonna Alice','38','24 - 250 g pkgs.','0','Pasta Buttini s.r.l.');
INSERT INTO productInfo VALUES ('Nord-Ost Matjeshering','25.89','10 - 200 g glasses','0','Nord-Ost-Fisch Handelsgesellschaft mbH');
INSERT INTO productInfo VALUES ('Alice Mutton','39','20 - 1 kg tins','1','Pavlova, Ltd.');
INSERT INTO productInfo VALUES ('Queso Manchego La Pastora','38','10 - 500 g pkgs.','0','Cooperativa de Quesos Las Cabras');
INSERT INTO productInfo VALUES ('Boston Crab Meat','18.4','24 - 4 oz tins','0','New England Seafood Cannery');
INSERT INTO productInfo VALUES ('Lakkalikööri','18','500 ml','0','Karkki Oy');
INSERT INTO productInfo VALUES ('Thüringer Rostbratwurst','123.79','50 bags x 30 sausgs.','1','Plutzer Lebensmittelgroßmärkte AG');
INSERT INTO productInfo VALUES ('Ipoh Coffee','46','16 - 500 g tins','0','Leka Trading');
INSERT INTO productInfo VALUES ('Ikura','31','12 - 200 ml jars','0','Tokyo Traders');
INSERT INTO productInfo VALUES ('Flotemysost','21.5','10 - 500 g pkgs.','0','Norske Meierier');
INSERT INTO productInfo VALUES ('Konbu','6','2 kg box','0','Mayumis');
INSERT INTO productInfo VALUES ('Rössle Sauerkraut','45.6','25 - 825 g cans','1','Plutzer Lebensmittelgroßmärkte AG');
INSERT INTO productInfo VALUES ('Gula Malacca','19.45','20 - 2 kg bags','0','Leka Trading');
INSERT INTO productInfo VALUES ('Vegie-spread','43.9','15 - 625 g jars','0','Pavlova, Ltd.');
INSERT INTO productInfo VALUES ('Röd Kaviar','15','24 - 150 g jars','0','Svensk Sjöföda AB');
INSERT INTO productInfo VALUES ('Rhönbräu Klosterbier','7.75','24 - 0.5 l bottles','0','Plutzer Lebensmittelgroßmärkte AG');
INSERT INTO productInfo VALUES ('Teatime Chocolate Biscuits','9.2','10 boxes x 12 pieces','0','Specialty Biscuits, Ltd.');
INSERT INTO productInfo VALUES ('Genen Shouyu','15.5','24 - 250 ml bottles','0','Mayumis');
INSERT INTO productInfo VALUES ('Laughing Lumberjack Lager','14','24 - 12 oz bottles','0','Bigfoot Breweries');
INSERT INTO productInfo VALUES ('Chai','18','10 boxes x 20 bags','0','Exotic Liquids');
INSERT INTO productInfo VALUES ('Sasquatch Ale','14','24 - 12 oz bottles','0','Bigfoot Breweries');
INSERT INTO productInfo VALUES ('Spegesild','12','4 - 450 g glasses','0','Lyngbysild');
INSERT INTO productInfo VALUES ('Tourtière','7.45','16 pies','0','Ma Maison');
INSERT INTO productInfo VALUES ('Scottish Longbreads','12.5','10 boxes x 8 pieces','0','Specialty Biscuits, Ltd.');
INSERT INTO productInfo VALUES ('Aniseed Syrup','10','12 - 550 ml bottles','0','Exotic Liquids');
INSERT INTO productInfo VALUES ('Wimmers gute Semmelknödel','33.25','20 bags x 4 pieces','0','Plutzer Lebensmittelgroßmärkte AG');
INSERT INTO productInfo VALUES ('Carnarvon Tigers','62.5','16 kg pkg.','0','Pavlova, Ltd.');
INSERT INTO productInfo VALUES ('Gudbrandsdalsost','36','10 kg pkg.','0','Norske Meierier');
INSERT INTO productInfo VALUES ('Louisiana Hot Spiced Okra','17','24 - 8 oz jars','0','New Orleans Cajun Delights');
INSERT INTO productInfo VALUES ('Chef Antons Cajun Seasoning','22','48 - 6 oz jars','0','New Orleans Cajun Delights');
INSERT INTO productInfo VALUES ('Grandmas Boysenberry Spread','25','12 - 8 oz jars','0','Grandma Kellys Homestead');
INSERT INTO productInfo VALUES ('Escargots de Bourgogne','13.25','24 pieces','0','Escargots Nouveaux');
INSERT INTO productInfo VALUES ('Filo Mix','7','16 - 2 kg boxes','0','Gday, Mate');
INSERT INTO productInfo VALUES ('NuNuCa Nuß-Nougat-Creme','14','20 - 450 g glasses','0','Heli Süßwaren GmbH & Co. KG');
INSERT INTO productInfo VALUES ('Côte de Blaye','263.5','12 - 75 cl bottles','0','Aux joyeux ecclésiastiques');

INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Cooperativa de Quesos Las Cabras','Antonio del Valle Saavedra','Oviedo','Spain','(98) 598 76 54','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Leka Trading','Chandra Leka','Singapore','Singapore','555-8787','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Formaggi Fortini s.r.l.','Elio Rossi','Ravenna','Italy','(0544) 60323','(0544) 60603');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Mayumis','Mayumi Ohno','Osaka','Japan','(06) 431-7877','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Gday, Mate','Wendy Mackenzie','Sydney','Australia','(02) 555-5914','(02) 555-4873');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('New England Seafood Cannery','Robb Merchant','Boston','USA','(617) 555-3267','(617) 555-3389');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('New Orleans Cajun Delights','Shelley Burke','New Orleans','USA','(100) 555-4822','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('PB Knäckebröd AB','Lars Peterson','Göteborg','Sweden','031-987 65 43','031-987 65 91');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Pasta Buttini s.r.l.','Giovanni Giudici','Salerno','Italy','(089) 6547665','(089) 6547667');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Specialty Biscuits, Ltd.','Peter Wilson','Manchester','UK','(161) 555-4448','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Norske Meierier','Beate Vileid','Sandvika','Norway','(0)2-953010','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Gai pâturage','Eliane Noz','Annecy','France','38.76.98.06','38.76.98.58');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Aux joyeux ecclésiastiques','Guylène Nodier','Paris','France','(1) 03.83.00.68','(1) 03.83.00.62');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Karkki Oy','Anne Heikkonen','Lappeenranta','Finland','(953) 10956','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Refrescos Americanas LTDA','Carlos Diaz','Sao Paulo','Brazil','(11) 555 4640','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Ma Maison','Jean-Guy Lauzon','Montréal','Canada','(514) 555-9022','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Tokyo Traders','Yoshi Nagase','Tokyo','Japan','(03) 3555-5011','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Exotic Liquids','Charlotte Cooper','London','UK','(171) 555-2222','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Pavlova, Ltd.','Ian Devling','Melbourne','Australia','(03) 444-2343','(03) 444-6588');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Svensk Sjöföda AB','Michael Björn','Stockholm','Sweden','08-123 45 67','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Plutzer Lebensmittelgroßmärkte AG','Martin Bein','Frankfurt','Germany','(069) 992755','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Heli Süßwaren GmbH & Co. KG','Petra Winkler','Berlin','Germany','(010) 9984510','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Forêts dérables','Chantal Goulet','Ste-Hyacinthe','Canada','(514) 555-2955','(514) 555-2921');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Bigfoot Breweries','Cheryl Saylor','Bend','USA','(503) 555-9931','');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Grandma Kellys Homestead','Regina Murphy','Ann Arbor','USA','(313) 555-5735','(313) 555-3349');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Cuxhaven','Germany','(04721) 8713','(04721) 8714');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Lyngbysild','Niels Petersen','Lyngby','Denmark','43844108','43844115');
INSERT INTO supplierInformation(CompanyName, ContactName, city, country, phone, fax) VALUES ('Escargots Nouveaux','Marie Delamare','Montceau','France','85.57.00.07','');

/*
2.a)
*/

SELECT * FROM supplierInformation WHERE fax = '';

/*
2.b)
*/

SELECT * FROM productInfo WHERE retailPrice > 40 AND (SELECT companyName FROM supplierInformation WHERE fax = '');

/*
2.c)
*/

SELECT orders.OrderNumber, customers.firstname, customers.lastname,  orders.OrderDate, orderLineItems.itemSold, orderLineItems.Qty, orderLineItems.SalePrice,  orders.totalAmount
FROM customers
JOIN orders ON (orders.customerID = customers.customerID)
JOIN orderLineItems ON (orders.OrderNumber = orderLineItems.OrderNumber)
WHERE orders.totalAmount > 4000

/*
2.d)
*/

SELECT  customers.firstname, customers.lastname,
SUM(totalAmount)
FROM orders
JOIN customers ON orders.customerID = customers.customerID
WHERE customers.country = 'France'
GROUP BY orders.customerID
HAVING SUM(totalAmount) > 1000;












