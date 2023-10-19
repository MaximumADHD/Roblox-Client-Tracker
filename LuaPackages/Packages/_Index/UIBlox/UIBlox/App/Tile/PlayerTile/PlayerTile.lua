--!nonstrict
local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Roact = require(Packages.Roact)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local Cryo = require(Packages.Cryo)
local Dictionary = Cryo.Dictionary
local List = Cryo.List

local Images = require(App.ImageSet.Images)
local validateImageSetData = require(Core.ImageSet.Validator.validateImageSetData)
local ControlState = require(Core.Control.Enum.ControlState)
local withStyle = require(Core.Style.withStyle)
local getContentStyle = require(Core.Button.getContentStyle)
local PlayerTileButton = require(App.Tile.PlayerTile.PlayerTileButton)
local PlayerContext = require(App.Indicator.PlayerContext)
local SpringAnimatedItem = require(UIBlox.Utility.SpringAnimatedItem)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local validateFontInfo = require(Core.Style.Validator.validateFontInfo)
local validateTypographyInfo = require(UIBlox.Core.Style.Validator.validateTypographyInfo)

local Tile = require(App.Tile.BaseTile.Tile)

local PlayerTile = Roact.PureComponent:extend("PlayerTile")

local imageType = t.union(t.string, validateImageSetData)
PlayerTile.validateProps = t.strictInterface({
	-- The title text for the the player tile
	title = t.optional(t.string),
	-- The subtitle text for the player tile
	subtitle = t.optional(t.string),

	hasVerifiedBadge = t.optional(t.boolean),
	-- Whether it's gamepad/keyboard selectable or not
	Selectable = t.optional(t.boolean),
	-- The image that represents the Player
	thumbnail = t.optional(t.union(t.string, t.table)),
	-- When `buttons` is present, the tile will create interactive buttons within the Tile
	buttons = t.optional(t.array(t.strictInterface({
		icon = t.optional(imageType),
		onActivated = t.optional(t.callback),
		isSecondary = t.optional(t.boolean),
		isDisabled = t.optional(t.boolean),
	}))),
	-- When `relevancyInfo` is present, the tile will use the information to format the bottom area of the Tile
	relevancyInfo = t.strictInterface({
		text = t.optional(t.string),
		icon = t.optional(t.union(t.string, t.table)),
		iconSize = t.optional(t.UDim2),
		iconColor = t.optional(t.Color3),
		iconTransparency = t.optional(t.number),
		onActivated = t.optional(t.callback),
		fontStyle = t.optional(t.union(validateFontInfo, validateTypographyInfo)),
	}),
	-- The size of the tile
	tileSize = t.optional(t.UDim2),
	-- A function that fires when the tile is pressed
	onActivated = t.optional(t.callback),
	forwardedRef = t.optional(t.table),
})

PlayerTile.defaultProps = {
	buttons = {},
	relevancyInfo = {},
	tileSize = UDim2.new(0, 150, 0, 150),
	onActivated = function() end,
	Selectable = false,
}

local ANIMATION_SPRING_SETTINGS = {
	dampingRatio = 1,
	frequency = 4,
}

local CONTENT_STATE_COLOR = {
	[ControlState.Default] = "SystemPrimaryContent",
}

local VIGNETTE = Images["component_assets/vignette_246"]
local OUTER_BUTTON_PADDING = 10
local BUTTON_GAP = 10
local BUTTON_HEIGHT = 36

local INNER_PADDING = 0
local TITLE_TOP_PADDING = 8
local FOOTER_TOP_PADDING = 4

local function footer(props, areTokensEnabled)
	return withStyle(function(style)
		local tokens = style.Tokens

		-- The logic to apply "emphasis" color styling is done in PlayerContext based on the existence
		-- of an onActivated prop. Since PlayerContext does not support tokens yet, and does not change
		-- font styling based on "emphasis", only color, we are following the same logic here in PlayerTile
		-- for minimal extraneous impact. If the same logic is added to PlayerContext, this should be removed.
		local playerContextProps = if areTokensEnabled
			then Object.assign({}, {
				fontStyle = if props.playerContext.onActivated
					then tokens.Semantic.Typography.CaptionHeader
					else tokens.Semantic.Typography.CaptionBody,
				iconTextSpacing = tokens.Global.Space_50,
				iconPadding = 0,
				iconSize = UDim2.fromOffset(tokens.Global.Size_150, tokens.Global.Size_150),
				textHeight = tokens.Global.Size_350,
			}, props.playerContext)
			else props.playerContext

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
		}, {
			PlayerContext = Roact.createElement(PlayerContext, playerContextProps),
		})
	end)
end

local function thumbnailOverlayComponents(props, areTokensEnabled)
	return withStyle(function(style)
		local tokens = style.Tokens

		local outerButtonPadding = if areTokensEnabled then tokens.Global.Space_100 else OUTER_BUTTON_PADDING
		local buttonGap = if areTokensEnabled then tokens.Global.Space_100 else BUTTON_GAP
		local buttonHeight = if areTokensEnabled then tokens.Global.Size_450 else BUTTON_HEIGHT

		local primaryContentStyle = getContentStyle(CONTENT_STATE_COLOR, props.controlState, style)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			ButtonBackgroundGradient = not Cryo.isEmpty(props.buttons) and Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, buttonHeight + outerButtonPadding * 2),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				LayoutOrder = 1,
			}, {
				UIGradient = Roact.createElement("UIGradient", {
					Rotation = 90,
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, style.Theme.BackgroundUIContrast.Color),
						ColorSequenceKeypoint.new(1, style.Theme.BackgroundUIContrast.Color),
					}),
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1),
						NumberSequenceKeypoint.new(1, style.Theme.BackgroundUIContrast.Transparency),
					}),
				}),
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
			}),
			HoverTransparency = Roact.createElement(SpringAnimatedItem.AnimatedImageLabel, {
				springOptions = ANIMATION_SPRING_SETTINGS,
				animatedValues = {
					imageTransparency = props.mouseEntered and 0.6 or 1,
				},
				mapValuesToProps = function(values)
					return {
						ImageTransparency = values.imageTransparency,
					}
				end,
				regularProps = {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = VIGNETTE.Image,
					ImageRectSize = VIGNETTE.ImageRectSize,
					ImageRectOffset = VIGNETTE.ImageRectOffset,
					ImageColor3 = primaryContentStyle.Color,
					ImageTransparency = 0,
					LayoutOrder = 2,
					[Roact.Event.MouseEnter] = props.hoverMouseEnter,
					[Roact.Event.MouseLeave] = props.hoverMouseLeave,
				},
			}, {
				corner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
			}),
			ButtonContainer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 2,
			}, {
				PlayerTileButtons = Roact.createElement(
					"Frame",
					{
						BackgroundTransparency = 1,
						Position = UDim2.new(1, 0, 1, 0),
						Size = UDim2.new(0, props.tileSize.X.Offset - (outerButtonPadding * 2), 0, buttonHeight),
						AnchorPoint = Vector2.new(1, 1),
						LayoutOrder = 3,
						ZIndex = 2,
					},
					List.join(
						List.map(props.buttons, function(button)
							return Roact.createElement(PlayerTileButton, {
								buttonHeight = buttonHeight,
								outerButtonPadding = outerButtonPadding,
								tileSize = props.tileSize,
								icon = button.icon,
								isSecondary = button.isSecondary,
								isDisabled = button.isDisabled,
								onActivated = button.onActivated,
								mouseEnter = props.hoverMouseEnter,
								mouseLeave = props.hoverMouseLeave,
							})
						end),
						{
							Roact.createElement("UIListLayout", {
								HorizontalAlignment = Enum.HorizontalAlignment.Right,
								Padding = UDim.new(0, buttonGap),
								FillDirection = Enum.FillDirection.Horizontal,
							}),
						}
					)
				),
				UIPadding = Roact.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, outerButtonPadding),
					PaddingRight = UDim.new(0, outerButtonPadding),
				}),
			}),
		})
	end)
end

function PlayerTile:init()
	self.firstButtonIcon = Roact.createRef()
	self.secondButtonIcon = Roact.createRef()
	self.mouseEntered = false
	self.state = {
		controlState = ControlState.Initialize,
		mouseEntered = false,
	}

	self.onStateChanged = function(oldState, newState)
		self:setState({
			controlState = newState,
		})
		if self.props.onStateChanged then
			self.props.onStateChanged(oldState, newState)
		end
	end

	self.hoverMouseEnter = function()
		self:setState({
			mouseEntered = true,
		})
	end

	self.hoverMouseLeave = function()
		self:setState({
			mouseEntered = false,
		})
	end
end

function PlayerTile:render()
	local tileSize = self.props.tileSize
	local title = self.props.title
	local onActivated = self.props.onActivated
	local thumbnail = self.props.thumbnail

	return withStyle(function(style)
		local tokens = style.Tokens

		local areTokensEnabled = tokens ~= nil and UIBloxConfig.useTokensInPlayerTile

		return Roact.createElement("Frame", {
			Size = tileSize,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			[Roact.Ref] = self.props.forwardedRef,
		}, {
			Tile = Roact.createElement(Tile, {
				footer = footer({
					-- If PlayerTile is selectable, we don't need the footer to be selectable.
					-- This is consistent with that we only tap/click the entire PlayerTile on mobile and DUA.
					playerContext = if self.props.Selectable
						then Dictionary.join(self.props.relevancyInfo, { Selectable = false })
						else self.props.relevancyInfo,
					controlState = self.state.controlState,
				}, areTokensEnabled),
				Selectable = self.props.Selectable,
				hasRoundedCorners = true,
				innerPadding = INNER_PADDING,
				titleTopPadding = if areTokensEnabled then tokens.Global.Space_100 else TITLE_TOP_PADDING,
				subtitleTopPadding = if areTokensEnabled then tokens.Global.Space_25 else nil,
				footerTopPadding = if areTokensEnabled then tokens.Global.Space_50 else FOOTER_TOP_PADDING,
				name = title,
				nameTextColor = if areTokensEnabled then tokens.Semantic.Color.Text.Emphasis.Color3 else nil,
				titleFontStyle = if areTokensEnabled then tokens.Semantic.Typography.Subheader else nil,
				hasVerifiedBadge = self.props.hasVerifiedBadge,
				titleTextLineCount = 1,
				subtitle = self.props.subtitle,
				subtitleFontStyle = if areTokensEnabled then tokens.Semantic.Typography.CaptionHeader else nil,
				onActivated = onActivated,
				thumbnail = thumbnail,
				backgroundImage = Images[style.Theme.PlayerBackgroundDefault.Image],
				thumbnailOverlayComponents = thumbnailOverlayComponents(
					Dictionary.join(self.props, {
						hoverMouseEnter = self.hoverMouseEnter,
						hoverMouseLeave = self.hoverMouseLeave,
						mouseEntered = self.state.mouseEntered,
					}),
					areTokensEnabled
				),
				addSubtitleSpace = if UIBloxConfig.fixLoadingShimmerForPlayerTileNames then title == nil else nil,
			}),
		})
	end)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		PlayerTile,
		Dictionary.join(props, {
			forwardedRef = ref,
		})
	)
end)
