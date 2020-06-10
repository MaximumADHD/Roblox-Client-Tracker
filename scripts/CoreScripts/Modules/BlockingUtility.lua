-- New Blocking Utility, should only be used with FFlagUseRoactPlayerList
-- Otherwise use the old blocking utility in PlayerDropDown

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local PlayersService = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local FFlagFixBlockedListInitLogic = game:DefineFastFlag("FixBlockedListInitLogic", false)

local BlockingUtility = {}
BlockingUtility.__index = BlockingUtility

local LocalPlayer = PlayersService.LocalPlayer
while not LocalPlayer do
	PlayersService.PlayerAdded:wait()
	LocalPlayer = PlayersService.LocalPlayer
end

local GET_BLOCKED_USERIDS_TIMEOUT = 5

local RemoteEvent_UpdatePlayerBlockList = nil
spawn(function()
	RemoteEvent_UpdatePlayerBlockList = RobloxReplicatedStorage:WaitForChild("UpdatePlayerBlockList")
end)

local BlockStatusChanged = Instance.new("BindableEvent")
local MuteStatusChanged = Instance.new("BindableEvent")

local GetBlockedPlayersCompleted = false
local GetBlockedPlayersStarted = false
local GetBlockedPlayersFinished = Instance.new("BindableEvent")
local BlockedList = {}
local MutedList = {}

local function GetBlockedPlayersAsync()
	local userId = LocalPlayer.UserId
	local apiPath = "userblock/getblockedusers" .. "?" .. "userId=" .. tostring(userId) .. "&" .. "page=" .. "1"
	if userId > 0 then
		local blockList = nil
		local success = pcall(function()
			local request = HttpRbxApiService:GetAsync(apiPath,
                Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Players)
			blockList = request and HttpService:JSONDecode(request)
		end)
		if success and blockList and blockList["success"] == true and blockList["userList"] then
			local returnList = {}
			for _, v in pairs(blockList["userList"]) do
				returnList[v] = true
			end
			return returnList
		end
	end
	return {}
end

local function getBlockedUserIdsFromBlockedList()
	local userIdList = {}
	for userId, _ in pairs(BlockedList) do
		table.insert(userIdList, userId)
	end
	return userIdList
end

local function getBlockedUserIds()
	if LocalPlayer.UserId > 0 then
		local timeWaited = 0
		while true do
			if GetBlockedPlayersCompleted then
				return getBlockedUserIdsFromBlockedList()
			end
			timeWaited = timeWaited + wait()
			if timeWaited > GET_BLOCKED_USERIDS_TIMEOUT then
				return {}
			end
		end
	end
	return {}
end

local function initializeBlockList()
	if GetBlockedPlayersCompleted then
		return
	end

	if GetBlockedPlayersStarted then
		GetBlockedPlayersFinished.Event:Wait()
		return
	end
	GetBlockedPlayersStarted = true

	if FFlagFixBlockedListInitLogic then
		BlockedList = GetBlockedPlayersAsync()
		GetBlockedPlayersCompleted = true

		GetBlockedPlayersFinished:Fire()

		local RemoteEvent_SetPlayerBlockList = RobloxReplicatedStorage:WaitForChild("SetPlayerBlockList")
		local blockedUserIds = getBlockedUserIds()
		RemoteEvent_SetPlayerBlockList:FireServer(blockedUserIds)
	else
		coroutine.wrap(function()
			BlockedList = GetBlockedPlayersAsync()
			GetBlockedPlayersCompleted = true

			local RemoteEvent_SetPlayerBlockList = RobloxReplicatedStorage:WaitForChild("SetPlayerBlockList")
			local blockedUserIds = getBlockedUserIds()
			RemoteEvent_SetPlayerBlockList:FireServer(blockedUserIds)
		end)()
	end
end

local function isBlocked(userId)
	if (BlockedList[userId]) then
		return true
	end
	return false
end

local function isMuted(userId)
	if (MutedList[userId] ~= nil and MutedList[userId] == true) then
		return true
	end
	return false
end

local function BlockPlayerAsync(playerToBlock)
	if playerToBlock and LocalPlayer ~= playerToBlock then
		local blockUserId = playerToBlock.UserId
		if blockUserId > 0 then
			if not isBlocked(blockUserId) then
				BlockedList[blockUserId] = true
				BlockStatusChanged:Fire(blockUserId, true)

				if RemoteEvent_UpdatePlayerBlockList then
					RemoteEvent_UpdatePlayerBlockList:FireServer(blockUserId, true)
				end

				local success, wasBlocked = pcall(function()
					local apiPath = "userblock/block"
					local params = "userId=" ..tostring(playerToBlock.UserId)
					local request = HttpRbxApiService:PostAsync(
						apiPath,
						params,
						Enum.ThrottlingPriority.Default,
						Enum.HttpContentType.ApplicationUrlEncoded
					)
					local response = request and HttpService:JSONDecode(request)
					return response and response.success
				end)
				return success and wasBlocked
			else
				return true
			end
		end
	end
	return false
end

local function UnblockPlayerAsync(playerToUnblock)
	if playerToUnblock then
		local unblockUserId = playerToUnblock.UserId

		if isBlocked(unblockUserId) then
			BlockedList[unblockUserId] = nil
			BlockStatusChanged:Fire(unblockUserId, false)

			if RemoteEvent_UpdatePlayerBlockList then
				RemoteEvent_UpdatePlayerBlockList:FireServer(unblockUserId, false)
			end

			local success, wasUnBlocked = pcall(function()
				local apiPath = "userblock/unblock"
				local params = "userId=" ..tostring(playerToUnblock.UserId)
				local request = HttpRbxApiService:PostAsync(
					apiPath,
					params,
					Enum.ThrottlingPriority.Default,
					Enum.HttpContentType.ApplicationUrlEncoded
				)
				local response = request and HttpService:JSONDecode(request)
				return response and response.success
			end)
			return success and wasUnBlocked
		else
			return true
		end
	end
	return false
end

local function MutePlayer(playerToMute)
	if playerToMute and LocalPlayer ~= playerToMute then
		local muteUserId = playerToMute.UserId
		if muteUserId > 0 then
			if not isMuted(muteUserId) then
				MutedList[muteUserId] = true
				MuteStatusChanged:Fire(muteUserId, true)
			end
		end
	end
end

local function UnmutePlayer(playerToUnmute)
	if playerToUnmute then
		local unmuteUserId = playerToUnmute.UserId
		MutedList[unmuteUserId] = nil
		MuteStatusChanged:Fire(unmuteUserId, false)
	end
end

--- GetCore Blocked/Muted/Friended events.

local PlayerBlockedEvent = Instance.new("BindableEvent")
local PlayerUnblockedEvent = Instance.new("BindableEvent")
local PlayerMutedEvent = Instance.new("BindableEvent")
local PlayerUnMutedEvent = Instance.new("BindableEvent")

local function blockedStatusChanged(userId, newBlocked)
	local player = PlayersService:GetPlayerByUserId(userId)
	if player then
		if newBlocked then
			PlayerBlockedEvent:Fire(player)
		else
			PlayerUnblockedEvent:Fire(player)
		end
	end
end

BlockStatusChanged.Event:Connect(blockedStatusChanged)

local function muteStatusChanged(userId, newMuted)
	local player = PlayersService:GetPlayerByUserId(userId)
	if player then
		if newMuted then
			PlayerMutedEvent:Fire(player)
		else
			PlayerUnMutedEvent:Fire(player)
		end
	end
end

MuteStatusChanged.Event:Connect(muteStatusChanged)

StarterGui:RegisterGetCore("PlayerBlockedEvent", function() return PlayerBlockedEvent end)
StarterGui:RegisterGetCore("PlayerUnblockedEvent", function() return PlayerUnblockedEvent end)
StarterGui:RegisterGetCore("PlayerMutedEvent", function() return PlayerMutedEvent end)
StarterGui:RegisterGetCore("PlayerUnmutedEvent", function() return PlayerUnMutedEvent end)

function BlockingUtility:InitBlockListAsync()
	initializeBlockList()
end

function BlockingUtility:BlockPlayerAsync(player)
	return BlockPlayerAsync(player)
end

function BlockingUtility:UnblockPlayerAsync(player)
	return UnblockPlayerAsync(player)
end

function BlockingUtility:MutePlayer(player)
	return MutePlayer(player)
end

function BlockingUtility:UnmutePlayer(player)
	return UnmutePlayer(player)
end

function BlockingUtility:IsPlayerBlockedByUserId(userId)
	initializeBlockList()
	return isBlocked(userId)
end

function BlockingUtility:GetBlockedStatusChangedEvent()
	return BlockStatusChanged.Event
end

function BlockingUtility:GetMutedStatusChangedEvent()
	return MuteStatusChanged.Event
end

function BlockingUtility:IsPlayerMutedByUserId(userId)
	return isMuted(userId)
end

function BlockingUtility:GetBlockedUserIdsAsync()
	return getBlockedUserIds()
end

return BlockingUtility