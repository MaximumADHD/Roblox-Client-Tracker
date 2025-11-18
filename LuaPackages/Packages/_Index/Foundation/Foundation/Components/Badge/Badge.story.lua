local MarketplaceService = game:GetService("MarketplaceService")
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Tile = require(Foundation.Components.Tile)
local MediaType = require(Foundation.Enums.MediaType)
local Theme = require(Foundation.Enums.Theme)

local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local Badge_NEW = require(Foundation.Components.Badge.Badge)
local Badge_DEPRECATED = require(Foundation.Components.Badge.Badge_DEPRECATED)
local BadgeVariant = require(Foundation.Enums.BadgeVariant)
type BadgeVariant = BadgeVariant.BadgeVariant

local useTokens = require(Foundation.Providers.Style.useTokens)
local Flags = require(Foundation.Utility.Flags)

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
				Flags.FoundationUpdateBadgeDesign = props.controls.updateBadgeDesign
				local tokens = useTokens()
				local Badge = if props.controls.updateBadgeDesign then Badge_NEW else Badge_DEPRECATED

				local item, setItem = React.useState({} :: { Name: string?, PriceText: string? })
				React.useEffect(function()
					setItem({})
					spawn(function()
						wait(2.0)
						local itemInfo = MarketplaceService:GetProductInfo(itemId)
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
								icon = if props.controls.icon ~= "" then props.controls.icon else nil,
								size = props.controls.size,
								isDisabled = props.controls.isDisabled,
								variant = props.controls.variant,
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
					icon = if props.controls.icon ~= "" then props.controls.icon else nil,
					size = props.controls.size,
					isDisabled = props.controls.isDisabled,
					variant = props.controls.variant,
				})
			end,
		} :: unknown,
		{
			name = "All variants",
			story = function(props)
				local Badge = if props.controls.updateBadgeDesign then Badge_NEW else Badge_DEPRECATED
				return React.createElement(
					View,
					{ tag = "row wrap auto-xy gap-xxlarge" },
					Dash.map(nonDeprecatedVariants, function(variant)
						return React.createElement(
							View,
							{ tag = "col gap-small auto-xy align-x-center" },
							React.createElement(
								Text,
								{ tag = "auto-xy text-align-x-center text-caption-small", Text = variant }
							),
							React.createElement(Badge, {
								text = props.controls.text,
								icon = if props.controls.icon ~= "" then props.controls.icon else nil,
								size = props.controls.size,
								isDisabled = props.controls.isDisabled,
								variant = variant :: BadgeVariant,
							})
						)
					end)
				)
			end,
		},
		{
			name = "Deprecated variants",
			story = function(props)
				local Badge = if props.controls.updateBadgeDesign then Badge_NEW else Badge_DEPRECATED
				return React.createElement(
					View,
					{ tag = "row wrap auto-xy gap-xxlarge" },
					Dash.map({ BadgeVariant.Primary :: BadgeVariant, BadgeVariant.Secondary }, function(variant)
						return React.createElement(
							View,
							{ tag = "col gap-small auto-xy align-x-center" },
							React.createElement(
								Text,
								{ tag = "auto-xy text-align-x-center text-caption-small", Text = variant }
							),
							React.createElement(Badge, {
								text = props.controls.text,
								icon = if props.controls.icon ~= "" then props.controls.icon else nil,
								size = props.controls.size,
								isDisabled = props.controls.isDisabled,
								variant = variant :: BadgeVariant,
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
			"diamond-simplified",
			"house",
			"icons/placeholder/placeholderOn_small",
			"icons/menu/clothing/limited_on",
			"",
		},
		variant = nonDeprecatedVariants,
		onTile = false,
		updateBadgeDesign = Flags.FoundationUpdateBadgeDesign,
	},
}
