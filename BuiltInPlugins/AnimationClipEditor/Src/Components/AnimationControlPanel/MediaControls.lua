--[[
	Contains a series of buttons meant to control editing or playback.

	Props:
		bool IsPlaying = Whether the animation is currently playing.
		bool IsLooping = Whether the animation is a looping animation.
		int LayoutOrder = The display order of this component.

		function TogglePlay() = A callback for when the user wants to toggle the playback state.
		function ToggleLooping() = A callback for when the user wants to toggle the looping state.
		function SkipBackward() = A callback for when the user wants to skip backward to the
			previous keyframe in the animation, or the start of the animation.
		function SkipForward() = A callback for when the user wants to skip forward to the next
			keyframe in the animation, or to the end of the animation.
]]

local DEFAULT_STYLE = "MediaControl"
local ACTIVE_STYLE = "ActiveControl"

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local Constants = require(Plugin.Src.Util.Constants)
local LayoutOrderIterator = require(Plugin.Src.Util.LayoutOrderIterator)
local Button = Framework.UI.Button
local Tooltip = require(Plugin.Src.Components.Tooltip)

local MediaControls = Roact.PureComponent:extend("MediaControls")

function MediaControls:makeButton(image, onClick, playbackTheme, tooltipKey)
	local style = self.props.Theme:get("PluginTheme").button
	return Roact.createElement("Frame", {
		LayoutOrder = self.layoutOrderIterator:getNextOrder(),
		Size = UDim2.new(0, Constants.TIMELINE_HEIGHT, 0, Constants.TIMELINE_HEIGHT),
		BackgroundTransparency = 1,
	}, {
		Button = Roact.createElement(Button, {
			ZIndex = 1,
			Size = UDim2.new(1, 0, 1, 0),
			OnClick = onClick,
			Style = style.MediaControl,
		}, {
			Image = Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Image = image,
					ImageColor3 = playbackTheme.iconColor,
				}),
				Tooltip = tooltipKey and Roact.createElement(Tooltip, {
					TextKey = tooltipKey,
				}),
		}),
	})
end

function MediaControls:makeToggle(active, activeImage, inactiveImage, onClick, playbackTheme, tooltipKey)
	local style = self.props.Theme:get("PluginTheme").button
	return Roact.createElement("Frame", {
		LayoutOrder = self.layoutOrderIterator:getNextOrder(),
		Size = UDim2.new(0, Constants.TIMELINE_HEIGHT, 0, Constants.TIMELINE_HEIGHT),
		BackgroundTransparency = 1,
	}, {
		Button = Roact.createElement(Button, {
			ZIndex = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Style = active and style.ActiveControl or style.MediaControl,
			OnClick = onClick,
		}, {
				Image = Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Image = active and activeImage or inactiveImage,
					ImageColor3 = active and playbackTheme.iconHighlightColor or playbackTheme.iconColor,
				}),
				Tooltip = tooltipKey and Roact.createElement(Tooltip, {
					TextKey = tooltipKey,
				}),
			}),
		})
	end
	

function MediaControls:render()
		local props = self.props
		local theme = props.Theme:get("PluginTheme")

		local isPlaying = props.IsPlaying
		local isLooping = props.IsLooping
		local layoutOrder = props.LayoutOrder
		local skipBackward = props.SkipBackward
		local skipForward = props.SkipForward
		local togglePlay = props.TogglePlay
		local toggleLooping = props.ToggleLooping

		local playbackTheme = theme.playbackTheme

		self.layoutOrderIterator = LayoutOrderIterator:new()

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
			Size = UDim2.new(0, Constants.CONTROLS_WIDTH, 0, Constants.TIMELINE_HEIGHT),
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			SkipBackward = self:makeButton(playbackTheme.skipBackward, skipBackward,
				playbackTheme, "SkipBackward"),
			PlayPause = self:makeToggle(isPlaying, playbackTheme.pause, playbackTheme.play, togglePlay,
				playbackTheme, "Play"),
			SkipForward = self:makeButton(playbackTheme.skipForward, skipForward,
				playbackTheme, "SkipForward"),
			Loop = self:makeToggle(isLooping, playbackTheme.loop, playbackTheme.loop, toggleLooping,
				playbackTheme, "ToggleLooping"),
		})
end

ContextServices.mapToProps(MediaControls, {
	Theme = ContextServices.Theme,
})


return MediaControls