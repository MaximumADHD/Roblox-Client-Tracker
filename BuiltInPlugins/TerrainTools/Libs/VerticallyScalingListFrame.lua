----------------------------------------
--
-- VerticallyScalingListFrame
--
-- Creates a frame that organizes children into a list layout.
-- Will scale dynamically as children grow.
--
----------------------------------------
GuiUtilities = require(script.Parent.GuiUtilities)

VerticallyScalingListFrameClass = {}
VerticallyScalingListFrameClass.__index = VerticallyScalingListFrameClass

local kBottomPadding = 10

function VerticallyScalingListFrameClass.new(nameSuffix)
	local self = {}
	setmetatable(self, VerticallyScalingListFrameClass)

	self._resizeCallback = nil
	
	local frame = Instance.new('Frame')
	frame.Name = 'VSLFrame' .. nameSuffix
	frame.Size = UDim2.new(1, 0, 0, height)
	frame.BackgroundTransparency = 0
	frame.BorderSizePixel = 0
	GuiUtilities.syncGuiElementBackgroundColor(frame)

	self._frame = frame
	
	local uiListLayout = Instance.new('UIListLayout')
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout.Parent = frame
	self._uiListLayout = uiListLayout

	local function updateSizes()
		self._frame.Size = UDim2.new(1, 0, 0, uiListLayout.AbsoluteContentSize.Y)
		if (self._resizeCallback) then 
			self._resizeCallback()
		end
	end
	self._uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):connect(updateSizes)
	updateSizes()

	self._childCount = 0

	return self
end

function VerticallyScalingListFrameClass:AddBottomPadding()
	local frame = Instance.new("Frame")
	frame.Name = "BottomPadding"
	frame.BackgroundTransparency = 1
	frame.Size = UDim2.new(1, 0, 0, kBottomPadding)
	frame.LayoutOrder = 1000
	frame.Parent = self._frame
end

function VerticallyScalingListFrameClass:GetFrame()
	return self._frame
end

function VerticallyScalingListFrameClass:AddChild(childFrame)
	childFrame.LayoutOrder = self._childCount
	self._childCount = self._childCount + 1
	childFrame.Parent = self._frame
end

function VerticallyScalingListFrameClass:SetCallbackOnResize(callback)
	self._resizeCallback = callback
end

return VerticallyScalingListFrameClass