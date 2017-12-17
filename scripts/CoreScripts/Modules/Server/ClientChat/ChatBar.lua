--	// FileName: ChatBar.lua
--	// Written by: Xsitsu
--	// Description: Manages text typing and typing state.

local module = {}

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

while not LocalPlayer do
	Players.PlayerAdded:wait()
	LocalPlayer = Players.LocalPlayer
end

--////////////////////////////// Include
--//////////////////////////////////////
local Chat = game:GetService("Chat")
local clientChatModules = Chat:WaitForChild("ClientChatModules")
local modulesFolder = script.Parent
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))
local CurveUtil = require(modulesFolder:WaitForChild("CurveUtil"))

local MessageSender = require(modulesFolder:WaitForChild("MessageSender"))

local ChatLocalization = nil
pcall(function() ChatLocalization = require(game:GetService("Chat").ClientChatModules.ChatLocalization) end)
if ChatLocalization == nil then ChatLocalization = {} function ChatLocalization:Get(key,default) return default end end

--////////////////////////////// Methods
--//////////////////////////////////////
local methods = {}
methods.__index = methods

function methods:CreateGuiObjects(targetParent)
	self.ChatBarParentFrame = targetParent

	local backgroundImagePixelOffset = 7
	local textBoxPixelOffset = 5

	local BaseFrame = Instance.new("Frame")
	BaseFrame.Selectable = false
	BaseFrame.Size = UDim2.new(1, 0, 1, 0)
	BaseFrame.BackgroundTransparency = 0.6
	BaseFrame.BorderSizePixel = 0
	BaseFrame.BackgroundColor3 = ChatSettings.ChatBarBackGroundColor
	BaseFrame.Parent = targetParent

	local BoxFrame = Instance.new("Frame")
	BoxFrame.Selectable = false
	BoxFrame.Name = "BoxFrame"
	BoxFrame.BackgroundTransparency = 0.6
	BoxFrame.BorderSizePixel = 0
	BoxFrame.BackgroundColor3 = ChatSettings.ChatBarBoxColor
	BoxFrame.Size = UDim2.new(1, -backgroundImagePixelOffset * 2, 1, -backgroundImagePixelOffset * 2)
	BoxFrame.Position = UDim2.new(0, backgroundImagePixelOffset, 0, backgroundImagePixelOffset)
	BoxFrame.Parent = BaseFrame

	local TextBoxHolderFrame = Instance.new("Frame")
	TextBoxHolderFrame.BackgroundTransparency = 1
	TextBoxHolderFrame.Size = UDim2.new(1, -textBoxPixelOffset * 2, 1, -textBoxPixelOffset * 2)
	TextBoxHolderFrame.Position = UDim2.new(0, textBoxPixelOffset, 0, textBoxPixelOffset)
	TextBoxHolderFrame.Parent = BoxFrame

	local TextBox = Instance.new("TextBox")
	TextBox.Selectable = ChatSettings.GamepadNavigationEnabled
	TextBox.Name = "ChatBar"
	TextBox.BackgroundTransparency = 1
	TextBox.Size = UDim2.new(1, 0, 1, 0)
	TextBox.Position = UDim2.new(0, 0, 0, 0)
	TextBox.TextSize = ChatSettings.ChatBarTextSize
	TextBox.Font = ChatSettings.ChatBarFont
	TextBox.TextColor3 = ChatSettings.ChatBarTextColor
	TextBox.TextTransparency = 0.4
	TextBox.TextStrokeTransparency = 1
	TextBox.ClearTextOnFocus = false
	TextBox.TextXAlignment = Enum.TextXAlignment.Left
	TextBox.TextYAlignment = Enum.TextYAlignment.Top
	TextBox.TextWrapped = true
	TextBox.Text = ""
	TextBox.Parent = TextBoxHolderFrame

	local MessageModeTextButton = Instance.new("TextButton")
	MessageModeTextButton.Selectable = false
	MessageModeTextButton.Name = "MessageMode"
	MessageModeTextButton.BackgroundTransparency = 1
	MessageModeTextButton.Position = UDim2.new(0, 0, 0, 0)
	MessageModeTextButton.TextSize = ChatSettings.ChatBarTextSize
	MessageModeTextButton.Font = ChatSettings.ChatBarFont
	MessageModeTextButton.TextXAlignment = Enum.TextXAlignment.Left
	MessageModeTextButton.TextWrapped = true
	MessageModeTextButton.Text = ""
	MessageModeTextButton.Size = UDim2.new(0, 0, 0, 0)
	MessageModeTextButton.TextYAlignment = Enum.TextYAlignment.Center
	MessageModeTextButton.TextColor3 = self:GetDefaultChannelNameColor()
	MessageModeTextButton.Visible = true
	MessageModeTextButton.Parent = TextBoxHolderFrame

	local TextLabel = Instance.new("TextLabel")
	TextLabel.Selectable = false
	TextLabel.TextWrapped = true
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = TextBox.Size
	TextLabel.Position = TextBox.Position
	TextLabel.TextSize = TextBox.TextSize
	TextLabel.Font = TextBox.Font
	TextLabel.TextColor3 = TextBox.TextColor3
	TextLabel.TextTransparency = TextBox.TextTransparency
	TextLabel.TextStrokeTransparency = TextBox.TextStrokeTransparency
	TextLabel.TextXAlignment = TextBox.TextXAlignment
	TextLabel.TextYAlignment = TextBox.TextYAlignment
	TextLabel.Text = "..."
	TextLabel.Parent = TextBoxHolderFrame

	self.GuiObject = BaseFrame
	self.TextBox = TextBox
	self.TextLabel  = TextLabel

	self.GuiObjects.BaseFrame = BaseFrame
	self.GuiObjects.TextBoxFrame = BoxFrame
	self.GuiObjects.TextBox = TextBox
	self.GuiObjects.TextLabel = TextLabel
	self.GuiObjects.MessageModeTextButton = MessageModeTextButton

	self:AnimGuiObjects()
	self:SetUpTextBoxEvents(TextBox, TextLabel, MessageModeTextButton)
	if self.UserHasChatOff then
		self:DoLockChatBar()
	end
	self.eGuiObjectsChanged:Fire()
end

-- Used to lock the chat bar when the user has chat turned off.
function methods:DoLockChatBar()
	if self.TextLabel then
		if LocalPlayer.UserId > 0 then
			self.TextLabel.Text = ChatLocalization:Get(
				"GameChat_ChatMessageValidator_SettingsError",
				"To chat in game, turn on chat in your Privacy Settings."
			)
		else
			self.TextLabel.Text = ChatLocalization:Get(
				"GameChat_SwallowGuestChat_Message",
				"Sign up to chat in game."
			)
		end
		self:CalculateSize()
	end
	if self.TextBox then
		self.TextBox.Active = false
		self.TextBox.Focused:connect(function()
			self.TextBox:ReleaseFocus()
		end)
	end
end

function methods:SetUpTextBoxEvents(TextBox, TextLabel, MessageModeTextButton)
	-- Clean up events from a previous setup.
	for name, conn in pairs(self.TextBoxConnections) do
		conn:disconnect()
		self.TextBoxConnections[name] = nil
	end

	--// Code for getting back into general channel from other target channel when pressing backspace.
	self.TextBoxConnections.UserInputBegan = UserInputService.InputBegan:connect(function(inputObj, gpe)
		if (inputObj.KeyCode == Enum.KeyCode.Backspace) then
			if (self:IsFocused() and TextBox.Text == "") then
				self:SetChannelTarget(ChatSettings.GeneralChannelName)
			end
		end
	end)

	self.TextBoxConnections.TextBoxChanged = TextBox.Changed:connect(function(prop)
		if prop == "AbsoluteSize" then
			self:CalculateSize()
			return
		end

		if prop ~= "Text" then
			return
		end

		self:CalculateSize()

		if (string.len(TextBox.Text) > ChatSettings.MaximumMessageLength) then
			TextBox.Text = string.sub(TextBox.Text, 1, ChatSettings.MaximumMessageLength)
			return
		end

		if not self.InCustomState then
			local customState = self.CommandProcessor:ProcessInProgressChatMessage(TextBox.Text, self.ChatWindow, self)
			if customState then
				self.InCustomState = true
				self.CustomState = customState
			end
		else
			self.CustomState:TextUpdated()
		end
	end)

	local function UpdateOnFocusStatusChanged(isFocused)
		if isFocused or TextBox.Text ~= "" then
			TextLabel.Visible = false
		else
			TextLabel.Visible = true
		end
	end

	self.TextBoxConnections.MessageModeClick = MessageModeTextButton.MouseButton1Click:connect(function()
		if MessageModeTextButton.Text ~= "" then
			self:SetChannelTarget(ChatSettings.GeneralChannelName)
		end
	end)

	self.TextBoxConnections.TextBoxFocused = TextBox.Focused:connect(function()
		if not self.UserHasChatOff then
			self:CalculateSize()
			UpdateOnFocusStatusChanged(true)
		end
	end)

	self.TextBoxConnections.TextBoxFocusLost = TextBox.FocusLost:connect(function(enterPressed, inputObject)
		self:CalculateSize()
		if (inputObject and inputObject.KeyCode == Enum.KeyCode.Escape) then
			TextBox.Text = ""
		end
		UpdateOnFocusStatusChanged(false)
	end)
end

function methods:GetTextBox()
	return self.TextBox
end

function methods:GetMessageModeTextButton()
	return self.GuiObjects.MessageModeTextButton
end

-- Deprecated in favour of GetMessageModeTextButton
-- Retained for compatibility reasons.
function methods:GetMessageModeTextLabel()
	return self:GetMessageModeTextButton()
end

function methods:IsFocused()
	if self.UserHasChatOff then
		return false
	end

	return self:GetTextBox():IsFocused()
end

function methods:GetVisible()
	return self.GuiObject.Visible
end

function methods:CaptureFocus()
	if not self.UserHasChatOff then
		self:GetTextBox():CaptureFocus()
	end
end

function methods:ReleaseFocus(didRelease)
	self:GetTextBox():ReleaseFocus(didRelease)
end

function methods:ResetText()
	self:GetTextBox().Text = ""
end

function methods:SetText(text)
	self:GetTextBox().Text = text
end

function methods:GetEnabled()
	return self.GuiObject.Visible
end

function methods:SetEnabled(enabled)
	if self.UserHasChatOff then
		-- The chat bar can not be removed if a user has chat turned off so that
		-- the chat bar can display a message explaining that chat is turned off.
		self.GuiObject.Visible = true
	else
		self.GuiObject.Visible = enabled
	end
end

function methods:SetTextLabelText(text)
	if not self.UserHasChatOff then
		self.TextLabel.Text = text
	end
end

function methods:SetTextBoxText(text)
	self.TextBox.Text = text
end

function methods:GetTextBoxText()
	return self.TextBox.Text
end

function methods:ResetSize()
	self.TargetYSize = 0
	self:TweenToTargetYSize()
end

function methods:CalculateSize()
	if self.CalculatingSizeLock then
		return
	end
	self.CalculatingSizeLock = true

	local lastPos = self.GuiObject.Size
	self.GuiObject.Size = UDim2.new(1, 0, 0, 1000)

	local textSize = nil
	local bounds = nil

	if self:IsFocused() or self.TextBox.Text ~= "" then
		textSize = self.TextBox.textSize
		bounds = self.TextBox.TextBounds.Y
	else
		textSize = self.TextLabel.textSize
		bounds = self.TextLabel.TextBounds.Y
	end

	self.GuiObject.Size = lastPos

	local newTargetYSize = bounds - textSize
	if (self.TargetYSize ~= newTargetYSize) then
		self.TargetYSize = newTargetYSize
		self:TweenToTargetYSize()
	end

	self.CalculatingSizeLock = false
end

function methods:TweenToTargetYSize()
	local endSize = UDim2.new(1, 0, 1, self.TargetYSize)
	local curSize = self.GuiObject.Size

	local curAbsoluteSizeY = self.GuiObject.AbsoluteSize.Y
	self.GuiObject.Size = endSize
	local endAbsoluteSizeY = self.GuiObject.AbsoluteSize.Y
	self.GuiObject.Size = curSize

	local pixelDistance = math.abs(endAbsoluteSizeY - curAbsoluteSizeY)
	local tweeningTime = math.min(1, (pixelDistance * (1 / self.TweenPixelsPerSecond))) -- pixelDistance * (seconds per pixels)

	local success = pcall(function() self.GuiObject:TweenSize(endSize, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, tweeningTime, true) end)
	if (not success) then
		self.GuiObject.Size = endSize
	end
end

function methods:SetTextSize(textSize)
	if not self:IsInCustomState() then
		if self.TextBox then
			self.TextBox.TextSize = textSize
		end
		if self.TextLabel then
			self.TextLabel.TextSize = textSize
		end
	end
end

function methods:GetDefaultChannelNameColor()
	if ChatSettings.DefaultChannelNameColor then
		return ChatSettings.DefaultChannelNameColor
	end
	return Color3.fromRGB(35, 76, 142)
end

function methods:SetChannelTarget(targetChannel)
	local messageModeTextButton = self.GuiObjects.MessageModeTextButton
	local textBox = self.TextBox
	local textLabel = self.TextLabel

	self.TargetChannel = targetChannel

	if not self:IsInCustomState() then
		if targetChannel ~= ChatSettings.GeneralChannelName then
			messageModeTextButton.Size = UDim2.new(0, 1000, 1, 0)
			messageModeTextButton.Text = string.format("[%s] ", targetChannel)

			local channelNameColor = self:GetChannelNameColor(targetChannel)
			if channelNameColor then
				messageModeTextButton.TextColor3 = channelNameColor
			else
				messageModeTextButton.TextColor3 = self:GetDefaultChannelNameColor()
			end

			local xSize = messageModeTextButton.TextBounds.X
			messageModeTextButton.Size = UDim2.new(0, xSize, 1, 0)
			textBox.Size = UDim2.new(1, -xSize, 1, 0)
			textBox.Position = UDim2.new(0, xSize, 0, 0)
			textLabel.Size = UDim2.new(1, -xSize, 1, 0)
			textLabel.Position = UDim2.new(0, xSize, 0, 0)
		else
			messageModeTextButton.Text = ""
			messageModeTextButton.Size = UDim2.new(0, 0, 0, 0)
			textBox.Size = UDim2.new(1, 0, 1, 0)
			textBox.Position = UDim2.new(0, 0, 0, 0)
			textLabel.Size = UDim2.new(1, 0, 1, 0)
			textLabel.Position = UDim2.new(0, 0, 0, 0)
		end
	end
end

function methods:IsInCustomState()
	return self.InCustomState
end

function methods:ResetCustomState()
	if self.InCustomState then
		self.CustomState:Destroy()
		self.CustomState = nil
		self.InCustomState = false

		self.ChatBarParentFrame:ClearAllChildren()
		self:CreateGuiObjects(self.ChatBarParentFrame)
		self:SetTextLabelText(
			ChatLocalization:Get(
				"GameChat_ChatMain_ChatBarText",
				'To chat click here or press "/" key'
			)
		)
	end
end

function methods:GetCustomMessage()
	if self.InCustomState then
		return self.CustomState:GetMessage()
	end
	return nil
end

function methods:CustomStateProcessCompletedMessage(message)
	if self.InCustomState then
		return self.CustomState:ProcessCompletedMessage()
	end
	return false
end

function methods:FadeOutBackground(duration)
	self.AnimParams.Background_TargetTransparency = 1
	self.AnimParams.Background_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
	self:FadeOutText(duration)
end

function methods:FadeInBackground(duration)
	self.AnimParams.Background_TargetTransparency = 0.6
	self.AnimParams.Background_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
	self:FadeInText(duration)
end

function methods:FadeOutText(duration)
	self.AnimParams.Text_TargetTransparency = 1
	self.AnimParams.Text_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
end

function methods:FadeInText(duration)
	self.AnimParams.Text_TargetTransparency = 0.4
	self.AnimParams.Text_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
end

function methods:AnimGuiObjects()
	self.GuiObject.BackgroundTransparency = self.AnimParams.Background_CurrentTransparency
	self.GuiObjects.TextBoxFrame.BackgroundTransparency = self.AnimParams.Background_CurrentTransparency

	self.GuiObjects.TextLabel.TextTransparency = self.AnimParams.Text_CurrentTransparency
	self.GuiObjects.TextBox.TextTransparency = self.AnimParams.Text_CurrentTransparency
	self.GuiObjects.MessageModeTextButton.TextTransparency = self.AnimParams.Text_CurrentTransparency
end

function methods:InitializeAnimParams()
	self.AnimParams.Text_TargetTransparency = 0.4
	self.AnimParams.Text_CurrentTransparency = 0.4
	self.AnimParams.Text_NormalizedExptValue = 1

	self.AnimParams.Background_TargetTransparency = 0.6
	self.AnimParams.Background_CurrentTransparency = 0.6
	self.AnimParams.Background_NormalizedExptValue = 1
end

function methods:Update(dtScale)
	self.AnimParams.Text_CurrentTransparency = CurveUtil:Expt(
			self.AnimParams.Text_CurrentTransparency,
			self.AnimParams.Text_TargetTransparency,
			self.AnimParams.Text_NormalizedExptValue,
			dtScale
	)
	self.AnimParams.Background_CurrentTransparency = CurveUtil:Expt(
			self.AnimParams.Background_CurrentTransparency,
			self.AnimParams.Background_TargetTransparency,
			self.AnimParams.Background_NormalizedExptValue,
			dtScale
	)

	self:AnimGuiObjects()
end

function methods:SetChannelNameColor(channelName, channelNameColor)
	self.ChannelNameColors[channelName] = channelNameColor
	if self.GuiObjects.MessageModeTextButton.Text == channelName then
		self.GuiObjects.MessageModeTextButton.TextColor3 = channelNameColor
	end
end

function methods:GetChannelNameColor(channelName)
	return self.ChannelNameColors[channelName]
end

--///////////////////////// Constructors
--//////////////////////////////////////

function module.new(CommandProcessor, ChatWindow)
	local obj = setmetatable({}, methods)

	obj.GuiObject = nil
	obj.ChatBarParentFrame = nil
	obj.TextBox = nil
	obj.TextLabel = nil
	obj.GuiObjects = {}
	obj.eGuiObjectsChanged = Instance.new("BindableEvent")
	obj.GuiObjectsChanged = obj.eGuiObjectsChanged.Event
	obj.TextBoxConnections = {}

	obj.InCustomState = false
	obj.CustomState = nil

	obj.TargetChannel = nil
	obj.CommandProcessor = CommandProcessor
	obj.ChatWindow = ChatWindow

	obj.TweenPixelsPerSecond = 500
	obj.TargetYSize = 0

	obj.AnimParams = {}
	obj.CalculatingSizeLock = false

	obj.ChannelNameColors = {}

	obj.UserHasChatOff = false

	obj:InitializeAnimParams()

	ChatSettings.SettingsChanged:connect(function(setting, value)
		if (setting == "ChatBarTextSize") then
			obj:SetTextSize(value)
		end
	end)

	coroutine.wrap(function()
		local success, canLocalUserChat = pcall(function()
			return Chat:CanUserChatAsync(LocalPlayer.UserId)
		end)
		local canChat = success and (RunService:IsStudio() or canLocalUserChat)
		if canChat == false then
			obj.UserHasChatOff = true
			obj:DoLockChatBar()
		end
	end)()


	return obj
end

return module
