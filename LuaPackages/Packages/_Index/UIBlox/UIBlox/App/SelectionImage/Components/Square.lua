local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBloxRoot.Core.Style.withStyle)

local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local Images = require(UIBloxRoot.App.ImageSet.Images)
local AnimatedGradient = require(script.Parent.AnimatedGradient)

local UIBloxConfig = require(UIBloxRoot.UIBloxConfig)

local INSET_ADJUSTMENT = 2
local ASSET_NAME = "component_assets/square_7_stroke_3"

local validateProps = t.strictInterface({
	[Roact.Ref] = t.table,
	isVisible = t.boolean
})

return function(props)
	if UIBloxConfig.useAnimatedXboxCursors then
		assert(validateProps(props))
	end

	return withStyle(function(style)
		return Roact.createElement(ImageSetComponent.Label, {
			Image = Images[ASSET_NAME],
			ImageColor3 = UIBloxConfig.useAnimatedXboxCursors and style.Theme.SelectionCursor.AnimatedColor
				or style.Theme.SelectionCursor.Color,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, INSET_ADJUSTMENT * 2, 1, INSET_ADJUSTMENT * 2),
			Position = UDim2.fromOffset(-INSET_ADJUSTMENT, -INSET_ADJUSTMENT),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(3.5, 3.5, 3.5, 3.5),

			[Roact.Ref] = props[Roact.Ref],
		}, {
			AnimatedGradient = (UIBloxConfig.useAnimatedXboxCursors and props.isVisible)
				and Roact.createElement(AnimatedGradient) or nil
		})
	end)
end