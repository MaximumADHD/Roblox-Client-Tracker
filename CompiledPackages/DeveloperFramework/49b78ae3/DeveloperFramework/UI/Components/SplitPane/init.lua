--[[
	(USES STYLESHEETS)
	A row of panes divided by separators that can be resized by the user.

	Required Props:
		table MinSizes: An array of UDims which are the minimum sizes of the panes in the fill direction.
		table Sizes: An array of UDims which are used to size the pane in the fill direction.
		callback OnSizesChange: Called with the new sizes when dragging occurs.

	Optional Props:
		boolean HideBars: Whether to hide the bars between elements.
		table MaxSizes: An array of UDims which are the maximum sizes of the panes in the fill direction.
		boolean UseScale: Whether to use scale rather than offset.
		boolean UseDeficit: Whether to make the last pane stretch to fill remaining space.
		boolean ClampSize: Whether to clamp the sizes of the children to the size of the component.
		Enum.FillDirection Layout: The direction children are arranged in (default = Horizontal)
		Enum.AutomaticSize AutomaticSize: The automatic size of the split panes
		callback OnResizeStart: When the split pane starts being resized.
		callback OnResizeEnd: When the split pane ends being resized.
		number LayoutOrder: The layout order of the pane.
		UDim2 Size: The size of the pane, if it is a fixed pane.
		UDim2 Position: The position of the pane
		string BarStyle: The style of the drag bar (default = Box e.g. main background with hover effect)
		string PaneStyle: The style of the pane (default = Box e.g. no border with main background) (PREFER style tags)
		Focus Focus: A Focus ContextItem, which is provided via withContext.
		Mouse Mouse: A Mouse ContextItem, which is provided via withContext.
		callback ExpandColumnOnDoubleClick: An optional callback that expands the resizable column to fit the text when doubleclicking DragBar.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Types = require(Framework.Types)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local Roact = require(Framework.Parent.Roact)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

local RunService = game:GetService("RunService")

local Dash = require(Framework.Parent.Dash)
local filter = Dash.filter
local forEach = Dash.forEach
local reduce = Dash.reduce

local DragBar = require(Framework.UI.Components.DragBar)
local Pane = require(Framework.UI.Components.Pane)

local getNextSizes = require(script.getNextSizes)

export type Props = {
	MinSizes: Types.Array<UDim>,
	Sizes: Types.Array<UDim>,
	OnSizesChange: () -> (),
	UseScale: boolean?,
	UseDeficit: boolean?,
	HideBars: boolean?,
	ClampSize: boolean?,
	Layout: Enum.FillDirection,
	LayoutOrder: number?,
	AutomaticSize: Enum.AutomaticSize,
	Size: UDim2?,
	Position: UDim2?,
	BarStyle: string?,
	PaneStyle: string?,
}

type _Props = Props & {
	Stylizer: { [string]: any },
}

local BAR_WEIGHT = 6
local BAR_Z_INDEX = 10

local SplitPane = Roact.PureComponent:extend("SplitPane")

function SplitPane:init()
	self.prevOffset = 0
	self.ref = Roact.createRef()
	self.scrollingFrames = {}

	self.onMove = function()
		local props = self.props
		local hasPluginGui = self.pluginGui and self.pluginGui:IsA("PluginGui")
		if not hasPluginGui or not self.currentDragIndex or not self.ref.current then
			return
		end
		local mousePosition = self.pluginGui:GetRelativeMousePosition()
		local x = mousePosition.X
		local y = mousePosition.Y

		local absolutePosition = self.ref.current.AbsolutePosition
		local absoluteSize = self.ref.current.AbsoluteSize
		local isVertical = props.Layout == Enum.FillDirection.Vertical

		-- Calculate the offset of the mouse relative to the top-left of the component
		local offset = if isVertical then (y - absolutePosition.Y) else (x - absolutePosition.X)
		local outerSize = if isVertical then absoluteSize.Y else absoluteSize.X

		-- Store whether the offset is increasing or decreasing
		local isForwards = offset >= self.prevOffset
		local draggingPaneIndex = self.currentDragIndex
		self.prevOffset = offset

		-- Pass the full size of the content (i.e. width of all columns if horizontal split pane) to getNextSizes
		-- so that the mouse offset is relative to this size (which reduces as unclamped panes are compressed)
		-- rather than the outerSize of the component (which may be a fixed size)
		local contentSize = reduce(props.Sizes, function(current: UDim, size: UDim)
			return current + size
		end, UDim.new())
		local contentOffset = contentSize.Scale * outerSize + contentSize.Offset

		-- If the offset is decreasing, reverse the order we update the sizes in so that panes
		-- in front of the drag direction get squashed while the one directly behind expands
		if not isForwards then
			offset = contentOffset - offset
			draggingPaneIndex += 1
		end

		local nextSizes = getNextSizes(self.props, offset, contentOffset, isForwards, draggingPaneIndex)
		props.OnSizesChange(nextSizes)
	end
	self.onStartDrag = function(barProps)
		local onResizeStart = self.props.OnResizeStart
		if onResizeStart then
			onResizeStart(barProps.Index)
		end
		self.currentDragIndex = barProps.Index
		-- Disable descendant scrolling frames during drag as they swallow mouse movement
		self.scrollingFrames = filter(self.ref.current:GetDescendants(), function(instance: Instance)
			return instance.ClassName == "ScrollingFrame"
		end)
		forEach(self.scrollingFrames, function(frame: ScrollingFrame)
			frame.ScrollingEnabled = false
		end)
		self._heartbeat = RunService.Heartbeat:Connect(function()
			self:onMove()
		end)
	end
	self.onEndDrag = function()
		local onResizeEnd = self.props.OnResizeEnd
		if onResizeEnd and self.currentDragIndex then
			onResizeEnd(self.currentDragIndex)
		end
		self.currentDragIndex = nil
		if self.scrollingFrames then
			forEach(self.scrollingFrames, function(frame: ScrollingFrame)
				frame.ScrollingEnabled = true
			end)
		end
		if self._heartbeat then
			self._heartbeat:Disconnect()
		end
	end
end

function SplitPane:willUnmount()
	if self._heartbeat then
		self._heartbeat:Disconnect()
	end
end

function SplitPane:render()
	local props: _Props = self.props
	local paneChildren = (props :: any)[Roact.Children]
	local isVertical = props.Layout == Enum.FillDirection.Vertical
	local children = {}
	local count = #props.Sizes
	local barFillDirection = isVertical and Enum.FillDirection.Horizontal or Enum.FillDirection.Vertical

	self.pluginGui = self.props.Focus:get()

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
				Position = if isVertical
					then UDim2.new(0, 0, position.Scale, barOffset)
					else UDim2.new(position.Scale, barOffset, 0, 0),
				ZIndex = BAR_Z_INDEX,
				OnPress = self.onStartDrag,
				OnPressEnd = self.onEndDrag,
				OnDoubleClick = if self.props.ExpandColumnOnDoubleClick
					then function()
						self.props.ExpandColumnOnDoubleClick(i - 1, self.ref.current.AbsoluteSize.X)
					end
					else nil,
			})
		end
		local childProps = {
			Size = isVertical and UDim2.new(1, 0, size.Scale, paneSizeOffset)
				or UDim2.new(size.Scale, paneSizeOffset, 1, 0),
			Position = if isVertical
				then UDim2.new(0, 0, position.Scale, position.Offset)
				else UDim2.new(position.Scale, position.Offset, 0, 0),
			LayoutOrder = i * 2 + 1,
		}
		children["Pane " .. i] = Roact.createElement(Pane, childProps, {
			Child = paneChildren and paneChildren[i] or nil,
		})
		if props.UseScale then
			position += UDim.new(size.Scale, 0)
		else
			position += UDim.new(0, paneSizeOffset)
		end
	end

	local paneStyle = if props.PaneStyle == "Default" then nil else (props.PaneStyle or "Box")

	return Roact.createElement(
		Pane,
		if supportsStyleSheets
			then {
				AutomaticSize = props.AutomaticSize,
				LayoutOrder = props.LayoutOrder,
				Position = props.Position,
				Size = props.Size,
				[Roact.Ref] = self.ref,
				[React.Tag] = joinTags("Component-SplitPane", props.PaneStyle, (props :: any)[React.Tag]),
			}
			else {
				AutomaticSize = props.AutomaticSize,
				LayoutOrder = props.LayoutOrder,
				Style = paneStyle,
				Size = props.Size,
				Position = props.Position,
				[Roact.Ref] = self.ref,
			},
		children
	)
end

SplitPane = withContext({
	Focus = ContextServices.Focus,
	Mouse = ContextServices.Mouse,
	Stylizer = if supportsStyleSheets then nil else ContextServices.Stylizer,
})(SplitPane)

return SplitPane
