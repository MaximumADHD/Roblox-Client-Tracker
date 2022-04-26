--[[
	A row of panes divided by separators that can be resized by the user.
	
	Required Props:
		table MinSizes: An array of UDims which are the minimum sizes of the panes in the fill direction.
		table Sizes: An array of UDims which are used to size the pane in the fill direction.
		callback OnSizesChange: Called with the new sizes when dragging occurs.
	Optional Props:
		boolean HideBars: Whether to hide the bars between elements.
		boolean UseScale: Whether to use scale rather than offset.
		boolean UseDeficit: Whether to make the last pane stretch to fill remaining space.
		boolean ClampSize: Whether to clamp the sizes of the children to the size of the component.
		Enum.FillDirection Layout: The direction children are arranged in (default = Horizontal)
		Enum.AutomaticSize AutomaticSize: The automatic size of the split panes
		UDim2 Size: The size of the pane, if it is a fixed pane.
		UDim2 Position: The position of the pane
		string BarStyle: The style of the drag bar
		string PaneStyle: The style of the pane
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		
]]
local Framework = script.Parent.Parent
local Types = require(Framework.Types)
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext
local Roact = require(Framework.Parent.Roact)

local Dash = require(Framework.packages.Dash)
local filter = Dash.filter
local forEach = Dash.forEach

local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local DragBar = require(Framework.UI.DragBar)
local Pane = require(Framework.UI.Pane)

local getNextSizes = require(script.getNextSizes)

local FFlagDevFrameworkFixSplitPaneAlignment = game:GetFastFlag("DevFrameworkFixSplitPaneAlignment")

export type Props = {
	MinSizes: Types.Array<UDim>,
	Sizes: Types.Array<UDim>,
	OnSizesChange: () -> (),
	UseScale: boolean?,
	UseDeficit: boolean?,
	HideBars: boolean?,
	ClampSize: boolean?,
	Layout: Enum.FillDirection,
	AutomaticSize: Enum.AutomaticSize,
	Size: UDim2?,
	Position: UDim2?,
	BarStyle: string?,
	PaneStyle: string?,
}

type _Props = Props & {
	Stylizer: {[string]: any}
}

local BAR_WEIGHT = if FFlagDevFrameworkFixSplitPaneAlignment then 6 else 5
local BAR_Z_INDEX = 10

local SplitPane = Roact.PureComponent:extend("SplitPane")

function SplitPane:init()
	assert(THEME_REFACTOR, "SplitPane not supported in Theme1, please upgrade your plugin to Theme2")

	self.prevOffset = 0
	self.ref = Roact.createRef()
	
	self.onMove = function(_, x: number, y: number)
		local props = self.props
		if not self.currentDragIndex or not self.ref.current then
			return
		end

		local absolutePosition = self.ref.current.AbsolutePosition
		local absoluteSize = self.ref.current.AbsoluteSize
		local isVertical = props.Layout == Enum.FillDirection.Vertical

		-- Calculate the offset of the mouse relative to the top-left of the component
		local offset = isVertical and (y - absolutePosition.Y) or (x - absolutePosition.X)
		local outerSize = isVertical and absoluteSize.Y or absoluteSize.X

		-- Store whether the offset is increasing or decreasing
		local isForwards = (not props.ClampSize) or offset >= self.prevOffset
		local draggingPaneIndex = self.currentDragIndex
		self.prevOffset = offset
		-- If the offset is decreasing, reverse the order we update the sizes in so that panes
		-- in front of the drag direction get squashed while the one directly behind expands
		if not isForwards then
			offset = outerSize - offset
			draggingPaneIndex += 1
		end

		local nextSizes = getNextSizes(self.props, offset, outerSize, isForwards, draggingPaneIndex)
		props.OnSizesChange(nextSizes)
	end
	self.onStartDrag = function(barProps)
		self.currentDragIndex = barProps.Index
		-- Disable descendant scrolling frames during drag as they swallow mouse movement
		self.scrollingFrames = filter(self.ref.current:GetDescendants(), function(instance: Instance)
			return instance.ClassName == "ScrollingFrame"
		end)
		forEach(self.scrollingFrames, function(frame: ScrollingFrame)
			frame.ScrollingEnabled = false
		end)
	end
	self.onEndDrag = function()
		self.currentDragIndex = nil
		forEach(self.scrollingFrames, function(frame: ScrollingFrame)
			frame.ScrollingEnabled = true
		end)
		self.scrollingFrames = nil
	end
end

function SplitPane:render()
	local props: _Props = self.props
	local paneChildren = (props :: any)[Roact.Children]
	local isVertical = props.Layout == Enum.FillDirection.Vertical
	local children = {}
	local count = #props.Sizes
	local barFillDirection = isVertical and Enum.FillDirection.Horizontal or Enum.FillDirection.Vertical

	local layout = props.Layout or Enum.FillDirection.Horizontal

	if FFlagDevFrameworkFixSplitPaneAlignment then 
		local hideBars = props.HideBars
		local position = UDim.new(0, 0)
		for i = 1, count do
			local size = props.Sizes[i]
			local paneSizeOffset = size.Offset
			if i > 1 then
				local barOffset = position.Offset
				if hideBars then
					-- Bar is centered between both panes if hidden
					barOffset -= BAR_WEIGHT / 2
				else
					-- Bar width eats into the next pane if it is visible
					paneSizeOffset -= BAR_WEIGHT
					position += UDim.new(0, BAR_WEIGHT)
				end
				children["Drag " .. (i - 1)] = Roact.createElement(DragBar, {
					Index = i - 1,
					Hide = hideBars,
					FillDirection = barFillDirection,
					BarStyle = props.BarStyle,
					Position = if isVertical then UDim2.new(0, 0, position.Scale, barOffset) else UDim2.new(position.Scale, barOffset, 0, 0),
					ZIndex = BAR_Z_INDEX,
					OnPress = self.onStartDrag,
					OnPressEnd = self.onEndDrag,
				})
			end
			children["Pane " .. i] = Roact.createElement(Pane, {
				Size = isVertical and UDim2.new(1, 0, size.Scale, paneSizeOffset) or UDim2.new(size.Scale, paneSizeOffset, 1, 0),
				Position = if isVertical then UDim2.new(0, 0, position.Scale, position.Offset) else UDim2.new(position.Scale, position.Offset, 0, 0),
				LayoutOrder = i * 2 + 1,
			}, {
				Child = paneChildren and paneChildren[i] or nil,
			})
			if props.UseScale then
				position += UDim.new(size.Scale, 0)
			else
				position += UDim.new(0, paneSizeOffset)
			end
		end

	else
		local barSize = BAR_WEIGHT / (count + 1) * count

		for i = 1, count do
			local size = props.Sizes[i]
			if i > 1 then
				children["Drag " .. (i - 1)] = Roact.createElement(DragBar, {
					Index = i - 1,
					FillDirection = barFillDirection,
					BarStyle = props.BarStyle,
					LayoutOrder = i * 2,
					OnPress = self.onStartDrag,
					OnPressEnd = self.onEndDrag,
				})
			end
			local offset = size.Offset - barSize
			children["Pane " .. i] = Roact.createElement(Pane, {
				Size = isVertical and UDim2.new(1, 0, size.Scale, offset) or UDim2.new(size.Scale, offset, 1, 0),
				LayoutOrder = i * 2 + 1,
			}, {
				Child = paneChildren and paneChildren[i] or nil,
			})
		end

	end
	return Roact.createElement(Pane, {
		AutomaticSize = props.AutomaticSize,
		Layout = if FFlagDevFrameworkFixSplitPaneAlignment then nil else layout,
		HorizontalAlignment = if FFlagDevFrameworkFixSplitPaneAlignment then nil else Enum.HorizontalAlignment.Left,
		VerticalAlignment = if FFlagDevFrameworkFixSplitPaneAlignment then nil else Enum.VerticalAlignment.Top,
		Style = props.PaneStyle or "Box",
		Size = props.Size,
		Position = props.Position,
		[Roact.Ref] = self.ref,
		[Roact.Event.MouseMoved] = self.onMove,
	}, children)
end

SplitPane = withContext({
	Stylizer = ContextServices.Stylizer,
	Mouse = ContextServices.Mouse,
})(SplitPane)


return SplitPane
