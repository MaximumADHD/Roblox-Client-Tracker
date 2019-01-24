local FastFlags = require(script.Parent.Parent.FastFlags)

-- singleton
local SelectionList = {}
SelectionList.__index = SelectionList

SelectionList.TargetWidget = nil

local function positionMenu(self)
	local potentialXOffset = self.Paths.InputMouse:getX()-self.TargetWidget.Parent.AbsolutePosition.X
	local potentialYOffset = self.Paths.InputMouse:getY()-self.TargetWidget.Parent.AbsolutePosition.Y

	-- checking horizontal		
	local rightSideEdge = self.TargetWidget.Parent.AbsolutePosition.X+self.TargetWidget.Parent.AbsoluteSize.X	
	local willMenuGetCutOffToTheRight = potentialXOffset+self.TargetWidget.AbsoluteSize.X > rightSideEdge
	if willMenuGetCutOffToTheRight then
		potentialXOffset = rightSideEdge-self.TargetWidget.AbsoluteSize.X --move menu to the left
	end
	
	-- checking vertical
	if FastFlags:useQWidgetsForPopupsOn() then
		local bottomSideEdge = self.TargetWidget.Parent.AbsolutePosition.Y + self.TargetWidget.Parent.AbsoluteSize.Y
		local willMenuGetCutOffToTheBottom = potentialYOffset+self.TargetWidget.AbsoluteSize.Y > bottomSideEdge
		if willMenuGetCutOffToTheBottom then
			potentialYOffset = potentialYOffset-self.TargetWidget.AbsoluteSize.Y --move menu above cursor
		end

		if self.TargetWidget.AbsoluteSize.Y > self.TargetWidget.Parent.AbsoluteSize.Y then
			potentialYOffset = self.TargetWidget.Parent.AbsolutePosition.Y
		end
		self.TargetWidget.Position = UDim2.new(0, potentialXOffset, 0, math.max(self.TargetWidget.Parent.AbsolutePosition.Y, potentialYOffset))
	else
		local bottomSideEdge = self.Paths.GUIScrollingJointTimeline.AbsolutePosition.Y + self.Paths.GUIScrollingJointTimeline.AbsoluteSize.Y
		local willMenuGetCutOffToTheBottom = potentialYOffset+self.TargetWidget.AbsoluteSize.Y > bottomSideEdge
		if willMenuGetCutOffToTheBottom then
			potentialYOffset = potentialYOffset-self.TargetWidget.AbsoluteSize.Y --move menu above cursor
		end

		if self.TargetWidget.AbsoluteSize.Y > self.Paths.GUIScrollingJointTimeline.AbsoluteSize.Y then
			potentialYOffset = self.Paths.GUIScrollingJointTimeline.AbsolutePosition.Y
		end
		self.TargetWidget.Position = UDim2.new(0, potentialXOffset, 0, math.max(self.Paths.GUIScrollingJointTimeline.AbsolutePosition.Y, potentialYOffset))
	end
end

local function scaleMenuForScrolling(self)
	if FastFlags:useQWidgetsForPopupsOn() then
		if self.TargetWidget.AbsoluteSize.Y > self.TargetWidget.Parent.AbsoluteSize.Y then
			self.TargetWidget.Size = UDim2.new(0, self.fullSize.X.Offset, 0, self.TargetWidget.Parent.AbsoluteSize.Y)
			self.TargetWidget.ScrollingFrame.ScrollingEnabled = true
		else
			self.TargetWidget.ScrollingFrame.ScrollingEnabled = false
		end
	else
		if self.TargetWidget.AbsoluteSize.Y > self.Paths.GUIScrollingJointTimeline.AbsoluteSize.Y then
			self.TargetWidget.Size = UDim2.new(0, self.fullSize.X.Offset, 0, self.Paths.GUIScrollingJointTimeline.AbsoluteSize.Y)
			self.TargetWidget.ScrollingFrame.ScrollingEnabled = true
		else
			self.TargetWidget.ScrollingFrame.ScrollingEnabled = false
		end
	end
end

function SelectionList:new(Paths, items, selectFunc, newFunc, parent)
	local self = setmetatable({}, SelectionList)
	self.Paths = Paths
	self.TargetWidget = self.Paths.GUIClonableSelectionList:clone()
	if FastFlags:useQWidgetsForPopupsOn() then
		self.TargetWidget.Parent = parent
	else
		self.TargetWidget.Parent = self.Paths.GUIPopUps
	end
	self.Paths.UtilityScriptTheme:setColorsToTheme(self.TargetWidget)
	-- set parent

	self.Connections = self.Paths.UtilityScriptConnections:new(Paths)
	self.Connections:add(self.TargetWidget.ScrollingFrame.AddButton.MouseButton1Click:connect(function() newFunc() end))
	self.Connections:add(self.TargetWidget.ClickEater.MouseButton1Click:connect(function() self:terminate() end))

	if FastFlags:useQWidgetsForPopupsOn() then
		self.ScrollingList = Paths.WidgetExpandableScrollingList:new(Paths, self.TargetWidget.ScrollingFrame, self.TargetWidget, parent)
	else
		self.ScrollingList = Paths.WidgetExpandableScrollingList:new(Paths, self.TargetWidget.ScrollingFrame, self.TargetWidget)
	end

	positionMenu(self)

	for _, name in pairs(items) do
		local txtButton = Instance.new("TextButton")
		txtButton.Parent = self.TargetWidget.ScrollingFrame
		txtButton.Size = UDim2.new(1, 0, 0, 22)
		txtButton.BackgroundTransparency = 1
		txtButton.BorderSizePixel = 0
		txtButton.Text = name
		txtButton.TextSize = 16
		txtButton.TextXAlignment = Enum.TextXAlignment.Left
		txtButton.AutoButtonColor = false
		txtButton.ZIndex = 251
		txtButton.LayoutOrder = #self.TargetWidget.ScrollingFrame:GetChildren()
		txtButton.Font = Enum.Font.SourceSans
		self.Paths.UtilityScriptTheme:setColorsToTheme(txtButton)
		self.Connections:add(txtButton.MouseButton1Click:connect(function() selectFunc(name) end))
		self.ScrollingList:addItemToList(txtButton)
	end

	return self
end

function SelectionList:terminate()
	if self.TargetWidget then
		self.Connections:terminate()
		self.Connections = nil

		self.ScrollingList:terminate()
		self.ScrollingList = nil

		self.TargetWidget:Destroy()
		self.TargetWidget = nil
		self.Paths = nil
	end
end

return SelectionList