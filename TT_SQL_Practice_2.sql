
use student_db;

-- SQL Practice Dataset
-- 200 records and 20 columns
-- Generic Employee + Sales dataset

DROP TABLE IF EXISTS employee_sales;

CREATE TABLE employee_sales (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    email VARCHAR(100),
    phone VARCHAR(20),
    department VARCHAR(30),
    job_title VARCHAR(50),
    city VARCHAR(40),
    state VARCHAR(40),
    joining_date DATE,
    salary DECIMAL(12,2),
    experience_years DECIMAL(4,1),
    performance_rating DECIMAL(3,1),
    sales_amount DECIMAL(12,2),
    target_amount DECIMAL(12,2),
    bonus DECIMAL(10,2),
    employment_status VARCHAR(20),
    manager_name VARCHAR(100)
);

INSERT INTO employee_sales VALUES
(1, 'Sneha', 'Patel', 'Female', 38, 'sneha.patel1@example.com', '9362950628', 'Operations', 'Operations Executive', 'Mumbai', 'Maharashtra', '2023-04-05', 40000, 3.2, 5.0, 1864021.89, 1475000, 20529.3, 'Active', 'Aarav Patel'),
(2, 'Arjun', 'Mehta', 'Male', 22, 'arjun.mehta2@example.com', '9702632297', 'Marketing', 'Marketing Executive', 'Jaipur', 'Rajasthan', '2023-02-14', 110000, 4.5, 4.0, 591088.7, 650000, 4648.08, 'On Leave', 'Pooja Verma'),
(3, 'Ananya', 'Kumar', 'Female', 30, 'ananya.kumar3@example.com', '9331191390', 'HR', 'HR Executive', 'Chennai', 'Tamil Nadu', '2026-04-15', 37500, 0.6, 4.0, 376732.58, 450000, 1781.87, 'Active', 'Aarav Chopra'),
(4, 'Karan', 'Gupta', 'Male', 26, 'karan.gupta4@example.com', '9692749116', 'IT', 'Software Analyst', 'Pune', 'Maharashtra', '2023-08-26', 122500, 4.2, 3.5, 844597.05, 1200000, 3131.64, 'Active', 'Pooja Singh'),
(5, 'Vivaan', 'Mehta', 'Male', 38, 'vivaan.mehta5@example.com', '9586845604', 'IT', 'Software Analyst', 'Pune', 'Maharashtra', '2025-07-27', 50000, 2.3, 3.5, 609964.78, 850000, 2067.91, 'Resigned', 'Sneha Patel'),
(6, 'Priya', 'Reddy', 'Female', 36, 'priya.reddy6@example.com', '9275452091', 'Marketing', 'Marketing Executive', 'Delhi', 'Delhi', '2024-08-06', 125000, 2.3, 5.0, 852688.26, 1175000, 5742.83, 'Active', 'Aarav Mehta'),
(7, 'Isha', 'Sharma', 'Female', 38, 'isha.sharma7@example.com', '9171069472', 'IT', 'Software Analyst', 'Chennai', 'Tamil Nadu', '2023-03-11', 115000, 4.8, 5.0, 576080.99, 800000, 6892.93, 'On Leave', 'Sneha Das'),
(8, 'Aditya', 'Singh', 'Male', 56, 'aditya.singh8@example.com', '9678722458', 'Finance', 'Financial Analyst', 'Delhi', 'Delhi', '2023-06-25', 92500, 4.2, 4.5, 776627.37, 925000, 9230.21, 'Active', 'Karan Patel'),
(9, 'Pooja', 'Sharma', 'Female', 31, 'pooja.sharma9@example.com', '9950488739', 'Finance', 'Financial Analyst', 'Pune', 'Maharashtra', '2025-10-27', 35000, 1.2, 4.0, 924039.67, 900000, 3212.52, 'Active', 'Neha Sharma'),
(10, 'Sneha', 'Chopra', 'Female', 55, 'sneha.chopra10@example.com', '9906248900', 'Operations', 'Operations Executive', 'Pune', 'Maharashtra', '2023-07-03', 77500, 4.2, 2.5, 673359.15, 750000, 4363.09, 'Resigned', 'Kavya Chopra'),
(11, 'Rahul', 'Gupta', 'Male', 27, 'rahul.gupta11@example.com', '9771410971', 'Marketing', 'Marketing Executive', 'Delhi', 'Delhi', '2023-09-06', 105000, 4.2, 4.5, 403362.85, 600000, 8505.09, 'Active', 'Pooja Gupta'),
(12, 'Kavya', 'Sharma', 'Female', 52, 'kavya.sharma12@example.com', '9120912992', 'HR', 'HR Executive', 'Raipur', 'Chhattisgarh', '2022-08-20', 72500, 5.4, 3.0, 278511.48, 375000, 4740.67, 'Active', 'Ananya Das'),
(13, 'Isha', 'Patel', 'Female', 29, 'isha.patel13@example.com', '9237859287', 'Support', 'Support Executive', 'Jaipur', 'Rajasthan', '2025-09-15', 112500, 1.4, 3.0, 680497.32, 700000, 7709.35, 'Resigned', 'Kavya Gupta'),
(14, 'Pooja', 'Chopra', 'Female', 40, 'pooja.chopra14@example.com', '9528414718', 'Operations', 'Operations Executive', 'Bengaluru', 'Karnataka', '2025-10-09', 95000, 1.7, 4.5, 646803.36, 1000000, 3607.7, 'Active', 'Priya Gupta'),
(15, 'Arjun', 'Nair', 'Male', 25, 'arjun.nair15@example.com', '9860038427', 'Sales', 'Sales Executive', 'Bengaluru', 'Karnataka', '2025-07-18', 35000, 0.8, 2.5, 500515.85, 825000, 1366.41, 'Active', 'Arjun Gupta'),
(16, 'Aditya', 'Chopra', 'Male', 51, 'aditya.chopra16@example.com', '9360916298', 'Marketing', 'Marketing Executive', 'Raipur', 'Chhattisgarh', '2024-08-28', 55000, 3.1, 2.5, 484733.79, 450000, 4395.6, 'Active', 'Isha Chopra'),
(17, 'Aarav', 'Reddy', 'Male', 46, 'aarav.reddy17@example.com', '9881913386', 'Sales', 'Sales Executive', 'Pune', 'Maharashtra', '2023-11-28', 40000, 3.9, 3.0, 421300.28, 600000, 2235.56, 'Active', 'Rahul Das'),
(18, 'Arjun', 'Patel', 'Male', 56, 'arjun.patel18@example.com', '9205128697', 'Support', 'Support Executive', 'Ahmedabad', 'Gujarat', '2022-04-16', 110000, 5.2, 2.5, 548714.77, 425000, 15854.26, 'Active', 'Karan Das'),
(19, 'Arjun', 'Kumar', 'Male', 45, 'arjun.kumar19@example.com', '9102314313', 'Finance', 'Financial Analyst', 'Mumbai', 'Maharashtra', '2024-03-12', 97500, 2.5, 3.5, 1079591.37, 975000, 12877.51, 'Active', 'Sneha Chopra'),
(20, 'Karan', 'Verma', 'Male', 34, 'karan.verma20@example.com', '9162795957', 'HR', 'HR Executive', 'Bengaluru', 'Karnataka', '2025-04-03', 32500, 2.4, 5.0, 476585.77, 800000, 2168.86, 'Active', 'Isha Gupta'),
(21, 'Aditya', 'Sharma', 'Male', 32, 'aditya.sharma21@example.com', '9173574218', 'Sales', 'Sales Executive', 'Jaipur', 'Rajasthan', '2025-05-05', 62500, 1.0, 4.0, 619056.53, 475000, 11301.2, 'Active', 'Aarav Nair'),
(22, 'Vivaan', 'Kumar', 'Male', 54, 'vivaan.kumar22@example.com', '9439699535', 'Marketing', 'Marketing Executive', 'Raipur', 'Chhattisgarh', '2023-06-21', 75000, 3.1, 3.0, 606640.07, 700000, 5530.14, 'Active', 'Rohan Patel'),
(23, 'Aarav', 'Das', 'Male', 27, 'aarav.das23@example.com', '9178663096', 'Marketing', 'Marketing Executive', 'Raipur', 'Chhattisgarh', '2025-01-08', 65000, 1.6, 3.0, 1066487.64, 850000, 16696.59, 'Active', 'Aditya Das'),
(24, 'Isha', 'Gupta', 'Female', 54, 'isha.gupta24@example.com', '9108399996', 'Marketing', 'Marketing Executive', 'Hyderabad', 'Telangana', '2025-10-01', 72500, 2.1, 5.0, 585514.8, 450000, 9004.63, 'Active', 'Vivaan Chopra'),
(25, 'Neha', 'Verma', 'Female', 34, 'neha.verma25@example.com', '9870530217', 'HR', 'HR Executive', 'Hyderabad', 'Telangana', '2023-12-06', 125000, 2.7, 3.5, 1034908.03, 1100000, 11553.36, 'Active', 'Vivaan Reddy');

INSERT INTO employee_sales VALUES
(26, 'Vikram', 'Singh', 'Male', 42, 'vikram.singh26@example.com', '9927982963', 'Sales', 'Sales Executive', 'Mumbai', 'Maharashtra', '2022-09-27', 65000, 4.7, 3.0, 1332615.9, 1475000, 4969.47, 'Active', 'Vivaan Patel'),
(27, 'Kavya', 'Chopra', 'Female', 23, 'kavya.chopra27@example.com', '9996139578', 'Marketing', 'Marketing Executive', 'Delhi', 'Delhi', '2024-01-29', 47500, 3.3, 4.0, 291731.54, 500000, 2335.68, 'Resigned', 'Isha Sharma'),
(28, 'Kavya', 'Joshi', 'Female', 36, 'kavya.joshi28@example.com', '9816114302', 'Operations', 'Operations Executive', 'Bengaluru', 'Karnataka', '2022-08-01', 112500, 4.3, 4.0, 1465717.16, 1275000, 20117.73, 'Active', 'Aditya Verma'),
(29, 'Kavya', 'Kumar', 'Female', 42, 'kavya.kumar29@example.com', '9940081098', 'Finance', 'Financial Analyst', 'Mumbai', 'Maharashtra', '2024-04-25', 62500, 3.5, 3.5, 648944.78, 550000, 6737.72, 'On Leave', 'Isha Das'),
(30, 'Arjun', 'Mehta', 'Male', 40, 'arjun.mehta30@example.com', '9981044229', 'HR', 'HR Executive', 'Ahmedabad', 'Gujarat', '2023-04-14', 55000, 3.3, 4.0, 637628.02, 825000, 1405.45, 'Active', 'Rohan Reddy'),
(31, 'Neha', 'Kumar', 'Female', 22, 'neha.kumar31@example.com', '9223847257', 'HR', 'HR Executive', 'Jaipur', 'Rajasthan', '2023-06-21', 65000, 3.1, 2.5, 462265.65, 450000, 3710.86, 'Active', 'Vikram Nair'),
(32, 'Neha', 'Patel', 'Female', 33, 'neha.patel32@example.com', '9373506211', 'Marketing', 'Marketing Executive', 'Kolkata', 'West Bengal', '2022-04-03', 25000, 5.3, 4.5, 1264408.58, 1150000, 8100.96, 'Active', 'Arjun Joshi'),
(33, 'Vikram', 'Patel', 'Male', 41, 'vikram.patel33@example.com', '9812306873', 'Marketing', 'Marketing Executive', 'Chennai', 'Tamil Nadu', '2022-09-15', 72500, 4.9, 4.5, 839723.6, 775000, 6578.04, 'Active', 'Neha Verma'),
(34, 'Arjun', 'Kumar', 'Male', 32, 'arjun.kumar34@example.com', '9760904107', 'Operations', 'Operations Executive', 'Kolkata', 'West Bengal', '2025-03-13', 112500, 1.6, 2.5, 604136.5, 775000, 6118.99, 'Active', 'Sneha Joshi'),
(35, 'Karan', 'Das', 'Male', 34, 'karan.das35@example.com', '9648868899', 'Operations', 'Operations Executive', 'Ahmedabad', 'Gujarat', '2024-08-29', 50000, 3.1, 5.0, 330237.38, 425000, 3655.42, 'Active', 'Vivaan Mehta'),
(36, 'Sneha', 'Singh', 'Female', 33, 'sneha.singh36@example.com', '9258220114', 'Support', 'Support Executive', 'Bengaluru', 'Karnataka', '2022-02-22', 100000, 4.1, 4.5, 365733.17, 400000, 9089.1, 'Active', 'Ananya Chopra'),
(37, 'Vikram', 'Das', 'Male', 30, 'vikram.das37@example.com', '9804436922', 'Finance', 'Financial Analyst', 'Kolkata', 'West Bengal', '2025-11-11', 40000, 0.3, 4.0, 448961.07, 650000, 3865.49, 'Active', 'Aarav Gupta'),
(38, 'Arjun', 'Patel', 'Male', 50, 'arjun.patel38@example.com', '9816806128', 'Finance', 'Financial Analyst', 'Ahmedabad', 'Gujarat', '2024-12-25', 120000, 3.2, 3.5, 1894711.11, 1500000, 28017.02, 'Active', 'Neha Kumar'),
(39, 'Isha', 'Gupta', 'Female', 51, 'isha.gupta39@example.com', '9583258726', 'Finance', 'Financial Analyst', 'Ahmedabad', 'Gujarat', '2023-06-17', 125000, 4.2, 3.5, 1054887.32, 1125000, 4892.46, 'Active', 'Ananya Singh'),
(40, 'Arjun', 'Singh', 'Male', 55, 'arjun.singh40@example.com', '9186519602', 'HR', 'HR Executive', 'Chennai', 'Tamil Nadu', '2022-10-13', 85000, 3.7, 5.0, 585446.04, 525000, 5159.06, 'Active', 'Neha Das'),
(41, 'Vikram', 'Sharma', 'Male', 47, 'vikram.sharma41@example.com', '9518197538', 'Support', 'Support Executive', 'Bengaluru', 'Karnataka', '2026-04-28', 27500, 1.0, 4.5, 838425.41, 900000, 2624.03, 'Active', 'Vikram Kumar'),
(42, 'Neha', 'Chopra', 'Female', 35, 'neha.chopra42@example.com', '9624232414', 'Support', 'Support Executive', 'Jaipur', 'Rajasthan', '2023-03-28', 102500, 3.5, 2.5, 737013.27, 900000, 7618.96, 'Active', 'Aditya Das'),
(43, 'Kavya', 'Verma', 'Female', 22, 'kavya.verma43@example.com', '9523076025', 'Marketing', 'Marketing Executive', 'Raipur', 'Chhattisgarh', '2025-04-29', 27500, 2.0, 2.5, 1183079.54, 1325000, 2457.07, 'Active', 'Rahul Kumar'),
(44, 'Rohan', 'Mehta', 'Male', 42, 'rohan.mehta44@example.com', '9917364173', 'HR', 'HR Executive', 'Ahmedabad', 'Gujarat', '2024-02-18', 90000, 2.6, 3.5, 393654.32, 425000, 7192.97, 'Active', 'Rohan Mehta'),
(45, 'Sneha', 'Patel', 'Female', 22, 'sneha.patel45@example.com', '9365518424', 'Support', 'Support Executive', 'Mumbai', 'Maharashtra', '2023-02-15', 122500, 4.7, 3.0, 439409.33, 675000, 9010.7, 'Active', 'Arjun Das'),
(46, 'Ananya', 'Singh', 'Female', 28, 'ananya.singh46@example.com', '9935147672', 'Finance', 'Financial Analyst', 'Chennai', 'Tamil Nadu', '2022-12-04', 40000, 5.2, 4.5, 420260.66, 325000, 7405.58, 'On Leave', 'Vikram Kumar'),
(47, 'Ananya', 'Mehta', 'Female', 36, 'ananya.mehta47@example.com', '9209415691', 'Marketing', 'Marketing Executive', 'Pune', 'Maharashtra', '2025-11-30', 120000, 1.8, 2.5, 1411329.93, 1200000, 16299.65, 'Active', 'Rohan Patel'),
(48, 'Neha', 'Reddy', 'Female', 47, 'neha.reddy48@example.com', '9982971099', 'Sales', 'Sales Executive', 'Chennai', 'Tamil Nadu', '2024-10-02', 82500, 1.6, 5.0, 1143743.09, 1025000, 10461.37, 'Active', 'Sneha Singh'),
(49, 'Priya', 'Gupta', 'Female', 48, 'priya.gupta49@example.com', '9986625773', 'IT', 'Software Analyst', 'Ahmedabad', 'Gujarat', '2026-02-08', 75000, 1.3, 3.0, 328585.6, 425000, 4204.81, 'Active', 'Priya Nair'),
(50, 'Sneha', 'Kumar', 'Female', 52, 'sneha.kumar50@example.com', '9448981305', 'Sales', 'Sales Executive', 'Chennai', 'Tamil Nadu', '2023-01-10', 80000, 4.1, 3.5, 638324.6, 825000, 5415.39, 'On Leave', 'Neha Sharma');

INSERT INTO employee_sales VALUES
(51, 'Neha', 'Mehta', 'Female', 47, 'neha.mehta51@example.com', '9624606470', 'Finance', 'Financial Analyst', 'Pune', 'Maharashtra', '2025-02-13', 100000, 2.6, 5.0, 1343286.32, 1425000, 8343.46, 'Active', 'Arjun Kumar'),
(52, 'Ananya', 'Mehta', 'Female', 58, 'ananya.mehta52@example.com', '9496232693', 'Operations', 'Operations Executive', 'Hyderabad', 'Telangana', '2024-08-29', 80000, 2.6, 4.0, 1460708.4, 1475000, 3851.59, 'Active', 'Rahul Singh'),
(53, 'Arjun', 'Patel', 'Male', 28, 'arjun.patel53@example.com', '9897662466', 'HR', 'HR Executive', 'Bengaluru', 'Karnataka', '2025-01-04', 52500, 3.1, 3.0, 713052.33, 625000, 6613.91, 'Active', 'Pooja Gupta'),
(54, 'Priya', 'Singh', 'Female', 33, 'priya.singh54@example.com', '9418092217', 'Support', 'Support Executive', 'Pune', 'Maharashtra', '2023-04-13', 72500, 3.6, 2.5, 1392664.0, 1425000, 3041.01, 'Resigned', 'Neha Singh'),
(55, 'Ananya', 'Verma', 'Female', 21, 'ananya.verma55@example.com', '9716396766', 'Sales', 'Sales Executive', 'Ahmedabad', 'Gujarat', '2023-08-08', 95000, 3.5, 3.5, 760378.92, 575000, 13087.78, 'On Leave', 'Vivaan Patel'),
(56, 'Vikram', 'Das', 'Male', 24, 'vikram.das56@example.com', '9262915636', 'Marketing', 'Marketing Executive', 'Pune', 'Maharashtra', '2022-11-04', 72500, 5.0, 2.5, 435213.84, 675000, 5883.77, 'Active', 'Pooja Nair'),
(57, 'Arjun', 'Gupta', 'Male', 49, 'arjun.gupta57@example.com', '9419280490', 'IT', 'Software Analyst', 'Kolkata', 'West Bengal', '2025-04-22', 72500, 2.9, 4.5, 762684.91, 1275000, 7018.63, 'Active', 'Pooja Mehta'),
(58, 'Sneha', 'Mehta', 'Female', 26, 'sneha.mehta58@example.com', '9268638768', 'Operations', 'Operations Executive', 'Hyderabad', 'Telangana', '2023-05-09', 35000, 3.2, 3.0, 263044.22, 300000, 2630.24, 'Active', 'Aarav Mehta'),
(59, 'Rahul', 'Chopra', 'Male', 50, 'rahul.chopra59@example.com', '9176428684', 'Operations', 'Operations Executive', 'Hyderabad', 'Telangana', '2025-11-10', 65000, 0.8, 5.0, 1321709.38, 1225000, 10990.54, 'Active', 'Neha Mehta'),
(60, 'Sneha', 'Verma', 'Female', 30, 'sneha.verma60@example.com', '9176675731', 'Support', 'Support Executive', 'Hyderabad', 'Telangana', '2022-05-05', 72500, 4.2, 4.5, 1783853.56, 1475000, 22235.59, 'Active', 'Karan Chopra'),
(61, 'Rahul', 'Chopra', 'Male', 53, 'rahul.chopra61@example.com', '9679800791', 'HR', 'HR Executive', 'Kolkata', 'West Bengal', '2024-10-10', 120000, 2.3, 2.5, 1109186.46, 975000, 14904.97, 'Active', 'Arjun Reddy'),
(62, 'Isha', 'Nair', 'Female', 38, 'isha.nair62@example.com', '9718740490', 'Sales', 'Sales Executive', 'Raipur', 'Chhattisgarh', '2022-03-26', 52500, 5.5, 4.0, 1205108.54, 1125000, 8902.93, 'Active', 'Priya Kumar'),
(63, 'Sneha', 'Das', 'Female', 43, 'sneha.das63@example.com', '9538460431', 'IT', 'Software Analyst', 'Pune', 'Maharashtra', '2023-11-16', 40000, 3.0, 3.0, 725435.76, 825000, 2385.5, 'Active', 'Vikram Gupta'),
(64, 'Aarav', 'Das', 'Male', 37, 'aarav.das64@example.com', '9447112584', 'HR', 'HR Executive', 'Pune', 'Maharashtra', '2022-08-28', 87500, 5.5, 4.5, 322838.49, 300000, 6690.08, 'Active', 'Arjun Gupta'),
(65, 'Rohan', 'Nair', 'Male', 49, 'rohan.nair65@example.com', '9916033628', 'Operations', 'Operations Executive', 'Ahmedabad', 'Gujarat', '2022-04-18', 112500, 4.3, 3.0, 675369.66, 750000, 8534.25, 'Active', 'Sneha Nair'),
(66, 'Pooja', 'Mehta', 'Female', 56, 'pooja.mehta66@example.com', '9114682844', 'HR', 'HR Executive', 'Delhi', 'Delhi', '2025-02-07', 60000, 1.9, 2.5, 1340339.81, 1025000, 20076.0, 'Active', 'Kavya Chopra'),
(67, 'Rahul', 'Gupta', 'Male', 51, 'rahul.gupta67@example.com', '9607042130', 'IT', 'Software Analyst', 'Hyderabad', 'Telangana', '2023-05-17', 47500, 3.7, 4.0, 772496.71, 600000, 11506.15, 'On Leave', 'Isha Patel'),
(68, 'Rahul', 'Kumar', 'Male', 53, 'rahul.kumar68@example.com', '9386874458', 'Support', 'Support Executive', 'Chennai', 'Tamil Nadu', '2022-01-08', 72500, 4.7, 4.5, 1652674.29, 1225000, 25673.63, 'Active', 'Neha Das'),
(69, 'Rohan', 'Joshi', 'Male', 55, 'rohan.joshi69@example.com', '9505026213', 'Support', 'Support Executive', 'Jaipur', 'Rajasthan', '2024-07-23', 55000, 3.5, 5.0, 680020.73, 675000, 2378.71, 'Active', 'Aarav Joshi'),
(70, 'Ananya', 'Das', 'Female', 30, 'ananya.das70@example.com', '9631855083', 'IT', 'Software Analyst', 'Kolkata', 'West Bengal', '2022-03-19', 117500, 4.2, 3.5, 562208.53, 450000, 12099.3, 'Active', 'Karan Sharma'),
(71, 'Ananya', 'Verma', 'Female', 30, 'ananya.verma71@example.com', '9180346223', 'Support', 'Support Executive', 'Kolkata', 'West Bengal', '2024-08-21', 65000, 3.1, 3.5, 1407808.69, 1275000, 11319.59, 'On Leave', 'Isha Reddy'),
(72, 'Isha', 'Gupta', 'Female', 52, 'isha.gupta72@example.com', '9680911523', 'HR', 'HR Executive', 'Kolkata', 'West Bengal', '2022-03-17', 62500, 5.2, 5.0, 1769272.01, 1375000, 25950.73, 'Active', 'Vikram Patel'),
(73, 'Pooja', 'Reddy', 'Female', 31, 'pooja.reddy73@example.com', '9845178074', 'IT', 'Software Analyst', 'Pune', 'Maharashtra', '2023-09-08', 30000, 4.3, 3.5, 294260.33, 375000, 1499.62, 'Active', 'Neha Kumar'),
(74, 'Priya', 'Reddy', 'Female', 32, 'priya.reddy74@example.com', '9184791618', 'Finance', 'Financial Analyst', 'Delhi', 'Delhi', '2025-06-04', 122500, 2.5, 5.0, 639990.32, 675000, 8164.94, 'Active', 'Sneha Singh'),
(75, 'Karan', 'Singh', 'Male', 50, 'karan.singh75@example.com', '9408842146', 'Support', 'Support Executive', 'Mumbai', 'Maharashtra', '2025-10-21', 35000, 1.5, 4.0, 1139103.15, 850000, 15992.79, 'Resigned', 'Ananya Singh');

INSERT INTO employee_sales VALUES
(76, 'Karan', 'Singh', 'Male', 51, 'karan.singh76@example.com', '9214518079', 'IT', 'Software Analyst', 'Bengaluru', 'Karnataka', '2023-05-03', 80000, 3.6, 4.5, 1008115.23, 750000, 16395.24, 'Resigned', 'Sneha Kumar'),
(77, 'Rahul', 'Sharma', 'Male', 24, 'rahul.sharma77@example.com', '9751124015', 'Support', 'Support Executive', 'Raipur', 'Chhattisgarh', '2026-03-09', 70000, 1.0, 3.0, 1489431.96, 1250000, 14598.02, 'Active', 'Rahul Reddy'),
(78, 'Pooja', 'Chopra', 'Female', 27, 'pooja.chopra78@example.com', '9773728014', 'Operations', 'Operations Executive', 'Delhi', 'Delhi', '2025-08-18', 95000, 0.6, 2.5, 1031314.01, 1225000, 2898.73, 'On Leave', 'Rohan Chopra'),
(79, 'Vikram', 'Verma', 'Male', 55, 'vikram.verma79@example.com', '9492836532', 'Finance', 'Financial Analyst', 'Bengaluru', 'Karnataka', '2024-12-25', 67500, 2.2, 3.0, 896867.41, 700000, 16291.98, 'Resigned', 'Rahul Chopra'),
(80, 'Isha', 'Joshi', 'Female', 25, 'isha.joshi80@example.com', '9251136695', 'IT', 'Software Analyst', 'Pune', 'Maharashtra', '2026-03-27', 87500, 1.9, 4.5, 544462.01, 875000, 4512.02, 'Active', 'Vivaan Das'),
(81, 'Rohan', 'Reddy', 'Male', 45, 'rohan.reddy81@example.com', '9983063850', 'Marketing', 'Marketing Executive', 'Hyderabad', 'Telangana', '2025-08-02', 40000, 2.5, 5.0, 602667.97, 650000, 2782.55, 'Resigned', 'Rohan Nair'),
(82, 'Arjun', 'Reddy', 'Male', 50, 'arjun.reddy82@example.com', '9852775879', 'Operations', 'Operations Executive', 'Pune', 'Maharashtra', '2023-09-13', 42500, 3.8, 3.0, 457453.23, 350000, 7257.5, 'Active', 'Vivaan Mehta'),
(83, 'Kavya', 'Gupta', 'Female', 50, 'kavya.gupta83@example.com', '9498370582', 'IT', 'Software Analyst', 'Delhi', 'Delhi', '2025-10-07', 110000, 2.3, 4.0, 1401173.63, 1225000, 12368.48, 'Active', 'Vivaan Das'),
(84, 'Priya', 'Kumar', 'Female', 44, 'priya.kumar84@example.com', '9333291547', 'Sales', 'Sales Executive', 'Hyderabad', 'Telangana', '2024-06-29', 62500, 2.6, 3.5, 600633.98, 450000, 10618.37, 'On Leave', 'Sneha Joshi'),
(85, 'Aarav', 'Kumar', 'Male', 28, 'aarav.kumar85@example.com', '9984968439', 'Finance', 'Financial Analyst', 'Hyderabad', 'Telangana', '2024-07-22', 57500, 1.8, 5.0, 1336031.8, 1300000, 3049.83, 'Active', 'Arjun Verma'),
(86, 'Pooja', 'Nair', 'Female', 56, 'pooja.nair86@example.com', '9322433532', 'Sales', 'Sales Executive', 'Bengaluru', 'Karnataka', '2025-04-17', 60000, 1.3, 3.5, 619980.38, 525000, 8809.73, 'Active', 'Aditya Verma'),
(87, 'Neha', 'Singh', 'Female', 22, 'neha.singh87@example.com', '9241522640', 'Sales', 'Sales Executive', 'Delhi', 'Delhi', '2022-02-02', 62500, 4.8, 4.5, 450099.89, 800000, 2576.84, 'Active', 'Vikram Gupta'),
(88, 'Vivaan', 'Chopra', 'Male', 49, 'vivaan.chopra88@example.com', '9935389432', 'IT', 'Software Analyst', 'Pune', 'Maharashtra', '2024-01-14', 40000, 3.2, 4.0, 799963.79, 1100000, 2768.34, 'Active', 'Kavya Reddy'),
(89, 'Neha', 'Singh', 'Female', 22, 'neha.singh89@example.com', '9165310776', 'Operations', 'Operations Executive', 'Ahmedabad', 'Gujarat', '2024-09-09', 92500, 3.2, 5.0, 423996.79, 450000, 8581.79, 'Active', 'Vivaan Joshi'),
(90, 'Priya', 'Verma', 'Female', 38, 'priya.verma90@example.com', '9770355806', 'Finance', 'Financial Analyst', 'Pune', 'Maharashtra', '2025-07-22', 75000, 1.8, 4.0, 1218056.84, 1250000, 4222.29, 'Active', 'Vivaan Chopra'),
(91, 'Vivaan', 'Reddy', 'Male', 34, 'vivaan.reddy91@example.com', '9561784080', 'Operations', 'Operations Executive', 'Jaipur', 'Rajasthan', '2024-07-15', 90000, 3.4, 3.5, 890708.75, 1025000, 7053.21, 'Active', 'Rohan Reddy'),
(92, 'Rahul', 'Joshi', 'Male', 51, 'rahul.joshi92@example.com', '9172083844', 'Operations', 'Operations Executive', 'Delhi', 'Delhi', '2022-07-08', 37500, 5.3, 4.0, 515552.03, 450000, 5145.54, 'Active', 'Aarav Nair'),
(93, 'Neha', 'Gupta', 'Female', 28, 'neha.gupta93@example.com', '9541102414', 'Operations', 'Operations Executive', 'Chennai', 'Tamil Nadu', '2023-12-28', 92500, 3.9, 5.0, 496769.59, 375000, 12381.51, 'Active', 'Priya Gupta'),
(94, 'Arjun', 'Verma', 'Male', 27, 'arjun.verma94@example.com', '9475932035', 'Finance', 'Financial Analyst', 'Ahmedabad', 'Gujarat', '2025-02-15', 67500, 1.8, 4.5, 777255.11, 650000, 12276.59, 'Resigned', 'Isha Nair'),
(95, 'Priya', 'Reddy', 'Female', 38, 'priya.reddy95@example.com', '9131088245', 'Sales', 'Sales Executive', 'Jaipur', 'Rajasthan', '2023-01-07', 72500, 3.7, 3.5, 471651.94, 850000, 6495.2, 'Active', 'Vikram Patel'),
(96, 'Aditya', 'Chopra', 'Male', 54, 'aditya.chopra96@example.com', '9330997172', 'Sales', 'Sales Executive', 'Mumbai', 'Maharashtra', '2024-02-12', 77500, 2.9, 3.0, 699396.16, 875000, 3561.17, 'Resigned', 'Priya Patel'),
(97, 'Kavya', 'Sharma', 'Female', 24, 'kavya.sharma97@example.com', '9823668399', 'Finance', 'Financial Analyst', 'Delhi', 'Delhi', '2022-06-19', 92500, 4.3, 4.0, 1129544.19, 1250000, 3871.43, 'Active', 'Vivaan Joshi'),
(98, 'Vikram', 'Patel', 'Male', 58, 'vikram.patel98@example.com', '9622517939', 'Operations', 'Operations Executive', 'Hyderabad', 'Telangana', '2024-12-17', 30000, 2.6, 3.0, 1237239.79, 925000, 16343.47, 'Active', 'Arjun Verma'),
(99, 'Pooja', 'Singh', 'Female', 28, 'pooja.singh99@example.com', '9108299923', 'HR', 'HR Executive', 'Hyderabad', 'Telangana', '2024-10-17', 52500, 2.9, 3.0, 878459.29, 900000, 2016.47, 'Active', 'Sneha Joshi'),
(100, 'Vivaan', 'Kumar', 'Male', 22, 'vivaan.kumar100@example.com', '9593657365', 'IT', 'Software Analyst', 'Mumbai', 'Maharashtra', '2022-06-11', 115000, 5.5, 4.0, 1048245.97, 1200000, 8189.3, 'Active', 'Vikram Sharma');

INSERT INTO employee_sales VALUES
(101, 'Rohan', 'Verma', 'Male', 44, 'rohan.verma101@example.com', '9194628740', 'IT', 'Software Analyst', 'Raipur', 'Chhattisgarh', '2024-06-15', 62500, 3.4, 4.0, 1066190.82, 1225000, 1643.24, 'On Leave', 'Ananya Joshi'),
(102, 'Arjun', 'Joshi', 'Male', 53, 'arjun.joshi102@example.com', '9779919809', 'Sales', 'Sales Executive', 'Delhi', 'Delhi', '2022-08-24', 55000, 4.6, 3.5, 962117.79, 850000, 10309.26, 'Active', 'Arjun Patel'),
(103, 'Aditya', 'Singh', 'Male', 30, 'aditya.singh103@example.com', '9916274954', 'Finance', 'Financial Analyst', 'Bengaluru', 'Karnataka', '2026-04-06', 52500, 1.2, 5.0, 990249.64, 1075000, 3417.69, 'Active', 'Sneha Nair'),
(104, 'Sneha', 'Reddy', 'Female', 41, 'sneha.reddy104@example.com', '9262089272', 'HR', 'HR Executive', 'Raipur', 'Chhattisgarh', '2024-06-21', 95000, 1.8, 5.0, 919974.4, 775000, 13643.51, 'Active', 'Vivaan Singh'),
(105, 'Karan', 'Das', 'Male', 44, 'karan.das105@example.com', '9993027458', 'Sales', 'Sales Executive', 'Mumbai', 'Maharashtra', '2023-08-13', 37500, 2.7, 4.5, 1194567.82, 1250000, 2138.13, 'Active', 'Pooja Chopra'),
(106, 'Kavya', 'Sharma', 'Female', 57, 'kavya.sharma106@example.com', '9799905142', 'Support', 'Support Executive', 'Ahmedabad', 'Gujarat', '2023-01-23', 100000, 3.8, 4.5, 690993.39, 525000, 13903.85, 'Active', 'Isha Joshi'),
(107, 'Ananya', 'Patel', 'Female', 32, 'ananya.patel107@example.com', '9142028540', 'Operations', 'Operations Executive', 'Jaipur', 'Rajasthan', '2023-05-25', 95000, 4.2, 4.5, 1167574.87, 1125000, 6794.37, 'On Leave', 'Vikram Kumar'),
(108, 'Pooja', 'Joshi', 'Female', 42, 'pooja.joshi108@example.com', '9170772317', 'Sales', 'Sales Executive', 'Raipur', 'Chhattisgarh', '2023-11-09', 85000, 2.5, 3.5, 790290.85, 700000, 10679.18, 'On Leave', 'Isha Verma'),
(109, 'Rohan', 'Patel', 'Male', 30, 'rohan.patel109@example.com', '9475617211', 'Operations', 'Operations Executive', 'Raipur', 'Chhattisgarh', '2023-09-30', 87500, 4.4, 3.0, 1396334.01, 1250000, 9659.73, 'Active', 'Sneha Joshi'),
(110, 'Isha', 'Verma', 'Female', 48, 'isha.verma110@example.com', '9645985356', 'Sales', 'Sales Executive', 'Jaipur', 'Rajasthan', '2024-01-14', 72500, 2.2, 3.0, 514616.17, 625000, 5893.71, 'Active', 'Aditya Verma'),
(111, 'Vivaan', 'Singh', 'Male', 55, 'vivaan.singh111@example.com', '9996703082', 'Marketing', 'Marketing Executive', 'Pune', 'Maharashtra', '2026-02-23', 30000, 1.8, 5.0, 1032169.23, 825000, 12441.74, 'Active', 'Aditya Verma'),
(112, 'Aditya', 'Chopra', 'Male', 31, 'aditya.chopra112@example.com', '9874364348', 'Support', 'Support Executive', 'Raipur', 'Chhattisgarh', '2024-06-17', 82500, 1.8, 5.0, 1073035.03, 1450000, 4581.71, 'Active', 'Ananya Das'),
(113, 'Arjun', 'Gupta', 'Male', 51, 'arjun.gupta113@example.com', '9996696177', 'HR', 'HR Executive', 'Bengaluru', 'Karnataka', '2023-02-04', 115000, 3.8, 4.0, 1194689.61, 1025000, 17943.22, 'Active', 'Vikram Verma'),
(114, 'Isha', 'Mehta', 'Female', 37, 'isha.mehta114@example.com', '9156027635', 'Finance', 'Financial Analyst', 'Raipur', 'Chhattisgarh', '2025-08-08', 82500, 1.5, 4.5, 503604.35, 450000, 7735.22, 'Active', 'Vivaan Verma'),
(115, 'Rahul', 'Das', 'Male', 48, 'rahul.das115@example.com', '9198476695', 'Finance', 'Financial Analyst', 'Jaipur', 'Rajasthan', '2023-04-02', 80000, 4.6, 2.5, 562975.23, 950000, 4812.85, 'Active', 'Vivaan Joshi'),
(116, 'Arjun', 'Sharma', 'Male', 42, 'arjun.sharma116@example.com', '9949738493', 'Sales', 'Sales Executive', 'Chennai', 'Tamil Nadu', '2022-10-29', 70000, 3.6, 4.0, 1700843.74, 1400000, 20691.7, 'Active', 'Priya Sharma'),
(117, 'Kavya', 'Patel', 'Female', 34, 'kavya.patel117@example.com', '9996534803', 'HR', 'HR Executive', 'Mumbai', 'Maharashtra', '2022-11-05', 120000, 4.4, 4.5, 622975.75, 975000, 5165.78, 'Active', 'Aarav Mehta'),
(118, 'Vikram', 'Reddy', 'Male', 25, 'vikram.reddy118@example.com', '9219032752', 'IT', 'Software Analyst', 'Raipur', 'Chhattisgarh', '2024-10-22', 27500, 2.6, 5.0, 1111041.76, 1100000, 2682.89, 'Active', 'Aarav Nair'),
(119, 'Rohan', 'Mehta', 'Male', 32, 'rohan.mehta119@example.com', '9813363254', 'IT', 'Software Analyst', 'Raipur', 'Chhattisgarh', '2025-10-02', 82500, 0.6, 2.5, 1108423.76, 1125000, 6840.32, 'Active', 'Aarav Kumar'),
(120, 'Isha', 'Das', 'Female', 45, 'isha.das120@example.com', '9500830389', 'Operations', 'Operations Executive', 'Mumbai', 'Maharashtra', '2023-06-06', 80000, 4.2, 2.5, 631465.63, 850000, 5805.47, 'Active', 'Priya Chopra'),
(121, 'Pooja', 'Joshi', 'Female', 43, 'pooja.joshi121@example.com', '9686277792', 'Sales', 'Sales Executive', 'Delhi', 'Delhi', '2023-11-27', 52500, 3.9, 5.0, 1368021.73, 1025000, 20210.92, 'Active', 'Aditya Patel'),
(122, 'Ananya', 'Das', 'Female', 33, 'ananya.das122@example.com', '9147036629', 'HR', 'HR Executive', 'Mumbai', 'Maharashtra', '2023-02-15', 75000, 4.8, 3.5, 955437.17, 1100000, 6392.44, 'Active', 'Aarav Reddy'),
(123, 'Arjun', 'Singh', 'Male', 24, 'arjun.singh123@example.com', '9804086195', 'Support', 'Support Executive', 'Chennai', 'Tamil Nadu', '2023-11-13', 82500, 2.9, 4.0, 1058797.7, 925000, 14244.49, 'Active', 'Aditya Das'),
(124, 'Ananya', 'Das', 'Female', 54, 'ananya.das124@example.com', '9386389162', 'Support', 'Support Executive', 'Chennai', 'Tamil Nadu', '2022-06-21', 37500, 5.2, 4.0, 1682598.16, 1250000, 22921.28, 'Active', 'Vivaan Patel'),
(125, 'Rohan', 'Reddy', 'Male', 49, 'rohan.reddy125@example.com', '9747060047', 'HR', 'HR Executive', 'Hyderabad', 'Telangana', '2026-01-11', 95000, 1.0, 3.5, 583884.13, 1000000, 8512.28, 'Active', 'Vikram Singh');

INSERT INTO employee_sales VALUES
(126, 'Sneha', 'Sharma', 'Female', 46, 'sneha.sharma126@example.com', '9490102359', 'Operations', 'Operations Executive', 'Pune', 'Maharashtra', '2024-11-18', 50000, 2.9, 2.5, 645191.11, 525000, 9721.91, 'Active', 'Aditya Patel'),
(127, 'Arjun', 'Reddy', 'Male', 45, 'arjun.reddy127@example.com', '9709074302', 'HR', 'HR Executive', 'Chennai', 'Tamil Nadu', '2022-03-10', 95000, 5.2, 3.5, 792007.5, 875000, 2484.33, 'Active', 'Rohan Kumar'),
(128, 'Rohan', 'Reddy', 'Male', 28, 'rohan.reddy128@example.com', '9127824235', 'Finance', 'Financial Analyst', 'Hyderabad', 'Telangana', '2026-02-17', 107500, 0.4, 4.0, 756945.34, 1175000, 8814.69, 'Active', 'Arjun Nair'),
(129, 'Rahul', 'Chopra', 'Male', 28, 'rahul.chopra129@example.com', '9245737277', 'Finance', 'Financial Analyst', 'Ahmedabad', 'Gujarat', '2022-06-03', 95000, 4.7, 2.5, 1820567.36, 1375000, 31676.34, 'Active', 'Ananya Patel'),
(130, 'Neha', 'Gupta', 'Female', 31, 'neha.gupta130@example.com', '9864299201', 'HR', 'HR Executive', 'Hyderabad', 'Telangana', '2025-12-26', 125000, 2.1, 3.0, 837379.02, 875000, 3713.62, 'Active', 'Aditya Mehta'),
(131, 'Pooja', 'Das', 'Female', 56, 'pooja.das131@example.com', '9714478186', 'HR', 'HR Executive', 'Mumbai', 'Maharashtra', '2024-01-28', 112500, 3.0, 3.0, 1603181.38, 1275000, 19250.8, 'Active', 'Ananya Chopra'),
(132, 'Karan', 'Gupta', 'Male', 47, 'karan.gupta132@example.com', '9984053945', 'Support', 'Support Executive', 'Kolkata', 'West Bengal', '2025-03-25', 75000, 1.1, 5.0, 363991.84, 400000, 5580.65, 'Active', 'Kavya Gupta'),
(133, 'Sneha', 'Nair', 'Female', 29, 'sneha.nair133@example.com', '9564520346', 'Support', 'Support Executive', 'Delhi', 'Delhi', '2024-10-28', 32500, 3.2, 2.5, 756463.92, 1125000, 1078.11, 'Active', 'Ananya Mehta'),
(134, 'Rohan', 'Gupta', 'Male', 26, 'rohan.gupta134@example.com', '9369085407', 'Support', 'Support Executive', 'Hyderabad', 'Telangana', '2023-02-09', 112500, 4.3, 3.5, 525008.94, 500000, 9030.3, 'Active', 'Sneha Verma'),
(135, 'Priya', 'Nair', 'Female', 42, 'priya.nair135@example.com', '9705180256', 'Finance', 'Financial Analyst', 'Delhi', 'Delhi', '2022-03-28', 27500, 5.6, 2.5, 458093.12, 350000, 7650.91, 'Active', 'Arjun Nair'),
(136, 'Vikram', 'Nair', 'Male', 55, 'vikram.nair136@example.com', '9411032572', 'IT', 'Software Analyst', 'Mumbai', 'Maharashtra', '2025-08-09', 100000, 2.5, 3.0, 1202951.78, 1375000, 5628.35, 'Active', 'Aditya Das'),
(137, 'Vikram', 'Das', 'Male', 42, 'vikram.das137@example.com', '9751396498', 'Finance', 'Financial Analyst', 'Ahmedabad', 'Gujarat', '2022-10-24', 75000, 4.0, 5.0, 1130754.41, 850000, 16322.32, 'Active', 'Neha Patel'),
(138, 'Rohan', 'Mehta', 'Male', 38, 'rohan.mehta138@example.com', '9582750043', 'Sales', 'Sales Executive', 'Ahmedabad', 'Gujarat', '2023-05-25', 32500, 3.1, 3.5, 1117197.97, 900000, 12597.05, 'Resigned', 'Kavya Verma'),
(139, 'Isha', 'Joshi', 'Female', 41, 'isha.joshi139@example.com', '9303832812', 'Operations', 'Operations Executive', 'Raipur', 'Chhattisgarh', '2026-04-14', 105000, 0.2, 4.0, 1347255.07, 1075000, 19890.66, 'Active', 'Vikram Gupta'),
(140, 'Karan', 'Mehta', 'Male', 43, 'karan.mehta140@example.com', '9152246275', 'Marketing', 'Marketing Executive', 'Bengaluru', 'Karnataka', '2022-04-16', 120000, 4.5, 5.0, 1273895.54, 1375000, 7552.23, 'Active', 'Vikram Verma'),
(141, 'Kavya', 'Singh', 'Female', 46, 'kavya.singh141@example.com', '9492922240', 'Support', 'Support Executive', 'Chennai', 'Tamil Nadu', '2022-04-05', 115000, 4.7, 4.5, 504011.41, 600000, 4955.14, 'Active', 'Karan Gupta'),
(142, 'Rahul', 'Nair', 'Male', 29, 'rahul.nair142@example.com', '9203810954', 'Sales', 'Sales Executive', 'Raipur', 'Chhattisgarh', '2024-03-19', 77500, 2.7, 4.5, 1009725.62, 875000, 9520.44, 'Active', 'Neha Sharma'),
(143, 'Aarav', 'Sharma', 'Male', 42, 'aarav.sharma143@example.com', '9963251765', 'Operations', 'Operations Executive', 'Delhi', 'Delhi', '2024-08-30', 47500, 2.6, 4.5, 728007.27, 1100000, 4489.2, 'Active', 'Vikram Nair'),
(144, 'Ananya', 'Singh', 'Female', 53, 'ananya.singh144@example.com', '9989368954', 'HR', 'HR Executive', 'Raipur', 'Chhattisgarh', '2024-11-11', 115000, 2.4, 3.5, 1262729.02, 1050000, 16325.34, 'Active', 'Vikram Nair'),
(145, 'Rahul', 'Chopra', 'Male', 51, 'rahul.chopra145@example.com', '9385111130', 'Marketing', 'Marketing Executive', 'Mumbai', 'Maharashtra', '2025-09-06', 117500, 2.1, 4.5, 732628.06, 650000, 11966.52, 'Active', 'Sneha Chopra'),
(146, 'Priya', 'Kumar', 'Female', 36, 'priya.kumar146@example.com', '9133898577', 'Support', 'Support Executive', 'Delhi', 'Delhi', '2025-03-20', 42500, 2.9, 3.0, 293420.03, 325000, 2273.85, 'Active', 'Arjun Kumar'),
(147, 'Neha', 'Nair', 'Female', 24, 'neha.nair147@example.com', '9857820386', 'Support', 'Support Executive', 'Ahmedabad', 'Gujarat', '2022-10-12', 112500, 4.4, 3.5, 1259140.66, 1350000, 5641.42, 'Resigned', 'Karan Gupta'),
(148, 'Rohan', 'Gupta', 'Male', 37, 'rohan.gupta148@example.com', '9755064741', 'Operations', 'Operations Executive', 'Chennai', 'Tamil Nadu', '2024-09-20', 62500, 1.8, 3.5, 926839.21, 1175000, 5957.43, 'Resigned', 'Pooja Singh'),
(149, 'Ananya', 'Mehta', 'Female', 51, 'ananya.mehta149@example.com', '9474524558', 'HR', 'HR Executive', 'Ahmedabad', 'Gujarat', '2025-02-23', 67500, 2.9, 3.5, 479171.19, 475000, 4491.79, 'On Leave', 'Vikram Joshi'),
(150, 'Pooja', 'Verma', 'Female', 39, 'pooja.verma150@example.com', '9866803374', 'Sales', 'Sales Executive', 'Hyderabad', 'Telangana', '2022-06-13', 95000, 4.4, 5.0, 803509.56, 700000, 8701.78, 'Active', 'Rahul Gupta');

INSERT INTO employee_sales VALUES
(151, 'Ananya', 'Singh', 'Female', 58, 'ananya.singh151@example.com', '9356927167', 'Sales', 'Sales Executive', 'Delhi', 'Delhi', '2023-05-14', 107500, 2.9, 3.0, 957150.02, 1300000, 3011.7, 'Active', 'Karan Patel'),
(152, 'Sneha', 'Verma', 'Female', 31, 'sneha.verma152@example.com', '9536913550', 'Marketing', 'Marketing Executive', 'Mumbai', 'Maharashtra', '2025-09-01', 100000, 2.4, 4.0, 940173.33, 1325000, 9711.31, 'Active', 'Sneha Sharma'),
(153, 'Kavya', 'Patel', 'Female', 55, 'kavya.patel153@example.com', '9893158610', 'Finance', 'Financial Analyst', 'Raipur', 'Chhattisgarh', '2026-01-22', 30000, 1.8, 3.0, 1193006.18, 950000, 13172.2, 'On Leave', 'Isha Kumar'),
(154, 'Pooja', 'Das', 'Female', 39, 'pooja.das154@example.com', '9140229006', 'Operations', 'Operations Executive', 'Delhi', 'Delhi', '2022-01-21', 120000, 4.7, 2.5, 641560.69, 825000, 11895.35, 'Active', 'Karan Verma'),
(155, 'Isha', 'Gupta', 'Female', 33, 'isha.gupta155@example.com', '9968457290', 'HR', 'HR Executive', 'Ahmedabad', 'Gujarat', '2022-08-21', 97500, 4.2, 5.0, 787414.98, 700000, 6430.61, 'Active', 'Rahul Nair'),
(156, 'Sneha', 'Mehta', 'Female', 46, 'sneha.mehta156@example.com', '9987973565', 'Marketing', 'Marketing Executive', 'Delhi', 'Delhi', '2024-05-27', 37500, 2.8, 4.0, 845515.91, 1350000, 3695.06, 'Active', 'Kavya Mehta'),
(157, 'Aarav', 'Singh', 'Male', 49, 'aarav.singh157@example.com', '9909340042', 'Finance', 'Financial Analyst', 'Kolkata', 'West Bengal', '2023-07-03', 72500, 4.6, 4.5, 1462037.72, 1450000, 3568.89, 'Active', 'Arjun Sharma'),
(158, 'Sneha', 'Patel', 'Female', 31, 'sneha.patel158@example.com', '9535312769', 'HR', 'HR Executive', 'Ahmedabad', 'Gujarat', '2025-11-08', 72500, 1.3, 5.0, 503960.3, 475000, 8353.7, 'Active', 'Arjun Mehta'),
(159, 'Aditya', 'Das', 'Male', 44, 'aditya.das159@example.com', '9546510829', 'IT', 'Software Analyst', 'Delhi', 'Delhi', '2025-12-10', 100000, 1.3, 4.5, 1634151.79, 1350000, 22302.47, 'Active', 'Priya Patel'),
(160, 'Neha', 'Das', 'Female', 44, 'neha.das160@example.com', '9183862154', 'Operations', 'Operations Executive', 'Jaipur', 'Rajasthan', '2025-03-03', 112500, 1.2, 4.5, 604896.8, 600000, 3843.51, 'Active', 'Neha Das'),
(161, 'Vivaan', 'Reddy', 'Male', 58, 'vivaan.reddy161@example.com', '9624875038', 'Operations', 'Operations Executive', 'Bengaluru', 'Karnataka', '2022-07-08', 95000, 5.5, 2.5, 671944.36, 1025000, 5057.23, 'Active', 'Neha Das'),
(162, 'Sneha', 'Singh', 'Female', 37, 'sneha.singh162@example.com', '9976659977', 'IT', 'Software Analyst', 'Mumbai', 'Maharashtra', '2022-01-09', 117500, 5.7, 2.5, 311135.27, 350000, 8933.62, 'Active', 'Aarav Patel'),
(163, 'Kavya', 'Das', 'Female', 47, 'kavya.das163@example.com', '9293253475', 'HR', 'HR Executive', 'Mumbai', 'Maharashtra', '2026-04-26', 90000, 0.1, 3.5, 817946.74, 900000, 8403.23, 'Active', 'Vivaan Reddy'),
(164, 'Sneha', 'Gupta', 'Female', 43, 'sneha.gupta164@example.com', '9227381397', 'Operations', 'Operations Executive', 'Delhi', 'Delhi', '2023-01-03', 87500, 5.2, 4.5, 566143.26, 500000, 6615.99, 'Active', 'Aarav Singh'),
(165, 'Karan', 'Reddy', 'Male', 55, 'karan.reddy165@example.com', '9507245006', 'IT', 'Software Analyst', 'Jaipur', 'Rajasthan', '2023-04-18', 80000, 3.4, 3.0, 508068.66, 725000, 7201.33, 'Active', 'Aarav Reddy'),
(166, 'Vikram', 'Nair', 'Male', 34, 'vikram.nair166@example.com', '9172253060', 'Finance', 'Financial Analyst', 'Mumbai', 'Maharashtra', '2022-07-28', 95000, 4.8, 4.5, 1529864.89, 1375000, 10013.18, 'Active', 'Vikram Das'),
(167, 'Arjun', 'Gupta', 'Male', 24, 'arjun.gupta167@example.com', '9250469429', 'Support', 'Support Executive', 'Bengaluru', 'Karnataka', '2024-10-30', 60000, 3.3, 5.0, 966147.55, 1200000, 4070.0, 'Active', 'Rohan Mehta'),
(168, 'Rahul', 'Verma', 'Male', 47, 'rahul.verma168@example.com', '9422660441', 'Finance', 'Financial Analyst', 'Jaipur', 'Rajasthan', '2023-07-20', 117500, 2.8, 5.0, 604206.84, 575000, 7826.03, 'Active', 'Rohan Reddy'),
(169, 'Sneha', 'Kumar', 'Female', 47, 'sneha.kumar169@example.com', '9538364955', 'HR', 'HR Executive', 'Jaipur', 'Rajasthan', '2022-11-04', 52500, 3.9, 4.5, 779913.28, 1050000, 1996.45, 'On Leave', 'Aditya Das'),
(170, 'Kavya', 'Sharma', 'Female', 47, 'kavya.sharma170@example.com', '9698382096', 'IT', 'Software Analyst', 'Jaipur', 'Rajasthan', '2024-12-23', 62500, 1.5, 3.5, 508881.5, 625000, 1645.35, 'Active', 'Rohan Patel'),
(171, 'Neha', 'Chopra', 'Female', 38, 'neha.chopra171@example.com', '9504981031', 'Sales', 'Sales Executive', 'Bengaluru', 'Karnataka', '2025-10-13', 30000, 1.6, 2.5, 716232.3, 600000, 7821.82, 'Active', 'Arjun Das'),
(172, 'Arjun', 'Joshi', 'Male', 34, 'arjun.joshi172@example.com', '9304036387', 'Sales', 'Sales Executive', 'Hyderabad', 'Telangana', '2026-03-01', 100000, 0.3, 3.0, 1446929.72, 1400000, 5982.59, 'On Leave', 'Neha Joshi'),
(173, 'Pooja', 'Singh', 'Female', 55, 'pooja.singh173@example.com', '9796559239', 'IT', 'Software Analyst', 'Kolkata', 'West Bengal', '2024-01-08', 82500, 2.8, 4.5, 992013.5, 1075000, 6948.59, 'Active', 'Pooja Joshi'),
(174, 'Kavya', 'Mehta', 'Female', 47, 'kavya.mehta174@example.com', '9149086585', 'HR', 'HR Executive', 'Chennai', 'Tamil Nadu', '2025-02-28', 47500, 2.8, 2.5, 694854.48, 700000, 3169.32, 'Active', 'Rahul Verma'),
(175, 'Arjun', 'Joshi', 'Male', 57, 'arjun.joshi175@example.com', '9994816400', 'IT', 'Software Analyst', 'Bengaluru', 'Karnataka', '2023-05-21', 77500, 3.8, 3.5, 1810910.33, 1500000, 23087.87, 'Active', 'Karan Das');

INSERT INTO employee_sales VALUES
(176, 'Aditya', 'Chopra', 'Male', 29, 'aditya.chopra176@example.com', '9873430762', 'Finance', 'Financial Analyst', 'Chennai', 'Tamil Nadu', '2025-01-26', 110000, 2.1, 5.0, 363433.32, 375000, 9583.8, 'Active', 'Isha Reddy'),
(177, 'Aarav', 'Sharma', 'Male', 35, 'aarav.sharma177@example.com', '9172980019', 'Finance', 'Financial Analyst', 'Kolkata', 'West Bengal', '2025-12-21', 57500, 0.5, 4.5, 869774.57, 1025000, 3992.04, 'Active', 'Priya Das'),
(178, 'Sneha', 'Das', 'Female', 55, 'sneha.das178@example.com', '9692322761', 'Sales', 'Sales Executive', 'Mumbai', 'Maharashtra', '2024-04-24', 107500, 1.9, 5.0, 709478.1, 725000, 4615.52, 'Active', 'Ananya Reddy'),
(179, 'Vikram', 'Verma', 'Male', 54, 'vikram.verma179@example.com', '9259877461', 'Sales', 'Sales Executive', 'Pune', 'Maharashtra', '2023-05-11', 107500, 3.2, 3.5, 649280.82, 850000, 5563.31, 'Active', 'Vikram Das'),
(180, 'Priya', 'Mehta', 'Female', 26, 'priya.mehta180@example.com', '9801943382', 'HR', 'HR Executive', 'Bengaluru', 'Karnataka', '2025-08-25', 37500, 2.1, 4.0, 766562.09, 900000, 2178.02, 'Active', 'Ananya Verma'),
(181, 'Vivaan', 'Das', 'Male', 42, 'vivaan.das181@example.com', '9707583925', 'Operations', 'Operations Executive', 'Kolkata', 'West Bengal', '2022-07-17', 30000, 5.4, 3.0, 794386.48, 625000, 10730.81, 'Active', 'Rahul Sharma'),
(182, 'Kavya', 'Patel', 'Female', 57, 'kavya.patel182@example.com', '9806639422', 'Marketing', 'Marketing Executive', 'Hyderabad', 'Telangana', '2022-03-11', 75000, 4.4, 2.5, 637268.05, 625000, 6626.93, 'Active', 'Vikram Patel'),
(183, 'Rahul', 'Verma', 'Male', 57, 'rahul.verma183@example.com', '9996199211', 'Finance', 'Financial Analyst', 'Raipur', 'Chhattisgarh', '2024-03-09', 110000, 3.4, 3.5, 1039038.67, 900000, 10383.5, 'Resigned', 'Ananya Patel'),
(184, 'Neha', 'Chopra', 'Female', 27, 'neha.chopra184@example.com', '9569319938', 'Sales', 'Sales Executive', 'Chennai', 'Tamil Nadu', '2023-04-23', 77500, 4.6, 4.5, 1675205.56, 1275000, 24019.84, 'Active', 'Aarav Reddy'),
(185, 'Rahul', 'Das', 'Male', 43, 'rahul.das185@example.com', '9693819730', 'Finance', 'Financial Analyst', 'Ahmedabad', 'Gujarat', '2024-02-10', 117500, 2.9, 5.0, 556699.76, 900000, 8164.99, 'Active', 'Ananya Patel'),
(186, 'Vivaan', 'Singh', 'Male', 30, 'vivaan.singh186@example.com', '9894198823', 'IT', 'Software Analyst', 'Delhi', 'Delhi', '2024-03-10', 40000, 2.6, 2.5, 391310.45, 300000, 6788.68, 'Active', 'Vivaan Verma'),
(187, 'Vivaan', 'Verma', 'Male', 56, 'vivaan.verma187@example.com', '9695647539', 'IT', 'Software Analyst', 'Kolkata', 'West Bengal', '2024-11-17', 27500, 2.1, 2.5, 844369.47, 850000, 1863.23, 'Active', 'Isha Kumar'),
(188, 'Aarav', 'Singh', 'Male', 26, 'aarav.singh188@example.com', '9878295151', 'IT', 'Software Analyst', 'Kolkata', 'West Bengal', '2025-02-21', 62500, 2.9, 4.5, 771374.63, 1125000, 3153.66, 'Active', 'Rahul Singh'),
(189, 'Karan', 'Verma', 'Male', 48, 'karan.verma189@example.com', '9396311802', 'Finance', 'Financial Analyst', 'Pune', 'Maharashtra', '2024-05-14', 35000, 2.4, 3.5, 913764.49, 700000, 13406.74, 'Active', 'Priya Mehta'),
(190, 'Karan', 'Patel', 'Male', 21, 'karan.patel190@example.com', '9524871030', 'HR', 'HR Executive', 'Delhi', 'Delhi', '2023-11-14', 85000, 4.0, 3.5, 817788.98, 1000000, 7245.23, 'On Leave', 'Priya Verma'),
(191, 'Rahul', 'Joshi', 'Male', 33, 'rahul.joshi191@example.com', '9614332794', 'Operations', 'Operations Executive', 'Raipur', 'Chhattisgarh', '2023-10-08', 87500, 2.8, 3.5, 853424.62, 750000, 11351.55, 'Resigned', 'Pooja Mehta'),
(192, 'Rohan', 'Kumar', 'Male', 46, 'rohan.kumar192@example.com', '9491932454', 'Support', 'Support Executive', 'Hyderabad', 'Telangana', '2022-08-24', 55000, 5.4, 4.5, 798033.04, 1150000, 4477.52, 'Active', 'Ananya Das'),
(193, 'Ananya', 'Mehta', 'Female', 39, 'ananya.mehta193@example.com', '9992582047', 'Support', 'Support Executive', 'Ahmedabad', 'Gujarat', '2025-11-21', 90000, 0.4, 5.0, 710944.05, 1075000, 3980.4, 'Active', 'Aditya Chopra'),
(194, 'Vikram', 'Kumar', 'Male', 51, 'vikram.kumar194@example.com', '9725179752', 'IT', 'Software Analyst', 'Pune', 'Maharashtra', '2024-04-02', 90000, 3.0, 4.5, 413901.86, 350000, 7583.71, 'On Leave', 'Neha Nair'),
(195, 'Sneha', 'Patel', 'Female', 36, 'sneha.patel195@example.com', '9806094391', 'Support', 'Support Executive', 'Pune', 'Maharashtra', '2025-09-25', 122500, 1.2, 2.5, 1604263.88, 1200000, 29302.42, 'Active', 'Pooja Joshi'),
(196, 'Pooja', 'Kumar', 'Female', 27, 'pooja.kumar196@example.com', '9377818215', 'Sales', 'Sales Executive', 'Pune', 'Maharashtra', '2023-04-02', 107500, 4.0, 4.5, 1347661.12, 1225000, 10183.93, 'Active', 'Karan Reddy'),
(197, 'Priya', 'Chopra', 'Female', 43, 'priya.chopra197@example.com', '9126373949', 'Finance', 'Financial Analyst', 'Jaipur', 'Rajasthan', '2024-09-17', 90000, 1.7, 2.5, 577150.74, 475000, 12164.62, 'Active', 'Rohan Das'),
(198, 'Pooja', 'Mehta', 'Female', 43, 'pooja.mehta198@example.com', '9611275626', 'IT', 'Software Analyst', 'Jaipur', 'Rajasthan', '2022-07-21', 95000, 4.5, 3.5, 316084.51, 400000, 8057.41, 'Active', 'Isha Joshi'),
(199, 'Sneha', 'Patel', 'Female', 36, 'sneha.patel199@example.com', '9654044237', 'Operations', 'Operations Executive', 'Delhi', 'Delhi', '2022-12-26', 77500, 4.3, 4.5, 1283850.84, 975000, 18430.05, 'Active', 'Aditya Verma'),
(200, 'Sneha', 'Reddy', 'Female', 22, 'sneha.reddy200@example.com', '9891764728', 'IT', 'Software Analyst', 'Kolkata', 'West Bengal', '2025-06-13', 95000, 2.5, 4.5, 839541.91, 975000, 7255.99, 'Active', 'Pooja Chopra');

-- Sample practice queries:
-- ================================= 
SELECT * FROM employee_sales;
SELECT department, COUNT(*) FROM employee_sales GROUP BY department;
SELECT AVG(salary) FROM employee_sales;
SELECT city, SUM(sales_amount) FROM employee_sales GROUP BY city;


select * from  employee_sales where state = "Maharashtra";

select * from employee_sales where salary > 50000;

select distinct city from employee_sales;

select * from employee_sales where salary > 50000 and city = "Delhi";

select * from employee_sales where salary between 40000 and 50000;

-- Aggregate Queries..
-- Sum, Avg, Min, Max..alter
-- ======================================================
 
select sum(sales_amount) from employee_sales;
select min(sales_amount) from employee_sales;
select max(sales_amount) from employee_sales;
select avg(sales_amount) from employee_sales;
select count(employee_id) from employee_sales;


-- Group BY --
-- Group by is used to group rows that have a same values 
-- into summary rows
-- the group by statement is almost  always used with 
-- aggregate functions like avg, min , max, sum , count 
-- To perform calculation on each group 
-- ============================================================================


select * from employee_sales;

select department, avg(salary)from employee_sales group by department;

select department, avg(performance_rating)from employee_sales group by department;

select state, count(employee_id) as "employee_count" from employee_sales group by state;

-- Hello every one I am Also join . 