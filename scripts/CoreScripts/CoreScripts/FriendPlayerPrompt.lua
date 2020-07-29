--[[
	// Filename: FriendPlayerPrompt.lua
	// Version 1.0
	// Written by: TheGamer101
	// Description: Can prompt a user to send a friend request or unfriend a player.
]]--

local StarterGui = game:GetService("StarterGui")
local PlayersService = game:GetService("Players")
local CoreGuiService = game:GetService("CoreGui")
local AnalyticsService = game:GetService("RbxAnalyticsService")

local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")
local LocalPlayer = PlayersService.LocalPlayer
while LocalPlayer == nil do
	PlayersService.ChildAdded:wait()
	LocalPlayer = PlayersService.LocalPlayer
end

local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local PromptCreator = require(CoreGuiModules:WaitForChild("PromptCreator"))
local SocialUtil = require(CoreGuiModules:WaitForChild("SocialUtil"))
local FriendingUtility = require(CoreGuiModules:WaitForChild("FriendingUtility"))

local FFlagFriendPlayerPromptUseFormatByKey = settings():GetFFlag('FriendPlayerPromptUseFormatByKey')

local RobloxTranslator = require(CoreGuiModules:WaitForChild("RobloxTranslator"))

local LegacyThumbnailUrls = require(CoreGuiModules.Common.LegacyThumbnailUrls)

local THUMBNAIL_SIZE = 200
local BUST_THUMBNAIL_SIZE = 420

local THUMBNAIL_URL = LegacyThumbnailUrls.Thumbnail
local BUST_THUMBNAIL_URL = LegacyThumbnailUrls.Bust

local REGULAR_THUMBNAIL_IMAGE_SIZE = Enum.ThumbnailSize.Size150x150
local CONSOLE_THUMBNAIL_IMAGE_SIZE = Enum.ThumbnailSize.Size352x352

local REGULAR_THUMBNAIL_IMAGE_TYPE = Enum.ThumbnailType.HeadShot
local CONSOLE_THUMBNAIL_IMAGE_TYPE = Enum.ThumbnailType.AvatarThumbnail

local success, result = pcall(function() return settings():GetFFlag('UseNotificationsLocalization') end)
local FFlagUseNotificationsLocalization = success and result

local function LocalizedGetString(key, rtv)
	pcall(function()
		rtv = RobloxTranslator:FormatByKey(key)
	end)
	return rtv
end

function createFetchImageFunction(...)
	local args = {...}
	return function(imageLabel)
		spawn(function()
			local imageUrl = SocialUtil.GetPlayerImage(unpack(args))
			if imageLabel and imageLabel.Parent then
				imageLabel.Image = imageUrl
			end
		end)
	end
end

function SendFriendRequest(playerToFriend)
    AnalyticsService:ReportCounter("FriendPlayerPrompt-RequestFriendship")
    AnalyticsService:TrackEvent("Game", "RequestFriendship", "FriendPlayerPrompt")

	local success = pcall(function()
		LocalPlayer:RequestFriendship(playerToFriend)
	end)
	return success
end

function AtFriendLimit(player)
	local friendCount = FriendingUtility:GetFriendCountAsync(player.UserId)
	if friendCount == nil then
		return false
	end
	if friendCount >= FriendingUtility:MaxFriendCount() then
		return true
	end
	return false
end

function DoPromptRequestFriendPlayer(playerToFriend)
	if LocalPlayer:IsFriendsWith(playerToFriend.UserId) then
		return
	end

	local thumbnailUrl = BUST_THUMBNAIL_URL:format(BUST_THUMBNAIL_SIZE, BUST_THUMBNAIL_SIZE, playerToFriend.UserId)
	local thumbnailUrlConsole = THUMBNAIL_URL:format(THUMBNAIL_SIZE, THUMBNAIL_SIZE, playerToFriend.UserId)

	local function promptCompletedCallback(clickedConfirm)
		if clickedConfirm then
			if AtFriendLimit(LocalPlayer) then
				while PromptCreator:IsCurrentlyPrompting() do
					wait()
				end

				PromptCreator:CreatePrompt({
					WindowTitle = "Friend Limit Reached",
					MainText = "You can not send a friend request because you are at the max friend limit.",
					ConfirmationText = "Okay",
					CancelActive = false,
					Image = thumbnailUrl,
					ImageConsoleVR = thumbnailUrlConsole,
					FetchImageFunction = createFetchImageFunction(playerToFriend.UserId, REGULAR_THUMBNAIL_IMAGE_SIZE, REGULAR_THUMBNAIL_IMAGE_TYPE),
					FetchImageFunctionConsoleVR = createFetchImageFunction(playerToFriend.UserId, CONSOLE_THUMBNAIL_IMAGE_SIZE, CONSOLE_THUMBNAIL_IMAGE_TYPE),
					StripeColor = Color3.fromRGB(183, 34, 54),
				})
			else
				if AtFriendLimit(playerToFriend) then

					local mainText = string.format("You can not send a friend request to %s because they are at the max friend limit.",  playerToFriend.Name)

					if FFlagFriendPlayerPromptUseFormatByKey then
						mainText = RobloxTranslator:FormatByKey("FriendPlayerPrompt.promptCompletedCallback.AtFriendLimit", {RBX_NAME = playerToFriend.Name})
					else
						if FFlagUseNotificationsLocalization then
							mainText = string.gsub(LocalizedGetString("FriendPlayerPrompt.promptCompletedCallback.AtFriendLimit",mainText),"{RBX_NAME}",playerToFriend.Name)
						end
					end

					PromptCreator:CreatePrompt({
						WindowTitle = "Error Sending Friend Request",
						MainText = mainText,
						ConfirmationText = "Okay",
						CancelActive = false,
						Image = thumbnailUrl,
						ImageConsoleVR = thumbnailUrlConsole,
						FetchImageFunction = createFetchImageFunction(playerToFriend.UserId, REGULAR_THUMBNAIL_IMAGE_SIZE, REGULAR_THUMBNAIL_IMAGE_TYPE),
						FetchImageFunctionConsoleVR = createFetchImageFunction(playerToFriend.UserId, CONSOLE_THUMBNAIL_IMAGE_SIZE, CONSOLE_THUMBNAIL_IMAGE_TYPE),
						StripeColor = Color3.fromRGB(183, 34, 54),
					})
				else
					local successfullySentFriendRequest = SendFriendRequest(playerToFriend)
					if not successfullySentFriendRequest then
						while PromptCreator:IsCurrentlyPrompting() do
							wait()
						end

						local mainText = string.format("An error occurred while sending %s a friend request. Please try again later.", playerToFriend.Name)
						if FFlagFriendPlayerPromptUseFormatByKey then
							mainText = RobloxTranslator:FormatByKey("FriendPlayerPrompt.promptCompletedCallback.UnknownError", {RBX_NAME = playerToFriend.Name})
						else
							if FFlagUseNotificationsLocalization then
								mainText = string.gsub(LocalizedGetString("FriendPlayerPrompt.promptCompletedCallback.UnknownError",mainText),"{RBX_NAME}",playerToFriend.Name)
							end
						end

						PromptCreator:CreatePrompt({
							WindowTitle = "Error Sending Friend Request",
							MainText = mainText,
							ConfirmationText = "Okay",
							CancelActive = false,
							Image = thumbnailUrl,
							ImageConsoleVR = thumbnailUrlConsole,
							FetchImageFunction = createFetchImageFunction(playerToFriend.UserId, REGULAR_THUMBNAIL_IMAGE_SIZE, REGULAR_THUMBNAIL_IMAGE_TYPE),
							FetchImageFunctionConsoleVR = createFetchImageFunction(playerToFriend.UserId, CONSOLE_THUMBNAIL_IMAGE_SIZE, CONSOLE_THUMBNAIL_IMAGE_TYPE),
							StripeColor = Color3.fromRGB(183, 34, 54),
						})
					end
				end
			end
		end
	end

	local mainText = string.format("Would you like to send %s a Friend Request?", playerToFriend.Name)

	if FFlagFriendPlayerPromptUseFormatByKey then
		mainText = RobloxTranslator:FormatByKey("FriendPlayerPrompt.DoPromptRequestFriendPlayer", {RBX_NAME = playerToFriend.Name})
	else
		if FFlagUseNotificationsLocalization then
			mainText = string.gsub(LocalizedGetString("FriendPlayerPrompt.DoPromptRequestFriendPlayer",mainText),"{RBX_NAME}",playerToFriend.Name)
		end
	end

	PromptCreator:CreatePrompt({
		WindowTitle = "Send Friend Request?",
		MainText = mainText,
		ConfirmationText = "Send Request",
		CancelText = "Cancel",
		CancelActive = true,
		Image = thumbnailUrl,
		ImageConsoleVR = thumbnailUrlConsole,
		FetchImageFunction = createFetchImageFunction(playerToFriend.UserId, REGULAR_THUMBNAIL_IMAGE_SIZE, REGULAR_THUMBNAIL_IMAGE_TYPE),
		FetchImageFunctionConsoleVR = createFetchImageFunction(playerToFriend.UserId, CONSOLE_THUMBNAIL_IMAGE_SIZE, CONSOLE_THUMBNAIL_IMAGE_TYPE),
		PromptCompletedCallback = promptCompletedCallback,
	})
end

function PromptRequestFriendPlayer(player)
	if LocalPlayer.UserId < 0 then
		error("PromptSendFriendRequest can not be called for guests!")
	end
	if typeof(player) == "Instance" and player:IsA("Player") then
		if player.UserId < 0 then
			error("PromptSendFriendRequest can not be called on guests!")
		end
		if player == LocalPlayer then
			error("PromptSendFriendRequest: A user can not friend themselves!")
		end
		DoPromptRequestFriendPlayer(player)
	else
		error("Invalid argument to PromptSendFriendRequest")
	end
end

function UnFriendPlayer(playerToUnfriend)
	local success = pcall(function()
		LocalPlayer:RevokeFriendship(playerToUnfriend)
	end)
	return success
end

function DoPromptUnfriendPlayer(playerToUnfriend)
	if not LocalPlayer:IsFriendsWith(playerToUnfriend.UserId) then
		return
	end

	local thumbnailUrl = BUST_THUMBNAIL_URL:format(BUST_THUMBNAIL_SIZE, BUST_THUMBNAIL_SIZE, playerToUnfriend.UserId)
	local thumbnailUrlConsole = THUMBNAIL_URL:format(THUMBNAIL_SIZE, THUMBNAIL_SIZE, playerToUnfriend.UserId)

	local function promptCompletedCallback(clickedConfirm)
		if clickedConfirm then
			local successfullyUnfriended = UnFriendPlayer(playerToUnfriend)
			if not successfullyUnfriended then
				while PromptCreator:IsCurrentlyPrompting() do
					wait()
				end

				local mainText = string.format("An error occurred while unfriending %s. Please try again later.", playerToUnfriend.Name)
				if FFlagUseNotificationsLocalization then
					mainText = string.gsub(LocalizedGetString("FriendPlayerPrompt.promptCompletedCallback.UnknownError",mainText),"{RBX_NAME}",playerToUnfriend.Name)
				end

				PromptCreator:CreatePrompt({
					WindowTitle = "Error Unfriending Player",
					MainText = mainText,
					ConfirmationText = "Okay",
					CancelActive = false,
					Image = thumbnailUrl,
					ImageConsoleVR = thumbnailUrlConsole,
					FetchImageFunction = createFetchImageFunction(playerToUnfriend.UserId, REGULAR_THUMBNAIL_IMAGE_SIZE, REGULAR_THUMBNAIL_IMAGE_TYPE),
					FetchImageFunctionConsoleVR = createFetchImageFunction(playerToUnfriend.UserId, CONSOLE_THUMBNAIL_IMAGE_SIZE, CONSOLE_THUMBNAIL_IMAGE_TYPE),
					StripeColor = Color3.fromRGB(183, 34, 54),
				})
			end
		end
	end

	local mainText = string.format("Would you like to remove %s from your friends list?", playerToUnfriend.Name)
	if FFlagUseNotificationsLocalization then
		mainText = string.gsub(LocalizedGetString("FriendPlayerPrompt.DoPromptUnfriendPlayer",mainText),"{RBX_NAME}",playerToUnfriend.Name)
	end

	PromptCreator:CreatePrompt({
		WindowTitle = "Unfriend Player?",
		MainText = mainText,
		ConfirmationText = "Unfriend",
		CancelText = "Cancel",
		CancelActive = true,
		Image = thumbnailUrl,
		ImageConsoleVR = thumbnailUrlConsole,
		FetchImageFunction = createFetchImageFunction(playerToUnfriend.UserId, REGULAR_THUMBNAIL_IMAGE_SIZE, REGULAR_THUMBNAIL_IMAGE_TYPE),
		FetchImageFunctionConsoleVR = createFetchImageFunction(playerToUnfriend.UserId, CONSOLE_THUMBNAIL_IMAGE_SIZE, CONSOLE_THUMBNAIL_IMAGE_TYPE),
		PromptCompletedCallback = promptCompletedCallback,
	})
end

function PromptUnfriendPlayer(player)
	if LocalPlayer.UserId < 0 then
		error("PromptUnfriend can not be called for guests!")
	end
	if typeof(player) == "Instance" and player:IsA("Player") then
		if player.UserId < 0 then
			error("PromptUnfriend can not be called on guests!")
		end
		if player == LocalPlayer then
			error("PromptUnfriend: A user can not unfriend themselves!")
		end
		DoPromptUnfriendPlayer(player)
	else
		error("Invalid argument to PromptUnfriend")
	end
end

StarterGui:RegisterSetCore("PromptSendFriendRequest", PromptRequestFriendPlayer)
StarterGui:RegisterSetCore("PromptUnfriend", PromptUnfriendPlayer)
