local MarketplaceService = game:GetService("MarketplaceService")
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local MediaType = require(Foundation.Enums.MediaType)
local Theme = require(Foundation.Enums.Theme)
local Tile = require(Foundation.Components.Tile)

local Badge = require(Foundation.Components.Badge.Badge)
local BadgeShape = require(Foundation.Enums.BadgeShape)
local BadgeSize = require(Foundation.Enums.BadgeSize)
local BadgeVariant = require(Foundation.Enums.BadgeVariant)
local IconPosition = require(Foundation.Enums.IconPosition)
local Icons = BuilderIcons.Icon
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
type BadgeVariant = BadgeVariant.BadgeVariant
type BadgeShape = BadgeShape.BadgeShape

local useTokens = require(Foundation.Providers.Style.useTokens)

local itemTileSize = UDim2.fromOffset(150, 240)
local itemId = 21070012

-- DEPRECATED Primary and Secondary variants are scheduled for removal in the next major release (2.0)
local nonDeprecatedVariants = Dash.filter(Dash.values(BadgeVariant), function(item)
	return item ~= BadgeVariant.Primary and item ~= BadgeVariant.Secondary
end) :: { BadgeVariant }

return {
	summary = "Badge",
	stories = {
		{
			name = "Base",
			story = function(props): React.Node
				local tokens = useTokens()

				local item, setItem = React.useState({} :: { Name: string?, PriceText: string? })
				React.useEffect(function()
					setItem({})
					spawn(function()
						wait(2.0)
						local itemInfo = MarketplaceService:GetProductInfoAsync(itemId)
						if itemInfo.IsPublicDomain then
							itemInfo.PriceInRobux = 0
							itemInfo.PriceText = "Free"
						else
							assert(itemInfo.PriceInRobux ~= nil, "Item price will not be nil")
							itemInfo.PriceText = "\u{E002}" .. tostring(itemInfo.PriceInRobux)
						end

						setItem(itemInfo)
					end)
				end, { itemId })

				if props.controls.onTile then
					return React.createElement(Tile.Root, {
						isContained = true,
						FillDirection = Enum.FillDirection.Vertical,
						Size = itemTileSize,
					}, {
						TileMedia = React.createElement(Tile.Media, {
							id = itemId,
							type = MediaType.Asset,
							aspectRatio = 1,
							background = {
								image = "component_assets/itemBG_"
									.. if tokens.Config.Theme.Name == Theme.Dark then "dark" else "light",
							},
						}, {
							UIListLayout = React.createElement("UIListLayout", {
								FillDirection = Enum.FillDirection.Vertical,
								HorizontalAlignment = Enum.HorizontalAlignment.Left,
								VerticalAlignment = Enum.VerticalAlignment.Bottom,
								SortOrder = Enum.SortOrder.LayoutOrder,
							}),
							Badge = React.createElement(Badge, {
								text = props.controls.text,
								icon = if props.controls.icon ~= ""
									then { name = props.controls.icon, position = props.controls.iconPosition }
									else nil,
								size = props.controls.size,
								isDisabled = props.controls.isDisabled,
								variant = props.controls.variant,
								shape = props.controls.shape,
							}),
						}),
						TileContent = React.createElement(Tile.Content, {}, {
							TileHeader = React.createElement(Tile.Header, {
								title = {
									text = item.Name,
									isLoading = item.Name == nil,
									fontStyle = tokens.Typography.HeadingSmall,
									numLines = 2,
								},
								subtitle = {
									text = item.PriceText,
									isLoading = item.PriceText == nil,
									fontStyle = tokens.Typography.BodyLarge,
									colorStyle = tokens.Color.Content.Muted,
								},
								spacing = tokens.Gap.Small,
							}),
						}),
					})
				end

				return React.createElement(Badge, {
					text = props.controls.text,
					icon = if props.controls.icon ~= ""
						then { name = props.controls.icon, position = props.controls.iconPosition }
						else nil,
					size = props.controls.size,
					isDisabled = props.controls.isDisabled,
					variant = props.controls.variant,
					shape = props.controls.shape,
				})
			end,
		} :: unknown,
		{
			name = "All variants",
			story = function(props)
				return React.createElement(
					View,
					{ tag = "row wrap gap-xxlarge auto-xy" },
					Dash.map(nonDeprecatedVariants, function(variant, index)
						return React.createElement(
							View,
							{
								tag = "col align-x-center gap-small auto-xy",
								LayoutOrder = index,
							},
							React.createElement(Text, {
								tag = "auto-xy text-caption-small text-align-x-center",
								Text = variant,
								LayoutOrder = 1,
							}),
							React.createElement(Badge, {
								text = props.controls.text,
								icon = if props.controls.icon ~= ""
									then { name = props.controls.icon, position = props.controls.iconPosition }
									else nil,
								size = props.controls.size,
								isDisabled = props.controls.isDisabled,
								variant = variant :: BadgeVariant,
								shape = props.controls.shape,
								LayoutOrder = 2,
							})
						)
					end)
				)
			end,
		},
		{
			name = "All shapes",
			story = function(props)
				return React.createElement(
					View,
					{ tag = "row wrap gap-xxlarge auto-xy" },
					Dash.map(Dash.values(BadgeShape), function(shape, index)
						return React.createElement(
							View,
							{ tag = "col align-x-center gap-small auto-xy", LayoutOrder = index },
							React.createElement(Text, {
								tag = "auto-xy text-caption-small text-align-x-center",
								Text = shape,
								LayoutOrder = 1,
							}),
							React.createElement(Badge, {
								text = props.controls.text,
								icon = if props.controls.icon ~= ""
									then { name = props.controls.icon, position = props.controls.iconPosition }
									else nil,
								size = props.controls.size,
								isDisabled = props.controls.isDisabled,
								variant = props.controls.variant,
								shape = shape :: BadgeShape,
								LayoutOrder = 2,
							})
						)
					end)
				)
			end,
		},
		{
			name = "Deprecated variants",
			story = function(props)
				return React.createElement(
					View,
					{ tag = "row wrap gap-xxlarge auto-xy" },
					Dash.map({ BadgeVariant.Primary :: BadgeVariant, BadgeVariant.Secondary }, function(variant, index)
						return React.createElement(
							View,
							{ tag = "col align-x-center gap-small auto-xy", LayoutOrder = index },
							React.createElement(Text, {
								tag = "auto-xy text-caption-small text-align-x-center",
								Text = variant,
								LayoutOrder = 1,
							}),
							React.createElement(Badge, {
								text = props.controls.text,
								icon = if props.controls.icon ~= ""
									then { name = props.controls.icon, position = props.controls.iconPosition }
									else nil,
								size = props.controls.size,
								isDisabled = props.controls.isDisabled,
								variant = variant :: BadgeVariant,
								shape = props.controls.shape,
								LayoutOrder = 2,
							})
						)
					end)
				)
			end,
		},
	},
	controls = {
		text = "Label",
		icon = {
			Icons.CirclePlus,
			Icons.Diamond,
			Icons.DiamondSimplified,
			Icons.House,
			"icons/placeholder/placeholderOn_small",
			"icons/menu/clothing/limited_on",
			"",
		},
		variant = nonDeprecatedVariants,
		shape = Dash.values(BadgeShape),
		iconPosition = Dash.values(IconPosition),
		size = Dash.values(BadgeSize),
		onTile = false,
	},
}
