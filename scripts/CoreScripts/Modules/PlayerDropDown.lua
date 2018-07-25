--[[
	// FileName: PlayerDropDown.lua
	// Written by: TheGamer101
	// Description: Code for the player drop down in the PlayerList and Chat
]]
local moduleApiTable = {}

local CoreGui = game:GetService('CoreGui')
local HttpService = game:GetService('HttpService')
local HttpRbxApiService = game:GetService('HttpRbxApiService')
local PlayersService = game:GetService('Players')
local StarterGui = game:GetService("StarterGui")
local AnalyticsService = game:GetService("AnalyticsService")
local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')

local fixPlayerlistFollowingSuccess, fixPlayerlistFollowingFlagValue = pcall(function() return settings():GetFFlag("FixPlayerlistFollowing") end)
local fixPlayerlistFollowingEnabled = fixPlayerlistFollowingSuccess and fixPlayerlistFollowingFlagValue

local LocalPlayer = PlayersService.LocalPlayer
while not LocalPlayer do
	PlayersService.PlayerAdded:wait()
	LocalPlayer = PlayersService.LocalPlayer
end

local success, result = pcall(function() return settings():GetFFlag('UseNotificationsLocalization') end)
local FFlagUseNotificationsLocalization = success and result
local FFlagHandlePlayerBlockListsInternalPermissive = settings():GetFFlag('HandlePlayerBlockListsInternalPermissive')
local FFlagCoreScriptsUseLocalizationModule = settings():GetFFlag('CoreScriptsUseLocalizationModule')

local recentApiRequests = -- stores requests for target players by userId
{
	Following = {};
}

local POPUP_ENTRY_SIZE_Y = 24
local ENTRY_PAD = 2
local BG_TRANSPARENCY = 0.5
local BG_COLOR = Color3.new(31/255, 31/255, 31/255)
local TEXT_STROKE_TRANSPARENCY = 0.75
local TEXT_COLOR = Color3.new(1, 1, 243/255)
local TEXT_STROKE_COLOR = Color3.new(34/255, 34/255, 34/255)
local MAX_FRIEND_COUNT = 200
local FRIEND_IMAGE = 'https://www.roblox.com/thumbs/avatar.ashx?userId='

local GET_BLOCKED_USERIDS_TIMEOUT = 5

local RobloxGui = CoreGui:WaitForChild('RobloxGui')
local reportAbuseMenu = require(RobloxGui.Modules.Settings.Pages.ReportAbuseMenu)

local RobloxTranslator
if FFlagCoreScriptsUseLocalizationModule then
	RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
end

local function LocalizedGetString(key, rtv)
	pcall(function()
		if FFlagCoreScriptsUseLocalizationModule then
			rtv = RobloxTranslator:FormatByKey(key)
		else
			local LocalizationService = game:GetService("LocalizationService")
			local CorescriptLocalization = LocalizationService:GetCorescriptLocalizations()[1]
			rtv = CorescriptLocalization:GetString(LocalizationService.RobloxLocaleId, key)
		end
	end)
	return rtv
end


local BindableEvent_SendNotificationInfo = nil
spawn(function()
	BindableEvent_SendNotificationInfo = RobloxGui:WaitForChild("SendNotificationInfo")
end)

local RemoteEvent_NewFollower = nil
local RemoteEvent_UpdatePlayerBlockList = nil

spawn(function()
	RemoteEvent_NewFollower = RobloxReplicatedStorage:WaitForChild('NewFollower', 86400) or RobloxReplicatedStorage:WaitForChild('NewFollower')
	if FFlagHandlePlayerBlockListsInternalPermissive then
		RemoteEvent_UpdatePlayerBlockList = RobloxReplicatedStorage:WaitForChild('UpdatePlayerBlockList')
	end
end)


local function createSignal()
	local sig = {}

	local mSignaler = Instance.new('BindableEvent')

	local mArgData = nil
	local mArgDataCount = nil

	function sig:fire(...)
		mArgData = {...}
		mArgDataCount = select('#', ...)
		mSignaler:Fire()
	end

	function sig:connect(f)
		if not f then error("connect(nil)", 2) end
		return mSignaler.Event:connect(function()
			f(unpack(mArgData, 1, mArgDataCount))
		end)
	end

	function sig:wait()
		mSignaler.Event:wait()
		assert(mArgData, "Missing arg data, likely due to :TweenSize/Position corrupting threadrefs.")
		return unpack(mArgData, 1, mArgDataCount)
	end

	return sig
end

local BlockStatusChanged = createSignal()
local MuteStatusChanged = createSignal()

local function sendNotification(title, text, image, duration, callback)
	if BindableEvent_SendNotificationInfo then
		BindableEvent_SendNotificationInfo:Fire { Title = title, Text = text, Image = image, Duration = duration, Callback = callback }
	end
end

local function getFriendStatus(selectedPlayer)
	if selectedPlayer == LocalPlayer then
		return Enum.FriendStatus.NotFriend
	else
		local success, result = pcall(function()
			-- NOTE: Core script only
			return LocalPlayer:GetFriendStatus(selectedPlayer)
		end)
		if success then
			return result
		else
			return Enum.FriendStatus.NotFriend
		end
	end
end

-- if userId = nil, then it will get count for local player
local function getFriendCountAsync(userId)
	local friendCount = nil
	local wasSuccess, result = pcall(function()
		local str = 'user/get-friendship-count'
		if userId then
			str = str..'?userId='..tostring(userId)
		end
		return HttpRbxApiService:GetAsync(str, Enum.ThrottlingPriority.Default,
            Enum.HttpRequestType.Players)
	end)
	if not wasSuccess then
		print("getFriendCountAsync() failed because", result)
		return nil
	end
	result = HttpService:JSONDecode(result)

	if result["success"] and result["count"] then
		friendCount = result["count"]
	end

	return friendCount
end

-- checks if we can send a friend request. Right now the only way we
-- can't is if one of the players is at the max friend limit
local function canSendFriendRequestAsync(otherPlayer)
	local theirFriendCount = getFriendCountAsync(otherPlayer.UserId)
	local myFriendCount = getFriendCountAsync()

	-- assume max friends if web call fails
	if not myFriendCount or not theirFriendCount then
		return false
	end
	if myFriendCount < MAX_FRIEND_COUNT and theirFriendCount < MAX_FRIEND_COUNT then
		return true
	elseif myFriendCount >= MAX_FRIEND_COUNT then
		sendNotification("Cannot send friend request", "You are at the max friends limit.", "", 5, function() end)
		return false
	elseif theirFriendCount >= MAX_FRIEND_COUNT then
		sendNotification("Cannot send friend request", otherPlayer.Name.." is at the max friends limit.", "", 5, function() end)
		return false
	end
end

-- Returns whether followerUserId is following userId
local function isFollowing(userId, followerUserId)
	local apiPath = "user/following-exists?userId="
	local params = userId.."&followerUserId="..followerUserId
	local success, result = pcall(function()
		return HttpRbxApiService:GetAsync(apiPath..params,
            Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Players)
	end)
	if not success then
		print("isFollowing() failed because", result)
		return false
	else
		if fixPlayerlistFollowingEnabled then
			-- check to make sure the result isn't cached by checking the most recent response
			if followerUserId == LocalPlayer.UserId then
				if recentApiRequests["Following"][tostring(userId)] ~= nil then
					return recentApiRequests["Following"][tostring(userId)]
				end
			end
		end
	end

	-- can now parse web response
	result = HttpService:JSONDecode(result)
	return result["success"] and result["isFollowing"]
end

local BlockedList = {}
local MutedList = {}

local function GetBlockedPlayersAsync()
	local userId = LocalPlayer.UserId
	local apiPath = "userblock/getblockedusers" .. "?" .. "userId=" .. tostring(userId) .. "&" .. "page=" .. "1"
	if userId > 0 then
		local blockList = nil
		local success, msg = pcall(function()
			local request = HttpRbxApiService:GetAsync(apiPath,
                Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Players)
			blockList = request and game:GetService('HttpService'):JSONDecode(request)
		end)
		if blockList and blockList['success'] == true and blockList['userList'] then
			local returnList = {}
			for i, v in pairs(blockList['userList']) do
				returnList[v] = true
			end
			return returnList
		end
	end
	return {}
end

if FFlagHandlePlayerBlockListsInternalPermissive == false then
	spawn(function()
		BlockedList = GetBlockedPlayersAsync()
		GetBlockedPlayersCompleted = true
	end)
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
	if FFlagHandlePlayerBlockListsInternalPermissive then
		spawn(function()
			BlockedList = GetBlockedPlayersAsync()
			GetBlockedPlayersCompleted = true

			local RemoteEvent_SetPlayerBlockList = RobloxReplicatedStorage:WaitForChild('SetPlayerBlockList')
			local blockedUserIds = getBlockedUserIds()
			RemoteEvent_SetPlayerBlockList:FireServer(blockedUserIds)
		end)
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
				BlockStatusChanged:fire(blockUserId, true)

				if FFlagHandlePlayerBlockListsInternalPermissive then
					if RemoteEvent_UpdatePlayerBlockList then
						RemoteEvent_UpdatePlayerBlockList:FireServer(blockUserId, true)
					end
				end

				local success, wasBlocked = pcall(function()
					local apiPath = "userblock/block"
					local params = "userId=" ..tostring(playerToBlock.UserId)
					local request = HttpRbxApiService:PostAsync(apiPath, params, Enum.ThrottlingPriority.Default, Enum.HttpContentType.ApplicationUrlEncoded)
					response = request and game:GetService('HttpService'):JSONDecode(request)
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
			BlockStatusChanged:fire(unblockUserId, false)

			if FFlagHandlePlayerBlockListsInternalPermissive then
				if RemoteEvent_UpdatePlayerBlockList then
					RemoteEvent_UpdatePlayerBlockList:FireServer(unblockUserId, false)
				end
			end

			local success, wasUnBlocked = pcall(function()
				local apiPath = "userblock/unblock"
				local params = "userId=" ..tostring(playerToUnblock.UserId)
				local request = HttpRbxApiService:PostAsync(apiPath, params, Enum.ThrottlingPriority.Default, Enum.HttpContentType.ApplicationUrlEncoded)
				response = request and game:GetService('HttpService'):JSONDecode(request)
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
				MuteStatusChanged:fire(muteUserId, true)
			end
		end
	end
end

local function UnmutePlayer(playerToUnmute)
	if playerToUnmute then
		local unmuteUserId = playerToUnmute.UserId
		MutedList[unmuteUserId] = nil
		MuteStatusChanged:fire(unmuteUserId, false)
	end
end

function createPlayerDropDown()
	local playerDropDown = {}
	playerDropDown.Player = nil
	playerDropDown.PopupFrame = nil
	playerDropDown.HidePopupImmediately = false
	playerDropDown.PopupFrameOffScreenPosition = nil -- if this is set the popup frame tweens to a different offscreen position than the default

	playerDropDown.HiddenSignal = createSignal()

	--[[ Functions for when options in the dropdown are pressed ]]--
	local function onFriendButtonPressed()
		if playerDropDown.Player then
			local status = getFriendStatus(playerDropDown.Player)
			if status == Enum.FriendStatus.Friend then
				LocalPlayer:RevokeFriendship(playerDropDown.Player)
			elseif status == Enum.FriendStatus.Unknown or status == Enum.FriendStatus.NotFriend then
				-- cache and spawn
				local cachedLastSelectedPlayer = playerDropDown.Player
				spawn(function()
					-- check for max friends before letting them send the request
					if canSendFriendRequestAsync(cachedLastSelectedPlayer) then 	-- Yields
						if cachedLastSelectedPlayer and cachedLastSelectedPlayer.Parent == PlayersService then
                            AnalyticsService:ReportCounter("PlayerDropDown-RequestFriendship")
                            AnalyticsService:TrackEvent("Game", "RequestFriendship", "PlayerDropDown")
                      
							LocalPlayer:RequestFriendship(cachedLastSelectedPlayer)
						end
					end
				end)
			elseif status == Enum.FriendStatus.FriendRequestSent then
                AnalyticsService:ReportCounter("PlayerDropDown-RevokeFriendship")
                AnalyticsService:TrackEvent("Game", "RevokeFriendship", "PlayerDropDown")
                
				LocalPlayer:RevokeFriendship(playerDropDown.Player)
			elseif status == Enum.FriendStatus.FriendRequestReceived then
                AnalyticsService:ReportCounter("PlayerDropDown-RequestFriendship")
                AnalyticsService:TrackEvent("Game", "RequestFriendship", "PlayerDropDown")
                
				LocalPlayer:RequestFriendship(playerDropDown.Player)
			end

			playerDropDown:Hide()
		end
	end

	local function onDeclineFriendButonPressed()
		if playerDropDown.Player then
			LocalPlayer:RevokeFriendship(playerDropDown.Player)
			playerDropDown:Hide()
		end
	end

	-- Client unfollows followedUserId
	local function onUnfollowButtonPressed()
		if not playerDropDown.Player then return end

		local followedUserId = tostring(playerDropDown.Player.UserId)
		local apiPath = "user/unfollow"
		local params = "followedUserId="..followedUserId
		local success, result = pcall(function()
			return HttpRbxApiService:PostAsync(apiPath, params, Enum.ThrottlingPriority.Default,
				Enum.HttpContentType.ApplicationUrlEncoded, Enum.HttpRequestType.Players)
		end)
		if not success then
			print("unfollowPlayer() failed because", result)
			playerDropDown:Hide()
			return
		end

		result = HttpService:JSONDecode(result)
		if result["success"] then
			if fixPlayerlistFollowingEnabled then
				recentApiRequests["Following"][followedUserId] = false
				local text = "no longer following "..playerDropDown.Player.Name
				if FFlagUseNotificationsLocalization then
					text = string.gsub(LocalizedGetString("PlayerDropDown.onUnfollowButtonPress.success",text),"{RBX_NAME}",playerDropDown.Player.Name)
				end
				sendNotification("You are", text, FRIEND_IMAGE..followedUserId.."&x=48&y=48", 5, function() end)
			end
			if RemoteEvent_NewFollower then
				RemoteEvent_NewFollower:FireServer(playerDropDown.Player, false)
			end
			moduleApiTable.FollowerStatusChanged:fire()
		end

		playerDropDown:Hide()
	end

	local function onBlockButtonPressed()
		if playerDropDown.Player then
			local cachedPlayer = playerDropDown.Player
			spawn(function()
				BlockPlayerAsync(cachedPlayer)
			end)
			playerDropDown:Hide()
		end
	end

	local function onUnblockButtonPressed()
		if playerDropDown.Player then
			local cachedPlayer = playerDropDown.Player
			spawn(function()
				UnblockPlayerAsync(cachedPlayer)
			end)
			playerDropDown:Hide()
		end
	end

	local function onReportButtonPressed()
		if playerDropDown.Player then
			reportAbuseMenu:ReportPlayer(playerDropDown.Player)
			playerDropDown:Hide()
		end
	end

	-- Client follows followedUserId
	local function onFollowButtonPressed()
		if not playerDropDown.Player then return end
		--
		local followedUserId = tostring(playerDropDown.Player.UserId)
		local apiPath = "user/follow"
		local params = "followedUserId="..followedUserId
		local success, result = pcall(function()
			return HttpRbxApiService:PostAsync(apiPath, params, Enum.ThrottlingPriority.Default,
                Enum.HttpContentType.ApplicationUrlEncoded, Enum.HttpRequestType.Players)
		end)
		if not success then
			print("followPlayer() failed because", result)
			playerDropDown:Hide()
			return
		end

		result = HttpService:JSONDecode(result)
		if result["success"] then
			if fixPlayerlistFollowingEnabled then
				recentApiRequests["Following"][followedUserId] = true
			end
			local text = "now following "..playerDropDown.Player.Name
			if FFlagUseNotificationsLocalization then
				text = string.gsub(LocalizedGetString("PlayerDropDown.onFollowButtonPress.success",text),"{RBX_NAME}",playerDropDown.Player.Name)
			end
			sendNotification("You are", text, FRIEND_IMAGE..followedUserId.."&x=48&y=48", 5, function() end)
			if RemoteEvent_NewFollower then
				RemoteEvent_NewFollower:FireServer(playerDropDown.Player, true)
			end
			moduleApiTable.FollowerStatusChanged:fire()
		end

		playerDropDown:Hide()
	end

	local function createPopupFrame(buttons)
		local frame = Instance.new('Frame')
		frame.Name = "PopupFrame"
		frame.Size = UDim2.new(1, 0, 0, (POPUP_ENTRY_SIZE_Y * #buttons) + (#buttons - ENTRY_PAD))
		frame.Position = UDim2.new(1, 1, 0, 0)
		frame.BackgroundTransparency = 1

		for i,button in ipairs(buttons) do
			local btn = Instance.new('TextButton')
			btn.Name = button.Name
			btn.Size = UDim2.new(1, 0, 0, POPUP_ENTRY_SIZE_Y)
			btn.Position = UDim2.new(0, 0, 0, POPUP_ENTRY_SIZE_Y * (i - 1) + ((i - 1) * ENTRY_PAD))
			btn.BackgroundTransparency = BG_TRANSPARENCY
			btn.BackgroundColor3 = BG_COLOR
			btn.BorderSizePixel = 0
			btn.Text = button.Text
			btn.Font = Enum.Font.SourceSans
			btn.FontSize = Enum.FontSize.Size14
			btn.TextColor3 = TEXT_COLOR
			btn.TextStrokeTransparency = TEXT_STROKE_TRANSPARENCY
			btn.TextStrokeColor3 = TEXT_STROKE_COLOR
			btn.AutoButtonColor = true
			btn.Parent = frame

			btn.MouseButton1Click:connect(button.OnPress)
		end

		return frame
	end

	local TWEEN_TIME = 0.25

	function playerDropDown:Hide()
		if playerDropDown.PopupFrame then
			local offscreenPosition = (playerDropDown.PopupFrameOffScreenPosition ~= nil and playerDropDown.PopupFrameOffScreenPosition or UDim2.new(1, 1, 0, playerDropDown.PopupFrame.Position.Y.Offset))
			if not playerDropDown.HidePopupImmediately then
				playerDropDown.PopupFrame:TweenPosition(offscreenPosition, Enum.EasingDirection.InOut,
					Enum.EasingStyle.Quad, TWEEN_TIME, true, function()
						if playerDropDown.PopupFrame then
							playerDropDown.PopupFrame:Destroy()
							playerDropDown.PopupFrame = nil
						end
					end)
			else
				playerDropDown.PopupFrame:Destroy()
				playerDropDown.PopupFrame = nil
			end
		end
		if playerDropDown.Player then
			playerDropDown.Player = nil
		end
		playerDropDown.HiddenSignal:fire()
	end

	function playerDropDown:CreatePopup(Player)
		playerDropDown.Player = Player

		local buttons = {}

		local status = getFriendStatus(playerDropDown.Player)
		local friendText = ""
		local canDeclineFriend = false
		if status == Enum.FriendStatus.Friend then
			friendText = "Unfriend Player"
		elseif status == Enum.FriendStatus.Unknown or status == Enum.FriendStatus.NotFriend then
			friendText = "Send Friend Request"
		elseif status == Enum.FriendStatus.FriendRequestSent then
			friendText = "Revoke Friend Request"
		elseif status == Enum.FriendStatus.FriendRequestReceived then
			friendText = "Accept Friend Request"
			canDeclineFriend = true
		end

		local blocked = isBlocked(playerDropDown.Player.UserId)

		if not blocked then
			table.insert(buttons, {
				Name = "FriendButton",
				Text = friendText,
				OnPress = onFriendButtonPressed,
				})
		end

		if canDeclineFriend and not blocked then
			table.insert(buttons, {
				Name = "DeclineFriend",
				Text = "Decline Friend Request",
				OnPress = onDeclineFriendButonPressed,
				})
		end
		-- following status
		local following = isFollowing(playerDropDown.Player.UserId, LocalPlayer.UserId)
		local followerText = following and "Unfollow Player" or "Follow Player"

		if not blocked then
			table.insert(buttons, {
				Name = "FollowerButton",
				Text = followerText,
				OnPress = following and onUnfollowButtonPressed or onFollowButtonPressed,
				})
		end

		local blockedText = blocked and "Unblock Player" or "Block Player"
		table.insert(buttons, {
			Name = "BlockButton",
			Text = blockedText,
			OnPress = blocked and onUnblockButtonPressed or onBlockButtonPressed,
			})
		table.insert(buttons, {
			Name = "ReportButton",
			Text = "Report Abuse",
			OnPress = onReportButtonPressed,
			})

		if playerDropDown.PopupFrame then
			playerDropDown.PopupFrame:Destroy()
		end
		playerDropDown.PopupFrame = createPopupFrame(buttons)
		return playerDropDown.PopupFrame
	end

	PlayersService.PlayerRemoving:connect(function(leavingPlayer)
		if playerDropDown.Player == leavingPlayer then
			playerDropDown:Hide()
		end
	end)

	return playerDropDown
end

--- GetCore Blocked/Muted/Friended events.

local PlayerBlockedEvent = Instance.new("BindableEvent")
local PlayerUnblockedEvent = Instance.new("BindableEvent")
local PlayerMutedEvent = Instance.new("BindableEvent")
local PlayerUnMutedEvent = Instance.new("BindableEvent")
local PlayerFriendedEvent = Instance.new("BindableEvent")
local PlayerUnFriendedEvent = Instance.new("BindableEvent")

BlockStatusChanged:connect(function(userId, isBlocked)
	local player = PlayersService:GetPlayerByUserId(userId)
	if player then
		if isBlocked then
			PlayerBlockedEvent:Fire(player)
		else
			PlayerUnblockedEvent:Fire(player)
		end
	end
end)

MuteStatusChanged:connect(function(userId, isMuted)
	local player = PlayersService:GetPlayerByUserId(userId)
	if player then
		if isMuted then
			PlayerMutedEvent:Fire(player)
		else
			PlayerUnMutedEvent:Fire(player)
		end
	end
end)

LocalPlayer.FriendStatusChanged:connect(function(player, friendStatus)
	if friendStatus == Enum.FriendStatus.Friend then
		PlayerFriendedEvent:Fire(player)
	elseif friendStatus == Enum.FriendStatus.NotFriend then
		PlayerUnFriendedEvent:Fire(player)
	end
end)

StarterGui:RegisterGetCore("PlayerBlockedEvent", function() return PlayerBlockedEvent end)
StarterGui:RegisterGetCore("PlayerUnblockedEvent", function() return PlayerUnblockedEvent end)
StarterGui:RegisterGetCore("PlayerMutedEvent", function() return PlayerMutedEvent end)
StarterGui:RegisterGetCore("PlayerUnmutedEvent", function() return PlayerUnMutedEvent end)
StarterGui:RegisterGetCore("PlayerFriendedEvent", function() return PlayerFriendedEvent end)
StarterGui:RegisterGetCore("PlayerUnfriendedEvent", function() return PlayerUnFriendedEvent end)

do
	moduleApiTable.FollowerStatusChanged = createSignal()

	function moduleApiTable:CreatePlayerDropDown()
		return createPlayerDropDown()
	end

	function moduleApiTable:GetFriendCountAsync(player)
		return getFriendCountAsync(player.UserId)
	end

	function moduleApiTable:InitBlockListAsync()
		initializeBlockList()
	end

	function moduleApiTable:MaxFriendCount()
		return MAX_FRIEND_COUNT
	end

	function moduleApiTable:GetFriendStatus()
		return getFriendStatus()
	end

	function moduleApiTable:CreateBlockingUtility()
		local blockingUtility = {}

		function blockingUtility:BlockPlayerAsync(player)
			return BlockPlayerAsync(player)
		end

		function blockingUtility:UnblockPlayerAsync(player)
			return UnblockPlayerAsync(player)
		end

		function blockingUtility:MutePlayer(player)
			return MutePlayer(player)
		end

		function blockingUtility:UnmutePlayer(player)
			return UnmutePlayer(player)
		end

		function blockingUtility:IsPlayerBlockedByUserId(userId)
			return isBlocked(userId)
		end

		function blockingUtility:GetBlockedStatusChangedEvent()
			return BlockStatusChanged
		end

		function blockingUtility:GetMutedStatusChangedEvent()
			return MuteStatusChanged
		end

		function blockingUtility:IsPlayerMutedByUserId(userId)
			return isMuted(userId)
		end

		function blockingUtility:GetBlockedUserIdsAsync()
			return getBlockedUserIds()
		end

		return blockingUtility
	end
end

return moduleApiTable
