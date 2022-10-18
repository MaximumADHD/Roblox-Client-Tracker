local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent

local GlobalConfig = require(InGameMenu.GlobalConfig)

local validateProps = t.strictInterface({
	Size = t.optional(t.UDim2),
	Position = t.optional(t.UDim2),
	AnchorPoint = t.optional(t.Vector2),
	LayoutOrder = t.union(t.integer, t.table),
	Visible = t.optional(t.boolean),
	theme = t.optional(t.string),
})

local function Divider(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withStyle(function(style)
		local theme = props.theme and style.Theme[props.theme] or style.Theme.Divider

		-- Divider relies on being right-aligned in order to be left-indented.
		return Roact.createElement("Frame", Cryo.Dictionary.join({
			Size = UDim2.new(1, 0, 0, 1),
		}, props, {
			BorderSizePixel = 0,
			BackgroundColor3 = theme.Color,
			BackgroundTransparency = theme.Transparency,
			theme = Cryo.None,
		}))
	end)
end

return Divider
