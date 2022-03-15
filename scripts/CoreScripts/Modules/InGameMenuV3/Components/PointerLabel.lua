local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local InGameMenu = script.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)

local GlobalConfig = require(InGameMenu.GlobalConfig)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local INPUT_TYPE_TO_ICON_MAP = {
	[Enum.UserInputType.MouseButton1] = Assets.Images.Mouse1Press,
	[Enum.UserInputType.MouseButton2] = Assets.Images.Mouse2Press,
	[Enum.UserInputType.MouseWheel] = Assets.Images.MouseWheelScroll,
}

local validateProps = t.strictInterface({
	input = t.enum(Enum.UserInputType),
	AnchorPoint = t.optional(t.Vector2),
	Position = t.optional(t.UDim2),
	LayoutOrder = t.optional(t.integer),
})

local function PointerLabel(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return Roact.createElement(ImageSetLabel, {
		BackgroundTransparency = 1,
		Image = INPUT_TYPE_TO_ICON_MAP[props.input],

		Size = UDim2.new(0, 36, 0, 36),
		Position = props.Position,
		AnchorPoint = props.AnchorPoint,

		LayoutOrder = props.LayoutOrder,
	})
end

return PointerLabel