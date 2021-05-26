package main

import (
	"fmt"
	"log"
	"net/http"
	"strconv"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

func createImage(c echo.Context) error {
	image := new(Imagen)
	image.Titulo = c.FormValue("titulo")
	image.Descripcion = c.FormValue("descripcion")
	image.URL = c.FormValue("urlimage")
	db, err := ConnectDB()
	if err != nil {
		log.Fatal("Error al conectar a la base de datos: ", err)
	}
	db.Create(&image)
	return c.JSON(http.StatusCreated, image)
}

func getImage(c echo.Context) error {
	id, _ := strconv.Atoi(c.Param("id"))
	fmt.Println("antes de conectarse a la bd")
	db, err := ConnectDB()
	fmt.Println("despues de conectarse a la bd")
	if err != nil {
		log.Fatal("Error al conectar a la base de datos: ", err)
	}
	var res Imagen
	db.First(&res, id)
	return c.JSON(http.StatusOK, res)
}

func updateImage(c echo.Context) error {
	id, _ := strconv.Atoi(c.Param("id"))
	db, err := ConnectDB()
	if err != nil {
		log.Fatal("Error al conectar a la base de datos: ", err)
	}
	var res Imagen
	db.First(&res, id)

	var params = new(Imagen)
	params.Titulo = c.FormValue("titulo")
	params.Descripcion = c.FormValue("descripcion")
	params.URL = c.FormValue("urlimage")

	fmt.Println("OLA, YA LLEGUEEEEEEEEEE")
	fmt.Println(params.ID)
	fmt.Println(params.Titulo)
	fmt.Println(params.Descripcion)
	fmt.Println(params.URL)

	if len(params.Titulo) > 0 && params.Titulo != "" {
		res.Titulo = params.Titulo
	}
	if len(params.Descripcion) > 0 && params.Descripcion != "" {
		res.Descripcion = params.Descripcion
	}
	if len(params.URL) > 0 && params.URL != "" {
		res.URL = params.URL
	}
	db.Save(&res)
	return c.JSON(http.StatusOK, res)
}

func deleteImage(c echo.Context) error {
	id, _ := strconv.Atoi(c.Param("id"))
	fmt.Print(id)
	db, err := ConnectDB()
	if err != nil {
		log.Fatal("Error al conectar a la base de datos: ", err)
	}
	var res Imagen
	db.Where("id = ?", id).Delete(&res)
	return c.NoContent(http.StatusNoContent)
}

func getAllImage(c echo.Context) error {
	fmt.Println("antes de conectarse a la bd")
	db, err := ConnectDB()
	fmt.Println("despues de conectarse a la bd")
	if err != nil {
		log.Fatal("Error al conectar a la base de datos: ", err)
	}
	var res []Imagen

	fmt.Println(res)
	// Encuentra fila con llave primaria ingresada en la variable id
	db.Find(&res)
	fmt.Print("Esto contiene el res: ")
	fmt.Println(res)
	return c.JSON(http.StatusOK, res)
}

func main() {
	e := echo.New()

	// Middleware
	e.Use(middleware.Logger())
	e.Use(middleware.Recover())
	e.Use(middleware.CORSWithConfig(middleware.CORSConfig{
		AllowOrigins: []string{"http://localhost:8100", "http://localhost:3100"},
		AllowHeaders: []string{echo.HeaderOrigin, echo.HeaderContentType, echo.HeaderAccept},
	}))

	// Routes
	e.GET("/images", getAllImage)
	e.POST("/images", createImage)
	e.GET("/images/:id", getImage)
	e.PUT("/images/:id", updateImage)
	e.DELETE("/images/:id", deleteImage)

	// Start server
	e.Logger.Fatal(e.Start("localhost:1323"))
}
