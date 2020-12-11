--[[
	This component covers the editor if the user deactivates the plugin
	while it is open (for example, selecting a part or other plugin).
	The OnFocused callback is for when the user returns focus to the editor.

	Props:
		function OnFocused() = A callback for when the user wants to
			return focus to the Animation Editor plugin.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local UILibrary = require(Plugin.UILibrary)

local Localizing = UILibrary.Localizing
local withLocalization = Localizing.withLocalization

local Theme = require(Plugin.SrcDeprecated.Context.Theme)
local withTheme = Theme.withTheme

local CaptureFocus = UILibrary.Focus.CaptureFocus

local InactiveCover = Roact.PureComponent:extend("InactiveCover")

function InactiveCover:render()
	return self:renderInternal(function(theme, localization)
		local onFocused = self.props.OnFocused

		return Roact.createElement(CaptureFocus, {
			Priority = 100,
		}, {
			Text = Roact.createElement("TextButton", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = Color3.new(),
				BackgroundTransparency = 0.35,
				AutoButtonColor = false,

				Font = theme.font,
				TextSize = theme.startScreenTheme.textSize,
				TextColor3 = theme.startScreenTheme.darkTextColor,
				Text = localization:getText("Title", "ClickToContinue"),

				[Roact.Event.Activated] = onFocused,
			}),
		})
	end)
end

-- Combine "with" functions to prevent rightward drift of render()
function InactiveCover:renderInternal(renderFunc)
	return withTheme(function(theme)
		return withLocalization(function(localization)
			return renderFunc(theme, localization)
		end)
	end)
end

return InactiveCover
