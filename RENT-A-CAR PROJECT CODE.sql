
Create Table CAR_TYPE(
    licence_plate varchar(20) primary key,
    availability boolean,
    location varchar(100),
    kilometer double,
    payment double,
    model varchar(20),
    gear varchar(20)
);
Create Table MAINTENANCE(
    chassis_number varchar(50) primary key,
    oil boolean, /* DECIMAL(10, 2),*/
    brake boolean, /* DECIMAL(10, 2),*/
    filter boolean, /* DECIMAL(10, 2),*/
    engine boolean, /* DECIMAL(10, 2),*/
    tire boolean, /* DECIMAL(10, 2),*/
    Car_license_plate varchar(20),
    Foreign key(Car_license_plate) references CAR_TYPE(license_plate)

);
Create Table INSURANCE(
    engine_no varchar(50) primary key,
    model varchar(50),
    tax double,
    Insurance_license_type varchar(20),
  Foreign key(Insurance_license_type) references CAR_TYPE(license_plate)
);
Create Table BOOKING(
    booking_id int primary key,
    Customer_email varchar(100),
    date int,
    payment double,
    tax double,
    address varchar(100),
    Car_license_plate varchar(20),
    Cus_customer_email varchar(100),
    Foreign key(Car_license_plate) references CAR_TYPE(license_plate),
    Foreign key(Cus_customer_email) references CUSTOMER(customer_email)

);
Create Table CUSTOMER(
    Customer_email varchar(100) primary key,
    user_name varchar(30),
    phone_no varchar(11),
    licence varchar(6),
    address varchar(100),
    password_ varchar(20), 
    age int
);
Create Table EMPLOYEE(
    Employee_id varchar(20) primary key,
    department varchar(50),
    email varchar(100),
    name_ varchar(100) 
);
Create Table COMMUNICATION(
    Cus_customer_id varchar(20),
    Emp_id varchar(20),
    Foreign key(Cus_customer_id) references CUSTOMER(Customer_email),
    Foreign key(Emp_id) references EMPLOYEE(employee_id)
);