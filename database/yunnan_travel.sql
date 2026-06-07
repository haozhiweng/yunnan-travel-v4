
CREATE DATABASE IF NOT EXISTS yunnan_travel;
USE yunnan_travel;

CREATE TABLE user(
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(50),
  password VARCHAR(255),
  nickname VARCHAR(50),
  phone VARCHAR(20),
  email VARCHAR(100),
  avatar VARCHAR(255),
  create_time DATETIME
);

CREATE TABLE city(
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  english_name VARCHAR(50),
  intro TEXT,
  cover_image VARCHAR(255),
  best_season VARCHAR(100)
);

CREATE TABLE scenic(
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  city_id BIGINT,
  name VARCHAR(100),
  level VARCHAR(20),
  description TEXT,
  longitude DECIMAL(10,6),
  latitude DECIMAL(10,6),
  cover_image VARCHAR(255)
);

CREATE TABLE hotel(
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  city_id BIGINT,
  name VARCHAR(100),
  address VARCHAR(255),
  price DECIMAL(10,2),
  star_level INT
);

CREATE TABLE travel_guide(
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255),
  cover_image VARCHAR(255),
  content LONGTEXT,
  view_count INT
);

CREATE TABLE ai_plan(
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  user_id BIGINT,
  title VARCHAR(255),
  content LONGTEXT,
  create_time DATETIME,
  share_id VARCHAR(16) UNIQUE,
  share_url VARCHAR(255)
);
