--!nonstrict
--[[
	// Filename: BlockPlayerPrompt.lua
	// Version 1.0
	// Written by: TheGamer101
	// Description: Handles prompting the blocking and unblocking of Players.
]]--

local StarterGui = game:GetService("StarterGui")
local PlayersService = game:GetService("Players")
local CoreGuiService = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local GetFFlagReplaceWaitForChildDependancy2952 = require(CorePackages.Workspace.Packages.SharedFlags).ReplaceWaitForChildDependancyFlags.GetFFlag2952
local RobloxGui = if GetFFlagReplaceWaitForChildDependancy2952() then CoreGuiService.RobloxGui else CoreGuiService:WaitForChild("RobloxGui")
local LocalPlayer = PlayersService.LocalPlayer
while LocalPlayer == nil do
	PlayersService.ChildAdded:wait()
	LocalPlayer = PlayersService.LocalPlayer
end

local CoreGuiModules = if GetFFlagReplaceWaitForChildDependancy2952() then RobloxGui.Modules else RobloxGui:WaitForChild("Modules")
local PromptCreator = require(if GetFFlagReplaceWaitForChildDependancy2952() then CoreGuiModules.PromptCreator else CoreGuiModules:WaitForChild("PromptCreator"))
local SocialUtil = require(if GetFFlagReplaceWaitForChildDependancy2952() then CoreGuiModules.SocialUtil else CoreGuiModules:WaitForChild("SocialUtil"))
local BlockingUtility = require(CoreGuiModules.BlockingUtility)

local REGULAR_THUMBNAIL_IMAGE_SIZE = Enum.ThumbnailSize.Size150x150
local CONSOLE_THUMBNAIL_IMAGE_SIZE = Enum.ThumbnailSize.Size352x352

local REGULAR_THUMBNAIL_IMAGE_TYPE = Enum.ThumbnailType.HeadShot
local CONSOLE_THUMBNAIL_IMAGE_TYPE = Enum.ThumbnailType.AvatarThumbnail

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

function DoPromptBlockPlayer(playerToBlock)
	if BlockingUtility:IsPlayerBlockedByUserId(playerToBlock.UserId) then
		return
	end

	local thumbnailUrl = ""
	local thumbnailUrlConsole = ""

	local function promptCompletedCallback(clickedConfirm)
		if clickedConfirm then
			local successfullyBlocked = BlockingUtility:BlockPlayerAsync(playerToBlock)
			if not successfullyBlocked then
				while PromptCreator:IsCurrentlyPrompting() do
					wait()
				end

				PromptCreator:CreatePrompt({
					WindowTitle = "Error Blocking User",
					MainText = string.format("An error occurred while blocking %s. Please try again later.", playerToBlock.Name),
					ConfirmationText = "Okay",
					CancelActive = false,
					Image = thumbnailUrl,
					ImageConsoleVR = thumbnailUrlConsole,
					FetchImageFunction = createFetchImageFunction(playerToBlock.UserId, REGULAR_THUMBNAIL_IMAGE_SIZE, REGULAR_THUMBNAIL_IMAGE_TYPE),
					FetchImageFunctionConsoleVR = createFetchImageFunction(playerToBlock.UserId, CONSOLE_THUMBNAIL_IMAGE_SIZE, CONSOLE_THUMBNAIL_IMAGE_TYPE),
					StripeColor = Color3.fromRGB(183, 34, 54),
				})
			end
		end
	end
	PromptCreator:CreatePrompt({
		WindowTitle = "Confirm Block",
		MainText = string.format("Are you sure you want to block %s?", playerToBlock.Name),
		ConfirmationText = "Block",
		CancelText = "Cancel",
		CancelActive = true,
		Image = thumbnailUrl,
		ImageConsoleVR = thumbnailUrlConsole,
		FetchImageFunction = createFetchImageFunction(playerToBlock.UserId, REGULAR_THUMBNAIL_IMAGE_SIZE, REGULAR_THUMBNAIL_IMAGE_TYPE),
		FetchImageFunctionConsoleVR = createFetchImageFunction(playerToBlock.UserId, CONSOLE_THUMBNAIL_IMAGE_SIZE, CONSOLE_THUMBNAIL_IMAGE_TYPE),
		PromptCompletedCallback = promptCompletedCallback,
	})
end

function PromptBlockPlayer(player)
	if LocalPlayer.UserId < 0 then
		error("PromptBlockPlayer can not be called for guests!")
	end
	if typeof(player) == "Instance" and player:IsA("Player") then
		if player.UserId < 0 then
			error("PromptBlockPlayer can not be called on guests!")
		end
		if player == LocalPlayer then
			error("PromptBlockPlayer: A user can not block themselves!")
		end
		DoPromptBlockPlayer(player)
	else
		error("Invalid argument to PromptBlockPlayer")
	end
end

function DoPromptUnblockPlayer(playerToUnblock)
	if not BlockingUtility:IsPlayerBlockedByUserId(playerToUnblock.UserId) and false then
		return
	end

	local thumbnailUrl = ""
	local thumbnailUrlConsole = ""

	local function promptCompletedCallback(clickedConfirm)
		if clickedConfirm then
			local successfullyUnblocked = BlockingUtility:UnblockPlayerAsync(playerToUnblock)
			if not successfullyUnblocked then
				while PromptCreator:IsCurrentlyPrompting() do
					wait()
				end
				PromptCreator:CreatePrompt({
					WindowTitle = "Error Unblocking User",
					MainText = string.format("An error occurred while unblocking %s. Please try again later.", playerToUnblock.Name),
					ConfirmationText = "Okay",
					Image = thumbnailUrl,
					ImageConsoleVR = thumbnailUrlConsole,
					FetchImageFunction = createFetchImageFunction(playerToUnblock.UserId, REGULAR_THUMBNAIL_IMAGE_SIZE, REGULAR_THUMBNAIL_IMAGE_TYPE),
					FetchImageFunctionConsoleVR = createFetchImageFunction(playerToUnblock.UserId, CONSOLE_THUMBNAIL_IMAGE_SIZE, CONSOLE_THUMBNAIL_IMAGE_TYPE),
					StripeColor = Color3.fromRGB(183, 34, 54),
				})
			end
		end
	end

	PromptCreator:CreatePrompt({
		WindowTitle = "Confirm Unblock",
		MainText = string.format("Would you like to unblock %s?", playerToUnblock.Name),
		ConfirmationText = "Unblock",
		CancelText = "Cancel",
		CancelActive = true,
		Image = thumbnailUrl,
		ImageConsoleVR = thumbnailUrlConsole,
		FetchImageFunction = createFetchImageFunction(playerToUnblock.UserId, REGULAR_THUMBNAIL_IMAGE_SIZE, REGULAR_THUMBNAIL_IMAGE_TYPE),
		FetchImageFunctionConsoleVR = createFetchImageFunction(playerToUnblock.UserId, CONSOLE_THUMBNAIL_IMAGE_SIZE, CONSOLE_THUMBNAIL_IMAGE_TYPE),
		PromptCompletedCallback = promptCompletedCallback,
	})
end

function PromptUnblockPlayer(player)
	if LocalPlayer.UserId < 0 then
		error("PromptUnblockPlayer can not be called for guests!")
	end
	if typeof(player) == "Instance" and player:IsA("Player") then
		if player.UserId < 0 then
			error("PromptUnblockPlayer can not be called on guests!")
		end
		if player == LocalPlayer then
			error("PromptUnblockPlayer: A user can not block themselves!")
		end
		DoPromptUnblockPlayer(player)
	else
		error("Invalid argument to PromptUnblockPlayer")
	end
end

function GetBlockedUserIds()
	if LocalPlayer.UserId < 0 then
		error("GetBlockedUserIds can not be called for guests!")
	end
	return BlockingUtility:GetBlockedUserIdsAsync()
end

StarterGui:RegisterSetCore("PromptBlockPlayer", PromptBlockPlayer)
StarterGui:RegisterSetCore("PromptUnblockPlayer", PromptUnblockPlayer)
StarterGui:RegisterGetCore("GetBlockedUserIds", GetBlockedUserIds)

-- fetch and store player block list
-- This needs to be done after the SetCore and GetCore registrations above so these are registered as early as developers
-- might want to use them
BlockingUtility:InitBlockListAsync()
