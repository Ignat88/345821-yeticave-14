CREATE DATABASE yeticave
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE yeticave;

CREATE TABLE categories(
  id INT AUTO_INCREMENT PRIMARY KEY,
  cat_id VARCHAR(128) NOT NULL UNIQUE,
  cat_name VARCHAR(128) NOT NULL );

  CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    dt_reg TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    email VARCHAR(64) NOT NULL UNIQUE,
    name VARCHAR(90) NOT NULL ,
    password VARCHAR(50) NOT NULL,
    contact VARCHAR(128) NOT NULL UNIQUE,
    bet_id INT NOT NULL ,
    lot_id INT NOT NULL
  );

    CREATE TABLE lots(
      id INT AUTO_INCREMENT PRIMARY KEY,
      dt_lot TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      name VARCHAR(64) NOT NULL,
      descriprion VARCHAR(220) NOT NULL,
      img_link VARCHAR(300) NOT NULL,
      start_price INT NOT NULL,
      dt_end DATETIME,
      up_bet INT NOT NULL,
      cat_id INT NOT NULL ,
      us_id INT NOT NULL
    );


      CREATE TABLE bet(
        id INT AUTO_INCREMENT PRIMARY KEY,
        dt_bet TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        bet_price INT NOT NULL,
        us_id INT NOT NULL ,
        lot_id INT NOT NULL
      );
