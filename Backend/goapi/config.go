package main

import (
	"fmt"

	"gorm.io/driver/sqlserver"
	"gorm.io/gorm"
	"gorm.io/gorm/schema"
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
	dsn := "sqlserver:DESKTOP-CG9D12H;database=BackEndDB"
	db, err := gorm.Open(sqlserver.Open(dsn), &gorm.Config{
		NamingStrategy: schema.NamingStrategy{
			SingularTable: true,
		},
	})
	return db, err
}
