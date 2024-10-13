--!nonstrict
local BaseTile = script.Parent
local Tile = BaseTile.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)
local UIBloxConfig = require(Packages.UIBlox.UIBloxConfig)

local Images = require(UIBlox.App.ImageSet.Images)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

local TileSelectionOverlay = Roact.PureComponent:extend("TileSelectionOverlay")

TileSelectionOverlay.validateProps = t.strictInterface({
	ZIndex = t.optional(t.integer),
	cornerRadius = t.optional(t.UDim),
})

TileSelectionOverlay.defaultProps = {
	cornerRadius = UDim.new(0, 0),
}

function TileSelectionOverlay:render()
	local zIndex = self.props.ZIndex
	local cornerRadius = self.props.cornerRadius

	local selectionIcon = Images["icons/actions/selectOn"]
	local imageSize = selectionIcon.ImageRectSize / Images.ImagesResolutionScale

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		local paddingRight, paddingTop
		if UIBloxConfig.itemTileOverlayPaddingUseTokens then
			-- Use reduced padding here because selected icon includes empty border space
			local tokens = stylePalette.Tokens
			paddingRight = tokens.Global.Size_25
			paddingTop = tokens.Global.Size_25
		else
			paddingRight = 6
			paddingTop = 6
		end

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
				Image = selectionIcon,
				Position = UDim2.new(1, -paddingRight, 0, paddingTop),
				Size = UDim2.new(0, imageSize.X, 0, imageSize.Y),
			}),
			UICorner = cornerRadius ~= UDim.new(0, 0) and Roact.createElement("UICorner", {
				CornerRadius = cornerRadius,
			}) or nil,
		})
	end)
end

return TileSelectionOverlay
