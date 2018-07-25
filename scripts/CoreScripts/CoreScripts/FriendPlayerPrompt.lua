--[[
	// Filename: FriendPlayerPrompt.lua
	// Version 1.0
	// Written by: TheGamer101
	// Description: Can prompt a user to send a friend request or unfriend a player.
]]--

local StarterGui = game:GetService("StarterGui")
local PlayersService = game:GetService("Players")
local CoreGuiService = game:GetService("CoreGui")
local AnalyticsService = game:GetService("AnalyticsService")

local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")
local LocalPlayer = PlayersService.LocalPlayer
while LocalPlayer == nil do
	PlayersService.ChildAdded:wait()
	LocalPlayer = PlayersService.LocalPlayer
end

local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local PromptCreator = require(CoreGuiModules:WaitForChild("PromptCreator"))
local SocialUtil = require(CoreGuiModules:WaitForChild("SocialUtil"))
local PlayerDropDownModule = require(CoreGuiModules:WaitForChild("PlayerDropDown"))

local FFlagCoreScriptsUseLocalizationModule = settings():GetFFlag('CoreScriptsUseLocalizationModule')
local FFlagFriendPlayerPromptUseFormatByKey = settings():GetFFlag('FriendPlayerPromptUseFormatByKey')

local RobloxTranslator
if FFlagCoreScriptsUseLocalizationModule then
	RobloxTranslator = require(CoreGuiModules:WaitForChild("RobloxTranslator"))
end

local THUMBNAIL_URL = "https://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&format=png&userId="
local BUST_THUMBNAIL_URL = "https://www.roblox.com/bust-thumbnail/image?width=420&height=420&format=png&userId="

local REGULAR_THUMBNAIL_IMAGE_SIZE = Enum.ThumbnailSize.Size150x150
local CONSOLE_THUMBNAIL_IMAGE_SIZE = Enum.ThumbnailSize.Size352x352

local REGULAR_THUMBNAIL_IMAGE_TYPE = Enum.ThumbnailType.HeadShot
local CONSOLE_THUMBNAIL_IMAGE_TYPE = Enum.ThumbnailType.AvatarThumbnail

local success, result = pcall(function() return settings():GetFFlag('UseNotificationsLocalization') end)
local FFlagUseNotificationsLocalization = success and result

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

function createFetchImageFunction(...)
	local args = {...}
	return function(imageLabel)
		spawn(function()
			local imageUrl = SocialUtil.GetPlayerImage(unpack(args))
			if imageLabel and imageLabel.Parent then
				imageLabel.Icon.Image = imageUrl
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
	local friendCount = PlayerDropDownModule:GetFriendCountAsync(player)
	if friendCount == nil then
		return false
	end
	if friendCount >= PlayerDropDownModule:MaxFriendCount() then
		return true
	end
	return false
end

function DoPromptRequestFriendPlayer(playerToFriend)
	if LocalPlayer:IsFriendsWith(playerToFriend.UserId) then
		return
	end
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
					Image = BUST_THUMBNAIL_URL ..playerToFriend.UserId,
					ImageConsoleVR = THUMBNAIL_URL ..playerToFriend.UserId,
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
						Image = BUST_THUMBNAIL_URL ..playerToFriend.UserId,
						ImageConsoleVR = THUMBNAIL_URL ..playerToFriend.UserId,
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
							Image = BUST_THUMBNAIL_URL ..playerToFriend.UserId,
							ImageConsoleVR = THUMBNAIL_URL ..playerToFriend.UserId,
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
		Image = BUST_THUMBNAIL_URL ..playerToFriend.UserId,
		ImageConsoleVR = THUMBNAIL_URL ..playerToFriend.UserId,
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
					Image = BUST_THUMBNAIL_URL ..playerToUnfriend.UserId,
					ImageConsoleVR = THUMBNAIL_URL ..playerToUnfriend.UserId,
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
		Image = BUST_THUMBNAIL_URL ..playerToUnfriend.UserId,
		ImageConsoleVR = THUMBNAIL_URL ..playerToUnfriend.UserId,
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
