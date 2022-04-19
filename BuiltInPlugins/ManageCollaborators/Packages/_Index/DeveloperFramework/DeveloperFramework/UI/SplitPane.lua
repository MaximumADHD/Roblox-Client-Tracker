--[[
	A row of panes divided by separators that can be resized by the user.
	
	Required Props:
		table MinSizes: An array of UDims which are the minimum sizes of the panes in the fill direction.
		table Sizes: An array of UDims which are used to size the pane in the fill direction.
		callback OnSizesChange: Called with the new sizes when dragging occurs.
	Optional Props:
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

export type Props = {
	MinSizes: Types.Array<UDim>,
	Sizes: Types.Array<UDim>,
	OnSizesChange: () -> (),
	UseScale: boolean?,
	UseDeficit: boolean?,
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

local BAR_WEIGHT = 5

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
		children["Pane " .. i] = Roact.createElement(Pane, {
			Size = isVertical and UDim2.new(1, 0, size.Scale, size.Offset - barSize) or UDim2.new(size.Scale, size.Offset - barSize, 1, 0),
			LayoutOrder = i * 2 + 1,
		}, {
			Child = paneChildren and paneChildren[i] or nil,
		})
	end
	
	return Roact.createElement(Pane, {
		AutomaticSize = props.AutomaticSize,
		Layout = props.Layout or Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
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
