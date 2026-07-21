local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local InGameMenu = script.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)

local GlobalConfig = require(InGameMenu.GlobalConfig)

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local Foundation = require(CorePackages.Packages.Foundation)
local Image = Foundation.Image
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagCoreUiMigrateUIBloxToFoundation = SharedFlags.FFlagCoreUiMigrateUIBloxToFoundation

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

	local imageData = INPUT_TYPE_TO_ICON_MAP[props.input]

	if FFlagCoreUiMigrateUIBloxToFoundation then
		return Roact.createElement(Image, {
			Image = imageData.Image,
			imageRect = { offset = imageData.ImageRectOffset, size = imageData.ImageRectSize },
			Size = UDim2.new(0, 36, 0, 36),
			Position = props.Position,
			AnchorPoint = props.AnchorPoint,
			LayoutOrder = props.LayoutOrder,
		})
	end

	return Roact.createElement(ImageSetLabel, {
		BackgroundTransparency = 1,
		Image = imageData,
		Size = UDim2.new(0, 36, 0, 36),
		Position = props.Position,
		AnchorPoint = props.AnchorPoint,
		LayoutOrder = props.LayoutOrder,
	})
end

return PointerLabel
