--	// FileName: ChatWindow.lua
--	// Written by: Xsitsu
--	// Description: Main GUI window piece. Manages ChatBar, ChannelsBar, and ChatChannels.

local module = {}

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local PHONE_SCREEN_WIDTH = 640
local TABLET_SCREEN_WIDTH = 1024

local DEVICE_PHONE = 1
local DEVICE_TABLET = 2
local DEVICE_DESKTOP = 3

--////////////////////////////// Include
--//////////////////////////////////////
local Chat = game:GetService("Chat")
local clientChatModules = Chat:WaitForChild("ClientChatModules")
local modulesFolder = script.Parent
local moduleChatChannel = require(modulesFolder:WaitForChild("ChatChannel"))
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))
local CurveUtil = require(modulesFolder:WaitForChild("CurveUtil"))

--////////////////////////////// Methods
--//////////////////////////////////////
local methods = {}
methods.__index = methods

function getClassicChatEnabled()
	if ChatSettings.ClassicChatEnabled ~= nil then
		return ChatSettings.ClassicChatEnabled
	end
	return Players.ClassicChat
end

function getBubbleChatEnabled()
	if ChatSettings.BubbleChatEnabled ~= nil then
		return ChatSettings.BubbleChatEnabled
	end
	return Players.BubbleChat
end

function bubbleChatOnly()
 	return not getClassicChatEnabled() and getBubbleChatEnabled()
end

function methods:CreateGuiObjects(targetParent)
	local BaseFrame = Instance.new("Frame")
	BaseFrame.BackgroundTransparency = 1
	BaseFrame.Active = ChatSettings.WindowDraggable
	BaseFrame.Parent = targetParent

	local ChatBarParentFrame = Instance.new("Frame")
	ChatBarParentFrame.Selectable = false
	ChatBarParentFrame.Name = "ChatBarParentFrame"
	ChatBarParentFrame.BackgroundTransparency = 1
	ChatBarParentFrame.Parent = BaseFrame

	local ChannelsBarParentFrame = Instance.new("Frame")
	ChannelsBarParentFrame.Selectable = false
	ChannelsBarParentFrame.Name = "ChannelsBarParentFrame"
	ChannelsBarParentFrame.BackgroundTransparency = 1
	ChannelsBarParentFrame.Position = UDim2.new(0, 0, 0, 0)
	ChannelsBarParentFrame.Parent = BaseFrame

	local ChatChannelParentFrame = Instance.new("Frame")
	ChatChannelParentFrame.Selectable = false
	ChatChannelParentFrame.Name = "ChatChannelParentFrame"
	ChatChannelParentFrame.BackgroundTransparency = 1
	ChatChannelParentFrame.BackgroundColor3 = ChatSettings.BackGroundColor
	ChatChannelParentFrame.BackgroundTransparency = 0.6
	ChatChannelParentFrame.BorderSizePixel = 0
	ChatChannelParentFrame.Parent = BaseFrame

	local ChatResizerFrame = Instance.new("ImageButton")
	ChatResizerFrame.Selectable = false
	ChatResizerFrame.Image = ""
	ChatResizerFrame.BackgroundTransparency = 0.6
	ChatResizerFrame.BorderSizePixel = 0
	ChatResizerFrame.Visible = false
	ChatResizerFrame.BackgroundColor3 = ChatSettings.BackGroundColor
	ChatResizerFrame.Active = true
	if bubbleChatOnly() then
		ChatResizerFrame.Position = UDim2.new(1, -ChatResizerFrame.AbsoluteSize.X, 0, 0)
	else
		ChatResizerFrame.Position = UDim2.new(1, -ChatResizerFrame.AbsoluteSize.X, 1, -ChatResizerFrame.AbsoluteSize.Y)
	end
	ChatResizerFrame.Parent = BaseFrame

	local ResizeIcon = Instance.new("ImageLabel")
	ResizeIcon.Selectable = false
	ResizeIcon.Size = UDim2.new(0.8, 0, 0.8, 0)
	ResizeIcon.Position = UDim2.new(0.2, 0, 0.2, 0)
	ResizeIcon.BackgroundTransparency = 1
	ResizeIcon.Image = "rbxassetid://261880743"
	ResizeIcon.Parent = ChatResizerFrame

	local function GetScreenGuiParent()
		--// Travel up parent list until you find the ScreenGui that the chat window is parented to
		local screenGuiParent = BaseFrame
		while (screenGuiParent and not screenGuiParent:IsA("ScreenGui")) do
			screenGuiParent = screenGuiParent.Parent
		end

		return screenGuiParent
	end


	local deviceType = DEVICE_DESKTOP

	local screenGuiParent = GetScreenGuiParent()
	if (screenGuiParent.AbsoluteSize.X <= PHONE_SCREEN_WIDTH) then
		deviceType = DEVICE_PHONE

	elseif (screenGuiParent.AbsoluteSize.X <= TABLET_SCREEN_WIDTH) then
		deviceType = DEVICE_TABLET

	end

	local checkSizeLock = false
	local function doCheckSizeBounds()
		if (checkSizeLock) then return end
		checkSizeLock = true

		if (not BaseFrame:IsDescendantOf(PlayerGui)) then return end

		local screenGuiParent = GetScreenGuiParent()

		local minWinSize = ChatSettings.MinimumWindowSize
		local maxWinSize = ChatSettings.MaximumWindowSize

		local forceMinY = ChannelsBarParentFrame.AbsoluteSize.Y + ChatBarParentFrame.AbsoluteSize.Y

		local minSizePixelX = (minWinSize.X.Scale * screenGuiParent.AbsoluteSize.X) + minWinSize.X.Offset
		local minSizePixelY = math.max((minWinSize.Y.Scale * screenGuiParent.AbsoluteSize.Y) + minWinSize.Y.Offset, forceMinY)

		local maxSizePixelX = (maxWinSize.X.Scale * screenGuiParent.AbsoluteSize.X) + maxWinSize.X.Offset
		local maxSizePixelY = (maxWinSize.Y.Scale * screenGuiParent.AbsoluteSize.Y) + maxWinSize.Y.Offset

		local absSizeX = BaseFrame.AbsoluteSize.X
		local absSizeY = BaseFrame.AbsoluteSize.Y

		if (absSizeX < minSizePixelX) then
			local offset = UDim2.new(0, minSizePixelX - absSizeX, 0, 0)
			BaseFrame.Size = BaseFrame.Size + offset

		elseif (absSizeX > maxSizePixelX) then
			local offset = UDim2.new(0, maxSizePixelX - absSizeX, 0, 0)
			BaseFrame.Size = BaseFrame.Size + offset

		end

		if (absSizeY < minSizePixelY) then
			local offset = UDim2.new(0, 0, 0, minSizePixelY - absSizeY)
			BaseFrame.Size = BaseFrame.Size + offset

		elseif (absSizeY > maxSizePixelY) then
			local offset = UDim2.new(0, 0, 0, maxSizePixelY - absSizeY)
			BaseFrame.Size = BaseFrame.Size + offset

		end

		local xScale = BaseFrame.AbsoluteSize.X / screenGuiParent.AbsoluteSize.X
		local yScale = BaseFrame.AbsoluteSize.Y / screenGuiParent.AbsoluteSize.Y
		BaseFrame.Size = UDim2.new(xScale, 0, yScale, 0)

		checkSizeLock = false
	end


	BaseFrame.Changed:connect(function(prop)
		if (prop == "AbsoluteSize") then
			doCheckSizeBounds()
		end
	end)



	ChatResizerFrame.DragBegin:connect(function(startUdim)
		BaseFrame.Draggable = false
	end)

	local function UpdatePositionFromDrag(atPos)
		if ChatSettings.WindowDraggable == false and ChatSettings.WindowResizable == false then
			return
		end
		local newSize = atPos - BaseFrame.AbsolutePosition + ChatResizerFrame.AbsoluteSize
		BaseFrame.Size = UDim2.new(0, newSize.X, 0, newSize.Y)
		if bubbleChatOnly() then
			ChatResizerFrame.Position = UDim2.new(1, -ChatResizerFrame.AbsoluteSize.X, 0, 0)
		else
			ChatResizerFrame.Position = UDim2.new(1, -ChatResizerFrame.AbsoluteSize.X, 1, -ChatResizerFrame.AbsoluteSize.Y)
		end
	end

	ChatResizerFrame.DragStopped:connect(function(endX, endY)
		BaseFrame.Draggable = ChatSettings.WindowDraggable
		--UpdatePositionFromDrag(Vector2.new(endX, endY))
	end)

	local resizeLock = false
	ChatResizerFrame.Changed:connect(function(prop)
		if (prop == "AbsolutePosition" and not BaseFrame.Draggable) then
			if (resizeLock) then return end
			resizeLock = true

			UpdatePositionFromDrag(ChatResizerFrame.AbsolutePosition)

			resizeLock = false
		end
	end)

	local function CalculateChannelsBarPixelSize(textSize)
		if (deviceType == DEVICE_PHONE) then
			textSize = textSize or ChatSettings.ChatChannelsTabTextSizePhone
		else
			textSize = textSize or ChatSettings.ChatChannelsTabTextSize
		end

		local channelsBarTextYSize = textSize
		local chatChannelYSize = math.max(32, channelsBarTextYSize + 8) + 2

		return chatChannelYSize
	end

	local function CalculateChatBarPixelSize(textSize)
		if (deviceType == DEVICE_PHONE) then
			textSize = textSize or ChatSettings.ChatBarTextSizePhone
		else
			textSize = textSize or ChatSettings.ChatBarTextSize
		end

		local chatBarTextSizeY = textSize
		local chatBarYSize = chatBarTextSizeY + (7 * 2) + (5 * 2)

		return chatBarYSize
	end

	if bubbleChatOnly() then
		ChatBarParentFrame.Position = UDim2.new(0, 0, 0, 0)
		ChannelsBarParentFrame.Visible = false
		ChannelsBarParentFrame.Active = false
		ChatChannelParentFrame.Visible = false
		ChatChannelParentFrame.Active = false

		local useXScale = 0
		local useXOffset = 0

		local screenGuiParent = GetScreenGuiParent()

		if (deviceType == DEVICE_PHONE) then
			useXScale = ChatSettings.DefaultWindowSizePhone.X.Scale
			useXOffset = ChatSettings.DefaultWindowSizePhone.X.Offset

		elseif (deviceType == DEVICE_TABLET) then
			useXScale = ChatSettings.DefaultWindowSizeTablet.X.Scale
			useXOffset = ChatSettings.DefaultWindowSizeTablet.X.Offset

		else
			useXScale = ChatSettings.DefaultWindowSizeTablet.X.Scale
			useXOffset = ChatSettings.DefaultWindowSizeTablet.X.Offset

		end

		local chatBarYSize = CalculateChatBarPixelSize()

		BaseFrame.Size = UDim2.new(useXScale, useXOffset, 0, chatBarYSize)
		BaseFrame.Position = ChatSettings.DefaultWindowPosition

	else

		local screenGuiParent = GetScreenGuiParent()

		if (deviceType == DEVICE_PHONE) then
			BaseFrame.Size = ChatSettings.DefaultWindowSizePhone

		elseif (deviceType == DEVICE_TABLET) then
			BaseFrame.Size = ChatSettings.DefaultWindowSizeTablet

		else
			BaseFrame.Size = ChatSettings.DefaultWindowSizeDesktop

		end

		BaseFrame.Position = ChatSettings.DefaultWindowPosition

	end

	if (deviceType == DEVICE_PHONE) then
		ChatSettings.ChatWindowTextSize = ChatSettings.ChatWindowTextSizePhone
		ChatSettings.ChatChannelsTabTextSize = ChatSettings.ChatChannelsTabTextSizePhone
		ChatSettings.ChatBarTextSize = ChatSettings.ChatBarTextSizePhone
	end

	local function UpdateDraggable(enabled)
		BaseFrame.Active = enabled
		BaseFrame.Draggable = enabled
	end

	local function UpdateResizable(enabled)
		ChatResizerFrame.Visible = enabled
		ChatResizerFrame.Draggable = enabled

		local frameSizeY = ChatBarParentFrame.Size.Y.Offset

		if (enabled) then
			ChatBarParentFrame.Size = UDim2.new(1, -frameSizeY - 2, 0, frameSizeY)
			if not bubbleChatOnly() then
				ChatBarParentFrame.Position = UDim2.new(0, 0, 1, -frameSizeY)
			end
		else
			ChatBarParentFrame.Size = UDim2.new(1, 0, 0, frameSizeY)
			if not bubbleChatOnly() then
				ChatBarParentFrame.Position = UDim2.new(0, 0, 1, -frameSizeY)
			end
		end
	end

	local function UpdateChatChannelParentFrameSize()
		local channelsBarSize = CalculateChannelsBarPixelSize()
		local chatBarSize = CalculateChatBarPixelSize()

		if (ChatSettings.ShowChannelsBar) then
			ChatChannelParentFrame.Size = UDim2.new(1, 0, 1, -(channelsBarSize + chatBarSize + 2 + 2))
			ChatChannelParentFrame.Position = UDim2.new(0, 0, 0, channelsBarSize + 2)

		else
			ChatChannelParentFrame.Size = UDim2.new(1, 0, 1, -(chatBarSize + 2 + 2))
			ChatChannelParentFrame.Position = UDim2.new(0, 0, 0, 2)

		end
	end

	local function UpdateChatChannelsTabTextSize(size)
		local channelsBarSize = CalculateChannelsBarPixelSize(size)
		ChannelsBarParentFrame.Size = UDim2.new(1, 0, 0, channelsBarSize)

		UpdateChatChannelParentFrameSize()
	end

	local function UpdateChatBarTextSize(size)
		local chatBarSize = CalculateChatBarPixelSize(size)

		ChatBarParentFrame.Size = UDim2.new(1, 0, 0, chatBarSize)
		if not bubbleChatOnly() then
			ChatBarParentFrame.Position = UDim2.new(0, 0, 1, -chatBarSize)
		end

		ChatResizerFrame.Size = UDim2.new(0, chatBarSize, 0, chatBarSize)
		ChatResizerFrame.Position = UDim2.new(1, -chatBarSize, 1, -chatBarSize)

		UpdateChatChannelParentFrameSize()
		UpdateResizable(ChatSettings.WindowResizable)
	end

	local function UpdateShowChannelsBar(enabled)
		ChannelsBarParentFrame.Visible = enabled
		UpdateChatChannelParentFrameSize()
	end

	UpdateChatChannelsTabTextSize(ChatSettings.ChatChannelsTabTextSize)
	UpdateChatBarTextSize(ChatSettings.ChatBarTextSize)
	UpdateDraggable(ChatSettings.WindowDraggable)
	UpdateResizable(ChatSettings.WindowResizable)
	UpdateShowChannelsBar(ChatSettings.ShowChannelsBar)

	ChatSettings.SettingsChanged:connect(function(setting, value)
		if (setting == "WindowDraggable") then
			UpdateDraggable(value)

		elseif (setting == "WindowResizable") then
			UpdateResizable(value)

		elseif (setting == "ChatChannelsTabTextSize") then
			UpdateChatChannelsTabTextSize(value)

		elseif (setting == "ChatBarTextSize") then
			UpdateChatBarTextSize(value)

		elseif (setting == "ShowChannelsBar") then
			UpdateShowChannelsBar(value)

		end
	end)

	self.GuiObject = BaseFrame

	self.GuiObjects.BaseFrame = BaseFrame
	self.GuiObjects.ChatBarParentFrame = ChatBarParentFrame
	self.GuiObjects.ChannelsBarParentFrame = ChannelsBarParentFrame
	self.GuiObjects.ChatChannelParentFrame = ChatChannelParentFrame
	self.GuiObjects.ChatResizerFrame = ChatResizerFrame
	self.GuiObjects.ResizeIcon = ResizeIcon
	self:AnimGuiObjects()
end

function methods:GetChatBar()
	return self.ChatBar
end

function methods:RegisterChatBar(ChatBar)
	self.ChatBar = ChatBar
	self.ChatBar:CreateGuiObjects(self.GuiObjects.ChatBarParentFrame)
end

function methods:RegisterChannelsBar(ChannelsBar)
	self.ChannelsBar = ChannelsBar
	self.ChannelsBar:CreateGuiObjects(self.GuiObjects.ChannelsBarParentFrame)
end

function methods:RegisterMessageLogDisplay(MessageLogDisplay)
	self.MessageLogDisplay = MessageLogDisplay
	self.MessageLogDisplay.GuiObject.Parent = self.GuiObjects.ChatChannelParentFrame
end

function methods:AddChannel(channelName)
	if (self:GetChannel(channelName)) then
		error("Channel '" .. channelName .. "' already exists!")
		return
	end

	local channel = moduleChatChannel.new(channelName, self.MessageLogDisplay)
	self.Channels[channelName:lower()] = channel

	channel:SetActive(false)

	local tab = self.ChannelsBar:AddChannelTab(channelName)
	tab.NameTag.MouseButton1Click:connect(function()
		self:SwitchCurrentChannel(channelName)
	end)

	channel:RegisterChannelTab(tab)

	return channel
end

function methods:GetFirstChannel()
	--// Channels are not indexed numerically, so this function is necessary.
	--// Grabs and returns the first channel it happens to, or nil if none exist.
	for i, v in pairs(self.Channels) do
		return v
	end
	return nil
end

function methods:RemoveChannel(channelName)
	if (not self:GetChannel(channelName)) then
		error("Channel '" .. channelName .. "' does not exist!")
	end

	local indexName = channelName:lower()

	local needsChannelSwitch = false
	if (self.Channels[indexName] == self:GetCurrentChannel()) then
		needsChannelSwitch = true

		self:SwitchCurrentChannel(nil)
	end

	self.Channels[indexName]:Destroy()
	self.Channels[indexName] = nil

	self.ChannelsBar:RemoveChannelTab(channelName)

	if (needsChannelSwitch) then
		local generalChannelExists = (self:GetChannel(ChatSettings.GeneralChannelName) ~= nil)
		local removingGeneralChannel = (indexName == ChatSettings.GeneralChannelName:lower())

		local targetSwitchChannel = nil

		if (generalChannelExists and not removingGeneralChannel) then
			targetSwitchChannel = ChatSettings.GeneralChannelName
		else
			local firstChannel = self:GetFirstChannel()
			targetSwitchChannel = (firstChannel and firstChannel.Name or nil)
		end

		self:SwitchCurrentChannel(targetSwitchChannel)
	end

	if not ChatSettings.ShowChannelsBar then
		if self.ChatBar.TargetChannel == channelName then
			self.ChatBar:SetChannelTarget(ChatSettings.GeneralChannelName)
		end
	end
end

function methods:GetChannel(channelName)
	return channelName and self.Channels[channelName:lower()] or nil
end

function methods:GetTargetMessageChannel()
	if (not ChatSettings.ShowChannelsBar) then
		return self.ChatBar.TargetChannel
	else
		local curChannel = self:GetCurrentChannel()
		return curChannel and curChannel.Name
	end
end

function methods:GetCurrentChannel()
	return self.CurrentChannel
end

function methods:SwitchCurrentChannel(channelName)
	if (not ChatSettings.ShowChannelsBar) then
		local targ = self:GetChannel(channelName)
		if (targ) then
			self.ChatBar:SetChannelTarget(targ.Name)
		end

		channelName = ChatSettings.GeneralChannelName
	end

	local cur = self:GetCurrentChannel()
	local new = self:GetChannel(channelName)
	if new == nil then
		error(string.format("Channel '%s' does not exist.", channelName))
	end

	if (new ~= cur) then
		if (cur) then
			cur:SetActive(false)
			local tab = self.ChannelsBar:GetChannelTab(cur.Name)
			tab:SetActive(false)
		end

		if (new) then
			new:SetActive(true)
			local tab = self.ChannelsBar:GetChannelTab(new.Name)
			tab:SetActive(true)
		end

		self.CurrentChannel = new
	end

end

function methods:UpdateFrameVisibility()
	self.GuiObject.Visible = (self.Visible and self.CoreGuiEnabled)
end

function methods:GetVisible()
	return self.Visible
end

function methods:SetVisible(visible)
	self.Visible = visible
	self:UpdateFrameVisibility()
end

function methods:GetCoreGuiEnabled()
	return self.CoreGuiEnabled
end

function methods:SetCoreGuiEnabled(enabled)
	self.CoreGuiEnabled = enabled
	self:UpdateFrameVisibility()
end

function methods:EnableResizable()
	self.GuiObjects.ChatResizerFrame.Active = true
end

function methods:DisableResizable()
	self.GuiObjects.ChatResizerFrame.Active = false
end

function methods:FadeOutBackground(duration)
	self.ChannelsBar:FadeOutBackground(duration)
	self.MessageLogDisplay:FadeOutBackground(duration)
	self.ChatBar:FadeOutBackground(duration)

	self.AnimParams.Background_TargetTransparency = 1
	self.AnimParams.Background_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
end

function methods:FadeInBackground(duration)
	self.ChannelsBar:FadeInBackground(duration)
	self.MessageLogDisplay:FadeInBackground(duration)
	self.ChatBar:FadeInBackground(duration)

	self.AnimParams.Background_TargetTransparency = 0.6
	self.AnimParams.Background_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
end

function methods:FadeOutText(duration)
	self.MessageLogDisplay:FadeOutText(duration)
	self.ChannelsBar:FadeOutText(duration)
end

function methods:FadeInText(duration)
	self.MessageLogDisplay:FadeInText(duration)
	self.ChannelsBar:FadeInText(duration)
end

function methods:AnimGuiObjects()
	self.GuiObjects.ChatChannelParentFrame.BackgroundTransparency = self.AnimParams.Background_CurrentTransparency
	self.GuiObjects.ChatResizerFrame.BackgroundTransparency = self.AnimParams.Background_CurrentTransparency
	self.GuiObjects.ResizeIcon.ImageTransparency = self.AnimParams.Background_CurrentTransparency
end

function methods:InitializeAnimParams()
	self.AnimParams.Background_TargetTransparency = 0.6
	self.AnimParams.Background_CurrentTransparency = 0.6
	self.AnimParams.Background_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(0)
end

function methods:Update(dtScale)
	self.ChatBar:Update(dtScale)
	self.ChannelsBar:Update(dtScale)
	self.MessageLogDisplay:Update(dtScale)

	self.AnimParams.Background_CurrentTransparency = CurveUtil:Expt(
			self.AnimParams.Background_CurrentTransparency,
			self.AnimParams.Background_TargetTransparency,
			self.AnimParams.Background_NormalizedExptValue,
			dtScale
	)

	self:AnimGuiObjects()
end

--///////////////////////// Constructors
--//////////////////////////////////////

function module.new()
	local obj = setmetatable({}, methods)

	obj.GuiObject = nil
	obj.GuiObjects = {}

	obj.ChatBar = nil
	obj.ChannelsBar = nil
	obj.MessageLogDisplay = nil

	obj.Channels = {}
	obj.CurrentChannel = nil

	obj.Visible = true
	obj.CoreGuiEnabled = true

	obj.AnimParams = {}

	obj:InitializeAnimParams()

	return obj
end

return module
