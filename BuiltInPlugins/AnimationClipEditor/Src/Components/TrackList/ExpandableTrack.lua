--[[
	Represents an expandable track in a TrackList.
	This component does not handle the display of the expanded tracks,
	it only provides a control that the user can click to toggle expanding the track.
	The logic for displaying expanded tracks should be handled in TrackList.

	Props:
		int LayoutOrder = The order this element displays in a UIListLayout.
		string Name = The name to display in this track.
		int Indent = The level of indentation to pad this component.
		bool Selected = Whether this track is currently selected.
		bool Expanded = Whether to display the arrow in this component in
			the expanded or retracted position.

		function OnTrackSelected() = A callback for when the user clicks the track.
		function OnExpandToggled(newExpandedState) = A callback for when the
			user clicks the arrow in this component to toggle its state.
		function OnContextButtonClick() = A callback for when the user clicks
			the button in this component to show a context menu for this track.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local DoubleClickDetector = require(Plugin.Src.Util.DoubleClickDetector)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local TrackListEntry = require(Plugin.Src.Components.TrackList.TrackListEntry)
local ContextButton = require(Plugin.Src.Components.ContextButton)
local Constants = require(Plugin.Src.Util.Constants)

local ExpandableTrack = Roact.PureComponent:extend("ExpandableTrack")

function ExpandableTrack:init()
	local doubleClickDetector = DoubleClickDetector.new()

	self.onExpandToggled = function()
		if self.props.OnExpandToggled then
			self.props.OnExpandToggled(not self.props.Expanded)
		end
	end

	self.onTrackSelected = function()
		if doubleClickDetector:isDoubleClick() then
			self.onExpandToggled()
		end
		if self.props.OnTrackSelected then
			self.props.OnTrackSelected()
		end
	end

	self.onContextButtonClick = function()
		if self.props.OnContextButtonClick then
			self.props.OnContextButtonClick()
		end
	end
end

function ExpandableTrack:render()
		local props = self.props
		local theme = props.Theme:get("PluginTheme")
		local layoutOrder = props.LayoutOrder
		local indent = props.Indent or 0
		local name = props.Name

		local trackTheme = theme.trackTheme
		local arrowTheme = trackTheme.arrow
		local expanded = props.Expanded or false
		local selected = props.Selected or false

		return Roact.createElement(TrackListEntry, {
			Selected = selected,
			Height = Constants.TRACK_HEIGHT,
			Indent = indent,
			LayoutOrder = layoutOrder,
		}, {
			Arrow = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, Constants.ARROW_SIZE, 0, Constants.ARROW_SIZE),
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, Constants.ARROW_SIZE / 2, 0.5, 0),
				BackgroundTransparency = 1,

				Image = expanded and arrowTheme.expanded or arrowTheme.collapsed,
				ImageColor3 = selected and trackTheme.selectedTextColor or trackTheme.textColor,
				ScaleType = Enum.ScaleType.Fit,

				[Roact.Event.Activated] = self.onExpandToggled,
			}),

			NameLabel = Roact.createElement("TextButton", {
				Size = UDim2.new(1, -Constants.TRACKLIST_BUTTON_SIZE - Constants.ARROW_SIZE * 2, 1, 0),
				Position = UDim2.new(0, Constants.ARROW_SIZE * 2, 0, 0),
				BackgroundTransparency = 1,
				AutoButtonColor = false,

				Text = name,
				Font = theme.font,
				TextSize = trackTheme.textSize,
				TextColor3 = selected and trackTheme.selectedTextColor or trackTheme.textColor,
				TextXAlignment = Enum.TextXAlignment.Left,

				[Roact.Event.Activated] = self.onTrackSelected,
			}),

			ContextButton = Roact.createElement(ContextButton, {
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -Constants.TRACKLIST_RIGHT_PADDING, 0.5, 0),
				TrackSelected = selected,
				OnActivated = self.onContextButtonClick,
			}),
		})
end

ContextServices.mapToProps(ExpandableTrack, {
	Theme = ContextServices.Theme,
})


return ExpandableTrack