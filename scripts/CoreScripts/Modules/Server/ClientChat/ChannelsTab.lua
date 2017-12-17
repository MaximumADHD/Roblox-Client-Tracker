--	// FileName: ChannelsTab.lua
--	// Written by: Xsitsu
--	// Description: Channel tab button for selecting current channel and also displaying if currently selected.

local module = {}
--////////////////////////////// Include
--//////////////////////////////////////
local Chat = game:GetService("Chat")
local clientChatModules = Chat:WaitForChild("ClientChatModules")
local modulesFolder = script.Parent
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))
local CurveUtil = require(modulesFolder:WaitForChild("CurveUtil"))

--////////////////////////////// Methods
--//////////////////////////////////////
local methods = {}
methods.__index = methods

local function CreateGuiObjects()
	local BaseFrame = Instance.new("Frame")
	BaseFrame.Selectable = false
	BaseFrame.Size = UDim2.new(1, 0, 1, 0)
	BaseFrame.BackgroundTransparency = 1

	local gapOffsetX = 1
	local gapOffsetY = 1

	local BackgroundFrame = Instance.new("Frame")
	BackgroundFrame.Selectable = false
	BackgroundFrame.Name = "BackgroundFrame"
	BackgroundFrame.Size = UDim2.new(1, -gapOffsetX * 2, 1, -gapOffsetY * 2)
	BackgroundFrame.Position = UDim2.new(0, gapOffsetX, 0, gapOffsetY)
	BackgroundFrame.BackgroundTransparency = 1
	BackgroundFrame.Parent = BaseFrame

	local UnselectedFrame = Instance.new("Frame")
	UnselectedFrame.Selectable = false
	UnselectedFrame.Name = "UnselectedFrame"
	UnselectedFrame.Size = UDim2.new(1, 0, 1, 0)
	UnselectedFrame.Position = UDim2.new(0, 0, 0, 0)
	UnselectedFrame.BorderSizePixel = 0
	UnselectedFrame.BackgroundColor3 = ChatSettings.ChannelsTabUnselectedColor
	UnselectedFrame.BackgroundTransparency = 0.6
	UnselectedFrame.Parent = BackgroundFrame

	local SelectedFrame = Instance.new("Frame")
	SelectedFrame.Selectable = false
	SelectedFrame.Name = "SelectedFrame"
	SelectedFrame.Size = UDim2.new(1, 0, 1, 0)
	SelectedFrame.Position = UDim2.new(0, 0, 0, 0)
	SelectedFrame.BorderSizePixel = 0
	SelectedFrame.BackgroundColor3 = ChatSettings.ChannelsTabSelectedColor
	SelectedFrame.BackgroundTransparency = 1
	SelectedFrame.Parent = BackgroundFrame

	local SelectedFrameBackgroundImage = Instance.new("ImageLabel")
	SelectedFrameBackgroundImage.Selectable = false
	SelectedFrameBackgroundImage.Name = "BackgroundImage"
	SelectedFrameBackgroundImage.BackgroundTransparency = 1
	SelectedFrameBackgroundImage.BorderSizePixel = 0
	SelectedFrameBackgroundImage.Size = UDim2.new(1, 0, 1, 0)
	SelectedFrameBackgroundImage.Position = UDim2.new(0, 0, 0, 0)
	SelectedFrameBackgroundImage.ScaleType = Enum.ScaleType.Slice
	SelectedFrameBackgroundImage.Parent = SelectedFrame

	SelectedFrameBackgroundImage.BackgroundTransparency = 0.6 - 1
	local rate = 1.2 * 1
	SelectedFrameBackgroundImage.BackgroundColor3 = Color3.fromRGB(78 * rate, 84 * rate, 96 * rate)

	local borderXOffset = 2
	local blueBarYSize = 4
	local BlueBarLeft = Instance.new("ImageLabel")
	BlueBarLeft.Selectable = false
	BlueBarLeft.Size = UDim2.new(0.5, -borderXOffset, 0, blueBarYSize)
	BlueBarLeft.BackgroundTransparency = 1
	BlueBarLeft.ScaleType = Enum.ScaleType.Slice
	BlueBarLeft.SliceCenter = Rect.new(3,3,32,21)
	BlueBarLeft.Parent = SelectedFrame

	local BlueBarRight = BlueBarLeft:Clone()
	BlueBarRight.Parent = SelectedFrame

	BlueBarLeft.Position = UDim2.new(0, borderXOffset, 1, -blueBarYSize)
	BlueBarRight.Position = UDim2.new(0.5, 0, 1, -blueBarYSize)
	BlueBarLeft.Image = "rbxasset://textures/ui/Settings/Slider/SelectedBarLeft.png"
	BlueBarRight.Image = "rbxasset://textures/ui/Settings/Slider/SelectedBarRight.png"

	BlueBarLeft.Name = "BlueBarLeft"
	BlueBarRight.Name = "BlueBarRight"

	local NameTag = Instance.new("TextButton")
	NameTag.Selectable = ChatSettings.GamepadNavigationEnabled
	NameTag.Size = UDim2.new(1, 0, 1, 0)
	NameTag.Position = UDim2.new(0, 0, 0, 0)
	NameTag.BackgroundTransparency = 1
	NameTag.Font = ChatSettings.DefaultFont
	NameTag.TextSize = ChatSettings.ChatChannelsTabTextSize
	NameTag.TextColor3 = Color3.new(1, 1, 1)
	NameTag.TextStrokeTransparency = 0.75
	NameTag.Parent = BackgroundFrame

	local NameTagNonSelect = NameTag:Clone()
	local NameTagSelect = NameTag:Clone()
	NameTagNonSelect.Parent = UnselectedFrame
	NameTagSelect.Parent = SelectedFrame
	NameTagNonSelect.Font = Enum.Font.SourceSans
	NameTagNonSelect.Active = false
	NameTagSelect.Active = false

	local NewMessageIconFrame = Instance.new("Frame")
	NewMessageIconFrame.Selectable = false
	NewMessageIconFrame.Size = UDim2.new(0, 18, 0, 18)
	NewMessageIconFrame.Position = UDim2.new(0.8, -9, 0.5, -9)
	NewMessageIconFrame.BackgroundTransparency = 1
	NewMessageIconFrame.Parent = BackgroundFrame

	local NewMessageIcon = Instance.new("ImageLabel")
	NewMessageIcon.Selectable = false
	NewMessageIcon.Size = UDim2.new(1, 0, 1, 0)
	NewMessageIcon.BackgroundTransparency = 1
	NewMessageIcon.Image = "rbxasset://textures/ui/Chat/MessageCounter.png"
	NewMessageIcon.Visible = false
	NewMessageIcon.Parent = NewMessageIconFrame

	local NewMessageIconText = Instance.new("TextLabel")
	NewMessageIconText.Selectable = false
	NewMessageIconText.BackgroundTransparency = 1
	NewMessageIconText.Size = UDim2.new(0, 13, 0, 9)
	NewMessageIconText.Position = UDim2.new(0.5, -7, 0.5, -7)
	NewMessageIconText.Font = ChatSettings.DefaultFont
	NewMessageIconText.TextSize = 14
	NewMessageIconText.TextColor3 = Color3.new(1, 1, 1)
	NewMessageIconText.Text = ""
	NewMessageIconText.Parent = NewMessageIcon

	return BaseFrame, NameTag, NameTagNonSelect, NameTagSelect, NewMessageIcon, UnselectedFrame, SelectedFrame
end

function methods:Destroy()
	self.GuiObject:Destroy()
end

function methods:UpdateMessagePostedInChannel(ignoreActive)
	if (self.Active and (ignoreActive ~= true)) then return end

	local count = self.UnreadMessageCount + 1
	self.UnreadMessageCount = count

	local label = self.NewMessageIcon
	label.Visible = true
	label.TextLabel.Text = (count < 100) and tostring(count) or "!"

	local tweenTime = 0.15
	local tweenPosOffset = UDim2.new(0, 0, -0.1, 0)

	local curPos = label.Position
	local outPos = curPos + tweenPosOffset
	local easingDirection = Enum.EasingDirection.Out
	local easingStyle = Enum.EasingStyle.Quad

	label.Position = UDim2.new(0, 0, -0.15, 0)
	label:TweenPosition(UDim2.new(0, 0, 0, 0), easingDirection, easingStyle, tweenTime, true)

end

function methods:SetActive(active)
	self.Active = active
	self.UnselectedFrame.Visible = not active
	self.SelectedFrame.Visible = active

	if (active) then
		self.UnreadMessageCount = 0
		self.NewMessageIcon.Visible = false

		self.NameTag.Font = Enum.Font.SourceSansBold
	else
		self.NameTag.Font = Enum.Font.SourceSans

	end
end

function methods:SetTextSize(textSize)
	self.NameTag.TextSize = textSize
end

function methods:FadeOutBackground(duration)
	self.AnimParams.Background_TargetTransparency = 1
	self.AnimParams.Background_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
end

function methods:FadeInBackground(duration)
	self.AnimParams.Background_TargetTransparency = 0.6
	self.AnimParams.Background_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
end

function methods:FadeOutText(duration)
	self.AnimParams.Text_TargetTransparency = 1
	self.AnimParams.Text_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
	self.AnimParams.TextStroke_TargetTransparency = 1
	self.AnimParams.TextStroke_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
end

function methods:FadeInText(duration)
	self.AnimParams.Text_TargetTransparency = 0
	self.AnimParams.Text_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
	self.AnimParams.TextStroke_TargetTransparency = 0.75
	self.AnimParams.TextStroke_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
end

function methods:AnimGuiObjects()
	self.UnselectedFrame.BackgroundTransparency = self.AnimParams.Background_CurrentTransparency
	self.SelectedFrame.BackgroundImage.BackgroundTransparency = self.AnimParams.Background_CurrentTransparency
	self.SelectedFrame.BlueBarLeft.ImageTransparency = self.AnimParams.Background_CurrentTransparency
	self.SelectedFrame.BlueBarRight.ImageTransparency = self.AnimParams.Background_CurrentTransparency
	self.NameTagNonSelect.TextTransparency = self.AnimParams.Background_CurrentTransparency
	self.NameTagNonSelect.TextStrokeTransparency = self.AnimParams.Background_CurrentTransparency

	self.NameTag.TextTransparency = self.AnimParams.Text_CurrentTransparency
	self.NewMessageIcon.ImageTransparency = self.AnimParams.Text_CurrentTransparency
	self.WhiteTextNewMessageNotification.TextTransparency = self.AnimParams.Text_CurrentTransparency
	self.NameTagSelect.TextTransparency = self.AnimParams.Text_CurrentTransparency

	self.NameTag.TextStrokeTransparency = self.AnimParams.TextStroke_CurrentTransparency
	self.WhiteTextNewMessageNotification.TextStrokeTransparency = self.AnimParams.TextStroke_CurrentTransparency
	self.NameTagSelect.TextStrokeTransparency = self.AnimParams.TextStroke_CurrentTransparency
end

function methods:InitializeAnimParams()
	self.AnimParams.Text_TargetTransparency = 0
	self.AnimParams.Text_CurrentTransparency = 0
	self.AnimParams.Text_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(0)

	self.AnimParams.TextStroke_TargetTransparency = 0.75
	self.AnimParams.TextStroke_CurrentTransparency = 0.75
	self.AnimParams.TextStroke_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(0)

	self.AnimParams.Background_TargetTransparency = 0.6
	self.AnimParams.Background_CurrentTransparency = 0.6
	self.AnimParams.Background_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(0)
end

function methods:Update(dtScale)
	self.AnimParams.Background_CurrentTransparency = CurveUtil:Expt(
			self.AnimParams.Background_CurrentTransparency,
			self.AnimParams.Background_TargetTransparency,
			self.AnimParams.Background_NormalizedExptValue,
			dtScale
	)
	self.AnimParams.Text_CurrentTransparency = CurveUtil:Expt(
			self.AnimParams.Text_CurrentTransparency,
			self.AnimParams.Text_TargetTransparency,
			self.AnimParams.Text_NormalizedExptValue,
			dtScale
	)
	self.AnimParams.TextStroke_CurrentTransparency = CurveUtil:Expt(
			self.AnimParams.TextStroke_CurrentTransparency,
			self.AnimParams.TextStroke_TargetTransparency,
			self.AnimParams.TextStroke_NormalizedExptValue,
			dtScale
	)

	self:AnimGuiObjects()
end

--///////////////////////// Constructors
--//////////////////////////////////////

function module.new(channelName)
	local obj = setmetatable({}, methods)

	local BaseFrame, NameTag, NameTagNonSelect, NameTagSelect, NewMessageIcon, UnselectedFrame, SelectedFrame = CreateGuiObjects()
	obj.GuiObject = BaseFrame
	obj.NameTag = NameTag
	obj.NameTagNonSelect = NameTagNonSelect
	obj.NameTagSelect = NameTagSelect
	obj.NewMessageIcon = NewMessageIcon
	obj.UnselectedFrame = UnselectedFrame
	obj.SelectedFrame = SelectedFrame

	obj.BlueBarLeft = SelectedFrame.BlueBarLeft
	obj.BlueBarRight = SelectedFrame.BlueBarRight
	obj.BackgroundImage = SelectedFrame.BackgroundImage
	obj.WhiteTextNewMessageNotification = obj.NewMessageIcon.TextLabel

	obj.ChannelName = channelName
	obj.UnreadMessageCount = 0
	obj.Active = false

	obj.GuiObject.Name = "Frame_" .. obj.ChannelName

	if (string.len(channelName) > ChatSettings.MaxChannelNameLength) then
		channelName = string.sub(channelName, 1, ChatSettings.MaxChannelNameLength - 3) .. "..."
	end

	--obj.NameTag.Text = channelName

	obj.NameTag.Text = ""
	obj.NameTagNonSelect.Text = channelName
	obj.NameTagSelect.Text = channelName

	obj.AnimParams = {}

	obj:InitializeAnimParams()
	obj:AnimGuiObjects()
	obj:SetActive(false)

	return obj
end

return module
