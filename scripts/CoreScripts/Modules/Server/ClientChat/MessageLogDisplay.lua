--	// FileName: MessageLogDisplay.lua
--	// Written by: Xsitsu, TheGamer101
--	// Description: ChatChannel window for displaying messages.

local module = {}
module.ScrollBarThickness = 4

--////////////////////////////// Include
--//////////////////////////////////////
local Chat = game:GetService("Chat")
local clientChatModules = Chat:WaitForChild("ClientChatModules")
local modulesFolder = script.Parent
local moduleMessageLabelCreator = require(modulesFolder:WaitForChild("MessageLabelCreator"))
local CurveUtil = require(modulesFolder:WaitForChild("CurveUtil"))

local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))

local FlagFixChatMessageLogPerformance = false do
	local ok, value = pcall(function()
		return settings():IsUserFeatureEnabled("UserFixChatMessageLogPerformance")
	end)
	if ok then
		FlagFixChatMessageLogPerformance = value
	end
end

local MessageLabelCreator = moduleMessageLabelCreator.new()

--////////////////////////////// Methods
--//////////////////////////////////////
local methods = {}
methods.__index = methods

local function CreateGuiObjects()
	local BaseFrame = Instance.new("Frame")
	BaseFrame.Selectable = false
	BaseFrame.Size = UDim2.new(1, 0, 1, 0)
	BaseFrame.BackgroundTransparency = 1

	local Scroller = Instance.new("ScrollingFrame")
	Scroller.Selectable = ChatSettings.GamepadNavigationEnabled
	Scroller.Name = "Scroller"
	Scroller.BackgroundTransparency = 1
	Scroller.BorderSizePixel = 0
	Scroller.Position = UDim2.new(0, 0, 0, 3)
	Scroller.Size = UDim2.new(1, -4, 1, -6)
	Scroller.CanvasSize = UDim2.new(0, 0, 0, 0)
	Scroller.ScrollBarThickness = module.ScrollBarThickness
	Scroller.Active = false
	Scroller.Parent = BaseFrame

	local Layout
	if FlagFixChatMessageLogPerformance then
		Layout = Instance.new("UIListLayout")
		Layout.SortOrder = Enum.SortOrder.LayoutOrder
		Layout.Parent = Scroller
	end

	return BaseFrame, Scroller, Layout
end

function methods:Destroy()
	self.GuiObject:Destroy()
	self.Destroyed = true
end

function methods:SetActive(active)
	self.GuiObject.Visible = active
end

function methods:UpdateMessageFiltered(messageData)
	local messageObject = nil
	local searchIndex = 1
	local searchTable = self.MessageObjectLog

	while (#searchTable >= searchIndex) do
		local obj = searchTable[searchIndex]

		if obj.ID == messageData.ID then
			messageObject = obj
			break
		end

		searchIndex = searchIndex + 1
	end

	if messageObject then
		local isScrolledDown = self:IsScrolledDown()
		messageObject.UpdateTextFunction(messageData)
		if FlagFixChatMessageLogPerformance then
			self:PositionMessageLabelInWindow(messageObject, isScrolledDown)
		else
			self:ReorderAllMessages()
		end
	end
end

function methods:AddMessage(messageData)
	self:WaitUntilParentedCorrectly()

	local messageObject = MessageLabelCreator:CreateMessageLabel(messageData, self.CurrentChannelName)
	if messageObject == nil then
		return
	end

	table.insert(self.MessageObjectLog, messageObject)
	self:PositionMessageLabelInWindow(messageObject)
end

function methods:AddMessageAtIndex(messageData, index)
	local messageObject = MessageLabelCreator:CreateMessageLabel(messageData, self.CurrentChannelName)
	if messageObject == nil then
		return
	end

	table.insert(self.MessageObjectLog, index, messageObject)

	local wasScrolledToBottom = self:IsScrolledDown()
	self:ReorderAllMessages()
	if wasScrolledToBottom then
		self.Scroller.CanvasPosition = Vector2.new(0, math.max(0, self.Scroller.CanvasSize.Y.Offset - self.Scroller.AbsoluteSize.Y))
	end
end

function methods:RemoveLastMessage()
	self:WaitUntilParentedCorrectly()

	local lastMessage = self.MessageObjectLog[1]
	-- remove with FlagFixChatMessageLogPerformance
	local posOffset = UDim2.new(0, 0, 0, lastMessage.BaseFrame.AbsoluteSize.Y)

	lastMessage:Destroy()
	table.remove(self.MessageObjectLog, 1)

	if not FlagFixChatMessageLogPerformance then
		for i, messageObject in pairs(self.MessageObjectLog) do
			messageObject.BaseFrame.Position = messageObject.BaseFrame.Position - posOffset
		end

		self.Scroller.CanvasSize = self.Scroller.CanvasSize - posOffset
	end
end

function methods:IsScrolledDown()
	local yCanvasSize = self.Scroller.CanvasSize.Y.Offset
	local yContainerSize = self.Scroller.AbsoluteWindowSize.Y
	local yScrolledPosition = self.Scroller.CanvasPosition.Y

	if FlagFixChatMessageLogPerformance then
		return
			yCanvasSize < yContainerSize or
			yCanvasSize + yScrolledPosition >= yContainerSize - 5
	else
		return (yCanvasSize < yContainerSize or
			yCanvasSize - yScrolledPosition <= yContainerSize + 5)
	end
end

function methods:PositionMessageLabelInWindow(messageObject, isScrolledDown)
	self:WaitUntilParentedCorrectly()

	local baseFrame = messageObject.BaseFrame

	if FlagFixChatMessageLogPerformance then
		if isScrolledDown == nil then
			isScrolledDown = self:IsScrolledDown()
		end
		baseFrame.LayoutOrder = messageObject.ID
	else
		baseFrame.Parent = self.Scroller
		baseFrame.Position = UDim2.new(0, 0, 0, self.Scroller.CanvasSize.Y.Offset)
	end

	baseFrame.Size = UDim2.new(1, 0, 0, messageObject.GetHeightFunction(self.Scroller.AbsoluteSize.X))
	if FlagFixChatMessageLogPerformance then
		baseFrame.Parent = self.Scroller
	end

	if messageObject.BaseMessage then
		if FlagFixChatMessageLogPerformance then
			for i = 1, 10 do
				if messageObject.BaseMessage.TextFits then
					break
				end

				local trySize = self.Scroller.AbsoluteSize.X - i
				baseFrame.Size = UDim2.new(1, 0, 0, messageObject.GetHeightFunction(trySize))
			end
		else
			local trySize = self.Scroller.AbsoluteSize.X
			local minTrySize = math.min(self.Scroller.AbsoluteSize.X - 10, 0)
			while not messageObject.BaseMessage.TextFits do
				trySize = trySize - 1
				if trySize < minTrySize then
					break
				end
				baseFrame.Size = UDim2.new(1, 0, 0, messageObject.GetHeightFunction(trySize))
			end
		end
	end

	if FlagFixChatMessageLogPerformance then
		if isScrolledDown then
			local scrollValue = self.Scroller.CanvasSize.Y.Offset - self.Scroller.AbsoluteSize.Y
			self.Scroller.CanvasPosition = Vector2.new(0, math.max(0, scrollValue))
		end
	else
		isScrolledDown = self:IsScrolledDown()

		local add = UDim2.new(0, 0, 0, baseFrame.Size.Y.Offset)
		self.Scroller.CanvasSize = self.Scroller.CanvasSize + add

		if isScrolledDown then
			self.Scroller.CanvasPosition = Vector2.new(0, math.max(0, self.Scroller.CanvasSize.Y.Offset - self.Scroller.AbsoluteSize.Y))
		end
	end
end

function methods:ReorderAllMessages()
	self:WaitUntilParentedCorrectly()

	--// Reordering / reparenting with a size less than 1 causes weird glitches to happen with scrolling as repositioning happens.
	if self.GuiObject.AbsoluteSize.Y < 1 then return end

	local oldCanvasPositon = self.Scroller.CanvasPosition
	local wasScrolledDown = self:IsScrolledDown()

	self.Scroller.CanvasSize = UDim2.new(0, 0, 0, 0)
	for i, messageObject in pairs(self.MessageObjectLog) do
		self:PositionMessageLabelInWindow(messageObject)
	end

	if not wasScrolledDown then
		self.Scroller.CanvasPosition = oldCanvasPositon
	end
end

function methods:Clear()
	for i, v in pairs(self.MessageObjectLog) do
		v:Destroy()
	end
	self.MessageObjectLog = {}

	if not FlagFixChatMessageLogPerformance then
		self.Scroller.CanvasSize = UDim2.new(0, 0, 0, 0)
	end
end

function methods:SetCurrentChannelName(name)
	self.CurrentChannelName = name
end

function methods:FadeOutBackground(duration)
	--// Do nothing
end

function methods:FadeInBackground(duration)
	--// Do nothing
end

function methods:FadeOutText(duration)
	for i = 1, #self.MessageObjectLog do
		if self.MessageObjectLog[i].FadeOutFunction then
			self.MessageObjectLog[i].FadeOutFunction(duration, CurveUtil)
		end
	end
end

function methods:FadeInText(duration)
	for i = 1, #self.MessageObjectLog do
		if self.MessageObjectLog[i].FadeInFunction then
			self.MessageObjectLog[i].FadeInFunction(duration, CurveUtil)
		end
	end
end

function methods:Update(dtScale)
	for i = 1, #self.MessageObjectLog do
		if self.MessageObjectLog[i].UpdateAnimFunction then
			self.MessageObjectLog[i].UpdateAnimFunction(dtScale, CurveUtil)
		end
	end
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
	obj.Destroyed = false

	local BaseFrame, Scroller, Layout = CreateGuiObjects()
	obj.GuiObject = BaseFrame
	obj.Scroller = Scroller
	obj.Layout = Layout

	obj.MessageObjectLog = {}

	obj.Name = "MessageLogDisplay"
	obj.GuiObject.Name = "Frame_" .. obj.Name

	obj.CurrentChannelName = ""

	obj.GuiObject:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		spawn(function() obj:ReorderAllMessages() end)
	end)

	if FlagFixChatMessageLogPerformance then
		local wasScrolledDown = true

		obj.Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			local size = obj.Layout.AbsoluteContentSize
			obj.Scroller.CanvasSize = UDim2.new(0, 0, 0, size.Y)
			if wasScrolledDown then
				local windowSize = obj.Scroller.AbsoluteWindowSize
				obj.Scroller.CanvasPosition = Vector2.new(0, size.Y - windowSize.Y)
			end
		end)

		obj.Scroller:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
			wasScrolledDown = obj:IsScrolledDown()
		end)
	end

	return obj
end

return module
