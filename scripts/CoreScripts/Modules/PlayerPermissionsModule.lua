local PlayerPermissionsModule = {}

local PlayersService = game:GetService("Players")
local FFlagCorescriptIsInGroupServer = settings():GetFFlag("CorescriptIsInGroupServer")
local FFlagCorescriptIsPlayerGroupOwnerServer = settings():GetFFlag("CorescriptIsPlayerGroupOwnerServer")

-- Remove with FFlagCorescriptIsInGroupServer
local function HasRankInGroupFunctionFactory(groupId, requiredRank)
	local hasRankCache = {}
	assert(type(requiredRank) == "number", "requiredRank must be a number")
	return function(player)
		if player and player.UserId > 0 then
			if hasRankCache[player.UserId] == nil then
				local hasRank = false
				pcall(function()
					hasRank = player:GetRankInGroup(groupId) >= requiredRank
				end)
				hasRankCache[player.UserId] = hasRank
			end
			return hasRankCache[player.UserId]
		end
		return false
	end
end

-- Remove with FFlagCorescriptIsInGroupServer
local function IsInGroupFunctionFactory(groupId)
	local inGroupCache = {}
	return function(player)
		if player and player.UserId > 0 then
			if inGroupCache[player.UserId] == nil then
				local inGroup = false
				pcall(function()
					inGroup = player:IsInGroup(groupId)
				end)
				inGroupCache[player.UserId] = inGroup
			end
			return inGroupCache[player.UserId]
		end
		return false
	end
end

-- Remove with FFlagCorescriptIsInGroupServer
local function IsLocalizationExpertFunctionFactory()
	local localizationCheckFunctions = {
		HasRankInGroupFunctionFactory(4265462, 252), --Roblox Translators - Spanish
		HasRankInGroupFunctionFactory(4265456, 252), --Roblox Translators - Brazilian Portuguese
		HasRankInGroupFunctionFactory(4265443, 252), --Roblox Translators - French
		HasRankInGroupFunctionFactory(4265449, 252), --Roblox Translators - German
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

local PlayerGroupInfoMap = {}
local PlayerGroupInfoMapChanged = Instance.new("BindableEvent")


spawn(function()
	local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
	local RemoveEvent_NewPlayerGroupDetails = RobloxReplicatedStorage:WaitForChild("NewPlayerGroupDetails")
	RemoveEvent_NewPlayerGroupDetails.OnClientEvent:Connect(function(userIdStr, groupDetails)
		if FFlagCorescriptIsInGroupServer then
			local player = PlayersService:GetPlayerByUserId(tonumber(userIdStr))
			if player then
				PlayerGroupInfoMap[player] = groupDetails
				PlayerGroupInfoMapChanged:Fire()
			end
		end
	end)
end)

if FFlagCorescriptIsInGroupServer then
	PlayersService.PlayerRemoving:Connect(function(player)
		PlayerGroupInfoMap[player] = nil
		PlayerGroupInfoMapChanged:Fire()
	end)
end

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

if FFlagCorescriptIsInGroupServer then
	PlayerPermissionsModule.IsPlayerAdminAsync = NewInGroupFunctionFactory("Admin")
	PlayerPermissionsModule.IsPlayerInternAsync = NewInGroupFunctionFactory("Intern")
	PlayerPermissionsModule.IsPlayerStarAsync = NewInGroupFunctionFactory("Star")
	PlayerPermissionsModule.IsPlayerLocalizationExpertAsync = NewIsLocalizationExpertFunctionFactory()
	if FFlagCorescriptIsPlayerGroupOwnerServer then
		PlayerPermissionsModule.IsPlayerPlaceOwnerAsync = IsPlaceOwnerFunctionFactory()
	end
else
	PlayerPermissionsModule.IsPlayerAdminAsync = IsInGroupFunctionFactory(1200769)
	PlayerPermissionsModule.IsPlayerInternAsync = HasRankInGroupFunctionFactory(2868472, 100)
	PlayerPermissionsModule.IsPlayerStarAsync = IsInGroupFunctionFactory(4199740)
	PlayerPermissionsModule.IsPlayerLocalizationExpertAsync = IsLocalizationExpertFunctionFactory()
end

return PlayerPermissionsModule
