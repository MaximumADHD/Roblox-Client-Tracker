local MarketplaceService = game:GetService("MarketplaceService")
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Tile = require(Foundation.Components.Tile)
local MediaType = require(Foundation.Enums.MediaType)
local Radius = require(Foundation.Enums.Radius)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local Theme = require(Foundation.Enums.Theme)

local Badge = require(Foundation.Components.Badge)
local BadgeVariant = require(Foundation.Enums.BadgeVariant)
type BadgeVariant = BadgeVariant.BadgeVariant

local useTokens = require(Foundation.Providers.Style.useTokens)

local itemTileSize = UDim2.fromOffset(150, 230)
local itemId = 21070012

return {
	summary = "Badge",
	stories = Dash.map(BadgeVariant, function(variant)
		return {
			name = variant,
			story = function(props): React.Node
				local tokens = useTokens()

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
						fillDirection = Enum.FillDirection.Vertical,
						fillBehavior = FillBehavior.Fit,
						spacing = tokens.Gap.Small,
						backgroundStyle = tokens.Color.Shift.Shift_200,
						-- Add negative size to offset border
						Size = itemTileSize - UDim2.fromOffset(2, 2),
					}, {
						UIStroke = React.createElement("UIStroke", {
							Color = tokens.Color.Stroke.Emphasis.Color3,
							Transparency = tokens.Color.Stroke.Emphasis.Transparency,
							Thickness = 1,
						}),
						UICorner = React.createElement("UICorner", {
							CornerRadius = UDim.new(0, tokens.Radius.Medium),
						}),
						TileMedia = React.createElement(Tile.Media, {
							mediaId = itemId,
							mediaType = MediaType.Asset,
							aspectRatio = 1,
							radius = Radius.Medium,
							background = "component_assets/itemBG_"
								.. if tokens.Config.Theme.Name == Theme.Dark then "dark" else "light",
						}, {
							UIListLayout = React.createElement("UIListLayout", {
								FillDirection = Enum.FillDirection.Vertical,
								HorizontalAlignment = Enum.HorizontalAlignment.Left,
								VerticalAlignment = Enum.VerticalAlignment.Bottom,
								SortOrder = Enum.SortOrder.LayoutOrder,
							}),
							UIPadding = React.createElement("UIPadding", {
								PaddingTop = UDim.new(0, tokens.Padding.XSmall),
								PaddingBottom = UDim.new(0, tokens.Padding.XSmall),
								PaddingLeft = UDim.new(0, tokens.Padding.XSmall),
								PaddingRight = UDim.new(0, tokens.Padding.XSmall),
							}),
							Badge = React.createElement(Badge, {
								text = props.controls.text,
								icon = if props.controls.icon ~= "" then props.controls.icon else nil,
								isDisabled = props.controls.isDisabled,
								variant = variant,
							}),
						}),
						TileContent = React.createElement(Tile.Content, {
							spacing = tokens.Gap.XXSmall,
							padding = tokens.Gap.Small,
						}, {
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
					isDisabled = props.controls.isDisabled,
					variant = variant,
				})
			end,
		}
	end),
	controls = {
		text = "NEW",
		icon = {
			"icons/placeholder/placeholderOn_small",
			"icons/menu/clothing/limited_on",
			"",
		},
		isDisabled = false,
		onTile = false,
	},
}
