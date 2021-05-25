package main

type (
	Imagen struct {
		ID          int    `json:"id"`
		Titulo      string `json:"titulo"`
		Descripcion string `json:"descripcion"`
		URL         string `json:"urlimage"`
	}

	TokenRsponse struct {
		Token string `json:"token"`
	}
)
