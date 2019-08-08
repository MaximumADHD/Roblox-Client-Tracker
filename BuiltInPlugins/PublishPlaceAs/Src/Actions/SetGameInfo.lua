local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local Action = require(script.Parent.Action)

return Action(script.Name, function(gameInfoArg)
	local gameInfo = gameInfoArg or {}

	local errmsg = "SetGameInfo arg must be nil or a table, received %s"
	assert(type(gameInfo) == "table", string.format(errmsg, tostring(gameInfo)))

	local games = gameInfo.games or {}
	local nextPageCursor = gameInfo.nextPageCursor or Cryo.None
	local previousPageCursor = gameInfo.previousPageCursor or Cryo.None

	errmsg = "SetGameInfo.games to be a nil or table, received %s"
	assert(type(games) == "table", string.format(errmsg, tostring(games)))

	errmsg = "SetGameInfo.nextPageCursor must be a string, nil, or Cryo.None, received %s"
	if nextPageCursor ~= Cryo.None then
		assert(type(nextPageCursor) == "string", string.format(errmsg, type(nextPageCursor)))
	end

	errmsg = "SetGameInfo.previousPageCursor must be string, nil, or Cryo.None, received %s"
	if previousPageCursor ~= Cryo.None then
		assert(type(previousPageCursor) == "string", string.format(errmsg, type(previousPageCursor)))
	end

	return {
		gameInfo = {
			games = games,
			nextPageCursor = nextPageCursor,
			previousPageCursor = previousPageCursor,
		}
	}
end)
