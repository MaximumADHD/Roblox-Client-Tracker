local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent

local GlobalConfig = require(InGameMenu.GlobalConfig)

local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local HEADER_PADDING_TOP = 20
local HEADER_TEXT_HEIGHT = 17
local HEADER_PADDING_BOTTOM = 8

local HEADER_HEIGHT = HEADER_PADDING_TOP + HEADER_TEXT_HEIGHT + HEADER_PADDING_BOTTOM

local validateProps = t.strictInterface({
	title = t.string,
	LayoutOrder = t.integer,
})

local function ControlEntry(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withLocalization({
		title = props.title,
	})(function(localized)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
			BackgroundTransparency = 1,
			LayoutOrder = props.LayoutOrder,
		}, {
			HeaderText = Roact.createElement(ThemedTextLabel, {
				fontKey = "CaptionHeader",
				themeKey = "TextMuted",

				Text = localized.title,
				TextXAlignment = Enum.TextXAlignment.Left,
				Position = UDim2.new(0, 0, 0, HEADER_PADDING_TOP),
				Size = UDim2.new(1, 0, 0, HEADER_TEXT_HEIGHT),
			})
		})
	end)
end

return ControlEntry