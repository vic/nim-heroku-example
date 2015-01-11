# example.nim
import jester, asyncdispatch, htmlgen, os, strutils

var settings = newSettings()

if existsEnv("PORT"):
  settings.port = Port(parseInt(getEnv("PORT")))

routes:
  get "/":
    resp h1("Hello world")

runForever()
