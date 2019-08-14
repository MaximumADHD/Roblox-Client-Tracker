local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local Action = require(script.Parent.Action)

return Action(script.Name, function(placeInfoArg)
	local placeInfo = placeInfoArg or {}

	local errmsg = "SetPlaceInfo arg must be nil or a table, received %s"
	assert(type(placeInfo) == "table", string.format(errmsg, tostring(placeInfo)))

	local places = placeInfo.places or {}
	local nextPageCursor = placeInfo.nextPageCursor
	local previousPageCursor = placeInfo.previousPageCursor
	local parentGame = placeInfo.parentGame

	errmsg = "SetPlaceInfo.places must be nil or table, received %s"
	assert(type(places) == "table", string.format(errmsg, tostring(places)))

	if nextPageCursor ~= nil then
		errmsg = "SetPlaceInfo.nextPageCursor must be a nil or string, received %s"
		assert(type(nextPageCursor) == "string", string.format(errmsg, type(nextPageCursor)))
	end

	if previousPageCursor ~= nil then
		errmsg = "SetPlaceInfo.previousPageCursor must be nil or string, received %s"
		assert(type(previousPageCursor) == "string", string.format(errmsg, type(previousPageCursor)))
	end

	if parentGame ~= nil then
		errmsg = "SetPlaceInfo.parentGame must be nil or { name : String, universeId : Number }, received %s"
		assert(type(parentGame) == "table", string.format(errmsg, type(parentGame)))
		assert(type(parentGame.name) == "string", string.format(errmsg, type(parentGame.name)))
		assert(type(parentGame.universeId) == "number", string.format(errmsg, type(parentGame.universeId)))
	end

	return {
		placeInfo = {
			places = places,
			nextPageCursor = nextPageCursor or Cryo.None,
			previousPageCursor = previousPageCursor or Cryo.None,
			parentGame = parentGame or Cryo.None,
		}
	}
end)
