--!strict
--[[
	Contains a series of buttons meant to control editing or playback.

	Props:
		IsLooping: Whether the animation is a looping animation.
		LayoutOrder: The display order of this component.
		PlayState: One of Constants.PLAY_STATE (Reverse, Paused, Play).

		GoToFirstFrame: A callback for when the user wants to go to the first frame.
		GoToLastFrame: A callback for when the user wants to go to the last frame.
		SetPlayState: A callback for when the user changes the playback state.
		SkipBackward: A callback for when the user wants to skip backward to the
			previous keyframe in the animation.
		SkipForward: A callback for when the user wants to skip forward to the next
			keyframe in the animation.
		ToggleLooping: A callback for when the user wants to toggle the looping state.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)
local LayoutOrderIterator = require(Plugin.Src.Util.LayoutOrderIterator)
local Button = Framework.UI.Button
local Tooltip = require(Plugin.Src.Components.Tooltip)

local FFlagMergePlayPause = game:DefineFastFlag("ACEMergePlayPause", false)

local MediaControls = Roact.PureComponent:extend("MediaControls")

export type Props = {
	-- State/Context
	Stylizer: any,
	Theme: any,

	-- Properties
	IsLooping: boolean,
	LayoutOrder: number?,
	PlayState: string,

	GoToFirstFrame: () -> (),
	GoToLastFrame: () -> (),
	SetPlayState: (string) -> (),
	SkipBackward: () -> (),
	SkipForward: () -> (),
	ToggleLooping: () -> (),
}

function MediaControls:makeButton(image: string, onClick: () -> (), playbackTheme: any, tooltipKey: string): (any)
	local style = self.props.Stylizer.PluginTheme.button
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

function MediaControls:makeToggle(active: boolean, activeImage: string, inactiveImage: string, onClick: () -> (), playbackTheme: any, tooltipKey: string): (any)
	local style = self.props.Stylizer.PluginTheme.button
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

function MediaControls:makePlayToggle_deprecated(active: boolean, image: string, playState: string, playbackTheme: any, tooltipKey: string): (any)
	local style = self.props.Stylizer.PluginTheme.button
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

function MediaControls:makePlayToggle(active: boolean, activeImage: string, inactiveImage: string, playState: string, playbackTheme: any, activeTooltipKey: string, inactiveTooltipKey): (any)
	local style = self.props.Stylizer.PluginTheme.button
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
					self.props.SetPlayState(if active then Constants.PLAY_STATE.Pause else playState)
				end
			end,
		}, {
			Image = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Image = if active then activeImage else inactiveImage,
				ImageColor3 = active and playbackTheme.iconHighlightColor or playbackTheme.iconColor,
			}),
			Tooltip = Roact.createElement(Tooltip, {
				TextKey = if active then activeTooltipKey else inactiveTooltipKey,
			}),
		}),
	})
end

function MediaControls:render(): (any)
	local props = self.props
	local theme = props.Stylizer.PluginTheme

	local isLooping = props.IsLooping
	local isReverse = props.PlayState == Constants.PLAY_STATE.Reverse
	local isPaused = props.PlayState == Constants.PLAY_STATE.Pause
	local isPlaying = props.PlayState == Constants.PLAY_STATE.Play
	local layoutOrder = props.LayoutOrder
	local skipBackward = props.SkipBackward
	local skipForward = props.SkipForward
	local togglePlay = if not FFlagMergePlayPause then props.TogglePlay else nil  -- Unused
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

		Reverse = if not FFlagMergePlayPause then
			self:makePlayToggle_deprecated(isReverse, playbackTheme.reverse, Constants.PLAY_STATE.Reverse, playbackTheme, "Reverse")
		else
			self:makePlayToggle(isReverse, playbackTheme.pause, playbackTheme.reverse, Constants.PLAY_STATE.Reverse, playbackTheme, "Pause", "Reverse"),

		Pause = if not FFlagMergePlayPause then
			self:makePlayToggle_deprecated(isPaused, playbackTheme.pause, Constants.PLAY_STATE.Pause, playbackTheme, "Pause")
		else nil,

		Play = if not FFlagMergePlayPause then
			self:makePlayToggle_deprecated(isPlaying, playbackTheme.play, Constants.PLAY_STATE.Play, playbackTheme, "Play")
		else
			self:makePlayToggle(isPlaying, playbackTheme.pause, playbackTheme.play, Constants.PLAY_STATE.Play, playbackTheme, "Pause", "Play"),

		SkipForward = self:makeButton(playbackTheme.skipForward, skipForward, playbackTheme, "SkipForward"),
		GoToLastFrame = self:makeButton(playbackTheme.goToLastFrame, goToLastFrame, playbackTheme, "GoToLastFrame"),

		Loop = self:makeToggle(isLooping, playbackTheme.loop, playbackTheme.loop, toggleLooping, playbackTheme, "ToggleLooping"),
	})
end

MediaControls = withContext({
	Stylizer = ContextServices.Stylizer,
})(MediaControls)

return MediaControls