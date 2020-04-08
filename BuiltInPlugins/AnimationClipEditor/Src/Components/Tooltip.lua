--[[
	A simple wrapper for the UILibrary Tooltip for ease of use.

	Props:
		string Text = For non-localized text, setting this prop will
			display the given text in the tooltip.
		string TextKey = For localized text, this is the key into the
			Tooltip localization table.


	Optional Props:
		float ShowDelay = The delay in seconds before this tooltip appears.
		int Priority = The display order of this tooltip relative to other
			always-on-top elements.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local UILibrary = require(Plugin.UILibrary)

local Localizing = UILibrary.Localizing
local withLocalization = Localizing.withLocalization

local LibraryTooltip = UILibrary.Component.Tooltip

local Tooltip = Roact.PureComponent:extend("Tooltip")

function Tooltip:render()
	return self:renderInternal(function(localization)
		local props = self.props
		local text = props.Text
		local textKey = props.TextKey
		local showDelay = props.ShowDelay
		local priority = props.Priority

		assert(text or textKey, "Expected either a Text or TextKey prop.")

		local displayText
		if text then
			displayText = text
		elseif textKey then
			displayText = localization:getText("Tooltip", textKey)
		end

		return Roact.createElement(LibraryTooltip, {
			Text = displayText,
			ShowDelay = showDelay,
			Enabled = true,
			Priority = priority or -100,
		})
	end)
end

-- Combine "with" context functions to prevent rightward drift of render()
function Tooltip:renderInternal(renderFunc)
	return withLocalization(function(localization)
		return renderFunc(localization)
	end)
end

return Tooltip
