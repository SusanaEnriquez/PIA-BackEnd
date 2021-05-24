package main

import (
	"gorm.io/driver/sqlserver"
	"gorm.io/gorm"
)

//Replazar con tus datos de conexion
var user = "juanc"
var password = "laptop-s0rkh975"
var database = "BackEndDB"

func ConnectDB() (*gorm.DB, error) {

	// Crear connection string
	dsn := "sqlserver://gorm:LoremIpsum86@localhost:9930?database=gorm"
	db, err := gorm.Open(sqlserver.Open(dsn), &gorm.Config{})
	return db, err
}
