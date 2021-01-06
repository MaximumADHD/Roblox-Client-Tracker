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
	Scroller.Active = true
	Scroller.Parent = BaseFrame

	local Layout = Instance.new("UIListLayout")
	Layout.SortOrder = Enum.SortOrder.LayoutOrder
	Layout.Parent = Scroller

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
		messageObject.UpdateTextFunction(messageData)
		self:PositionMessageLabelInWindow(messageObject, searchIndex)
	end
end

function methods:AddMessage(messageData)
	self:WaitUntilParentedCorrectly()

	local messageObject = MessageLabelCreator:CreateMessageLabel(messageData, self.CurrentChannelName)
	if messageObject == nil then
		return
	end

	table.insert(self.MessageObjectLog, messageObject)
	self:PositionMessageLabelInWindow(messageObject, #self.MessageObjectLog)
end

function methods:AddMessageAtIndex(messageData, index)
	local messageObject = MessageLabelCreator:CreateMessageLabel(messageData, self.CurrentChannelName)
	if messageObject == nil then
		return
	end

	table.insert(self.MessageObjectLog, index, messageObject)

	self:PositionMessageLabelInWindow(messageObject, index)
end

function methods:RemoveLastMessage()
	self:WaitUntilParentedCorrectly()

	local lastMessage = self.MessageObjectLog[1]

	lastMessage:Destroy()
	table.remove(self.MessageObjectLog, 1)
end

function methods:IsScrolledDown()
	local yCanvasSize = self.Scroller.CanvasSize.Y.Offset
	local yContainerSize = self.Scroller.AbsoluteWindowSize.Y
	local yScrolledPosition = self.Scroller.CanvasPosition.Y

	return (yCanvasSize < yContainerSize or
		yCanvasSize - yScrolledPosition <= yContainerSize + 5)
end

function methods:UpdateMessageTextHeight(messageObject)
	local baseFrame = messageObject.BaseFrame
	for i = 1, 10 do
		if messageObject.BaseMessage.TextFits then
			break
		end

		local trySize = self.Scroller.AbsoluteSize.X - i
		baseFrame.Size = UDim2.new(1, 0, 0, messageObject.GetHeightFunction(trySize))
	end
end

function methods:PositionMessageLabelInWindow(messageObject, index)
	self:WaitUntilParentedCorrectly()

	local wasScrolledDown = self:IsScrolledDown()

	local baseFrame = messageObject.BaseFrame

	local layoutOrder = 1
	if self.MessageObjectLog[index - 1] then
		if index == #self.MessageObjectLog then
			layoutOrder = self.MessageObjectLog[index - 1].BaseFrame.LayoutOrder + 1
		else
			layoutOrder = self.MessageObjectLog[index - 1].BaseFrame.LayoutOrder
		end
	end
	baseFrame.LayoutOrder = layoutOrder

	baseFrame.Size = UDim2.new(1, 0, 0, messageObject.GetHeightFunction(self.Scroller.AbsoluteSize.X))
	baseFrame.Parent = self.Scroller

	if messageObject.BaseMessage then
		self:UpdateMessageTextHeight(messageObject)
	end

	if wasScrolledDown then
		self.Scroller.CanvasPosition = Vector2.new(
			0, math.max(0, self.Scroller.CanvasSize.Y.Offset - self.Scroller.AbsoluteSize.Y))
	end
end

function methods:ReorderAllMessages()
	self:WaitUntilParentedCorrectly()

	--// Reordering / reparenting with a size less than 1 causes weird glitches to happen
	-- with scrolling as repositioning happens.
	if self.GuiObject.AbsoluteSize.Y < 1 then return end

	local oldCanvasPositon = self.Scroller.CanvasPosition
	local wasScrolledDown = self:IsScrolledDown()

	for _, messageObject in pairs(self.MessageObjectLog) do
		self:UpdateMessageTextHeight(messageObject)
	end

	if not wasScrolledDown then
		self.Scroller.CanvasPosition = oldCanvasPositon
	else
		self.Scroller.CanvasPosition = Vector2.new(
			0, math.max(0, self.Scroller.CanvasSize.Y.Offset - self.Scroller.AbsoluteSize.Y))
	end
end

function methods:Clear()
	for _, v in pairs(self.MessageObjectLog) do
		v:Destroy()
	end
	self.MessageObjectLog = {}
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

	return obj
end

return module
