--[[
	Contains a series of buttons meant to control editing or playback.

	Props:
		string PlayState = One of Constants.PLAY_STATE (Reverse, Paused, Play).
		bool IsLooping = Whether the animation is a looping animation.
		int LayoutOrder = The display order of this component.

		function SetPlayState(playState) = A callback for when the user changes the playback state.
		function ToggleLooping() = A callback for when the user wants to toggle the looping state.
		function SkipBackward() = A callback for when the user wants to skip backward to the
			previous keyframe in the animation.
		function SkipForward() = A callback for when the user wants to skip forward to the next
			keyframe in the animation.
		function GoToFirstFrame() = A callback for when the user wants to go to the first frame.
		function GoToLastFrame() = A callback for when the user wants to go to the last frame.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)
local LayoutOrderIterator = require(Plugin.Src.Util.LayoutOrderIterator)
local Button = Framework.UI.Button
local Tooltip = require(Plugin.Src.Components.Tooltip)

local MediaControls = Roact.PureComponent:extend("MediaControls")

function MediaControls:makeButton(image, onClick, playbackTheme, tooltipKey)
	local style = THEME_REFACTOR and self.props.Stylizer.PluginTheme.button or self.props.Theme:get("PluginTheme").button
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
	local style = THEME_REFACTOR and self.props.Stylizer.PluginTheme.button or self.props.Theme:get("PluginTheme").button
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

function MediaControls:makePlayToggle(active, image, playState, playbackTheme, tooltipKey)
	local style = THEME_REFACTOR and self.props.Stylizer.PluginTheme.button or self.props.Theme:get("PluginTheme").button
	return Roact.createElement("Frame", {
		LayoutOrder = self.layoutOrderIterator:getNextOrder(),
		Size = UDim2.new(0, Constants.TIMELINE_HEIGHT, 0, Constants.TIMELINE_HEIGHT),
		BackgroundTransparency = 1,
	}, {
		Button = Roact.createElement(Button, {
			ZIndex = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Style = active and style.ActiveControl or style.MediaControl,
			OnClick = function()
				if self.props.SetPlayState then
					self.props.SetPlayState(playState)
				end
			end,
		}, {
			Image = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Image = image,
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
		local theme = THEME_REFACTOR and props.Stylizer.PluginTheme or props.Theme:get("PluginTheme")

		local isLooping = props.IsLooping
		local isReverse = props.PlayState == Constants.PLAY_STATE.Reverse
		local isPaused = props.PlayState == Constants.PLAY_STATE.Pause
		local isPlaying = props.PlayState == Constants.PLAY_STATE.Play
		local layoutOrder = props.LayoutOrder
		local skipBackward = props.SkipBackward
		local skipForward = props.SkipForward
		local togglePlay = props.TogglePlay
		local toggleLooping = props.ToggleLooping
		local goToFirstFrame = props.GoToFirstFrame
		local goToLastFrame = props.GoToLastFrame
		local playbackTheme = theme.playbackTheme

		self.layoutOrderIterator = LayoutOrderIterator.new()

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
			GoToFirstFrame = self:makeButton(playbackTheme.goToFirstFrame, goToFirstFrame, playbackTheme, "GoToFirstFrame"),
			SkipBackward = self:makeButton(playbackTheme.skipBackward, skipBackward, playbackTheme, "SkipBackward"),

			Reverse = self:makePlayToggle(isReverse, playbackTheme.reverse, Constants.PLAY_STATE.Reverse, playbackTheme, "Reverse"),
			Pause = self:makePlayToggle(isPaused, playbackTheme.pause, Constants.PLAY_STATE.Pause, playbackTheme, "Pause"),
			Play = self:makePlayToggle(isPlaying, playbackTheme.play, Constants.PLAY_STATE.Play, playbackTheme, "Play"),

			SkipForward = self:makeButton(playbackTheme.skipForward, skipForward, playbackTheme, "SkipForward"),
			GoToLastFrame = self:makeButton(playbackTheme.goToLastFrame, goToLastFrame, playbackTheme, "GoToLastFrame"),

			Loop = self:makeToggle(isLooping, playbackTheme.loop, playbackTheme.loop, toggleLooping, playbackTheme, "ToggleLooping"),
		})
end


MediaControls = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(MediaControls)




return MediaControls