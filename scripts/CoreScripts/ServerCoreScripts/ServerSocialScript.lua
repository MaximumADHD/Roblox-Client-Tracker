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

game:DefineFastFlag("RemoveInGameFollowingServer", false)

--[[ Remotes ]]--
local RemoteEvent_FollowRelationshipChanged
local RemoteEvent_NewFollower
local RemoteFunc_GetFollowRelationships
if not game:GetFastFlag("RemoveInGameFollowingServer") then
	RemoteEvent_FollowRelationshipChanged = Instance.new('RemoteEvent')
	RemoteEvent_FollowRelationshipChanged.Name = "FollowRelationshipChanged"
	RemoteEvent_FollowRelationshipChanged.Parent = RobloxReplicatedStorage

	RemoteEvent_NewFollower = Instance.new("RemoteEvent")
	RemoteEvent_NewFollower.Name = "NewFollower"
	RemoteEvent_NewFollower.Parent = RobloxReplicatedStorage

	RemoteFunc_GetFollowRelationships = Instance.new('RemoteFunction')
	RemoteFunc_GetFollowRelationships.Name = "GetFollowRelationships"
	RemoteFunc_GetFollowRelationships.Parent = RobloxReplicatedStorage
end

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

game:DefineFastFlag("UseCanManageForDeveloperIconServer2", false)

--[[ Helper Functions ]]--
local function decodeJSON(json)
	local success, result = pcall(function()
		return HttpService:JSONDecode(json)
	end)
	if not success then
		print("decodeJSON() failed because", result, "Input:", json)
		return nil
	end

	return result
end

local function rbxApiPostAsync(path, params, throttlePriority, contentType, httpType)
	local success, result = pcall(function()
		return HttpRbxApiService:PostAsync(path, params, throttlePriority, contentType, httpType)
	end)
	--
	if not success then
		local label = string.format("%s: - path: %s, \njson: %s", tostring(result), tostring(path), tostring(params))
		return nil
	end

	return decodeJSON(result)
end

--[[
	// Return - table
		Key: FollowingDetails
			Value: Arrary of details
				Key: UserId1
					Value: number - userId of new client
				Key: UserId2
					Value: number - userId of other client
				Key: User1FollowsUser2
					Value: boolean
				Key: User2FollowsUser1
					Value: boolean
]]
local function getFollowRelationshipsAsync(uid)
	if RunService:IsStudio() then
		return
	end

	local otherUserIdTable = {}
	for _,player in pairs(Players:GetPlayers()) do
		if player.UserId > 0 then
			table.insert(otherUserIdTable, player.UserId)
		end
	end

	if #otherUserIdTable > 0 and uid and uid > 0 then
		local jsonPostBody = {
			userId = uid;
			otherUserIds = otherUserIdTable;
		}
		jsonPostBody = HttpService:JSONEncode(jsonPostBody)

		if jsonPostBody then
			return rbxApiPostAsync(GET_MULTI_FOLLOW, jsonPostBody,
                Enum.ThrottlingPriority.Default, Enum.HttpContentType.ApplicationJson,
                Enum.HttpRequestType.Players)
		end
	end
end

local function createRelationshipObject(user1FollowsUser2, user2FollowsUser1)
	local object = {}
	object.IsFollower = user2FollowsUser1
	object.IsFollowing = user1FollowsUser2
	object.IsMutual = user1FollowsUser2 and user2FollowsUser1

	return object
end

local function updateAndNotifyClients(resultTable, newUserIdStr, newPlayer)
	local followingDetails = resultTable["FollowingDetails"]
	if followingDetails then
		local relationshipTable = PlayerToRelationshipMap[newUserIdStr] or {}

		for i = 1, #followingDetails do
			local detail = followingDetails[i]
			local otherUserId = detail["UserId2"]
			local otherUserIdStr = tostring(otherUserId)

			local followsOther = detail["User1FollowsUser2"]
			local followsNewPlayer = detail["User2FollowsUser1"]

			relationshipTable[otherUserIdStr] = createRelationshipObject(followsOther, followsNewPlayer)

			-- update other use
			local otherRelationshipTable = PlayerToRelationshipMap[otherUserIdStr]
			if otherRelationshipTable then
				local newRelationship = createRelationshipObject(followsNewPlayer, followsOther)
				otherRelationshipTable[newUserIdStr] = newRelationship

				local otherPlayer = Players:GetPlayerByUserId(otherUserId)
				if otherPlayer then
					-- create single entry table (keep format same) and send to other client
					local deltaTable = {}
					deltaTable[newUserIdStr] = newRelationship
					RemoteEvent_FollowRelationshipChanged:FireClient(otherPlayer, deltaTable)
				end
			end
		end

		PlayerToRelationshipMap[newUserIdStr] = relationshipTable
		RemoteEvent_FollowRelationshipChanged:FireClient(newPlayer, relationshipTable)
	end
end

--[[ Connections ]]--
if not game:GetFastFlag("RemoveInGameFollowingServer") then
	function RemoteFunc_GetFollowRelationships.OnServerInvoke(player)
		local uid = player.UserId
		local uidStr = tostring(player.UserId)
		if uid and uid > 0 and PlayerToRelationshipMap[uidStr] then
			return PlayerToRelationshipMap[uidStr]
		else
			return {}
		end
	end
end

-- Map: { UserId -> { UserId -> NumberOfNotificationsSent } }
local FollowNotificationsBetweenMap = {}

local function isPlayer(value)
	return typeof(value) == "Instance" and value:IsA("Player")
end

-- client fires event to server on new follow
if not game:GetFastFlag("RemoveInGameFollowingServer") then
	RemoteEvent_NewFollower.OnServerEvent:connect(function(player1, player2, player1FollowsPlayer2)
		if not isPlayer(player1) or not isPlayer(player2) or type(player1FollowsPlayer2) ~= "boolean" then
			return
		end

		local userId1 = tostring(player1.UserId)
		local userId2 = tostring(player2.UserId)

		local user1map = PlayerToRelationshipMap[userId1]
		local user2map = PlayerToRelationshipMap[userId2]

		local sentNotificationsMap = FollowNotificationsBetweenMap[userId1]
		if sentNotificationsMap then
			if sentNotificationsMap[userId2] then
				sentNotificationsMap[userId2] = sentNotificationsMap[userId2] + 1
				if sentNotificationsMap[userId2] > MAX_FOLLOW_NOTIFICATIONS_BETWEEN then
					-- This player is likely trying to spam the other player with notifications.
					-- We won't send any more.
					return
				end
			else
				sentNotificationsMap[userId2] = 1
			end
		end

		if user1map then
			local relationTable = user1map[userId2]
			if relationTable then
				relationTable.IsFollowing = player1FollowsPlayer2
				relationTable.IsMutual = relationTable.IsFollowing and relationTable.IsFollower

				local delta = {}
				delta[userId2] = relationTable
				RemoteEvent_FollowRelationshipChanged:FireClient(player1, delta)
				-- this should be updated, but current NotificationScript listens to this
				if player1FollowsPlayer2 then
					RemoteEvent_NewFollower:FireClient(player2, player1)
				end
			end
		end

		if user2map then
			local relationTable = user2map[userId1]
			if relationTable then
				relationTable.IsFollower = player1FollowsPlayer2
				relationTable.IsMutual = relationTable.IsFollowing and relationTable.IsFollower

				local delta = {}
				delta[userId1] = relationTable
				RemoteEvent_FollowRelationshipChanged:FireClient(player2, delta)
			end
		end
	end)
end

local function sendPlayerAllGroupDetails(player)
	for userId, groupDetails in pairs(PlayerToGroupDetailsMap) do
		RemoteEvent_PlayerGroupDetails:FireClient(player, userId, groupDetails)
	end
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
		RemoteEvent_PlayerGroupDetails:FireAllClients(uidStr, newGroupDetails)
	end
end

local function sendCanChatWith(newPlayer)
	for _, player in ipairs(Players:GetPlayers()) do
		local success, canChat = pcall(function()
			return Chat:CanUsersChatAsync(newPlayer.UserId, player.UserId)
		end)
		RemoteEvent_CanChatWith:FireClient(newPlayer, player.UserId, success and canChat)
		RemoteEvent_CanChatWith:FireClient(player, newPlayer.UserId, success and canChat)
	end
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
			local url = string.format("/users/%d/canmanage/%d", player.UserId, game.PlaceId)
			return HttpRbxApiService:GetAsync(url, Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Default, true)
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

	if game:GetFastFlag("UseCanManageForDeveloperIconServer2") then
		sendPlayerAllCanManage(newPlayer)
		coroutine.wrap(getPlayerCanManage)(newPlayer)
	end

	sendCanChatWith(newPlayer)

	if not game:GetFastFlag("RemoveInGameFollowingServer") then
		local uid = newPlayer.UserId
		if uid > 0 then
			local uidStr = tostring(uid)
			FollowNotificationsBetweenMap[uidStr] = {}

			local result = getFollowRelationshipsAsync(uid)

			if result then
				updateAndNotifyClients(result, uidStr, newPlayer)
			end
		end
	end
end

RemoteEvent_SetPlayerBlockList.OnServerEvent:Connect(function(player, blockList)
	player:AddToBlockList(blockList)
end)

RemoteEvent_UpdatePlayerBlockList.OnServerEvent:Connect(function(player, userId, block)
	player:UpdatePlayerBlocked(userId, block)
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
	if game:GetFastFlag("UseCanManageForDeveloperIconServer2") then
		if PlayerToCanManageMap[uid] ~= nil then
			PlayerToCanManageMap[uid] = nil
		end
	end
end)
