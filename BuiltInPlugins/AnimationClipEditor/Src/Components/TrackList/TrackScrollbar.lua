--[[
	A component which scrolls vertically based on TopTrackIndex.

	Props:
		UDim2 Size = The total size of the scrollbar frame.
		int TopTrackIndex = The index of the top track displayed in the editor.
		int NumTracks = The number of total tracks in the editor.

		function SetTopTrackIndex = A callback for when the user scrolls to
			set the top track index.
		function OnScroll(delta) = A callback for when the user uses the mouse
			wheel within the scroll bar area.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Util.Constants)

local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local DragTarget = Framework.UI.DragListener

local ArrowButton = require(Plugin.Src.Components.ArrowButton)

local TrackScrollbar = Roact.PureComponent:extend("TrackScrollbar")

function TrackScrollbar:init()
	self.scrollArea = Roact.createRef()

	self.state = {
		dragging = false,
		hovering = false,
	}

	self.onDragStarted = function()
		self:setState({
			dragging = true,
		})
	end

	self.onDragEnded = function()
		self:setState({
			dragging = false
		})
	end

	self.mouseEnter = function()
		self:setState({
			hovering = true,
		})
	end

	self.mouseLeave = function()
		self:setState({
			hovering = false,
		})
	end

	self.scroll = function(input)
		local props = self.props
		local scrollArea = self.scrollArea.current
		local absolutePosition = scrollArea.AbsolutePosition
		local absoluteSize = scrollArea.AbsoluteSize
		local yPos = input.Position.Y - absolutePosition.Y
		local yScale = yPos / absoluteSize.Y
		local newIndex = yScale * props.NumTracks
		props.SetTopTrackIndex(math.floor(newIndex + 0.5))
	end
end

function TrackScrollbar:render()
		local props = self.props
		local theme = THEME_REFACTOR and props.Stylizer.PluginTheme or props.Theme:get("PluginTheme")
		local state = self.state
		local size = props.Size
		local anchorPoint = props.AnchorPoint
		local position = props.Position
		local topTrackIndex = props.TopTrackIndex
		local numTracks = props.NumTracks
		local dragging = state.dragging
		local hovering = state.hovering

		local scrollTheme = theme.scrollBarTheme

		local scrollRange = numTracks
		local canShowScrollbar = topTrackIndex and numTracks > 1

		local scrollbarColor
		if dragging then
			scrollbarColor = scrollTheme.pressedColor
		elseif hovering then
			scrollbarColor = scrollTheme.hoverColor
		else
			scrollbarColor = scrollTheme.controlColor
		end

		return Roact.createElement("Frame", {
			Size = size,
			Position = position,
			AnchorPoint = anchorPoint,
			BackgroundColor3 = scrollTheme.backgroundColor,
			BorderColor3 = scrollTheme.borderColor,
		}, {
			ScrollArea = Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
				Size = UDim2.new(1, 0, 1, -Constants.SCROLL_BAR_SIZE * 2 - Constants.SCROLL_BAR_PADDING),
				BackgroundTransparency = 1,

				[Roact.Change.AbsoluteSize] = self.recalculateExtents,
				[Roact.Ref] = self.scrollArea,
				[Roact.Event.InputBegan] = function(_, input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						self.scroll(input)
					elseif input.UserInputType == Enum.UserInputType.MouseWheel then
						props.OnScroll(input.Position.Z)
					end
				end,
				[Roact.Event.InputChanged] = function(_, input)
					if input.UserInputType == Enum.UserInputType.MouseWheel then
						props.OnScroll(input.Position.Z)
					end
				end,
			},{
				ScrollBar = canShowScrollbar and Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1 / scrollRange, 0),
					Position = UDim2.new(0, 0, (topTrackIndex - 1) / scrollRange, 0),
					BorderSizePixel = THEME_REFACTOR and 1 or 0,
					BorderColor3 = THEME_REFACTOR and scrollTheme.borderColor or nil,
					BackgroundColor3 = scrollbarColor,

					[Roact.Event.MouseEnter] = self.mouseEnter,
					[Roact.Event.mouseLeave] = self.mouseLeave,
					[Roact.Event.InputBegan] = function(_, input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							self.onDragStarted()
						end
					end,
				})
			}),

			UpButton = canShowScrollbar and Roact.createElement(ArrowButton, {
				Rotation = 0,
				OnActivated = function()
					props.SetTopTrackIndex(topTrackIndex - 1)
				end,
			}),

			DownButton = canShowScrollbar and Roact.createElement(ArrowButton, {
				Rotation = 180,
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				OnActivated = function()
					props.SetTopTrackIndex(topTrackIndex + 1)
				end,
			}),

			DragTarget = dragging and Roact.createElement(DragTarget, {
				OnDragMoved = self.scroll,
				OnDragEnded = self.onDragEnded,
			}),
		})
end


TrackScrollbar = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(TrackScrollbar)



return TrackScrollbar