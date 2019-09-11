local TileRoot = script.Parent.Parent
local UIBloxRoot = TileRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local UIBloxStyle = require(Packages.UIBloxResources.UIBloxStyle)

local Images = require(UIBloxRoot.ImageSet.Images)
local ImageSetComponent = require(UIBloxRoot.ImageSet.ImageSetComponent)
local ItemTile = require(TileRoot.ItemTile.ItemTile)
local ItemTileEnums = require(TileRoot.ItemTile.ItemTileEnums)
local ShimmerPanel = require(UIBloxRoot.Loading.ShimmerPanel)
local StyleProvider = require(UIBloxRoot.Style.StyleProvider)
local withStyle = require(UIBloxRoot.Style.withStyle)

local CatalogItemTiles = Roact.PureComponent:extend("CatalogItemTiles")

local ICON_PADDING = 4

function CatalogItemTiles:init()
	self.state = {
		image = nil,
		name = nil,
		priceText = nil,
	}
end

function CatalogItemTiles:didMount()
	-- Simulate component load
	spawn(function()
		wait(2.0)
		self:setState({
			image = "https://www.roblox.com/outfit-thumbnail/image?userOutfitId=1154935743&width=150&height=150&format=Png",
			name = "Title Case",
			priceText = "12,450",
		})
	end)
end

function CatalogItemTiles:createFooter(stylePalette, overridePriceText, isOwned)
	local priceText = self.state.priceText

	local font = stylePalette.Font.SubHeader1.Font
	local fontSize = stylePalette.Font.BaseSize * stylePalette.Font.SubHeader1.RelativeSize
	local theme = stylePalette.Theme

	local icon = Images["icons/robux"]
	if isOwned then
		icon = Images["icons/itemOwned"]
	end

	local iconSize = icon.ImageRectSize / Images.ImagesResolutionScale

	local finalPrice = overridePriceText or priceText
	local priceIsNumber = priceText and tonumber(finalPrice:sub(1, 1))
	local showIcon = priceText and (priceIsNumber or isOwned)

	local iconPadding = 0
	if showIcon then
		iconPadding = iconSize.X + ICON_PADDING
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		Shimmer = not priceText and Roact.createElement(ShimmerPanel, {
			Size = UDim2.new(0.8, 0, 0, fontSize),
		}),

		icon = showIcon and Roact.createElement(ImageSetComponent.Label, {
			BackgroundTransparency = 1,
			Image = icon,
			ImageColor3 = theme.IconEmphasis.Color,
			ImageTransparency = theme.IconEmphasis.Transparency,
			Size = UDim2.new(0, iconSize.X, 0, iconSize.Y),
		}),

		TextLabel = priceText and Roact.createElement("TextLabel", {
			AnchorPoint = Vector2.new(1, 0),
			BackgroundTransparency = 1,
			Position = UDim2.new(1, 0, 0, 0),
			Size = UDim2.new(1, -iconPadding, 1, 0),
			Font = font,
			TextColor3 = theme.SecondaryContent.Color,
			TextTransparency = theme.SecondaryContent.Transparency,
			TextSize = fontSize,
			Text = overridePriceText or priceText,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
		})
	})
end

function CatalogItemTiles:render()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.BackgroundDefault.Color,
			BackgroundTransparency = theme.BackgroundDefault.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 20),
				PaddingTop = UDim.new(0, 20),
			}),

			UIGridLayout = Roact.createElement("UIGridLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				FillDirectionMaxCells = 7,
				SortOrder = Enum.SortOrder.LayoutOrder,
				CellPadding = UDim2.new(0, 20, 0, 20),
				CellSize = UDim2.new(0, 150, 0, 230),
			}),

			PrimaryUseCaseItem = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 0,
			}, {
				ItemTile = Roact.createElement(ItemTile, {
					footer = self:createFooter(stylePalette),
					name = self.state.name,
					onActivated = function() end,
					thumbnail = self.state.image,
				}),
			}),

			NoPriceShownItem = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				ItemTile = Roact.createElement(ItemTile, {
					name = self.state.name,
					onActivated = function() end,
					thumbnail = self.state.image,
				}),
			}),

			FreeItem = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				ItemTile = Roact.createElement(ItemTile, {
					footer = self:createFooter(stylePalette, "FREE"),
					name = self.state.name,
					onActivated = function() end,
					thumbnail = self.state.image,
				}),
			}),

			NotForSaleItem = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 3,
			}, {
				ItemTile = Roact.createElement(ItemTile, {
					footer = self:createFooter(stylePalette, "Not For Sale"),
					name = self.state.name,
					onActivated = function() end,
					thumbnail = self.state.image,
				}),
			}),

			LimitedBannerItem = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 4,
			}, {
				ItemTile = Roact.createElement(ItemTile, {
					bannerText = "ONLY 12.3K LEFT!",
					name = self.state.name,
					restrictionTypes = {
						[ItemTileEnums.Restriction.LimitedUnique] = true,
					},
					onActivated = function() end,
					thumbnail = self.state.image,
				}),
			}),

			OwnedItem = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 5,
			}, {
				ItemTile = Roact.createElement(ItemTile, {
					footer = self:createFooter(stylePalette, "", true),
					name = self.state.name,
					onActivated = function() end,
					thumbnail = self.state.image,
				}),
			}),

			NewItem = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 6,
			}, {
				ItemTile = Roact.createElement(ItemTile, {
					footer = self:createFooter(stylePalette, "1,520"),
					name = self.state.name,
					onActivated = function() end,
					thumbnail = self.state.image,
					statusText = "NEW",
					statusStyle = ItemTileEnums.StatusStyle.Info,
				}),
			}),

			SaleItem = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 7,
			}, {
				ItemTile = Roact.createElement(ItemTile, {
					footer = self:createFooter(stylePalette, "500"),
					name = self.state.name,
					onActivated = function() end,
					thumbnail = self.state.image,
					statusText = "SALE",
					statusStyle = ItemTileEnums.StatusStyle.Alert,
				}),
			}),

			LimitedItem = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 8,
			}, {
				ItemTile = Roact.createElement(ItemTile, {
					footer = self:createFooter(stylePalette, "500"),
					name = self.state.name,
					restrictionTypes = {
						[ItemTileEnums.Restriction.Limited] = true,
					},
					onActivated = function() end,
					thumbnail = self.state.image,
				}),
			}),

			LimitedUItem = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 9,
			}, {
				ItemTile = Roact.createElement(ItemTile, {
					footer = self:createFooter(stylePalette, "500"),
					name = self.state.name,
					restrictionTypes = {
						[ItemTileEnums.Restriction.LimitedUnique] = true,
					},
					onActivated = function() end,
					thumbnail = self.state.image,
				}),
			}),

			LimitedUQuantityItem = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 10,
			}, {
				ItemTile = Roact.createElement(ItemTile, {
					footer = self:createFooter(stylePalette, "500"),
					name = self.state.name,
					restrictionInfo = {
						limitedSerialNumber = 1234,
					},
					restrictionTypes = {
						[ItemTileEnums.Restriction.LimitedUnique] = true,
					},
					onActivated = function() end,
					thumbnail = self.state.image,
				}),
			}),

			PremiumItem = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 11,
			}, {
				ItemTile = Roact.createElement(ItemTile, {
					isPremium = true,
					footer = self:createFooter(stylePalette, "500"),
					name = self.state.name and "Product Name" or nil,
					onActivated = function() end,
					thumbnail = self.state.image,
				}),
			}),

			BundleItem = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 12,
			}, {
				ItemTile = Roact.createElement(ItemTile, {
					itemIconType = ItemTileEnums.ItemIconType.Bundle,
					footer = self:createFooter(stylePalette, "500"),
					name = self.state.name,
					onActivated = function() end,
					thumbnail = self.state.image,
				}),
			}),

			SelectedNewLimitedUBundleItem = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 13,
			}, {
				ItemTile = Roact.createElement(ItemTile, {
					itemIconType = ItemTileEnums.ItemIconType.Bundle,
					isSelected = true,
					restrictionTypes = {
						[ItemTileEnums.Restriction.LimitedUnique] = true,
					},
					statusText = "NEW",
					statusStyle = ItemTileEnums.StatusStyle.Info,
					footer = self:createFooter(stylePalette, "500"),
					name = self.state.name,
					onActivated = function() end,
					thumbnail = self.state.image,
				}),
			}),
		})
	end)
end

return function(target)
	local styleProvider = Roact.createElement(StyleProvider, {
		style = UIBloxStyle,
	}, {
		Roact.createElement(CatalogItemTiles)
	})

	local handle = Roact.mount(styleProvider, target, "CatalogItemTiles")
	return function()
		Roact.unmount(handle)
	end
end