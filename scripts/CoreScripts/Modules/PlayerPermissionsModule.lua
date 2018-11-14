local PlayerPermissionsModule = {}

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

PlayerPermissionsModule.IsPlayerAdminAsync = IsInGroupFunctionFactory(1200769)
PlayerPermissionsModule.IsPlayerInternAsync = HasRankInGroupFunctionFactory(2868472, 100)
PlayerPermissionsModule.IsPlayerStarAsync = IsInGroupFunctionFactory(4199740)
PlayerPermissionsModule.IsPlayerLocalizationExpertAsync = IsLocalizationExpertFunctionFactory()

return PlayerPermissionsModule
