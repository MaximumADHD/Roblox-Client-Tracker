--!nonstrict
local AdService = game:GetService("AdService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local RoactAppExperiment = require(CorePackages.Packages.RoactAppExperiment)
local Promise = require(CorePackages.Promise)
local Roact = require(CorePackages.Roact)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagRemoveAppTempCommonTemp =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagRemoveAppTempCommonTemp
local httpRequest = if GetFFlagRemoveAppTempCommonTemp()
	then require(RobloxGui.Modules.Common.httpRequest)
	else require(CorePackages.AppTempCommon.Temp.httpRequest)
local httpImpl = httpRequest(HttpRbxApiService)

local RobloxTranslator = require(RobloxGui.Modules:WaitForChild("RobloxTranslator"))
local GetGameNameAndDescription = require(CorePackages.Workspace.Packages.GameDetailRodux).GetGameNameAndDescription

local GetFFlagEnableTeleportBackButton = require(RobloxGui.Modules.Flags.GetFFlagEnableTeleportBackButton)
local GetFStringTeleportBackButtonIXPCustomLayerName =
	require(RobloxGui.Modules.Flags.GetFStringTeleportBackButtonIXPCustomLayerName)

local ReturnDestinationUniverseId = 0
local sourceUniverseId, destinationUniverseId = AdService:GetAdTeleportInfo()
if sourceUniverseId > 0 and (destinationUniverseId == 0 or destinationUniverseId == game.GameId) then
	ReturnDestinationUniverseId = sourceUniverseId
end

local ReturnDestinationPlaceName = nil
local ReturnDestinationPlaceNamePromise = Promise.defer(function(resolve)
	if ReturnDestinationUniverseId > 0 then
		GetGameNameAndDescription(httpImpl, ReturnDestinationUniverseId):andThen(function(result)
			ReturnDestinationPlaceName = result.Name
		end):await()
		resolve()
	else
		resolve()
	end
end)

local BackButtonController = {}

BackButtonController.getTooltipText = function()
	if ReturnDestinationPlaceName == nil then
		return RobloxTranslator:FormatByKey("InGame.CommonUI.Label.ReturnFallback")
	else
		return RobloxTranslator:FormatByKey("InGame.CommonUI.Label.ReturnTo", {
			placeName = ReturnDestinationPlaceName,
		})
	end
end

BackButtonController.getTooltipTextTimeout = function()
	if ReturnDestinationPlaceName == nil then
		Promise.any({ ReturnDestinationPlaceNamePromise, Promise.delay(1) }):await()
	end
	return BackButtonController.getTooltipText()
end

BackButtonController.getMenuText = function()
	local menuText, updateMenuText = Roact.createBinding(BackButtonController.getTooltipText())
	if ReturnDestinationPlaceName == nil then
		pcall(function()
			ReturnDestinationPlaceNamePromise:andThen(function()
				updateMenuText(BackButtonController.getTooltipText())
			end)
		end)
	end
	return menuText
end

BackButtonController.initiateBackButtonTeleport = function(teleportMethod)
		AdService:ReturnToPublisherExperience(teleportMethod)
end

BackButtonController.connectExperimentUserLayer = function(component, enabledPropName, fieldName)
	local enabled = GetFFlagEnableTeleportBackButton()
		and (ReturnDestinationUniverseId > 0)
	return RoactAppExperiment.connectUserLayer({
		GetFStringTeleportBackButtonIXPCustomLayerName(),
	}, function(layerVariables, props)
		local layer = layerVariables[GetFStringTeleportBackButtonIXPCustomLayerName()] or {}
		return { [enabledPropName] = enabled and (layer[fieldName] or false) }
	end)(component)
end

return BackButtonController
