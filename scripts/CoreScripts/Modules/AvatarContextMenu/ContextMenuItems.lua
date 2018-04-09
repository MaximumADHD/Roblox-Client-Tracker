--[[
	// FileName: ContextMenuItems.lua
	// Written by: TheGamer101
	// Description: Module for creating the context menu items for the menu and doing the actions when they are clicked.
]]

-- CONSTANTS
local FRIEND_LAYOUT_ORDER = 1
local CHAT_LAYOUT_ORDER = 3
local WAVE_LAYOUT_ORDER = 4
local CUSTOM_LAYOUT_ORDER = 20

local MENU_ITEM_SIZE_X = 0.96
local MENU_ITEM_SIZE_Y = 0
local MENU_ITEM_SIZE_Y_OFFSET = 52

local THUMBNAIL_URL = "https://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&format=png&userId="
local BUST_THUMBNAIL_URL = "https://www.roblox.com/bust-thumbnail/image?width=420&height=420&format=png&userId="

--- SERVICES
local PlayersService = game:GetService("Players")
local CoreGuiService = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local Chat = game:GetService("Chat")
local RunService = game:GetService("RunService")
local AnalyticsService = game:GetService("AnalyticsService")

-- MODULES
local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local SettingsModules = CoreGuiModules:WaitForChild("Settings")
local AvatarMenuModules = CoreGuiModules:WaitForChild("AvatarContextMenu")
local SettingsPages = SettingsModules:WaitForChild("Pages")

local ContextMenuUtil = require(AvatarMenuModules:WaitForChild("ContextMenuUtil"))

local PromptCreator = require(CoreGuiModules:WaitForChild("PromptCreator"))
local PlayerDropDownModule = require(CoreGuiModules:WaitForChild("PlayerDropDown"))
local ReportAbuseMenu = require(SettingsPages:WaitForChild("ReportAbuseMenu"))

-- VARIABLES

local LocalPlayer = PlayersService.LocalPlayer
while not LocalPlayer do
	PlayersService.PlayerAdded:wait()
	LocalPlayer = PlayersService.LocalPlayer
end

local EnabledContextMenuItems = {
	[Enum.AvatarContextMenuOption.Chat] = true,
	[Enum.AvatarContextMenuOption.Friend] = true,
	[Enum.AvatarContextMenuOption.Emote] = true
}
local CustomContextMenuItems = {}

local BlockingUtility = PlayerDropDownModule:CreateBlockingUtility()

local ContextMenuItems = {}
ContextMenuItems.__index = ContextMenuItems

-- PRIVATE METHODS
function ContextMenuItems:ClearMenuItems()
	local children = self.MenuItemFrame:GetChildren()
	for i = 1, #children do
		if children[i]:IsA("GuiObject") then
			children[i]:Destroy()
		end
	end
end

function ContextMenuItems:AddCustomAvatarMenuItem(menuOption, bindableEvent)
	CustomContextMenuItems[menuOption] = bindableEvent
end

function ContextMenuItems:RemoveCustomAvatarMenuItem(menuOption)
	CustomContextMenuItems[menuOption] = nil
end

function ContextMenuItems:IsContextAvatarEnumItem(enumItem)
	local enumItems = Enum.AvatarContextMenuOption:GetEnumItems()
	for i = 1, #enumItems do
		if enumItem == enumItems[i] then
			return true
		end
	end
	return false
end

function ContextMenuItems:EnableDefaultMenuItem(menuOption)
	EnabledContextMenuItems[menuOption] = true
end

function ContextMenuItems:RemoveDefaultMenuItem(menuOption)
	EnabledContextMenuItems[menuOption] = false
end

function ContextMenuItems:RegisterCoreMethods()
	local function addMenuItemFunc(args) --[[ menuOption, bindableEvent]]
		if type(args) == "table" then
			local name = ""
			if args[1] and type(args[1]) == "string" then
				name = args[1]
			else
				error("AddAvatarContextMenuOption first argument must be a table or Enum.AvatarContextMenuOption")
			end

			if args[2] and typeof(args[2]) == "Instance" and args[2].ClassName == "BindableEvent" then
				self:AddCustomAvatarMenuItem(name, args[2])
			else
				error("AddAvatarContextMenuOption second table entry must be a BindableEvent")
			end

		elseif typeof(args) == "EnumItem" then
			if self:IsContextAvatarEnumItem(args) then
				self:EnableDefaultMenuItem(args)
			else
				error("AddAvatarContextMenuOption given EnumItem is not valid")
			end
		else
			error("AddAvatarContextMenuOption first argument must be a table or Enum.AvatarContextMenuOption")
		end
	end
	StarterGui:RegisterSetCore("AddAvatarContextMenuOption", addMenuItemFunc)
	local function removeMenuItemFunc(menuOption)
		if type(menuOption) == "string" then
			self:RemoveCustomAvatarMenuItem(menuOption)
		elseif typeof(menuOption) == "EnumItem" then
			if self:IsContextAvatarEnumItem(menuOption) then
				self:RemoveDefaultMenuItem(menuOption)
			else
				error("RemoveAvatarContextMenuOption given EnumItem is not valid")
			end
		else
			error("RemoveAvatarContextMenuOption first argument must be a string or Enum.AvatarContextMenuOption")
		end
	end
	StarterGui:RegisterSetCore("RemoveAvatarContextMenuOption", removeMenuItemFunc)
end

function ContextMenuItems:CreateCustomMenuItems()
	for buttonText, bindableEvent in pairs(CustomContextMenuItems) do
		AnalyticsService:TrackEvent("Game", "AvatarContextMenuCustomButton", "name: " .. tostring(buttonText))
		local function customButtonFunc()
			bindableEvent:Fire(self.SelectedPlayer)
		end
		local customButton = ContextMenuUtil:MakeStyledButton("CustomButton", buttonText, UDim2.new(MENU_ITEM_SIZE_X, 0, MENU_ITEM_SIZE_Y, MENU_ITEM_SIZE_Y_OFFSET), customButtonFunc)
		customButton.Name = "CustomButton"
		customButton.LayoutOrder = CUSTOM_LAYOUT_ORDER
		customButton.Parent = self.MenuItemFrame
	end
end

-- PUBLIC METHODS

local addFriendString = "Add Friend"
local friendsString = "Friends"
local friendRequestPendingString = "Friend Request Pending"
local acceptFriendRequestString = "Accept Friend Request"

local addFriendDisabledTransparency = 0.75
local friendStatusChangedConn = nil
function ContextMenuItems:CreateFriendButton(status)
	local friendLabel = self.MenuItemFrame:FindFirstChild("FriendStatus")
	if friendLabel then
		friendLabel:Destroy()
		friendLabel = nil
	end
    if friendStatusChangedConn then
        friendStatusChangedConn:disconnect()
    end
	local friendLabelText = nil

	local addFriendFunc = function()
		if friendLabelText and friendLabel.Selectable then
            friendLabel.Selectable = false
            friendLabelText.TextTransparency = addFriendDisabledTransparency
            friendLabelText.Text = friendRequestPendingString
			AnalyticsService:ReportCounter("AvatarContextMenu-RequestFriendship")
        	AnalyticsService:TrackEvent("Game", "RequestFriendship", "AvatarContextMenu")
			LocalPlayer:RequestFriendship(self.SelectedPlayer)
		end
	end

	friendLabel, friendLabelText = ContextMenuUtil:MakeStyledButton("FriendStatus", addFriendString, UDim2.new(MENU_ITEM_SIZE_X, 0, MENU_ITEM_SIZE_Y, MENU_ITEM_SIZE_Y_OFFSET), addFriendFunc)

	if status ~= Enum.FriendStatus.Friend then
		friendLabel.Selectable = true
		friendLabelText.TextTransparency = 0
	else
		friendLabel.Selectable = false
		friendLabelText.TextTransparency = addFriendDisabledTransparency
        friendLabelText.Text = friendsString
	end

    friendStatusChangedConn = LocalPlayer.FriendStatusChanged:connect(function(player, friendStatus)
        if player == self.SelectedPlayer and friendLabelText then
            if not friendLabel.Selectable then
                if friendStatus == Enum.FriendStatus.Friend then
                   friendLabelText.Text = friendsString
                end
            else
                if friendStatus == Enum.FriendStatus.FriendRequestReceived then
                    friendLabelText.Text = acceptFriendRequestString
                end
            end
        end
    end)

	friendLabel.LayoutOrder = FRIEND_LAYOUT_ORDER
	friendLabel.Parent = self.MenuItemFrame
end

function ContextMenuItems:UpdateFriendButton(status)
	local friendLabel = self.MenuItemFrame:FindFirstChild("FriendStatus")
	if friendLabel then
		self:CreateFriendButton(status)
	end
end

function ContextMenuItems:CreateEmoteButton()
	local function wave()
		if self.CloseMenuFunc then self:CloseMenuFunc() end

		AnalyticsService:ReportCounter("AvatarContextMenu-Wave")
        AnalyticsService:TrackEvent("Game", "AvatarContextMenuWave", "placeId: " .. tostring(game.PlaceId))

		PlayersService:Chat("/e wave")
	end

	local waveButton = self.MenuItemFrame:FindFirstChild("Wave")
	if not waveButton then
		waveButton = ContextMenuUtil:MakeStyledButton("Wave", "Wave", UDim2.new(MENU_ITEM_SIZE_X, 0, MENU_ITEM_SIZE_Y, MENU_ITEM_SIZE_Y_OFFSET), wave)
		waveButton.LayoutOrder = WAVE_LAYOUT_ORDER
		waveButton.Parent = self.MenuItemFrame
	end
end


function ContextMenuItems:CreateChatButton()
	local function chatFunc()
		if self.CloseMenuFunc then self:CloseMenuFunc() end

		AnalyticsService:ReportCounter("AvatarContextMenu-Chat")
        AnalyticsService:TrackEvent("Game", "AvatarContextMenuChat", "placeId: " .. tostring(game.PlaceId))

		-- todo: need a proper api to set up text in the chat bar
		local ChatBar = nil
		pcall(function() ChatBar = LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar end)
		if ChatBar then
			ChatBar.Text = "/w " .. self.SelectedPlayer.Name
		end

		local ChatModule = require(RobloxGui.Modules.ChatSelector)
		ChatModule:SetVisible(true)
		ChatModule:FocusChatBar()
	end

	local chatButton = self.MenuItemFrame:FindFirstChild("ChatStatus")
	if not chatButton then
		chatButton = ContextMenuUtil:MakeStyledButton("ChatStatus", "Chat", UDim2.new(MENU_ITEM_SIZE_X, 0, MENU_ITEM_SIZE_Y, MENU_ITEM_SIZE_Y_OFFSET), chatFunc)
		chatButton.LayoutOrder = CHAT_LAYOUT_ORDER
	end

	local success, canLocalUserChat = pcall(function() return Chat:CanUserChatAsync(LocalPlayer.UserId) end)
	local canChat = success and (RunService:IsStudio() or canLocalUserChat)

	if canChat then
		chatButton.Parent = self.MenuItemFrame
	else
		chatButton.Parent = nil
	end
end

function ContextMenuItems:BuildContextMenuItems(player)
	if not player then return end

	local friendStatus = ContextMenuUtil:GetFriendStatus(player)
	local isBlocked = BlockingUtility:IsPlayerBlockedByUserId(player.UserId)
	local isMuted = BlockingUtility:IsPlayerMutedByUserId(player.UserId)
	self:ClearMenuItems()
	self:SetSelectedPlayer(player)
	if EnabledContextMenuItems[Enum.AvatarContextMenuOption.Friend] then
		self:CreateFriendButton(friendStatus)
	end
	if EnabledContextMenuItems[Enum.AvatarContextMenuOption.Chat] then
		self:CreateChatButton()
	end
	if EnabledContextMenuItems[Enum.AvatarContextMenuOption.Emote] then
		self:CreateEmoteButton()
	end

	self:CreateCustomMenuItems()
end

function ContextMenuItems:SetSelectedPlayer(selectedPlayer)
	self.SelectedPlayer = selectedPlayer
end

function ContextMenuItems:SetCloseMenuFunc(closeMenuFunc)
	self.CloseMenuFunc = closeMenuFunc
end

function ContextMenuItems.new(menuItemFrame)
	local obj = setmetatable({}, ContextMenuItems)

	obj.MenuItemFrame = menuItemFrame
	obj.SelectedPlayer = nil

	obj:RegisterCoreMethods()

	return obj
end

return ContextMenuItems
