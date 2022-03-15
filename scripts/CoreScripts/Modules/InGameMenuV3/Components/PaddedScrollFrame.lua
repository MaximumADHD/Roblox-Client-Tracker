local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)

local GlobalConfig = require(InGameMenu.GlobalConfig)

local validateProps = t.strictInterface({
	Size = t.optional(t.UDim2),
	AnchorPoint = t.optional(t.UDim2),
	CanvasSize = t.optional(t.UDim2),
	Position = t.optional(t.UDim2),
	[Roact.Children] = t.optional(t.table),
})

local function PaddedScrollFrame(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end
	return withStyle(function(style)
		return Roact.createElement("ScrollingFrame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			ScrollBarImageColor3 = style.Theme.UIEmphasis.Color,
			ScrollBarImageTransparency = style.Theme.UIEmphasis.Transparency,

			BottomImage = Assets.Images.ScrollBottom,
			MidImage = Assets.Images.ScrollMid,
			TopImage = Assets.Images.ScrollTop,
			ClipsDescendants = false,
			ScrollBarThickness = 12,

			Size = props.Size,
			AnchorPoint = props.AnchorPoint,
			CanvasSize = props.CanvasSize,
			Position = props.Position,
		}, props[Roact.Children])
	end)
end

return PaddedScrollFrame