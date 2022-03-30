local Plugin = script.Parent.Parent.Parent

local AssertType = require(Plugin.Src.Util.AssertType)

local Action = require(script.Parent.Action)

local shouldShowDevPublishLocations = require(Plugin.Src.Util.PublishPlaceAsUtilities).shouldShowDevPublishLocations
local FFlagPlacePublishManagementUI2 = game:GetFastFlag("PlacePublishManagementUI2")

return Action(script.Name, function(publishInfoArg)
	AssertType.assertNullableType(publishInfoArg, "table", "SetPublishInfo arg")
	local publishInfo = publishInfoArg or {}

    local id = publishInfo.id
	local name = publishInfo.name
	local parentGameId = publishInfo.parentGameId
	local parentGameName = publishInfo.parentGameName
	local settings = publishInfo.settings
	local publishFailed = publishInfo.failed
	local publishParameters = FFlagPlacePublishManagementUI2 and publishInfo.publishParameters or nil

	AssertType.assertType(id, "number", "SetPublishInfo.id")
	assert(publishFailed or game.GameId ~= 0, "Game ID should not be 0 if studio did not fail to publish a new game")
	AssertType.assertType(name, "string", "SetPublishInfo.name")
	AssertType.assertType(parentGameName, "string", "SetPublishInfo.parentGameName")
	AssertType.assertNullableType(parentGameId, "number", "SetPublishInfo.parentGameId")
	if shouldShowDevPublishLocations() then
		AssertType.assertNullableType(settings, "table", "SetPublishInfo.settings { name : String, description : String, genre : String, playableDevices : table, OptInLocations : table }")
	else
		AssertType.assertNullableType(settings, "table", "SetPublishInfo.settings { name : String, description : String, genre : String, playableDevices : table }")
	end

	if settings ~= nil then
		AssertType.assertType(settings.name, "string", "settings.name")
		AssertType.assertType(settings.description, "string", "settings.description")
		AssertType.assertType(settings.genre, "string", "settings.genre")
		AssertType.assertType(settings.playableDevices, "table", "settings.playableDevices")
		if shouldShowDevPublishLocations() then
			AssertType.assertType(settings.OptInLocations, "table", "settings.OptInLocations")
		end

		assert(next(settings.playableDevices) ~= nil, "Empty platform table")
	end

	return {
		publishInfo = {
			id = id,
			name = name,
			parentGameId = parentGameId,
			parentGameName = parentGameName,
			settings = settings,
			publishParameters = publishParameters,
		}
	}
end)