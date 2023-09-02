CREATE TABLE Consumer (
    consumer_id INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Password VARCHAR(128),
);

CREATE TABLE Account (
    acc_id INT AUTO_INCREMENT PRIMARY KEY,
   consumer_id INT,
    acc_no VARCHAR(20),
    balance DECIMAL(18, 2),
    FOREIGN KEY (consumer_id) REFERENCES Customers(consumer_id)
);

CREATE TABLE Municipality (
    municipality_id INT AUTO_INCREMENT PRIMARY KEY,
    contact_info INT,
    energy_GridAccess DECIMAL(18, 2),
);

CREATE TABLE EnergyTransation (
    Transation_id INT AUTO_INCREMENT PRIMARY KEY,
    consumer_id INT, 
    municipality_id INT, 
    balance DECIMAL(18, 2),
    FOREIGN KEY (consumer_id) REFERENCES Consumer(consumer_id),
    FOREIGN KEY (municipality_id) REFERENCES Municipality(municipality_id),
);

CREATE TABLE BankedEnergy (
    BankedEnergy_id INT AUTO_INCREMENT PRIMARY KEY,
    consumer_id INT,
    municipality_id INT,
   EnergyAmt DECIMAL(18, 2),
   Time_stamp DECIMAL(18, 2),
    FOREIGN KEY (consumer_id) REFERENCES Consumer(consumer_id)
    FOREIGN KEY (municipality_id) REFERENCES Municipality(municipality_id),

);