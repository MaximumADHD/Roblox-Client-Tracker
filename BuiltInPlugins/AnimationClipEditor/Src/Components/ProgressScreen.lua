--[[
	Represents the progress screen which is shown when creating an
	aniamtion from a video.

	Props:
		UDim2 Size = The size of the rendered component.
		int LayoutOrder = The sort order of this component in a UIListLayout.
		instance RootInstance = The current root instance targeted by the editor.

		function OnCancelled() = A callback for when the user cancels creating
		the animation.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Constants = require(Plugin.Src.Util.Constants)
local FocusedPrompt = require(Plugin.Src.Components.EditEventsDialog.FocusedPrompt)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local ProgressScreen = Roact.PureComponent:extend("ProgressScreen")

local HORIZONTAL_PADDING = 8
local VERTICAL_PADDING = 8
local HORIZONTAL_SIZE = 380
local VERTICAL_SIZE = 140

--[[
	Returns the name of a status code in Constants.ANIMATION_FROM_VIDEO_STATUS.
	For example if 'status' is Constants.ANIMATION_FROM_VIDEO_STATUS.Initializing,
	this will return "Initializing".
]]
function ProgressScreen:statusCodeToKey(status)
	for key, value in pairs(Constants.ANIMATION_FROM_VIDEO_STATUS) do
		if value == status then
			return key
		end
	end
	return "Error"
end

--[[
	Returns the localized string (for display in UI) for the of the status codes
	in Constants.ANIMATION_FROM_VIDEO_STATUS.
]]
function ProgressScreen:statusCodeToString(status)
	local key = self:statusCodeToKey(status)
	local localization = self.props.Localization
	return localization:getText("AnimationFromVideo", key)
end

function ProgressScreen:render()
	local theme = GetFFlagExtendPluginTheme() and self.props.Stylizer or self.props.Stylizer.PluginTheme
	local localization = self.props.Localization
	local progressScreenTheme = theme.progressScreenTheme
	local props = self.props
	local onCancelled = props.OnCancelled
	local onClose = props.OnClose
	local dialogTheme = theme.dialogTheme
	local progressBarTheme = theme.progressBarTheme
	local progress = math.max(0.0, math.min(1.0, props.Progress / 100.0))
	local statusString = self:statusCodeToString(props.Status)

	return Roact.createElement(FocusedPrompt, {
		Size = UDim2.new(0, HORIZONTAL_SIZE, 0, VERTICAL_SIZE),
		Buttons = {
			{ Key = false, Text = localization:getText("Dialog", "Cancel") },
		},
		OnButtonClicked = onCancelled,
		OnClose = onClose,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, VERTICAL_PADDING),
		}),

		PromptText = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, Constants.TRACK_HEIGHT),
			BackgroundTransparency = 1,
			TextSize = dialogTheme.textSize,
			TextColor3 = dialogTheme.textColor,
			Font = theme.font,
			Text = statusString,
			TextTruncate = Enum.TextTruncate.AtEnd,
			LayoutOrder = 1,
		}),

		ProgressBarContainer = Roact.createElement("Frame", {
			BackgroundColor3 = theme.BorderColor,
			BackgroundTransparency = 0,
			BorderSizePixel = 1,
			Size = UDim2.new(1, 0, 0, Constants.TRACK_HEIGHT),
			LayoutOrder = 2,
		}, {
			ProgressBar = Roact.createElement("Frame", {
				BackgroundColor3 = progressBarTheme.backgroundColor,
				Size = UDim2.new(progress, 0, 0, Constants.TRACK_HEIGHT),
			}),
		}),
	})
end

ProgressScreen = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(ProgressScreen)

return ProgressScreen
