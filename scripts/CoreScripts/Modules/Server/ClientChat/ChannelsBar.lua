--	// FileName: ChannelsBar.lua
--	// Written by: Xsitsu
--	// Description: Manages creating, destroying, and displaying ChannelTabs.

local module = {}

local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

--////////////////////////////// Include
--//////////////////////////////////////
local Chat = game:GetService("Chat")
local clientChatModules = Chat:WaitForChild("ClientChatModules")
local modulesFolder = script.Parent
local moduleChannelsTab = require(modulesFolder:WaitForChild("ChannelsTab"))
local MessageSender = require(modulesFolder:WaitForChild("MessageSender"))
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))
local CurveUtil = require(modulesFolder:WaitForChild("CurveUtil"))

--////////////////////////////// Methods
--//////////////////////////////////////
local methods = {}
methods.__index = methods

function methods:CreateGuiObjects(targetParent)
	local BaseFrame = Instance.new("Frame")
	BaseFrame.Selectable = false
	BaseFrame.Size = UDim2.new(1, 0, 1, 0)
	BaseFrame.BackgroundTransparency = 1
	BaseFrame.Parent = targetParent

	local ScrollingBase = Instance.new("Frame")
	ScrollingBase.Selectable = false
	ScrollingBase.Name = "ScrollingBase"
	ScrollingBase.BackgroundTransparency = 1
	ScrollingBase.ClipsDescendants = true
	ScrollingBase.Size = UDim2.new(1, 0, 1, 0)
	ScrollingBase.Position = UDim2.new(0, 0, 0, 0)
	ScrollingBase.Parent = BaseFrame

	local ScrollerSizer = Instance.new("Frame")
	ScrollerSizer.Selectable = false
	ScrollerSizer.Name = "ScrollerSizer"
	ScrollerSizer.BackgroundTransparency = 1
	ScrollerSizer.Size = UDim2.new(1, 0, 1, 0)
	ScrollerSizer.Position = UDim2.new(0, 0, 0, 0)
	ScrollerSizer.Parent = ScrollingBase

	local ScrollerFrame = Instance.new("Frame")
	ScrollerFrame.Selectable = false
	ScrollerFrame.Name = "ScrollerFrame"
	ScrollerFrame.BackgroundTransparency = 1
	ScrollerFrame.Size = UDim2.new(1, 0, 1, 0)
	ScrollerFrame.Position = UDim2.new(0, 0, 0, 0)
	ScrollerFrame.Parent = ScrollerSizer

	local LeaveConfirmationFrameBase = Instance.new("Frame")
	LeaveConfirmationFrameBase.Selectable = false
	LeaveConfirmationFrameBase.Size = UDim2.new(1, 0, 1, 0)
	LeaveConfirmationFrameBase.Position = UDim2.new(0, 0, 0, 0)
	LeaveConfirmationFrameBase.ClipsDescendants = true
	LeaveConfirmationFrameBase.BackgroundTransparency = 1
	LeaveConfirmationFrameBase.Parent = BaseFrame

	local LeaveConfirmationFrame = Instance.new("Frame")
	LeaveConfirmationFrame.Selectable = false
	LeaveConfirmationFrame.Name = "LeaveConfirmationFrame"
	LeaveConfirmationFrame.Size = UDim2.new(1, 0, 1, 0)
	LeaveConfirmationFrame.Position = UDim2.new(0, 0, 1, 0)
	LeaveConfirmationFrame.BackgroundTransparency = 0.6
	LeaveConfirmationFrame.BorderSizePixel = 0
	LeaveConfirmationFrame.BackgroundColor3 = Color3.new(0, 0, 0)
	LeaveConfirmationFrame.Parent = LeaveConfirmationFrameBase

	local InputBlocker = Instance.new("TextButton")
	InputBlocker.Selectable = false
	InputBlocker.Size = UDim2.new(1, 0, 1, 0)
	InputBlocker.BackgroundTransparency = 1
	InputBlocker.Text = ""
	InputBlocker.Parent = LeaveConfirmationFrame

	local LeaveConfirmationButtonYes = Instance.new("TextButton")
	LeaveConfirmationButtonYes.Selectable = false
	LeaveConfirmationButtonYes.Size = UDim2.new(0.25, 0, 1, 0)
	LeaveConfirmationButtonYes.BackgroundTransparency = 1
	LeaveConfirmationButtonYes.Font = ChatSettings.DefaultFont
	LeaveConfirmationButtonYes.TextSize = 18
	LeaveConfirmationButtonYes.TextStrokeTransparency = 0.75
	LeaveConfirmationButtonYes.Position = UDim2.new(0, 0, 0, 0)
	LeaveConfirmationButtonYes.TextColor3 = Color3.new(0, 1, 0)
	LeaveConfirmationButtonYes.Text = "Confirm"
	LeaveConfirmationButtonYes.Parent = LeaveConfirmationFrame

	local LeaveConfirmationButtonNo = LeaveConfirmationButtonYes:Clone()
	LeaveConfirmationButtonNo.Parent = LeaveConfirmationFrame
	LeaveConfirmationButtonNo.Position = UDim2.new(0.75, 0, 0, 0)
	LeaveConfirmationButtonNo.TextColor3 = Color3.new(1, 0, 0)
	LeaveConfirmationButtonNo.Text = "Cancel"

	local LeaveConfirmationNotice = Instance.new("TextLabel")
	LeaveConfirmationNotice.Selectable = false
	LeaveConfirmationNotice.Size = UDim2.new(0.5, 0, 1, 0)
	LeaveConfirmationNotice.Position = UDim2.new(0.25, 0, 0, 0)
	LeaveConfirmationNotice.BackgroundTransparency = 1
	LeaveConfirmationNotice.TextColor3 = Color3.new(1, 1, 1)
	LeaveConfirmationNotice.TextStrokeTransparency = 0.75
	LeaveConfirmationNotice.Text = "Leave channel <XX>?"
	LeaveConfirmationNotice.Font = ChatSettings.DefaultFont
	LeaveConfirmationNotice.TextSize = 18
	LeaveConfirmationNotice.Parent = LeaveConfirmationFrame

	local LeaveTarget = Instance.new("StringValue")
	LeaveTarget.Name = "LeaveTarget"
	LeaveTarget.Parent = LeaveConfirmationFrame

	local outPos = LeaveConfirmationFrame.Position
	LeaveConfirmationButtonYes.MouseButton1Click:connect(function()
		MessageSender:SendMessage(string.format("/leave %s", LeaveTarget.Value), nil)
		LeaveConfirmationFrame:TweenPosition(outPos, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
	end)
	LeaveConfirmationButtonNo.MouseButton1Click:connect(function()
		LeaveConfirmationFrame:TweenPosition(outPos, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
	end)



	local scale = 0.7
	local scaleOther = (1 - scale) / 2
	local pageButtonImage = "rbxasset://textures/ui/Chat/TabArrowBackground.png"
	local pageButtonArrowImage = "rbxasset://textures/ui/Chat/TabArrow.png"

	--// ToDo: Remove these lines when the assets are put into trunk.
	--// These grab unchanging versions hosted on the site, and not from the content folder.
	pageButtonImage = "rbxassetid://471630199"
	pageButtonArrowImage = "rbxassetid://471630112"


	local PageLeftButton = Instance.new("ImageButton", BaseFrame)
	PageLeftButton.Selectable = ChatSettings.GamepadNavigationEnabled
	PageLeftButton.Name = "PageLeftButton"
	PageLeftButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
	PageLeftButton.Size = UDim2.new(scale, 0, scale, 0)
	PageLeftButton.BackgroundTransparency = 1
	PageLeftButton.Position = UDim2.new(0, 4, scaleOther, 0)
	PageLeftButton.Visible = false
	PageLeftButton.Image = pageButtonImage
	local ArrowLabel = Instance.new("ImageLabel", PageLeftButton)
	ArrowLabel.Name = "ArrowLabel"
	ArrowLabel.BackgroundTransparency = 1
	ArrowLabel.Size = UDim2.new(0.4, 0, 0.4, 0)
	ArrowLabel.Image = pageButtonArrowImage

	local PageRightButtonPositionalHelper = Instance.new("Frame", BaseFrame)
	PageRightButtonPositionalHelper.Selectable = false
	PageRightButtonPositionalHelper.BackgroundTransparency = 1
	PageRightButtonPositionalHelper.Name = "PositionalHelper"
	PageRightButtonPositionalHelper.Size = PageLeftButton.Size
	PageRightButtonPositionalHelper.SizeConstraint = PageLeftButton.SizeConstraint
	PageRightButtonPositionalHelper.Position = UDim2.new(1, 0, scaleOther, 0)

	local PageRightButton = PageLeftButton:Clone()
	PageRightButton.Parent = PageRightButtonPositionalHelper
	PageRightButton.Name = "PageRightButton"
	PageRightButton.Size = UDim2.new(1, 0, 1, 0)
	PageRightButton.SizeConstraint = Enum.SizeConstraint.RelativeXY
	PageRightButton.Position = UDim2.new(-1, -4, 0, 0)

	local positionOffset = UDim2.new(0.05, 0, 0, 0)

	PageRightButton.ArrowLabel.Position = UDim2.new(0.3, 0, 0.3, 0) + positionOffset
	PageLeftButton.ArrowLabel.Position = UDim2.new(0.3, 0, 0.3, 0) - positionOffset
	PageLeftButton.ArrowLabel.Rotation = 180


	self.GuiObject = BaseFrame

	self.GuiObjects.BaseFrame = BaseFrame
	self.GuiObjects.ScrollerSizer = ScrollerSizer
	self.GuiObjects.ScrollerFrame = ScrollerFrame
	self.GuiObjects.PageLeftButton = PageLeftButton
	self.GuiObjects.PageRightButton = PageRightButton
	self.GuiObjects.LeaveConfirmationFrame = LeaveConfirmationFrame
	self.GuiObjects.LeaveConfirmationNotice = LeaveConfirmationNotice

	self.GuiObjects.PageLeftButtonArrow = PageLeftButton.ArrowLabel
	self.GuiObjects.PageRightButtonArrow = PageRightButton.ArrowLabel
	self:AnimGuiObjects()

	PageLeftButton.MouseButton1Click:connect(function() self:ScrollChannelsFrame(-1) end)
	PageRightButton.MouseButton1Click:connect(function() self:ScrollChannelsFrame(1) end)

	self:ScrollChannelsFrame(0)
end


function methods:UpdateMessagePostedInChannel(channelName)
	local tab = self:GetChannelTab(channelName)
	if (tab) then
		tab:UpdateMessagePostedInChannel()
	else
		warn("ChannelsTab '" .. channelName .. "' does not exist!")
	end
end

function methods:AddChannelTab(channelName)
	if (self:GetChannelTab(channelName)) then
		error("Channel tab '" .. channelName .. "'already exists!")
	end

	local tab = moduleChannelsTab.new(channelName)
	tab.GuiObject.Parent = self.GuiObjects.ScrollerFrame
	self.ChannelTabs[channelName:lower()] = tab

	self.NumTabs = self.NumTabs + 1
	self:OrganizeChannelTabs()

	if (ChatSettings.RightClickToLeaveChannelEnabled) then
		tab.NameTag.MouseButton2Click:connect(function()
			self.LeaveConfirmationNotice.Text = string.format("Leave channel %s?", tab.ChannelName)
			self.LeaveConfirmationFrame.LeaveTarget.Value = tab.ChannelName
			self.LeaveConfirmationFrame:TweenPosition(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.2, true)
		end)
	end

	return tab
end

function methods:RemoveChannelTab(channelName)
	if (not self:GetChannelTab(channelName)) then
		error("Channel tab '" .. channelName .. "'does not exist!")
	end

	local indexName = channelName:lower()
	self.ChannelTabs[indexName]:Destroy()
	self.ChannelTabs[indexName] = nil

	self.NumTabs = self.NumTabs - 1
	self:OrganizeChannelTabs()
end

function methods:GetChannelTab(channelName)
	return self.ChannelTabs[channelName:lower()]
end

function methods:OrganizeChannelTabs()
	local order = {}

	table.insert(order, self:GetChannelTab(ChatSettings.GeneralChannelName))
	table.insert(order, self:GetChannelTab("System"))

	for tabIndexName, tab in pairs(self.ChannelTabs) do
		if (tab.ChannelName ~= ChatSettings.GeneralChannelName and tab.ChannelName ~= "System") then
			table.insert(order, tab)
		end
	end

	for index, tab in pairs(order) do
		tab.GuiObject.Position = UDim2.new(index - 1, 0, 0, 0)
	end

	--// Dynamic tab resizing
	self.GuiObjects.ScrollerSizer.Size = UDim2.new(1 / math.max(1, math.min(ChatSettings.ChannelsBarFullTabSize, self.NumTabs)), 0, 1, 0)

	self:ScrollChannelsFrame(0)
end

function methods:ResizeChannelTabText(textSize)
	for i, tab in pairs(self.ChannelTabs) do
		tab:SetTextSize(textSize)
	end
end

function methods:ScrollChannelsFrame(dir)
	if (self.ScrollChannelsFrameLock) then return end
	self.ScrollChannelsFrameLock = true

	local tabNumber = ChatSettings.ChannelsBarFullTabSize

	local newPageNum = self.CurPageNum + dir
	if (newPageNum < 0) then
		newPageNum = 0
	elseif (newPageNum > 0 and newPageNum + tabNumber > self.NumTabs) then
		newPageNum = self.NumTabs - tabNumber
	end

	self.CurPageNum = newPageNum

	local tweenTime = 0.15
	local endPos = UDim2.new(-self.CurPageNum, 0, 0, 0)

	self.GuiObjects.PageLeftButton.Visible = (self.CurPageNum > 0)
	self.GuiObjects.PageRightButton.Visible = (self.CurPageNum + tabNumber < self.NumTabs)

	if dir == 0 then
		self.ScrollChannelsFrameLock = false
		return
	end

	local function UnlockFunc()
		self.ScrollChannelsFrameLock = false
	end

	self:WaitUntilParentedCorrectly()

	self.GuiObjects.ScrollerFrame:TweenPosition(endPos, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, tweenTime, true, UnlockFunc)
end

function methods:FadeOutBackground(duration)
	for channelName, channelObj in pairs(self.ChannelTabs) do
		channelObj:FadeOutBackground(duration)
	end

	self.AnimParams.Background_TargetTransparency = 1
	self.AnimParams.Background_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
end

function methods:FadeInBackground(duration)
	for channelName, channelObj in pairs(self.ChannelTabs) do
		channelObj:FadeInBackground(duration)
	end

	self.AnimParams.Background_TargetTransparency = 0.6
	self.AnimParams.Background_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
end

function methods:FadeOutText(duration)
	for channelName, channelObj in pairs(self.ChannelTabs) do
		channelObj:FadeOutText(duration)
	end
end

function methods:FadeInText(duration)
	for channelName, channelObj in pairs(self.ChannelTabs) do
		channelObj:FadeInText(duration)
	end
end

function methods:AnimGuiObjects()
	self.GuiObjects.PageLeftButton.ImageTransparency = self.AnimParams.Background_CurrentTransparency
	self.GuiObjects.PageRightButton.ImageTransparency = self.AnimParams.Background_CurrentTransparency
	self.GuiObjects.PageLeftButtonArrow.ImageTransparency = self.AnimParams.Background_CurrentTransparency
	self.GuiObjects.PageRightButtonArrow.ImageTransparency = self.AnimParams.Background_CurrentTransparency
end

function methods:InitializeAnimParams()
	self.AnimParams.Background_TargetTransparency = 0.6
	self.AnimParams.Background_CurrentTransparency = 0.6
	self.AnimParams.Background_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(0)
end

function methods:Update(dtScale)
	for channelName, channelObj in pairs(self.ChannelTabs) do
		channelObj:Update(dtScale)
	end

	self.AnimParams.Background_CurrentTransparency = CurveUtil:Expt(
			self.AnimParams.Background_CurrentTransparency,
			self.AnimParams.Background_TargetTransparency,
			self.AnimParams.Background_NormalizedExptValue,
			dtScale
	)

	self:AnimGuiObjects()
end

--// ToDo: Move to common modules
function methods:WaitUntilParentedCorrectly()
	while (not self.GuiObject:IsDescendantOf(game:GetService("Players").LocalPlayer)) do
		self.GuiObject.AncestryChanged:wait()
	end
end

--///////////////////////// Constructors
--//////////////////////////////////////

function module.new()
	local obj = setmetatable({}, methods)

	obj.GuiObject = nil
	obj.GuiObjects = {}

	obj.ChannelTabs = {}
	obj.NumTabs = 0
	obj.CurPageNum = 0

	obj.ScrollChannelsFrameLock = false

	obj.AnimParams = {}

	obj:InitializeAnimParams()

	ChatSettings.SettingsChanged:connect(function(setting, value)
		if (setting == "ChatChannelsTabTextSize") then
			obj:ResizeChannelTabText(value)
		end
	end)

	return obj
end

return module
