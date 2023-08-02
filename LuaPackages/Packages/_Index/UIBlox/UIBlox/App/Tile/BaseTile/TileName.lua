--!nonstrict
local BaseTile = script.Parent
local Tile = BaseTile.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)

local Images = require(UIBlox.App.ImageSet.Images)
local ShimmerPanel = require(UIBlox.App.Loading.ShimmerPanel)
local ImageTextLabel = require(UIBlox.Core.Text.ImageTextLabel.ImageTextLabel)
local EmojiTextLabel = require(UIBlox.Core.Text.EmojiTextLabel.EmojiTextLabel)
local Emoji = require(UIBlox.Core.Emoji.Enum.Emoji)
local validateFontInfo = require(UIBlox.Core.Style.Validator.validateFontInfo)
local validateTypographyInfo = require(UIBlox.Core.Style.Validator.validateTypographyInfo)

local ICON_PADDING = 4
local LINE_PADDING = 4

local ItemTileName = Roact.PureComponent:extend("ItemTileName")

ItemTileName.validateProps = t.strictInterface({
	LayoutOrder = t.optional(t.integer),

	maxHeight = t.intersection(t.number, t.numberMin(0)),
	maxWidth = t.intersection(t.number, t.numberMin(0)),

	-- Loading skeleton will be rendered if name is not included
	name = t.optional(t.string),

	-- Optional image to be displayed in the title component
	-- Image information should be ImageSet compatible
	titleIcon = t.optional(t.table),

	-- Optional text color to use for tile name
	nameTextColor = t.optional(t.Color3),

	-- Optional boolean to determine whether a VerifiedBadge is shown
	hasVerifiedBadge = t.optional(t.boolean),

	-- Optional height of the title area is set to the max
	useMaxHeight = t.optional(t.boolean),
	fluidSizing = t.optional(t.boolean),

	-- Font style for header (Header2, Body, etc)
	-- Defaults to Header2.
	titleFontStyle = t.optional(t.union(validateFontInfo, validateTypographyInfo)),
})

function ItemTileName:render()
	local layoutOrder = self.props.LayoutOrder
	local maxHeight = self.props.maxHeight
	local maxWidth = self.props.maxWidth
	local name = self.props.name
	local titleIcon = self.props.titleIcon
	local useMaxHeight = self.props.useMaxHeight
	local useFluidSizing = self.props.fluidSizing
	local hasVerifiedBadge = self.props.hasVerifiedBadge

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local font = stylePalette.Font

		local titleFontStyle = self.props.titleFontStyle or font.Header2

		local textSize = if titleFontStyle.RelativeSize
			then font.BaseSize * titleFontStyle.RelativeSize
			else titleFontStyle.FontSize

		if name ~= nil then
			local maxSize = Vector2.new(maxWidth, maxHeight)

			if hasVerifiedBadge then
				return Roact.createElement(EmojiTextLabel, {
					maxSize = maxSize,
					fluidSizing = useFluidSizing,
					emoji = Emoji.Verified,
					fontStyle = titleFontStyle,
					colorStyle = theme.TextEmphasis,
					Text = name,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					LayoutOrder = layoutOrder,
				})
			end

			local titleIconSize = titleIcon and titleIcon.ImageRectSize / Images.ImagesResolutionScale
				or Vector2.new(0, 0)

			local colorStyle = if self.props.nameTextColor and UIBloxConfig.useTokensInPlayerTile
				then { Color = self.props.nameTextColor, Transparency = 0 }
				else theme.TextEmphasis

			if self.props.nameTextColor and not UIBloxConfig.useTokensInPlayerTile then
				return Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 5),
					}),
					Text = Roact.createElement("TextLabel", {
						AnchorPoint = Vector2.new(1, 1),
						BackgroundTransparency = 1,
						Text = name,
						Font = titleFontStyle.Font,
						TextSize = textSize,
						RichText = true,
						TextColor3 = self.props.nameTextColor,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						TextTruncate = Enum.TextTruncate.AtEnd,
					}),
				})
			else
				return Roact.createElement(ImageTextLabel, {
					imageProps = titleIcon and {
						BackgroundTransparency = 1,
						Image = titleIcon,
						ImageColor3 = theme.IconEmphasis.Color,
						ImageTransparency = theme.IconEmphasis.Transparency,
						Size = UDim2.new(0, titleIconSize.X, 0, titleIconSize.Y),
						AnchorPoint = Vector2.new(0, 0),
						Position = UDim2.new(0, 0, 0, 0),
					} or nil,

					genericTextLabelProps = {
						fluidSizing = useFluidSizing,
						fontStyle = titleFontStyle,
						colorStyle = colorStyle,
						Text = name,
						TextTruncate = Enum.TextTruncate.AtEnd,
					},

					frameProps = {
						BackgroundTransparency = 1,
						LayoutOrder = layoutOrder,
					},

					maxSize = maxSize,
					padding = ICON_PADDING,
					useMaxHeight = useMaxHeight,
				})
			end
		else
			return Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = layoutOrder,
				Size = UDim2.new(0, maxWidth, 0, maxHeight),
			}, {
				FirstLine = Roact.createElement(ShimmerPanel, {
					Size = UDim2.new(1, 0, 0, textSize),
				}),

				SecondLine = Roact.createElement(ShimmerPanel, {
					Position = UDim2.new(0, 0, 0, textSize + LINE_PADDING),
					Size = UDim2.new(0.4, 0, 0, textSize),
				}),
			})
		end
	end)
end

return ItemTileName
