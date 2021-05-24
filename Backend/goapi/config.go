package main

import (
	"fmt"

	"gorm.io/driver/sqlserver"
	"gorm.io/gorm"
)

/*
//Replazar con tus datos de conexion
var user = "DESKTOP-CG9D12H"
var password = ""
var database = "BackEndDB"
*/

func ConnectDB() (*gorm.DB, error) {

	fmt.Println("si entre")
	// Crear connection string
	dsn := "user:pass@tcp(127.0.0.1:3306)/BackEndDB?charset=utf8mb4&parseTime=True&loc=Local"
	db, err := gorm.Open(sqlserver.Open(dsn), &gorm.Config{})
	return db, err
}
