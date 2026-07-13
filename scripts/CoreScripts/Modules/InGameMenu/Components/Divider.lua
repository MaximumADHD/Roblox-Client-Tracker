local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local Cryo = InGameMenuDependencies.Cryo
local t = InGameMenuDependencies.t

local withFoundationOrUIBloxStyle = require(CorePackages.Workspace.Packages.CoreGuiCommon).withFoundationOrUIBloxStyle

local InGameMenu = script.Parent.Parent

local GlobalConfig = require(InGameMenu.GlobalConfig)

local validateProps = t.strictInterface({
	Size = t.optional(t.UDim2),
	Position = t.optional(t.UDim2),
	AnchorPoint = t.optional(t.Vector2),
	LayoutOrder = t.optional(t.integer),
	Visible = t.optional(t.boolean),
})

local function Divider(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withFoundationOrUIBloxStyle(function(tokens)
		return {
			Theme = {
				Divider = { Color = tokens.Color.Stroke.Emphasis.Color3, Transparency = tokens.Color.Stroke.Emphasis.Transparency },
			},
		}
	end, function(style)
		-- Divider relies on being right-aligned in order to be left-indented.
		return Roact.createElement(
			"Frame",
			Cryo.Dictionary.join(
				{
					Size = UDim2.new(1, 0, 0, 1),
				},
				props,
				{
					BorderSizePixel = 0,
					BackgroundColor3 = style.Theme.Divider.Color,
					BackgroundTransparency = style.Theme.Divider.Transparency,
				}
			)
		)
	end)
end

return Divider
