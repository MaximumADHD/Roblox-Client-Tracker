local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local Action = require(script.Parent.Action)

return Action(script.Name, function(placeInfoArg)
	local placeInfo = placeInfoArg or {}

	local errmsg = "SetPlaceInfo arg must be nil or a table, received %s"
	assert(type(placeInfo) == "table", string.format(errmsg, tostring(placeInfo)))

	local places = placeInfo.places or {}
	local nextPageCursor = placeInfo.nextPageCursor or Cryo.None
	local previousPageCursor = placeInfo.previousPageCursor or Cryo.None

	errmsg = "SetPlaceInfo.places to be a nil or table, received %s"
	assert(type(places) == "table", string.format(errmsg, tostring(places)))

	errmsg = "SetPlaceInfo.nextPageCursor must be a string, nil, or Cryo.None, received %s"
	if nextPageCursor ~= Cryo.None then
		assert(type(nextPageCursor) == "string", string.format(errmsg, type(nextPageCursor)))
	end

	errmsg = "SetPlaceInfo.previousPageCursor must be string, nil, or Cryo.None, received %s"
	if previousPageCursor ~= Cryo.None then
		assert(type(previousPageCursor) == "string", string.format(errmsg, type(previousPageCursor)))
	end

	return {
		placeInfo = {
			places = places,
			nextPageCursor = nextPageCursor,
			previousPageCursor = previousPageCursor,
		}
	}
end)
