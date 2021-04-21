local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBloxRoot.Core.Style.withStyle)

local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local Images = require(UIBloxRoot.App.ImageSet.Images)
local AnimatedGradient = require(script.Parent.AnimatedGradient)

local UIBloxConfig = require(UIBloxRoot.UIBloxConfig)

-- We want to measure from the INSIDE of the cursor so we need
-- to account for the thickness of the cursor image.
local CURSOR_THICKNESS = 3
local INSET_ADJUSTMENT = 8 + CURSOR_THICKNESS
local CURSOR_IMAGE = Images["component_assets/circle_22_stroke_3"]

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
			Image = CURSOR_IMAGE,
			ImageColor3 = UIBloxConfig.useAnimatedXboxCursors and style.Theme.SelectionCursor.AnimatedColor
				or style.Theme.SelectionCursor.Color,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, INSET_ADJUSTMENT * 2, 1, INSET_ADJUSTMENT * 2),
			Position = UDim2.new(0, -INSET_ADJUSTMENT, 0, -INSET_ADJUSTMENT),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(11, 11, 12, 12),

			[Roact.Ref] = props[Roact.Ref],
		}, {
			AnimatedGradient = (UIBloxConfig.useAnimatedXboxCursors and props.isVisible)
				and Roact.createElement(AnimatedGradient) or nil
		})
	end)
end