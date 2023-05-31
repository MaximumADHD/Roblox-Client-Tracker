--!nonstrict
local ItemSplitTileRoot = script.Parent
local TileRoot = ItemSplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local withStyle = require(Core.Style.withStyle)
local Interactable = require(Core.Control.Interactable)
local ControlState = require(Core.Control.Enum.ControlState)
local LoadableImage = require(UIBlox.App.Loading.LoadableImage)
local Images = require(App.ImageSet.Images)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local ItemSplitTileFooter = require(UIBlox.App.Tile.ItemSplitTile.ItemSplitTileFooter)

local TITLE_LINE_COUNT = 2
local MAX_TITLE_WIDTH = math.huge
local OUTLINE_THICKNESS = 1
local CORNER_RADIUS = UDim.new(0, 8)

local PANEL_PADDING = UDim.new(0, 8)
local HOVER_PANEL_PADDING = UDim.new(0, 12)
local MIN_PANEL_HEIGHT = 84
local MIN_TILE_WIDTH = 146
local MIN_TILE_HEIGHT = MIN_TILE_WIDTH + MIN_PANEL_HEIGHT

local DROP_SHADOW = "component_assets/dropshadow_24_6"

local ItemSplitTile = Roact.PureComponent:extend("ItemSplitTile")

ItemSplitTile.validateProps = t.strictInterface({
	-- The name of the item shown in the tile.
	itemName = t.optional(t.string),

	-- The price of the item shown in the tile.
	-- Will show different icons, or none, depending on the value.
	priceText = t.optional(t.string),

	-- Whether or not the item shown in the tile is already owned by the current user.
	-- Will affect which item is shown in the tile's footer.
	isOwned = t.optional(t.boolean),

	-- Whether or not the tile has a background and border.
	-- When false, all corners of thumbnail will round, and the item's name and price will float underneath.
	hasBackground = t.optional(t.boolean),

	-- Whether or not the tile should show its hovered state
	isHovered = t.optional(t.boolean),

	-- A function that fires when the tile is pressed
	onActivated = t.optional(t.callback),

	-- The item's thumbnail that will show a loading state if nil
	thumbnail = t.optional(t.string),
})

ItemSplitTile.defaultProps = {
	itemName = "--",
	priceText = "--",
	hasBackground = true,
	isHovered = false,
}

function ItemSplitTile:init()
	self:setState({
		controlState = ControlState.Initialize,
	})

	self.onStateChanged = function(_, newState)
		self:setState({
			controlState = newState,
		})
	end
end

function ItemSplitTile:renderImageFrame(image, isOffset, useFullSize, stylePalette)
	local theme = stylePalette.Theme
	local hasRoundedCorners = useFullSize or not isOffset
	local isImageSetImage = typeof(image) == "table"

	return Roact.createElement("Frame", {
		Position = UDim2.fromScale(0, if isOffset then 0.5 else 0),
		Size = UDim2.fromScale(1, if useFullSize then 1 else 0.5),
		ClipsDescendants = true,
		BackgroundTransparency = 1,
	}, {
		Image = if isImageSetImage
			then Roact.createElement(ImageSetComponent.Label, {
				BackgroundColor3 = theme.PlaceHolder.Color,
				BackgroundTransparency = 1,
				Image = image,
				Position = UDim2.fromScale(0, if isOffset then -1 else 0),
				Size = UDim2.fromScale(1, if useFullSize then 1 else 2),
			}, {
				UICorner = if hasRoundedCorners
					then Roact.createElement("UICorner", {
						CornerRadius = CORNER_RADIUS,
					})
					else nil,
			})
			else Roact.createElement(LoadableImage, {
				BackgroundColor3 = theme.PlaceHolder.Color,
				BackgroundTransparency = 1,
				Image = image,
				Position = UDim2.fromScale(0.5, if isOffset then 0 else 1),
				Size = UDim2.fromScale(1, if useFullSize then 1 else 2),
				AnchorPoint = Vector2.new(0.5, if useFullSize then 1 else 0.5),
				cornerRadius = if hasRoundedCorners then CORNER_RADIUS else nil,
				showFailedStateWhenLoadingFailed = true,
				useShimmerAnimationWhileLoading = true,
			}),
	})
end

function ItemSplitTile:renderTopContent(stylePalette)
	local hasBackground = self.props.hasBackground
	local isHovered = self.props.isHovered
	local roundAllCorners = not hasBackground
	local theme = stylePalette.Theme
	local backgroundImage = Images[theme.ItemBackgroundDefault.Image]

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		SizeConstraint = Enum.SizeConstraint.RelativeXX,
		ZIndex = 2,
	}, {
		BackgroundImage = if self.props.thumbnail
			then Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				TopImageFrame = self:renderImageFrame(backgroundImage, false, roundAllCorners, stylePalette),
				BottomImageFrame = if not roundAllCorners
					then self:renderImageFrame(backgroundImage, true, false, stylePalette)
					else nil,
			})
			else nil,
		ItemImage = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			TopImageFrame = self:renderImageFrame(self.props.thumbnail, false, roundAllCorners, stylePalette),
			BottomImageFrame = if not roundAllCorners
				then self:renderImageFrame(self.props.thumbnail, true, false, stylePalette)
				else nil,
		}),
		HoverShadow = if isHovered and not hasBackground
			then Roact.createElement(ImageSetComponent.Label, {
				ZIndex = 0,
				Position = UDim2.new(0.5, 0, 0.5, 2),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 12),
				Image = Images[DROP_SHADOW],
				ImageColor3 = theme.DropShadow.Color,
				ImageTransparency = theme.DropShadow.Transparency,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(18, 18, 18, 18),
			})
			else nil,
	})
end

function ItemSplitTile:renderBottomContent(stylePalette)
	local itemName = self.props.itemName
	local hasBackground = self.props.hasBackground
	local titleTextLineCount = TITLE_LINE_COUNT
	local font = stylePalette.Font
	local fontSize = math.ceil(stylePalette.Font.BaseSize * stylePalette.Font.Header2.RelativeSize)
	local theme = stylePalette.Theme
	local currentState = self.state.controlState

	local controlStatePadding = if (self.props.isHovered or currentState == ControlState.Pressed)
			and hasBackground
		then HOVER_PANEL_PADDING
		else PANEL_PADDING

	-- Content height should include Footer, which is 1 text line in height
	local bottomContentHeight = fontSize * (titleTextLineCount + 1)
		+ PANEL_PADDING.Offset
		+ controlStatePadding.Offset * 2

	local titleColorStyle = if UIBloxConfig.useNewThemeColorPalettes then theme.TextDefault else theme.TextEmphasis

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, bottomContentHeight),
		BackgroundTransparency = 1,
		LayoutOrder = 2,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = PANEL_PADDING,
		}),
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = if hasBackground then controlStatePadding else nil,
			PaddingRight = if hasBackground then controlStatePadding else nil,
			PaddingTop = if hasBackground then controlStatePadding else PANEL_PADDING,
			PaddingBottom = if hasBackground then controlStatePadding else PANEL_PADDING,
		}),
		TitleArea = if titleTextLineCount > 0
				and itemName
				and string.len(itemName) > 0
			then Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Text = itemName,
				Font = font.Header2.Font,
				TextSize = fontSize,
				TextTransparency = titleColorStyle.Transparency,
				TextColor3 = titleColorStyle.Color,
				TextWrapped = true,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				LayoutOrder = 1,
			}, {
				UISizeConstraint = Roact.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(MAX_TITLE_WIDTH, fontSize * titleTextLineCount),
				}),
			})
			else nil,
		Footer = Roact.createElement(ItemSplitTileFooter, {
			priceText = self.props.priceText,
			isOwned = self.props.isOwned,
			layoutOrder = 2,
		}),
	})
end

function ItemSplitTile:renderTileContent(stylePalette)
	local hasBackground = self.props.hasBackground
	local onActivated = self.props.onActivated
	local theme = stylePalette.Theme
	local backgroundColor = if hasBackground then theme.BackgroundUIDefault.Color else nil
	local backgroundTransparency = if hasBackground then theme.BackgroundUIDefault.Transparency else 1

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = backgroundColor,
		BackgroundTransparency = backgroundTransparency,
		ClipsDescendants = true,
		ZIndex = 1,
	}, {
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = CORNER_RADIUS,
		}),
		Panel = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			TopContentPlaceholder = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				SizeConstraint = Enum.SizeConstraint.RelativeXX,
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}),
			BottomContent = self:renderBottomContent(stylePalette),
		}),
		TopContent = self:renderTopContent(stylePalette),
		TileOverlay = Roact.createElement(Interactable, {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			onStateChanged = self.onStateChanged,
			[Roact.Event.Activated] = onActivated,
			ZIndex = 3,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = CORNER_RADIUS,
			}),
			BorderFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, -OUTLINE_THICKNESS - 1, 1, -OUTLINE_THICKNESS - 1),
				Position = UDim2.fromOffset(OUTLINE_THICKNESS, OUTLINE_THICKNESS),
				BackgroundTransparency = 1,
				SizeConstraint = if not hasBackground then Enum.SizeConstraint.RelativeXX else nil,
			}, {
				UIStroke = Roact.createElement("UIStroke", {
					Color = theme.Divider.Color,
					Transparency = theme.Divider.Transparency,
					Thickness = OUTLINE_THICKNESS,
				}),
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = CORNER_RADIUS,
				}),
			}),
		}),
	})
end

function ItemSplitTile:render()
	local hasBackground = self.props.hasBackground
	local isHovered = self.props.isHovered

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			UISizeConstraint = Roact.createElement("UISizeConstraint", {
				MinSize = Vector2.new(MIN_TILE_WIDTH, MIN_TILE_HEIGHT),
			}),
			TileContent = self:renderTileContent(stylePalette),
			HoverShadow = if isHovered and hasBackground
				then Roact.createElement(ImageSetComponent.Label, {
					ZIndex = 0,
					Position = UDim2.new(0.5, 0, 0.5, 2),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 10, 1, 12),
					Image = Images[DROP_SHADOW],
					ImageColor3 = theme.DropShadow.Color,
					ImageTransparency = theme.DropShadow.Transparency,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(18, 18, 18, 18),
				})
				else nil,
		})
	end)
end

return ItemSplitTile
