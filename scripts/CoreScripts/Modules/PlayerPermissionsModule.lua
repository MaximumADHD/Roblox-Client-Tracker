local PlayerPermissionsModule = {}

local PlayersService = game:GetService("Players")

local PlayerGroupInfoMap = {}
local PlayerGroupInfoMapChanged = Instance.new("BindableEvent")

local PlayerCanManageInfoMap = {}
local PlayerCanManageInfoMapChanged = Instance.new("BindableEvent")

local FFlagUseCanManageForDeveloperIconClient2 = game:DefineFastFlag("UseCanManageForDeveloperIconClient2", false)

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

if FFlagUseCanManageForDeveloperIconClient2 then
	coroutine.wrap(function()
		local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
		local RemoveEvent_NewPlayerCanManageDetails = RobloxReplicatedStorage:WaitForChild("NewPlayerCanManageDetails")
		RemoveEvent_NewPlayerCanManageDetails.OnClientEvent:Connect(function(userIdStr, canManage)
			local player = PlayersService:GetPlayerByUserId(tonumber(userIdStr))
			if player then
				PlayerCanManageInfoMap[player] = canManage
				PlayerCanManageInfoMapChanged:Fire()
			end
		end)
	end)()
end

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

local function CanPlayerManagePlace(player)
	while PlayerCanManageInfoMap[player] == nil and player.Parent do
		PlayerCanManageInfoMapChanged.Event:Wait()
	end
	if PlayerCanManageInfoMap[player] ~= nil then
		return PlayerCanManageInfoMap[player]
	end
	return false
end

PlayerPermissionsModule.IsPlayerAdminAsync = NewInGroupFunctionFactory("Admin")
PlayerPermissionsModule.IsPlayerInternAsync = NewInGroupFunctionFactory("Intern")
PlayerPermissionsModule.IsPlayerStarAsync = NewInGroupFunctionFactory("Star")
PlayerPermissionsModule.IsPlayerLocalizationExpertAsync = NewIsLocalizationExpertFunctionFactory()
PlayerPermissionsModule.IsPlayerPlaceOwnerAsync = IsPlaceOwnerFunctionFactory()
if FFlagUseCanManageForDeveloperIconClient2 then
	PlayerPermissionsModule.CanPlayerManagePlaceAsync = CanPlayerManagePlace
end

return PlayerPermissionsModule
