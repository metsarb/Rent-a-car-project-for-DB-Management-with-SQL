# Car Rental Database Schema

This project defines a database schema for a car rental system. It includes tables for storing information about cars, maintenance, insurance, bookings, customers, employees, and communication between customers and employees.

## Database Tables

### 1. `CAR_TYPE`
This table stores information about different car types available for rent.

- **Fields**:
  - `licence_plate` (varchar, primary key): The car's license plate.
  - `availability` (boolean): Whether the car is available for rent.
  - `location` (varchar): The current location of the car.
  - `kilometer` (double): The distance the car has traveled in kilometers.
  - `payment` (double): The payment required for renting the car.
  - `model` (varchar): The car's model.
  - `gear` (varchar): The type of gear (automatic or manual).

### 2. `MAINTENANCE`
This table tracks the maintenance status of cars.

- **Fields**:
  - `chassis_number` (varchar, primary key): Unique chassis number of the car.
  - `oil`, `brake`, `filter`, `engine`, `tire` (boolean): Maintenance status for various parts.
  - `Car_license_plate` (varchar, foreign key): References `CAR_TYPE(licence_plate)`.

### 3. `INSURANCE`
This table stores insurance information for cars.

- **Fields**:
  - `engine_no` (varchar, primary key): Engine number of the car.
  - `model` (varchar): Model of the car.
  - `tax` (double): Tax associated with the insurance.
  - `Insurance_license_type` (varchar, foreign key): References `CAR_TYPE(licence_plate)`.

### 4. `BOOKING`
This table records bookings made by customers.

- **Fields**:
  - `booking_id` (int, primary key): Unique ID for each booking.
  - `Customer_email` (varchar): Customer's email address.
  - `date` (int): Booking date.
  - `payment` (double): Payment amount for the booking.
  - `tax` (double): Tax amount.
  - `address` (varchar): Address for the booking.
  - `Car_license_plate` (varchar, foreign key): References `CAR_TYPE(licence_plate)`.
  - `Cus_customer_email` (varchar, foreign key): References `CUSTOMER(customer_email)`.

### 5. `CUSTOMER`
This table stores customer information.

- **Fields**:
  - `Customer_email` (varchar, primary key): Customer's email address.
  - `user_name` (varchar): Customer's name.
  - `phone_no` (varchar): Customer's phone number.
  - `licence` (varchar): Customer's driving license.
  - `address` (varchar): Customer's address.
  - `password_` (varchar): Password for the customer account.
  - `age` (int): Customer's age.

### 6. `EMPLOYEE`
This table stores information about employees working for the car rental company.

- **Fields**:
  - `Employee_id` (varchar, primary key): Employee's ID.
  - `department` (varchar): Department in which the employee works.
  - `email` (varchar): Employee's email address.
  - `name_` (varchar): Employee's name.

### 7. `COMMUNICATION`
This table tracks communication between customers and employees.

- **Fields**:
  - `Cus_customer_id` (varchar, foreign key): References `CUSTOMER(Customer_email)`.
  - `Emp_id` (varchar, foreign key): References `EMPLOYEE(employee_id)`.

## Usage

This schema can be used for building a fully functional car rental system. It handles:
- Car availability and maintenance.
- Insurance information.
- Customer bookings and communication with employees.
- Employee details.

## License

This project is open-source and free to use under the MIT license.
