local BaseTileRoot = script.Parent
local UIBloxRoot = BaseTileRoot.Parent.Parent

local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)
local withStyle = require(UIBloxRoot.Style.withStyle)

local Images = require(UIBloxRoot.ImageSet.Images)
local ImageSetComponent = require(UIBloxRoot.ImageSet.ImageSetComponent)

local SelectionOverlay = Roact.PureComponent:extend("SelectionOverlay")

local PADDING_RIGHT = 6
local PADDING_TOP = 6

local validateProps = t.strictInterface({
	ZIndex = t.optional(t.integer),
})

function SelectionOverlay:render()
	assert(validateProps(self.props))

	local zIndex = self.props.ZIndex

	local selectionIcon = Images["icons/selected"]
	local imageSize = selectionIcon.ImageRectSize

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.Overlay.Color,
			BackgroundTransparency = theme.Overlay.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = zIndex,
		}, {
			SelectionImage = Roact.createElement(ImageSetComponent.Label, {
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1,
				ImageColor3 = theme.IconEmphasis.Color,
				ImageTransparency = theme.IconEmphasis.Transparency,
				Image = selectionIcon,
				Position = UDim2.new(1, -PADDING_RIGHT, 0, PADDING_TOP),
				Size = UDim2.new(0, imageSize.X, 0, imageSize.Y),
			}),
		})
	end)
end

return SelectionOverlay