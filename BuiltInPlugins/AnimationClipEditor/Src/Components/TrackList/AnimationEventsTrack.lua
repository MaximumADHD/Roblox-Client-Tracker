--[[
	Represents the Animation Events track above the track list.

	Props:
		int LayoutOrder = The order this element displays in a UIListLayout.
		int Indent = The level of indentation to pad this component.

		function OnButtonClick() = A callback for when the user clicks the
			button at the end of the track.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local StringUtils = require(Plugin.Src.Util.StringUtils)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local TrackListEntry = require(Plugin.Src.Components.TrackList.TrackListEntry)
local Constants = require(Plugin.Src.Util.Constants)

local AnimationEventsTrack = Roact.PureComponent:extend("AnimationEventsTrack")

function AnimationEventsTrack:init()
	self.state = {
		hovering = false,
	}

	self.getTextWidth = function(text, theme)
		local font = theme.font
		local textSize = theme.trackTheme.textSize
		return StringUtils.getTextWidth(text, textSize, font)
	end

	self.onButtonClick = function()
		if self.props.OnButtonClick then
			self.props.OnButtonClick()
		end
	end

	self.mouseEnter = function()
		if self.props.Mouse then 
			self.props.Mouse:__pushCursor("PointingHand")
		end
		self:setState({
			hovering = true,
		})
	end

	self.mouseLeave = function()
		if self.props.Mouse then 
			self.props.Mouse:__popCursor()
		end
		self:setState({
			hovering = false,
		})
	end
end

function AnimationEventsTrack:willUnmount()
	self.props.Mouse:__resetCursor()
end

function AnimationEventsTrack:render()
		local localization = self.props.Localization
			local props = self.props
			local theme = props.Theme:get("PluginTheme")
			local state = self.state
			local layoutOrder = props.LayoutOrder
			local indent = props.Indent or 0
			local hovering = state.hovering

			local trackTheme = theme.trackTheme
			local eventMarker = theme.eventMarker

			return Roact.createElement(TrackListEntry, {
				Height = Constants.TRACK_HEIGHT,
				Indent = indent,
				ShowBackground = true,
				LayoutOrder = layoutOrder,
			}, {
				TitleLabel = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,

					Text = localization:getText("Title", "AnimationEvents"),
					Font = theme.font,
					TextSize = trackTheme.textSize,
					TextColor3 = trackTheme.textColor,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),

				AddEvent = Roact.createElement("ImageButton", {
					Size = UDim2.new(0, Constants.TRACKLIST_BUTTON_SIZE, 0, Constants.TRACKLIST_BUTTON_SIZE),
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(1, -Constants.TRACKLIST_RIGHT_PADDING, 0.5, 0),
					BackgroundTransparency = 1,
					ImageTransparency = 1,

					[Roact.Event.Activated] = self.onButtonClick,
					[Roact.Event.MouseEnter] = self.mouseEnter,
					[Roact.Event.MouseLeave] = self.mouseLeave,
				}, {
					EventMarker = Roact.createElement("ImageLabel", {
						Size = UDim2.new(0, 5, 0, 15),
						Position = UDim2.new(0, 1, 0, 1),
						Image = trackTheme.addEventBackground,
						ImageColor3 = eventMarker.imageColor,
						BackgroundTransparency = 1,
					}),

					EventBorder = Roact.createElement("ImageLabel", {
						Size = UDim2.new(0, 15, 0, 15),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Image = trackTheme.addEventBorder,
						ImageColor3 = trackTheme.plusIconColor,
						BackgroundTransparency = 1,
					}),
				}),
			})
end

ContextServices.mapToProps(AnimationEventsTrack, {
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse
})


return AnimationEventsTrack