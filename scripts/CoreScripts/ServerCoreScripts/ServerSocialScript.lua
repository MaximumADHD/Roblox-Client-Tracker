--!nonstrict
--[[
			// FileName: PlayerlistModule.lua
			// Version 1.0
			// Written by: jmargh
			// Description: Implements social features that need to be ran on the server

			// TODO
				We need to get module script working on the server. When we get that working
				This should be moved to a module, and http helper functions should be moved
				to a utility module.
]]
local HttpService = game:GetService('HttpService')
local HttpRbxApiService = game:GetService('HttpRbxApiService')
local Players = game:GetService('Players')
local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')
local RunService = game:GetService('RunService')
local Chat = game:GetService("Chat")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Url = require(RobloxGui.Modules.Common.Url)

local GET_MULTI_FOLLOW = "user/multi-following-exists"

-- Maximum amount of follow notifications that a player is allowed to send to another player.
local MAX_FOLLOW_NOTIFICATIONS_BETWEEN = 5

local PlayerToRelationshipMap = {}

-- Special groups that have leaderboard icons.
local SPECIAL_GROUPS = {
	Admin = {GroupId = 1200769},
	Intern = {GroupId = 2868472, GroupRank = 100},
	Star = {GroupId = 4199740},
	SpanishLocalizationExpert = {GroupId = 4265462, GroupRank = 252},
	BrazilianLocalizationExpert = {GroupId = 4265456, GroupRank = 252},
	FrenchLocalizationExpert = {GroupId = 4265443, GroupRank = 252},
	GermanLocalizationExpert = {GroupId = 4265449, GroupRank = 252},
}

if game.CreatorType == Enum.CreatorType.Group then
	SPECIAL_GROUPS.PlaceCreator = {GroupId = game.CreatorId, GroupRank = 255}
end

-- Map of which special groups a player is in.
local PlayerToGroupDetailsMap = {}

-- Map of player to if they can manage the current place.
local PlayerToCanManageMap = {}

game:DefineFastInt("MaxBlockListSize", 500)

--[[ Remotes ]]--
local RemoteEvent_CanChatWith = Instance.new("RemoteEvent")
RemoteEvent_CanChatWith.Name = "CanChatWith"
RemoteEvent_CanChatWith.Parent = RobloxReplicatedStorage

local RemoteEvent_SetPlayerBlockList = Instance.new('RemoteEvent')
RemoteEvent_SetPlayerBlockList.Name = 'SetPlayerBlockList'
RemoteEvent_SetPlayerBlockList.Parent = RobloxReplicatedStorage

local RemoteEvent_UpdatePlayerBlockList = Instance.new('RemoteEvent')
RemoteEvent_UpdatePlayerBlockList.Name = 'UpdatePlayerBlockList'
RemoteEvent_UpdatePlayerBlockList.Parent = RobloxReplicatedStorage

local RemoteEvent_PlayerGroupDetails = Instance.new('RemoteEvent')
RemoteEvent_PlayerGroupDetails.Name = 'NewPlayerGroupDetails'
RemoteEvent_PlayerGroupDetails.Parent = RobloxReplicatedStorage

local RemoveEvent_NewPlayerCanManageDetails = Instance.new('RemoteEvent')
RemoveEvent_NewPlayerCanManageDetails.Name = 'NewPlayerCanManageDetails'
RemoveEvent_NewPlayerCanManageDetails.Parent = RobloxReplicatedStorage

-- Map: { UserId -> { UserId -> NumberOfNotificationsSent } }
local FollowNotificationsBetweenMap = {}

local function verifyUserId(userId)
	return type(userId) == "number"
end

local function verifyBlockList(blockList)
	if #blockList == 0 or #blockList > game:GetFastInt("MaxBlockListSize") then
		return false
	end

	for _, userId in pairs(blockList) do
		if not verifyUserId(userId) then
			return false
		end
	end
	return true
end

local function sendPlayerAllGroupDetails(player)
	RemoteEvent_PlayerGroupDetails:FireClient(player, PlayerToGroupDetailsMap)
end

local function getPlayerGroupDetails(player)
	local newGroupDetails = {}
	for groupKey, groupInfo in pairs(SPECIAL_GROUPS) do
		if groupInfo.GroupRank ~= nil then
			local isInGroupSuccess, isInGroupValue = pcall(function() return player:GetRankInGroup(groupInfo.GroupId) >= groupInfo.GroupRank end)
			newGroupDetails[groupKey] = isInGroupSuccess and isInGroupValue
		else
			local isInGroupSuccess, isInGroupValue = pcall(function() return player:IsInGroup(groupInfo.GroupId) end)
			newGroupDetails[groupKey] = isInGroupSuccess and isInGroupValue
		end
	end
	if player.Parent then
		local uidStr = tostring(player.UserId)
		PlayerToGroupDetailsMap[uidStr] = newGroupDetails

		RemoteEvent_PlayerGroupDetails:FireAllClients({
			[uidStr] = newGroupDetails,
		})
	end
end

local function sendCanChatWith(newPlayer)

	local newPlayerCanChatWithPacket = {}

	for _, player in ipairs(Players:GetPlayers()) do
		local success, canChat = pcall(function()
			return Chat:CanUsersChatAsync(newPlayer.UserId, player.UserId)
		end)

		newPlayerCanChatWithPacket[player.userId] = success and canChat
		RemoteEvent_CanChatWith:FireClient(player, {
			[newPlayer.userId] = success and canChat,
		})
	end

	RemoteEvent_CanChatWith:FireClient(newPlayer, newPlayerCanChatWithPacket)
end

local function sendPlayerAllCanManage(player)
	for userId, canManage in pairs(PlayerToCanManageMap) do
		RemoveEvent_NewPlayerCanManageDetails:FireClient(player, userId, canManage)
	end
end

local function getPlayerCanManage(player)
	local canManage = false
	if player.UserId > 0 then
		local canManageSuccess, canManageResult = pcall(function()
			local apiPath = "v1/user/%d/canmanage/%d"
			local url = string.format(Url.DEVELOP_URL..apiPath, player.UserId, game.PlaceId)
			return HttpRbxApiService:GetAsyncFullUrl(url)
		end)
		if canManageSuccess and type(canManageResult) == "string" then
			-- API returns: {"Success":BOOLEAN,"CanManage":BOOLEAN}
			-- Convert from JSON to a table
			-- pcall in case of invalid JSON
			local success, result = pcall(function()
				return HttpService:JSONDecode(canManageResult)
			end)
			if success and result.CanManage == true then
				canManage = true
			end
		end
	end

	if player.Parent then
		local uidStr = tostring(player.UserId)
		PlayerToCanManageMap[uidStr] = canManage
		RemoveEvent_NewPlayerCanManageDetails:FireAllClients(uidStr, canManage)
	end
end

local function onPlayerAdded(newPlayer)
	sendPlayerAllGroupDetails(newPlayer)
	if newPlayer.UserId > 0 then
		coroutine.wrap(getPlayerGroupDetails)(newPlayer)
	end

	sendPlayerAllCanManage(newPlayer)
	coroutine.wrap(getPlayerCanManage)(newPlayer)

	sendCanChatWith(newPlayer)
end

RemoteEvent_SetPlayerBlockList.OnServerEvent:Connect(function(player, blockList)
	if type(blockList) == "table" then
		if verifyBlockList(blockList) then
			player:AddToBlockList(blockList)
		end
	end
end)

RemoteEvent_UpdatePlayerBlockList.OnServerEvent:Connect(function(player, userId, block)
	if type(block) == "boolean" then
		if verifyUserId(userId) then
			player:UpdatePlayerBlocked(userId, block)
		end
	end
end)

Players.PlayerAdded:connect(onPlayerAdded)
for _,player in pairs(Players:GetPlayers()) do
	onPlayerAdded(player)
end

Players.PlayerRemoving:connect(function(prevPlayer)
	local uid = tostring(prevPlayer.UserId)
	if PlayerToRelationshipMap[uid] then
		PlayerToRelationshipMap[uid] = nil
		FollowNotificationsBetweenMap[uid] = nil
	end
	if PlayerToGroupDetailsMap[uid] then
		PlayerToGroupDetailsMap[uid] = nil
	end
	if PlayerToCanManageMap[uid] ~= nil then
		PlayerToCanManageMap[uid] = nil
	end
end)

local noOpt = function() end
for _, instance in ipairs(RobloxReplicatedStorage:GetChildren()) do
	if instance:IsA("RemoteEvent") then
		instance.OnServerEvent:Connect(noOpt)
	end
end
