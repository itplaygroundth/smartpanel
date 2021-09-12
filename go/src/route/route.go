package route

import (
	"github.com/gofiber/fiber/v2"

	"github.com/itplaygroundth/canyon/handler"

	"github.com/gofiber/fiber/v2/middleware/compress"
)

func SetupRoutes(app *fiber.App) {

	app.Use(compress.New())
	//app.Static("static/css", "./css")
	//app.Static("static/js", "./js")
	app.Static("/static", "./static")
	app.Static("/themes", "./themes")
	app.Get("/", handler.GetTest)
	//app.Get("/:key/ico", handler.GetFav)
	app.Post("/get-post", handler.GetPost)
	app.Post("/get-user", handler.GetUser)
	//app.Get("/get-short",handler.GetShort)
	//app.Get("/pixel-track", handler.GetPixelTrack)
	//app.Get("/pixel/:key", handler.GetPixelPath)
	//app.Post("/short", handler.PostShort)
}
