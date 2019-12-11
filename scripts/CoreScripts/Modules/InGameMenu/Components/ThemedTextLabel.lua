local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local Cryo = InGameMenuDependencies.Cryo
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent

local GlobalConfig = require(InGameMenu.GlobalConfig)

local validateProps = t.strictInterface({
	themeKey = t.optional(t.string),
	fontKey = t.optional(t.string),

	AnchorPoint = t.optional(t.Vector2),
	LayoutOrder = t.optional(t.integer),
	Position = t.optional(t.UDim2),
	Size = t.optional(t.UDim2),
	Text = t.string,
	TextColor3 = t.optional(t.Color3),
	TextTransparency = t.optional(t.numberConstrained(0, 1)),
	TextWrapped = t.optional(t.boolean),
	TextXAlignment = t.optional(t.enum(Enum.TextXAlignment)),
	TextYAlignment = t.optional(t.enum(Enum.TextYAlignment)),
	TextTruncate = t.optional(t.enum(Enum.TextTruncate)),
	Visible = t.optional(t.boolean),
	ZIndex = t.optional(t.integer),

	[Roact.Children] = t.optional(t.table),
})

local function ThemedTextLabel(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withStyle(function(style)
		local textTheme = style.Theme[props.themeKey or "TextDefault"]
		local textFont = style.Font[props.fontKey or "Body"]

		-- We want to allow you to override TextColor3 or TextTransparency if
		-- desired, so those two props come first.
		local primitiveProps = Cryo.Dictionary.join({
			TextColor3 = textTheme.Color,
			TextTransparency = textTheme.Transparency,
		}, props, {
			fontKey = Cryo.None,
			themeKey = Cryo.None,

			BackgroundTransparency = 1,
			Font = textFont.Font,
			TextSize = textFont.RelativeSize * style.Font.BaseSize,
		})

		return Roact.createElement("TextLabel", primitiveProps)
	end)
end

return ThemedTextLabel