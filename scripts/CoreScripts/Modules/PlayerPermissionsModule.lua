local PlayerPermissionsModule = {}

local PlayersService = game:GetService("Players")
local FFlagCorescriptIsPlayerGroupOwnerServer = settings():GetFFlag("CorescriptIsPlayerGroupOwnerServer")

local PlayerGroupInfoMap = {}
local PlayerGroupInfoMapChanged = Instance.new("BindableEvent")


spawn(function()
	local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
	local RemoveEvent_NewPlayerGroupDetails = RobloxReplicatedStorage:WaitForChild("NewPlayerGroupDetails")
	RemoveEvent_NewPlayerGroupDetails.OnClientEvent:Connect(function(userIdStr, groupDetails)
		local player = PlayersService:GetPlayerByUserId(tonumber(userIdStr))
		if player then
			PlayerGroupInfoMap[player] = groupDetails
			PlayerGroupInfoMapChanged:Fire()
		end
	end)
end)

PlayersService.PlayerRemoving:Connect(function(player)
	PlayerGroupInfoMap[player] = nil
	PlayerGroupInfoMapChanged:Fire()
end)

local function NewInGroupFunctionFactory(groupKey)
	return function(player)
		while not PlayerGroupInfoMap[player] and player.Parent do
			PlayerGroupInfoMapChanged.Event:wait()
		end
		local groupInfo = PlayerGroupInfoMap[player]
		if groupInfo and groupInfo[groupKey] then
			return true
		end
		return false
	end
end

local function NewIsLocalizationExpertFunctionFactory()
	local localizationCheckFunctions = {
		NewInGroupFunctionFactory("SpanishLocalizationExpert"),
		NewInGroupFunctionFactory("BrazilianLocalizationExpert"),
		NewInGroupFunctionFactory("FrenchLocalizationExpert"),
		NewInGroupFunctionFactory("GermanLocalizationExpert"),
	}
	return function(player)
		for i = 1, #localizationCheckFunctions do
			if localizationCheckFunctions[i](player) then
				return true
			end
		end
		return false
	end
end

local function IsPlaceOwnerFunctionFactory()
	if game.CreatorType == Enum.CreatorType.Group then
		return NewInGroupFunctionFactory("PlaceCreator")
	end
	return function(player)
		return player.UserId == game.CreatorId
	end
end

PlayerPermissionsModule.IsPlayerAdminAsync = NewInGroupFunctionFactory("Admin")
PlayerPermissionsModule.IsPlayerInternAsync = NewInGroupFunctionFactory("Intern")
PlayerPermissionsModule.IsPlayerStarAsync = NewInGroupFunctionFactory("Star")
PlayerPermissionsModule.IsPlayerLocalizationExpertAsync = NewIsLocalizationExpertFunctionFactory()
if FFlagCorescriptIsPlayerGroupOwnerServer then
	PlayerPermissionsModule.IsPlayerPlaceOwnerAsync = IsPlaceOwnerFunctionFactory()
end

return PlayerPermissionsModule
