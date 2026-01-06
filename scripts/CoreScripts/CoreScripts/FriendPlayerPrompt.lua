--!nonstrict
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
local CorePackages = game:GetService("CorePackages")


local RobloxGui = CoreGuiService.RobloxGui
local LocalPlayer = PlayersService.LocalPlayer
while LocalPlayer == nil do
	PlayersService.ChildAdded:wait()
	LocalPlayer = PlayersService.LocalPlayer
end

local CoreGuiModules = RobloxGui.Modules
local PromptCreator = require(CoreGuiModules.PromptCreator)
local SocialUtil = require(CoreGuiModules.SocialUtil)
local FriendingUtility = require(CoreGuiModules.FriendingUtility)

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local LegacyThumbnailUrls = require(CoreGuiModules.Common.LegacyThumbnailUrls)
local FFlagRemoveHardCodedFriendLimitPrompt = require(CoreGuiModules.Flags.FFlagRemoveHardCodedFriendLimitPrompt)


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
	assert(not FFlagRemoveHardCodedFriendLimitPrompt, "Should not call AtFriendLimit when FFlagRemoveHardCodedFriendLimitPrompt is enabled")
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
	if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
		if LocalPlayer:IsFriendsWithAsync(playerToFriend.UserId) then
			return
		end
	else
		if (LocalPlayer :: any):IsFriendsWith(playerToFriend.UserId) then
			return
		end
	end

	local thumbnailUrl = ""
	local thumbnailUrlConsole = ""

	local function promptCompletedCallback(clickedConfirm)
		if clickedConfirm then
			if not FFlagRemoveHardCodedFriendLimitPrompt and AtFriendLimit(LocalPlayer) then
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
				if not FFlagRemoveHardCodedFriendLimitPrompt and AtFriendLimit(playerToFriend) then

					local mainText = string.format("You can not send a friend request to %s because they are at the max friend limit.",  playerToFriend.Name)

					if FFlagUseNotificationsLocalization then
						mainText = string.gsub(LocalizedGetString(
								"InGame.FriendPlayerPrompt.promptCompletedCallback.AtFriendLimit" ,
								mainText
							),"{RBX_NAME}",playerToFriend.Name)
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
						if FFlagUseNotificationsLocalization then
							mainText = string.gsub(LocalizedGetString(
									"InGame.FriendPlayerPrompt.promptCompletedCallback.UnknownError",
									mainText
								),"{RBX_NAME}",playerToFriend.Name)
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

	if FFlagUseNotificationsLocalization then
		mainText = string.gsub(LocalizedGetString(
				"InGame.FriendPlayerPrompt.DoPromptRequestFriendPlayer",
				mainText
			),"{RBX_NAME}",playerToFriend.Name)
	end

	PromptCreator:CreatePrompt({
		WindowTitle = RobloxTranslator:FormatByKey("InGame.FriendPlayerPrompt.Title.SendFriendRequest"),
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
	if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
		if not LocalPlayer:IsFriendsWithAsync(playerToUnfriend.UserId) then
			return
		end
	else
		if not (LocalPlayer :: any):IsFriendsWith(playerToUnfriend.UserId) then
			return
		end
	end

	local thumbnailUrl = ""
	local thumbnailUrlConsole = ""

	local function promptCompletedCallback(clickedConfirm)
		if clickedConfirm then
			local successfullyUnfriended = UnFriendPlayer(playerToUnfriend)
			if not successfullyUnfriended then
				while PromptCreator:IsCurrentlyPrompting() do
					wait()
				end

				local mainText = string.format("An error occurred while unfriending %s. Please try again later.", playerToUnfriend.Name)
				if FFlagUseNotificationsLocalization then
					mainText = string.gsub(LocalizedGetString(
							"InGame.FriendPlayerPrompt.promptCompletedCallback.UnknownError",
							mainText
						),"{RBX_NAME}",playerToUnfriend.Name)
				end

				PromptCreator:CreatePrompt({
					WindowTitle = "Error Unfriending Person",
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
		mainText = string.gsub(LocalizedGetString(
				"InGame.FriendPlayerPrompt.DoPromptUnfriendPlayer",
				mainText
			),"{RBX_NAME}",playerToUnfriend.Name)
	end

	PromptCreator:CreatePrompt({
		WindowTitle = "Unfriend Person?",
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
