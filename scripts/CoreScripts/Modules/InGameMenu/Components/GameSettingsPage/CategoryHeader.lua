local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent

local GlobalConfig = require(InGameMenu.GlobalConfig)

local ThemedTextLabel = require(script.Parent.Parent.ThemedTextLabel)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	localizationKey = t.string,
})

return function(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.new(1, 0, 0, 36),
	}, {
		Label = withLocalization({
			text = props.localizationKey
		})(function(localization)
			return Roact.createElement(ThemedTextLabel, {
				fontKey = "Footer",
				themeKey = "TextEmphasis",

				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(1, -48, 0, 14),
				Text = localization.text,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
			})
		end)
	})
end