--[[
	Filler UI for when the user loads in an animation too large to be edited.

	Props:
		UDim2 Size = The size of the rendered component.
		int LayoutOrder = The sort order of this component in a UIListLayout.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local UILibrary = require(Plugin.UILibrary)

local Localizing = UILibrary.Localizing
local withLocalization = Localizing.withLocalization

local Theme = require(Plugin.Src.Context.Theme)
local withTheme = Theme.withTheme

local BigAnimationScreen = Roact.PureComponent:extend("BigAnimationScreen")

function BigAnimationScreen:render()
	return self:renderInternal(function(theme, localization)
		local startScreenTheme = theme.startScreenTheme
		local props = self.props
		local size = props.Size
		local layoutOrder = props.LayoutOrder

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
		})
	end)
end

-- Combine "with" functions to prevent rightward drift of render()
function BigAnimationScreen:renderInternal(renderFunc)
	return withTheme(function(theme)
		return withLocalization(function(localization)
			return renderFunc(theme, localization)
		end)
	end)
end

return BigAnimationScreen