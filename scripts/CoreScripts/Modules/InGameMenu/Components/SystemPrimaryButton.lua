local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local Cryo = InGameMenuDependencies.Cryo
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent

local GlobalConfig = require(InGameMenu.GlobalConfig)

local ThemedButton = require(script.Parent.ThemedButton)

-- Accepts the same props as ThemedButton.lua
local validateProps = t.strictInterface({
	imageProps = t.optional(t.strictInterface({
		Image = t.string,
		ScaleType = t.enum(Enum.ScaleType),
		SliceCenter = t.Rect,
	})),

	enabled = t.optional(t.boolean),
	renderChildren = t.callback,
	onActivated = t.callback,

	AnchorPoint = t.optional(t.Vector2),
	LayoutOrder = t.optional(t.integer),
	Position = t.optional(t.UDim2),
	Size = t.optional(t.UDim2),
})

local function SystemPrimaryButton(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return Roact.createElement(ThemedButton, Cryo.Dictionary.join(props, {
		normalThemeKey = "SystemPrimaryDefault",
		hoverThemeKey = "SystemPrimaryOnHover",
	}))
end

return SystemPrimaryButton
