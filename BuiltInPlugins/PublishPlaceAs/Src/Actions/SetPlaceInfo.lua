local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local AssertType = require(Plugin.Src.Util.AssertType)

local Action = require(script.Parent.Action)

return Action(script.Name, function(placeInfoArg)
	AssertType.assertNullableType(placeInfoArg, "table", "SetPlaceInfo arg")
	local placeInfo = placeInfoArg or {}

	local places = placeInfo.places
	local nextPageCursor = placeInfo.nextPageCursor
	local previousPageCursor = placeInfo.previousPageCursor
	local parentGame = placeInfo.parentGame

	AssertType.assertType(places, "table", "SetPlaceInfo.places")
	AssertType.assertNullableType(nextPageCursor, "string", "SetPlaceInfo.nextPageCursor")
	AssertType.assertNullableType(previousPageCursor, "string", "SetPlaceInfo.previousPageCursor")
	AssertType.assertNullableType(parentGame, "table", "SetPlaceInfo.parentGame { name : String, universeId : Number }")

	if parentGame ~= nil then
		AssertType.assertType(parentGame.name, "string", "SetPlaceInfo.parentGame.name")
		AssertType.assertType(parentGame.universeId, "number", "SetPlaceInfo.parentGame.universeId")
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
