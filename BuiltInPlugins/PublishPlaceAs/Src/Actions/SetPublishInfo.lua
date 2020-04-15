local Plugin = script.Parent.Parent.Parent

local AssertType = require(Plugin.Src.Util.AssertType)

local Action = require(script.Parent.Action)

return Action(script.Name, function(publishInfoArg)
	AssertType.assertNullableType(publishInfoArg, "table", "SetPublishInfo arg")
	local publishInfo = publishInfoArg or {}

    local id = publishInfo.id
	local name = publishInfo.name
	local parentGameId = publishInfo.parentGameId
	local parentGameName = publishInfo.parentGameName
	local settings = publishInfo.settings

	AssertType.assertType(id, "number", "SetPublishInfo.id")
	assert(game.GameId ~= 0, "Game ID should not be 0")
	AssertType.assertType(name, "string", "SetPublishInfo.name")
	AssertType.assertType(parentGameName, "string", "SetPublishInfo.parentGameName")
	AssertType.assertNullableType(parentGameId, "number", "SetPublishInfo.parentGameId")
	AssertType.assertNullableType(settings, "table", "SetPublishInfo.settings { name : String, description : String, genre : String, playableDevices : table }")

	if settings ~= nil then
		AssertType.assertType(settings.name, "string", "settings.name")
		AssertType.assertType(settings.description, "string", "settings.description")
		AssertType.assertType(settings.genre, "string", "settings.genre")
		AssertType.assertType(settings.playableDevices, "table", "settings.playableDevices")

		assert(next(settings.playableDevices) ~= nil, "Empty platform table")
	end

	return {
		publishInfo = {
			id = id,
			name = name,
			parentGameId = parentGameId,
			parentGameName = parentGameName,
			settings = settings,
		}
	}
end)