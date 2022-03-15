local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent

local GlobalConfig = require(InGameMenu.GlobalConfig)

local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local validateProps = t.strictInterface({
	AnchorPoint = t.optional(t.Vector2),
	Position = t.optional(t.UDim2),
	Size = t.optional(t.UDim2),
	localizationKey = t.string,
})

return function(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withLocalization({
		text = props.localizationKey,
	})(function(localized)
		return Roact.createElement(ThemedTextLabel, {
			fontKey = "Body",
			themeKey = "TextDefault",

			AnchorPoint = props.AnchorPoint or Vector2.new(0, 0.5),
			Position = props.Position or UDim2.new(0, 0, 0.5, 0),
			Size = props.Size or UDim2.new(1, -72, 0.5, 0),
			Text = localized.text,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
		})
	end)
end