local Bar = script.Parent
local Core = Bar.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

--[[
	Add a UIListLayout to the table of children if that table isn't nil or empty. Returns a shallow copy of the original
	table with the new element added.
--]]
local function addLayout(children, layoutProps)
	if not children or Cryo.isEmpty(children) then
		return {}
	end

	local layout = Roact.createElement("UIListLayout", Cryo.Dictionary.join({
		FillDirection = Enum.FillDirection.Horizontal,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
	}, layoutProps))

	local frameLayoutOrder

	if layoutProps.HorizontalAlignment == Enum.HorizontalAlignment.Left then
		frameLayoutOrder = 1
	elseif layoutProps.HorizontalAlignment == Enum.HorizontalAlignment.Right then
		frameLayoutOrder = 314159265 -- math.huge is currently broken with LayoutOrders (5/1/20)
	end

	local elementSpacing = layoutProps.Padding.Offset

	local paddingFrame = Roact.createElement("Frame", {
		Size = UDim2.new(0, elementSpacing, 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = frameLayoutOrder,
	})

	return Cryo.Dictionary.join(children, {
		["ThreeSectionBar.layout"] = layout,
		["ThreeSectionBar.sidePadding"] = frameLayoutOrder and paddingFrame, -- don't add sidePadding to center partition
	})
end

--[[
	Create a new Roact component type that organizes three sets of children into left, center and right aligned groups.
	Any of these three can be empty or nil. ThreeSectionBar will automatically add a UIListLayout to each set of children.
	If you want to use a different layout, you will need to encapsulate that set of children in your own subframe.
	Note that the left and right children are in a container with no width, so relative widths won't work there.

	The results of this call is a component type. This will need to be passed to Roact.createElement at which point
	additional properties can be specified. For example:

	local headerType = ThreeSectionBar("foo", leftChildren, {}, {})
	local header = Roact.createElement(headerType, {Size = UDim2.new(0.5, 0, 0.5, 0)})

	The ElementSpacing property specifies the horizontal padding of elements within the three groups of children as well
	as the padding between the groups.

	The SidePadding property is a value that determines distance between the left edge of the left element and
	the left side of the bar. This value is mirrored on the right side. If left nil, it will detect parent width
	and resize according to UIBlox design specs.
--]]
local ThreeSectionBar = Roact.PureComponent:extend("ThreeSectionBar")

local validateProps = t.interface({
	ElementSpacing = t.optional(t.number),
	SidePadding = t.optional(t.number),
	renderLeftChildren = t.optional(t.callback),
	renderCenterChildren = t.optional(t.callback),
	renderRightChildren = t.optional(t.callback),
})

ThreeSectionBar.defaultProps = {
	Size = UDim2.new(1, 0, 1, 0),
	ElementSpacing = 12,
	SidePadding = nil, -- in the absence of a specified value, will autoSize
	renderLeftChildren = function() return nil end,
	renderCenterChildren = function() return nil end,
	renderRightChildren = function() return nil end,
}

function ThreeSectionBar:init()
	self.containerRef = Roact.createRef()

	self.onResize = function(currentSelf, left, center, right)
		local barWidth = currentSelf.containerRef.current.AbsoluteSize.X

		-- adjusting center partition size
		local leftLayout = left:FindFirstChildWhichIsA("UIGridStyleLayout")
		local rightLayout = right:FindFirstChildWhichIsA("UIGridStyleLayout")

		local leftSize = 0
		if leftLayout then
			leftSize = leftLayout.AbsoluteContentSize.X
		end

		local rightSize = 0
		if rightLayout then
			rightSize = rightLayout.AbsoluteContentSize.X
		end

		local centerSize = barWidth - 2*(math.max(leftSize, rightSize))
		if currentSelf.props.ElementSpacing then
			centerSize = centerSize - 2*currentSelf.props.ElementSpacing
		end
		center.Size = UDim2.new(0, math.max(centerSize, 0), 1, 0)

		local sidePadding
		if currentSelf.props.SidePadding then
			sidePadding = currentSelf.props.SidePadding
		else
			-- adjusting smart margins
			if barWidth <= 320 then
				sidePadding = 12 -- small screens (small phones)
			elseif barWidth < 600 then
				sidePadding = 24 -- medium screens (most phones)
			else
				sidePadding = 48 -- large screens (tablets)
			end
		end

		local finalSidePadding = sidePadding - currentSelf.props.ElementSpacing

		local leftPadding = left:FindFirstChild("ThreeSectionBar.sidePadding")
		local rightPadding = right:FindFirstChild("ThreeSectionBar.sidePadding")

		if leftPadding then
			leftPadding.Size = UDim2.new(0, finalSidePadding, 1, 0)
		end
		if rightPadding then
			rightPadding.Size = UDim2.new(0, finalSidePadding, 1, 0)
		end
	end
end

function ThreeSectionBar:render()
	assert(validateProps(self.props))
	local padding = UDim.new(0, self.props.ElementSpacing)

	local leftCopy = addLayout(self.props.renderLeftChildren(), {
		Padding = padding,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
	})
	local centerCopy = addLayout(self.props.renderCenterChildren(), {
		Padding = padding,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
	})
	local rightCopy = addLayout(self.props.renderRightChildren(), {
		Padding = padding,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
	})

	local left = Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = 0,
		AnchorPoint = Vector2.new(0, 0.5),
		Position = UDim2.new(0, 0, 0.5, 0),
		Size = UDim2.new(0, 0, 1, 0),
	}, leftCopy)
	local center = Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = 2,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
	}, centerCopy)
	local right = Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = 1,
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(1, 0, 0.5, 0),
		Size = UDim2.new(0, 0, 1, 0),
	}, rightCopy)

	local frameProps = Cryo.Dictionary.join(self.props, {
		[Roact.Ref] = self.containerRef,
		ElementSpacing = Cryo.None,
		SidePadding = Cryo.None,
		renderLeftChildren = Cryo.None,
		renderCenterChildren = Cryo.None,
		renderRightChildren = Cryo.None,
	})
	return Roact.createElement("Frame", frameProps,
	Cryo.Dictionary.join({
		["ThreeSectionBar.left"] = left,
		["ThreeSectionBar.center"] = center,
		["ThreeSectionBar.right"] = right,
	}, self.props[Roact.Children] or {}))
end

function ThreeSectionBar:didMount()
	local left = self.containerRef.current["ThreeSectionBar.left"]
	local center = self.containerRef.current["ThreeSectionBar.center"]
	local right = self.containerRef.current["ThreeSectionBar.right"]

	self.connection = self.containerRef.current:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		self:onResize(left, center, right)
	end)
	self:onResize(left, center, right)
end

function ThreeSectionBar:willUnmount()
	if self.connection then
		self.connection:Disconnect()
		self.connection = nil
	end
end

return ThreeSectionBar
