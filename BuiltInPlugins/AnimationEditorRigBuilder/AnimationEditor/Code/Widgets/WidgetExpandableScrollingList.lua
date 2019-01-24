local FastFlags = require(script.Parent.Parent.FastFlags)

local ScrollingList = {}
ScrollingList.__index = ScrollingList

if FastFlags:useQWidgetsForPopupsOn() then
	function ScrollingList:new(Paths, scrollingFrame, rootFrame, mainWindow, subWindow)
		local self = setmetatable({}, ScrollingList)
		self.Paths = Paths
		self.ScrollingFrame = scrollingFrame
		self.RootFrame = rootFrame
		self.ParentFrameHeight = self.RootFrame.Size.Y.Offset
		self.OriginalScrollingFrameHeight = self.ScrollingFrame.Size.Y.Offset
		self.SubWindow = subWindow
		self.ItemList = {}
		self.Connections = self.Paths.UtilityScriptConnections:new(Paths)
		self.MainWindow = mainWindow
		return self
	end
else
	function ScrollingList:new(Paths, scrollingFrame, rootFrame, subWindow)
		local self = setmetatable({}, ScrollingList)
		self.Paths = Paths
		self.ScrollingFrame = scrollingFrame
		self.RootFrame = rootFrame
		self.ParentFrameHeight = self.RootFrame.Size.Y.Offset
		self.OriginalScrollingFrameHeight = self.ScrollingFrame.Size.Y.Offset
		self.SubWindow = subWindow
		self.ItemList = {}
		self.Connections = self.Paths.UtilityScriptConnections:new(Paths)
		return self
	end
end

local function getPotentialFrameHeights(self)
	local extendSize = 0

	for _, item in ipairs(self.ItemList) do
		extendSize = extendSize + item.Size.Y.Offset + self.ScrollingFrame.UIListLayout.Padding.Offset
	end

	if FastFlags:useQWidgetsForPopupsOn() then
		local potentialScrollingFrameHeight = extendSize
		if not self.SubWindow then
			potentialScrollingFrameHeight = self.OriginalScrollingFrameHeight + potentialScrollingFrameHeight
		end

		local potentialParentFrameHeight = self.ParentFrameHeight + potentialScrollingFrameHeight

		return potentialScrollingFrameHeight, potentialParentFrameHeight
	else
		local potentialScrollingFrameHeight = self.OriginalScrollingFrameHeight + extendSize
		local potentialParentFrameHeight = self.ParentFrameHeight + potentialScrollingFrameHeight
		if self.SubWindow then
			potentialParentFrameHeight = potentialParentFrameHeight + self.SubWindow:getTitleBarHeight()
		end

		return potentialScrollingFrameHeight, potentialParentFrameHeight
	end
end

local function offsetRootFramePosition(self, offset)
	if FastFlags:useQWidgetsForPopupsOn() then
		local pos = self.RootFrame.Position
		self.RootFrame.Position = UDim2.new(pos.X.Scale, pos.X.Offset, pos.Y.Scale, offset)
	else
		if self.SubWindow then
			local pos = self.SubWindow.GUI.Position
			self.SubWindow.GUI.Position = UDim2.new(pos.X.Scale, pos.X.Offset, pos.Y.Scale, offset)
		else
			local pos = self.RootFrame.Position
			self.RootFrame.Position = UDim2.new(pos.X.Scale, pos.X.Offset, pos.Y.Scale, offset)
		end
	end
end

local function setFrameSizes(self, potentialScrollingFrameHeight, potentialParentFrameHeight, cutoffSize)
	local currentParentFrameSize = self.RootFrame.Size
	local currentScrollingFrameSize = self.ScrollingFrame.Size

	if FastFlags:useQWidgetsForPopupsOn() then
		if not self.SubWindow then
			self.ScrollingFrame.Size = UDim2.new(currentScrollingFrameSize.X.Scale, currentScrollingFrameSize.X.Offset, currentScrollingFrameSize.Y.Scale, potentialScrollingFrameHeight - cutoffSize)
			self.RootFrame.Size = UDim2.new(currentParentFrameSize.X.Scale, currentParentFrameSize.X.Offset, currentParentFrameSize.Y.Scale, potentialParentFrameHeight - cutoffSize)
		end

		self.ScrollingFrame.CanvasSize = UDim2.new(currentScrollingFrameSize.X.Scale, 0, 0, potentialScrollingFrameHeight)
	else
		self.ScrollingFrame.Size = UDim2.new(currentScrollingFrameSize.X.Scale, currentScrollingFrameSize.X.Offset, currentScrollingFrameSize.Y.Scale, potentialScrollingFrameHeight - cutoffSize)
		self.RootFrame.Size = UDim2.new(currentParentFrameSize.X.Scale, currentParentFrameSize.X.Offset, currentParentFrameSize.Y.Scale, potentialParentFrameHeight - cutoffSize)

		self.ScrollingFrame.CanvasSize = UDim2.new(currentScrollingFrameSize.X.Scale, currentScrollingFrameSize.X.Offset, currentScrollingFrameSize.Y.Scale, potentialScrollingFrameHeight)

		if self.SubWindow then
			self.SubWindow:resize()
		end
	end
end

local function expandUI(self, jumpToBottom)
	if FastFlags:useQWidgetsForPopupsOn() then
		if self.ItemList ~= nil then
			local potentialScrollingFrameHeight, potentialParentFrameHeight = getPotentialFrameHeights(self)
			local cutoffSize = 0
			if not self.SubWindow then
				local bottomEdge = self.MainWindow.AbsolutePosition.Y + self.MainWindow.AbsoluteSize.Y
				local distancePastBottomEdge = potentialParentFrameHeight + self.RootFrame.AbsolutePosition.Y - bottomEdge
				if distancePastBottomEdge > 0 then
					local potentialYOffset = self.RootFrame.AbsolutePosition.Y - distancePastBottomEdge
					cutoffSize = math.clamp(self.MainWindow.AbsolutePosition.Y - potentialYOffset, 0, self.MainWindow.AbsoluteSize.Y)
					offsetRootFramePosition(self, potentialYOffset + cutoffSize)
				end
			end

			setFrameSizes(self, potentialScrollingFrameHeight, potentialParentFrameHeight, cutoffSize)
			self.ScrollingFrame.CanvasPosition = Vector2.new(0, self.ScrollingFrame.AbsoluteWindowSize.Y)
		end
	else
		jumpToBottom = jumpToBottom == nil and true or jumpToBottom
		if self.ItemList ~= nil then
			local potentialScrollingFrameHeight, potentialParentFrameHeight = getPotentialFrameHeights(self, self.SubWindow ~= nil)
			local bottomEdge = self.Paths.GUIScrollingJointTimeline.AbsolutePosition.Y + self.Paths.GUIScrollingJointTimeline.AbsoluteSize.Y
			local distancePastBottomEdge = potentialParentFrameHeight + self.RootFrame.AbsolutePosition.Y - bottomEdge
			local cutoffSize = 0
			if distancePastBottomEdge > 0 then
				local potentialYOffset = self.RootFrame.AbsolutePosition.Y - distancePastBottomEdge
				cutoffSize = math.clamp(self.Paths.GUIScrollingJointTimeline.AbsolutePosition.Y - potentialYOffset, 0, self.Paths.GUIScrollingJointTimeline.AbsoluteSize.Y)
				offsetRootFramePosition(self, potentialYOffset + cutoffSize)
			end

			setFrameSizes(self, potentialScrollingFrameHeight, potentialParentFrameHeight, cutoffSize)

			if jumpToBottom then
				self.ScrollingFrame.CanvasPosition = Vector2.new(0, self.ScrollingFrame.AbsoluteWindowSize.Y)
			end
		end
	end
end

local function shadeListItems(self)
	local doShade = true
	for _, listItem in ipairs(self.ItemList) do
		if listItem:IsA("Frame") then
			listItem.BackgroundColor3 = doShade and self.Paths.UtilityScriptTheme:GetShadeColor() or self.Paths.UtilityScriptTheme:GetBackgroundColor()
			doShade = not doShade
		end
	end
end

function ScrollingList:addItemToList(item, doUpdateDisplay)
	doUpdateDisplay = doUpdateDisplay ~= nil and doUpdateDisplay or true
	item.Parent = self.ScrollingFrame
	item.LayoutOrder = #self.ScrollingFrame:GetChildren()
	table.insert(self.ItemList, item)
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Connections:add(item.Changed:connect(function(property)
			if property == "Size" then
				expandUI(self, false)
			end
		end))
	end

	if doUpdateDisplay then
		expandUI(self)
		shadeListItems(self)
	end
end

function ScrollingList:addItemsToList(items)
	for _, item in pairs(items) do
		self:addItemToList(item, false)
	end

	expandUI(self)
	shadeListItems(self)
end

function ScrollingList:emptyItemList()
	if not self.Paths.HelperFunctionsTable:isNilOrEmpty(self.ItemList) then
		for _, item in pairs(self.ItemList) do
			item:Destroy()
		end
		self.ItemList = {}
	end
end

function ScrollingList:terminate()
	self.Connections:terminate()
	self.Connections = nil 

	self:emptyItemList()

	self.ScrollingFrame = nil
	self.RootFrame = nil
	self.ParentFrameHeight = nil
	self.SubWindow = nil
	self.Paths = nil
end

return ScrollingList
