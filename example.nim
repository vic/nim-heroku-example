import jester, asyncdispatch, os, strutils
import htmlgen as h

var settings = newSettings()

if existsEnv("PORT"):
  settings.port = Port(parseInt(getEnv("PORT")))

routes:
  get "/":
    resp h.p("Hello from ", a(href="http://github.com/vic/heroku-buildpack-nim", "Heroku Nim Buildpack"))

runForever()
