--[[
	Controller for various security permissions
]]
local SecurityController = {}
SecurityController.__index = SecurityController

function SecurityController.new(networking)
	local self = {}
	self.__networking = networking
	return setmetatable(self, SecurityController)
end

function SecurityController:configurationV2GET(gameId)
	return self.__networking:get("develop", "/v2/universes/" .. gameId .. "/configuration"):await()
end

function SecurityController:configurationV2PATCH(gameId, configuration)
	return self.__networking
		:patch("develop", "/v2/universes/" .. gameId .. "/configuration", {
			Body = configuration,
		})
		:await()
end

function SecurityController:GetPermission(gameId, permissionKey)
	local response = self:configurationV2GET(gameId)
	local permissions = response.responseBody.permissions
	return permissions[permissionKey]
end

function SecurityController:SetChangedPermissions(gameId, permissionKey, changedValue)
	return self:configurationV2PATCH(gameId, {
		permissions = {
			[permissionKey] = changedValue,
		},
	})
end

function SecurityController:GetThirdPartyPurchasesAllowed(gameId)
	return self:GetPermission(gameId, "IsThirdPartyPurchaseAllowed")
end

function SecurityController:SetThirdPartyPurchasesAllowed(gameId, changedValue)
	return self:SetChangedPermissions(gameId, "IsThirdPartyPurchaseAllowed", changedValue)
end

function SecurityController:GetThirdPartyTeleportsAllowed(gameId)
	return self:GetPermission(gameId, "IsThirdPartyTeleportAllowed")
end

function SecurityController:SetThirdPartyTeleportsAllowed(gameId, changedValue)
	return self:SetChangedPermissions(gameId, "IsThirdPartyTeleportAllowed", changedValue)
end

function SecurityController:GetHttpEnabled(game)
	local HttpService = game:GetService("HttpService")
	return HttpService:GetHttpEnabled()
end

function SecurityController:SetHttpEnabled(game, changedValue)
	local HttpService = game:GetService("HttpService")
	return HttpService:SetHttpEnabled(changedValue)
end

function SecurityController:GetStudioAccessToApisAllowed(gameId)
	local response = self:configurationV2GET(gameId)
	local devices = response.responseBody
	return devices["studioAccessToApisAllowed"]
end

function SecurityController:SetStudioAccessToApisAllowed(gameId, changedValue)
	return self:configurationV2PATCH(gameId, {
		studioAccessToApisAllowed = changedValue,
	})
end

return SecurityController
