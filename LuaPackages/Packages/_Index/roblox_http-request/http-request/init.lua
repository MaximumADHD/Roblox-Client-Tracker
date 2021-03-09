-- Generator information:
-- Human name: HttpRequest
-- Variable name: HttpRequest
-- Repo name: http-request

local httpRequestCreator = require(script.httpRequestCreator)
local RequestFunctions = require(script.RequestFunctions)
local HttpSession = require(script.HttpSession)

return {
	config = httpRequestCreator,
	requestFunctions = RequestFunctions,
	startNewSession = HttpSession.startNewSession,
}
