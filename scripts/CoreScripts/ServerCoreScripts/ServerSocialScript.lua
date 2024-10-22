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
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Url = require(RobloxGui.Modules.Common.Url)
game:DefineFastFlag("EnableSetUserBlocklistInitialized", false)
local FFlagFetchBlockListFromServer = require(CorePackages.Workspace.Packages.SharedFlags).FFlagFetchBlockListFromServer
local FFlagInExperienceUserProfileSettingsEnabled = require(RobloxGui.Modules.Common.Flags.FFlagInExperienceUserProfileSettingsEnabled)
local FStringRccInExperienceNameEnabledAllowList = require(RobloxGui.Modules.Common.Flags.FStringRccInExperienceNameEnabledAllowList)

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

local RemoteEvent_SendPlayerBlockList = Instance.new("RemoteEvent")
RemoteEvent_SendPlayerBlockList.Name = "SendPlayerBlockList"
RemoteEvent_SendPlayerBlockList.Parent = RobloxReplicatedStorage

local RemoteEvent_UpdateLocalPlayerBlockList = Instance.new("RemoteEvent")
RemoteEvent_UpdateLocalPlayerBlockList.Name = "UpdateLocalPlayerBlockList"
RemoteEvent_UpdateLocalPlayerBlockList.Parent = RobloxReplicatedStorage

local RemoteEvent_SendPlayerProfileSettings = Instance.new("RemoteEvent")
RemoteEvent_SendPlayerProfileSettings.Name = "SendPlayerProfileSettings"
RemoteEvent_SendPlayerProfileSettings.Parent = RobloxReplicatedStorage

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
		local success, result = pcall(function()
			local apiPath = "asset-permissions-api/v1/rcc/assets/check-permissions"
			local url = string.format(Url.APIS_URL..apiPath)

			local request = HttpService:JSONEncode(
				{
					requests = {
						{
							subject = {
								subjectType = "User",
								subjectId = player.UserId
							},
							action = "Edit", -- check to see if this player has edit permissions on this placeId
							assetId = game.PlaceId
						}
					}
				}
			)
			local response = HttpRbxApiService:PostAsyncFullUrl(url, request)
			return HttpService:JSONDecode(response)
		end)

		if success then
			result = result.results[1]
			if result.value and result.value.status == "HasPermission" then
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

local fetchBlockList = function(player, playerIds)
	return pcall(function()
		local apiPath = "user-blocking-api/v1/users/rcc/batch-check-reciprocal-block"
		local url = string.format(Url.APIS_URL..apiPath)

		local request = HttpService:JSONEncode(
			{
				userIds = playerIds,
				requesterUserId = player.UserId
			}
		)

		local response = HttpRbxApiService:PostAsyncFullUrl(url, request)
		return HttpService:JSONDecode(response)
	end)
end

local function sendPlayerBlockList(player)
	if player.UserId <= 0 then
		return
	end

	local players = Players:GetPlayers()
	local playerIds = {}
	for _, otherPlayer in players do
		if player ~= otherPlayer then
			local uid = otherPlayer.UserId
			table.insert(playerIds, uid)
		end
	end

	local success, result = fetchBlockList(player, playerIds)

	local blockedUserIds = {}
	local blockedUserSet = {}
	if success and result then
		for _, user in result.users do
			if user.isBlocked then
				blockedUserSet[user.userId] = true
				table.insert(blockedUserIds, user.userId)
			end

			if user.isBlockingViewer then
				local otherPlayer = Players:GetPlayerByUserId(user.userId)
				otherPlayer:UpdatePlayerBlocked(player.UserId, true)
				RemoteEvent_UpdateLocalPlayerBlockList:FireClient(otherPlayer, player.UserId, true)
			end
		end
	end

	player:AddToBlockList(blockedUserIds)
	if game:GetFastFlag("EnableSetUserBlocklistInitialized") then
		player:SetBlockListInitialized()
	end

	RemoteEvent_SendPlayerBlockList:FireClient(player, blockedUserSet)
end

local fetchPlayerProfileSettings = function(player)
	return pcall(function()
		local apiPath = `user-profile-api/v1/user/profiles/rcc/settings?userId={player.UserId}`
		local url = Url.APIS_URL .. apiPath

		local response = HttpRbxApiService:GetAsyncFullUrl(url, Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Players)
		return HttpService:JSONDecode(response)
	end)
end

local sendPlayerProfileSettings = function(player)
	if player.UserId <= 0 then
		return
	end

	local isInExperienceNameEnabled = false
	if FStringRccInExperienceNameEnabledAllowList.isAllowListedUserId(player.UserId) then
		local success, result = fetchPlayerProfileSettings(player)
		if success and result then
			isInExperienceNameEnabled = result.isSettingsEnabled and result.userProfileSettings and result.userProfileSettings.isInExperienceNameEnabled
		end
	end

	local userIdStr = tostring(player.UserId)
	RemoteEvent_SendPlayerProfileSettings:FireAllClients(userIdStr, { isInExperienceNameEnabled = isInExperienceNameEnabled })
end

local function onPlayerAdded(newPlayer)
	if FFlagFetchBlockListFromServer then
		coroutine.wrap(sendPlayerBlockList)(newPlayer)
	end
	sendPlayerAllGroupDetails(newPlayer)
	if newPlayer.UserId > 0 then
		coroutine.wrap(getPlayerGroupDetails)(newPlayer)
	end
	if FFlagInExperienceUserProfileSettingsEnabled then
		coroutine.wrap(sendPlayerProfileSettings)(newPlayer)
	end

	sendPlayerAllCanManage(newPlayer)
	coroutine.wrap(getPlayerCanManage)(newPlayer)

	sendCanChatWith(newPlayer)
end

RemoteEvent_SetPlayerBlockList.OnServerEvent:Connect(function(player, blockList)
	if game:GetFastFlag("EnableSetUserBlocklistInitialized") then
		player:SetBlockListInitialized()
	end
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
