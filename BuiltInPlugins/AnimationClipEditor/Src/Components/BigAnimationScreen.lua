--[[
	Filler UI for when the user loads in an animation too large to be edited.

	Props:
		UDim2 Size = The size of the rendered component.
		int LayoutOrder = The sort order of this component in a UIListLayout.
]]
local FFlagAnimationClipEditorWithContext = game:GetFastFlag("AnimationClipEditorWithContext")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local TimelineActions = require(Plugin.Src.Components.TimelineActions)

local BigAnimationScreen = Roact.PureComponent:extend("BigAnimationScreen")

function BigAnimationScreen:render()
	local theme = self.props.Theme:get("PluginTheme")
	local startScreenTheme = theme.startScreenTheme
	local props = self.props
	local size = props.Size
	local layoutOrder = props.LayoutOrder
	local localization = props.Localization

	local emptyFunc = function() end

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Warning = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			Text = localization:getText(Constants.EDITOR_ERRORS_KEY, Constants.EDITOR_ERRORS.BigAnimation),
			Font = theme.font,
			TextSize = startScreenTheme.textSize,
			TextColor3 = startScreenTheme.textColor,
			TextTruncate = Enum.TextTruncate.AtEnd,
			BackgroundColor3 = theme.backgroundColor,
		}),

		TimelineActions = Roact.createElement(TimelineActions, {
			ShowMenu = false,
			MultipleSelected = false,
			OnMenuOpened = emptyFunc,
			OnItemSelected = emptyFunc,
			OnRenameKeyframe = emptyFunc,
			OnChangeDuration = emptyFunc,
		}),
	})
end


if FFlagAnimationClipEditorWithContext then
	BigAnimationScreen = withContext({
		Theme = ContextServices.Theme,
		Localization = ContextServices.Localization,
	})(BigAnimationScreen)
else
	ContextServices.mapToProps(BigAnimationScreen, {
		Theme = ContextServices.Theme,
		Localization = ContextServices.Localization,
	})
end



return BigAnimationScreen