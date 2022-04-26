local ExperienceTileRoot = script.Parent
local TileRoot = ExperienceTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(Core.Style.withStyle)
local Interactable = require(Core.Control.Interactable)
local PrimaryContextualButton = require(App.Button.PrimaryContextualButton)
local IconButton = require(App.Button.IconButton)
local Images = require(App.ImageSet.Images)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local ControlState = require(Core.Control.Enum.ControlState)

local LoadableImage = require(UIBlox.App.Loading.LoadableImage)
local BaseMenu = require(UIBlox.App.Menu.BaseMenu)
local ExperienceStats = require(ExperienceTileRoot.ExperienceStats)

-- Some constants may be abstracted as props later on in subsequent designs
local FOOTER_HEIGHT = 20
local FOOTER_PADDING = 8
local TEXT_LINE_COUNT = 2
local TITLE_PADDING = 12
local ACTION_ROW_PADDING = 16
local ACTION_ROW_HEIGHT = 48
local ACTION_MENU_PANELS = 3
local ACTION_MENU_HEIGHT = 56 * ACTION_MENU_PANELS

local FAVORITE_ICON_OFF = "icons/actions/favoriteOff"
local FAVORITE_ICON_ON = "icons/actions/favoriteOn"
local FRIENDS_PLAYING_ICON = "icons/actions/friends/friendsplaying"
local MORE_ICON = "icons/common/more"
local PLAY_ICON = "icons/common/play"
local DROP_SHADOW = "component_assets/dropshadow_24_6"

local DEFAULT_CORNER_RADIUS = UDim.new(0, 8)

local NOOP = function() end
local mapBackgroundState = function(state, stylePalette)
	local theme = stylePalette.Theme
	local backgroundColor = theme.BackgroundUIDefault.Color
	local backgroundTransparency = 1

	local backgroundStateMap = {
		[ControlState.Hover] = theme.BackgroundOnHover,
		[ControlState.Pressed] = theme.BackgroundOnPress,
	}
	if backgroundStateMap[state] then
		backgroundColor = backgroundStateMap[state].Color
		backgroundTransparency = backgroundStateMap[state].Transparency
	end

	return backgroundColor, backgroundTransparency
end

local ExperienceHoverTile = Roact.PureComponent:extend("ExperienceHoverTile")

ExperienceHoverTile.validateProps = t.strictInterface({
	-- Experience's name or title
	experienceName = t.optional(t.string),

	-- Function called when tile panel is clicked
	onPanelClick = t.optional(t.callback),

	-- Function called when tile thumbnail is clicked; ignored if isPlayable is false
	onThumbnailClick = t.optional(t.callback),

	-- Function called when an experience is favorited; uses current isFavorite value as parameter
	onToggleFavorite = t.optional(t.callback),

	-- Whether or not the experience is favorited
	isFavorite = t.boolean,

	-- Whether or not the experience can be played
	isPlayable = t.boolean,

	-- List of props for the action row "friends menu" buttons
	inviteText = t.string,
	createPrivateText = t.string,
	joinText = t.string,
	onInvite = t.callback,
	onCreatePrivate = t.callback,
	onJoin = t.callback,

	-- List of props for the action row "more menu" buttons
	followText = t.string,
	shareText = t.string,
	reportText = t.string,
	onFollow = t.callback,
	onShare = t.callback,
	onReport = t.callback,

	-- Callback to inform parent component of menu open state; should accept current isOpen state as a prop
	onToggleMenu = t.optional(t.callback),

	-- The image to represent the tile's experience; will show a loading state if nil
	thumbnail = t.optional(t.string),

	-- String containing game rating; should include "%" appended
	ratingText = t.optional(t.string),

	-- String containing number of users playing; should be formatted using abbreviateCount()
	playingCountText = t.optional(t.string),
})

ExperienceHoverTile.defaultProps = {
	isPlayable = true,

	onPanelClick = NOOP,
	onThumbnailClick = NOOP,
	onToggleFavorite = NOOP,
}

function ExperienceHoverTile:init()
	self:setState({
		panelControlState = ControlState.Initialize,
		thumbnailControlState = ControlState.Initialize,
		hidePanelOverlay = false,

		moreMenuOpen = false,
		friendsMenuOpen = false,
	})

	self.onPanelStateChanged = function(oldState, newState)
		self:setState({
			panelControlState = newState,
		})
	end

	self.onThumbnailStateChanged = function(oldState, newState)
		if newState == ControlState.Hover or newState == ControlState.Pressed then
			self:setState({
				thumbnailControlState = newState,
				hidePanelOverlay = true,
			})
		else
			self:setState({
				thumbnailControlState = newState,
				hidePanelOverlay = false,
			})
		end
	end

	self.closeMenus = function()
		self:setState({
			moreMenuOpen = false,
			friendsMenuOpen = false,
		})
		if self.props.onToggleMenu then
			self.props.onToggleMenu(false)
		end
	end

	self.onToggleFavorite = function()
		self.closeMenus()

		if self.props.onToggleFavorite then
			self.props.onToggleFavorite(self.props.isFavorite)
		end
	end

	self.toggleFriendsMenu = function()
		local isOpen = self.state.friendsMenuOpen
		self:setState({
			moreMenuOpen = false,
			friendsMenuOpen = not isOpen,
		})
		if self.props.onToggleMenu then
			self.props.onToggleMenu(not isOpen)
		end
	end

	self.toggleMoreMenu = function()
		local isOpen = self.state.moreMenuOpen
		self:setState({
			friendsMenuOpen = false,
			moreMenuOpen = not isOpen,
		})
		if self.props.onToggleMenu then
			self.props.onToggleMenu(not isOpen)
		end
	end

	-- Callback for menu items are wrapped to include menu close action
	self.onMenuAction = function(callbackProp)
		return function()
			if callbackProp then
				callbackProp()
			end
			self.closeMenus()
		end
	end
end

function ExperienceHoverTile:renderImageFrame(isOffset, stylePalette)
	local thumbnail = self.props.thumbnail
	local theme = stylePalette.Theme
	local hasRoundedCorners = not isOffset

	return Roact.createElement("Frame", {
		Position = UDim2.fromScale(0, if isOffset then 0.5 else 0),
		Size = UDim2.fromScale(1, 0.5),
		ClipsDescendants = true,
		BackgroundTransparency = 1,
	}, {
		Image = Roact.createElement(LoadableImage, {
			BackgroundColor3 = theme.PlaceHolder.Color,
			BackgroundTransparency = if UIBloxConfig.fixTileThumbnailColorInconsistency
				then 1
				else theme.PlaceHolder.Transparency,
			Image = thumbnail,
			Position = UDim2.fromScale(0, if isOffset then -1 else 0),
			Size = UDim2.fromScale(1, 2),
			cornerRadius = if hasRoundedCorners then DEFAULT_CORNER_RADIUS else nil,
			showFailedStateWhenLoadingFailed = true,
			useShimmerAnimationWhileLoading = true,
		}),
	})
end

function ExperienceHoverTile:renderTopContent(stylePalette)
	local thumbnailState = self.state.thumbnailControlState
	local isPlayable = self.props.isPlayable
	local hasOverlay = isPlayable and (thumbnailState == ControlState.Hover or thumbnailState == ControlState.Pressed)

	local backgroundColor, backgroundTransparency = mapBackgroundState(thumbnailState, stylePalette)

	return Roact.createElement("Frame", {
		-- The experience image should be in a 16:9 ratio
		Size = UDim2.new(1, 0, 0.5625, 0),
		SizeConstraint = Enum.SizeConstraint.RelativeXX,
		BackgroundTransparency = 1,
		LayoutOrder = 1,
		ClipsDescendants = true,
		ZIndex = if isPlayable then 3 else 2,
	}, {
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = DEFAULT_CORNER_RADIUS,
		}),

		TopImageFrame = self:renderImageFrame(false, stylePalette),
		BottomImageFrame = self:renderImageFrame(true, stylePalette),

		PlayButton = if hasOverlay
			then Roact.createElement(PrimaryContextualButton, {
				icon = Images[PLAY_ICON],
				size = UDim2.new(0, 64, 0, 36),
				position = UDim2.new(0.5, 0, 0.5, 0),
				anchorPoint = Vector2.new(0.5, 0.5),
				userInteractionEnabled = false,
				onActivated = NOOP,
			})
			else nil,
		StateOverlay = Roact.createElement(Interactable, {
			Size = UDim2.new(1, 0, 1, DEFAULT_CORNER_RADIUS.Offset),
			BackgroundTransparency = if hasOverlay then backgroundTransparency else 1,
			BackgroundColor3 = backgroundColor,
			ZIndex = 2,
			isDisabled = not self.props.isPlayable,
			onStateChanged = self.onThumbnailStateChanged,
			[Roact.Event.Activated] = self.props.onThumbnailClick,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = DEFAULT_CORNER_RADIUS,
			}),
		}),
	})
end

function ExperienceHoverTile:renderBottomContent(stylePalette)
	local experienceName = self.props.experienceName
	local ratingText = self.props.ratingText
	local playingCountText = self.props.playingCountText
	local hasStats = playingCountText and ratingText
	local titleTextLineCount = TEXT_LINE_COUNT
	local font = stylePalette.Font
	local theme = stylePalette.Theme

	-- Due to rounding, maxTitleTextHeight is 39 rather than 40
	local maxTitleTextHeight = math.ceil(font.BaseSize * font.Header2.RelativeSize * titleTextLineCount)
	local panelHeight = TITLE_PADDING + maxTitleTextHeight + FOOTER_PADDING + FOOTER_HEIGHT

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, panelHeight),
		BackgroundTransparency = 1,
		LayoutOrder = 2,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, TITLE_PADDING),
			PaddingRight = UDim.new(0, TITLE_PADDING),
			PaddingTop = UDim.new(0, TITLE_PADDING),
		}),
		Name = if titleTextLineCount > 0 and experienceName
			then Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, -FOOTER_HEIGHT),
				BackgroundTransparency = 1,
				Text = experienceName,
				Font = font.Header2.Font,
				TextSize = font.BaseSize * font.Header2.RelativeSize,
				TextTransparency = theme.TextEmphasis.Transparency,
				TextColor3 = theme.TextEmphasis.Color,
				TextWrapped = true,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
			})
			else nil,
		ExperienceInfoFooter = if hasStats
			then Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				Size = UDim2.new(1, 0, 0, FOOTER_HEIGHT),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, {
				ExperienceStats = Roact.createElement(ExperienceStats, {
					ratingText = ratingText,
					playingText = playingCountText,
				}),
			})
			else nil,
	})
end

function ExperienceHoverTile:renderMenu(stylePalette)
	local theme = stylePalette.Theme

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		Overlay = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = theme.BackgroundOnPress.Transparency,
			BackgroundColor3 = theme.BackgroundOnPress.Color,
			ZIndex = 2,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = DEFAULT_CORNER_RADIUS,
			}),
		}),
		Menu = Roact.createElement("ImageButton", {
			Size = UDim2.new(1, 0, 1, -ACTION_ROW_HEIGHT),
			BackgroundTransparency = 1,
			ZIndex = 3,
			[Roact.Event.Activated] = self.closeMenus,
		}, {
			Items = if self.state.moreMenuOpen
				then self:renderMoreMenu()
				elseif self.state.friendsMenuOpen then self:renderFriendsMenu()
				else nil,
			Filler = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, -ACTION_MENU_HEIGHT),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = 0,
				BackgroundColor3 = theme.BackgroundUIDefault.Color,
				BorderSizePixel = 0,
			}, {
				Divider = Roact.createElement("Frame", {
					BackgroundColor3 = theme.Divider.Color,
					BackgroundTransparency = theme.Divider.Transparency,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, 1),
				}),
			}),
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = DEFAULT_CORNER_RADIUS,
			}),
		}),
	})
end

function ExperienceHoverTile:renderFriendsMenu()
	return Roact.createElement(BaseMenu, {
		buttonProps = {
			{
				text = self.props.inviteText,
				onActivated = self.onMenuAction(self.props.onInvite),
			},
			{
				text = self.props.createPrivateText,
				onActivated = self.onMenuAction(self.props.onCreatePrivate),
			},
			{
				text = self.props.joinText,
				onActivated = self.onMenuAction(self.props.onJoin),
			},
		},
		width = UDim.new(1, 0),
		bottomElementRounded = false,
	})
end

function ExperienceHoverTile:renderMoreMenu()
	return Roact.createElement(BaseMenu, {
		buttonProps = {
			{
				text = self.props.followText,
				onActivated = self.onMenuAction(self.props.onFollow),
			},
			{
				text = self.props.shareText,
				onActivated = self.onMenuAction(self.props.onShare),
			},
			{
				text = self.props.reportText,
				onActivated = self.onMenuAction(self.props.onReport),
			},
		},
		width = UDim.new(1, 0),
		bottomElementRounded = false,
	})
end

function ExperienceHoverTile:renderActionRow(stylePalette)
	local theme = stylePalette.Theme

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, ACTION_ROW_HEIGHT),
		Position = UDim2.new(0, 0, 1, 0),
		AnchorPoint = Vector2.new(0, 1),
		BackgroundTransparency = 1,
		LayoutOrder = 3,
		ZIndex = 3,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = if self.props.isPlayable
				then UDim.new(0, ACTION_ROW_PADDING)
				else UDim.new(0, ACTION_ROW_PADDING * 2),
		}),
		FavoriteIcon = Roact.createElement(IconButton, {
			layoutOrder = 1,
			icon = if self.props.isFavorite then Images[FAVORITE_ICON_ON] else Images[FAVORITE_ICON_OFF],
			onActivated = self.onToggleFavorite,
		}),
		FriendsIcon = if self.props.isPlayable
			then Roact.createElement(IconButton, {
				layoutOrder = 2,
				icon = Images[FRIENDS_PLAYING_ICON],
				onActivated = self.toggleFriendsMenu,
				iconColor3 = if self.state.friendsMenuOpen then theme.System else nil,
				[IconButton.debugProps.controlState] = if self.state.friendsMenuOpen then ControlState.Pressed else nil,
			})
			else nil,
		MoreIcon = Roact.createElement(IconButton, {
			layoutOrder = 3,
			icon = Images[MORE_ICON],
			onActivated = self.toggleMoreMenu,
			[IconButton.debugProps.controlState] = if self.state.moreMenuOpen then ControlState.Pressed else nil,
		}),
	})
end

function ExperienceHoverTile:render()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local tileBackgroundColor = theme.BackgroundUIDefault.Color
		local tileBackgroundTransparency = theme.BackgroundUIDefault.Transparency
		local isMenuOpen = self.state.moreMenuOpen or self.state.friendsMenuOpen
		local isPlayable = self.props.isPlayable

		local panelBackgroundColor, panelBackgroundTransparency = mapBackgroundState(
			self.state.panelControlState,
			stylePalette
		)

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			HoverTileContent = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = tileBackgroundColor,
				BackgroundTransparency = tileBackgroundTransparency,
				ClipsDescendants = true,
				ZIndex = 2,
			}, {
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = DEFAULT_CORNER_RADIUS,
				}),
				UIStroke = Roact.createElement("UIStroke", {
					Color = theme.Divider.Color,
					Transparency = theme.Divider.Transparency,
					Thickness = 1,
				}),
				ExperienceContent = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, -ACTION_ROW_HEIGHT),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ClipsDescendants = true,
				}, {
					Panel = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
					}, {
						UIListLayout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Vertical,
							SortOrder = Enum.SortOrder.LayoutOrder,
						}),
						ThumbnailPlaceholder = Roact.createElement("Frame", {
							Size = UDim2.new(1, 0, 0.5625, 0),
							SizeConstraint = Enum.SizeConstraint.RelativeXX,
							BackgroundTransparency = 1,
							LayoutOrder = 1,
						}),
						BottomContent = self:renderBottomContent(stylePalette),
					}),
					PanelOverlay = Roact.createElement(Interactable, {
						Size = UDim2.new(1, 0, 1, DEFAULT_CORNER_RADIUS.Offset),
						BackgroundTransparency = if self.state.hidePanelOverlay then 1 else panelBackgroundTransparency,
						BackgroundColor3 = panelBackgroundColor,
						onStateChanged = self.onPanelStateChanged,
						[Roact.Event.Activated] = self.props.onPanelClick,
						ZIndex = if isPlayable then 2 else 3,
					}, {
						UICorner = Roact.createElement("UICorner", {
							CornerRadius = DEFAULT_CORNER_RADIUS,
						}),
					}),
					TopContent = self:renderTopContent(stylePalette),
				}),
				ActionRow = self:renderActionRow(stylePalette),
				MenuOverlay = if isMenuOpen then self:renderMenu(stylePalette) else nil,
			}),
			HoverTileShadow = Roact.createElement(ImageSetComponent.Label, {
				ZIndex = 1,
				Position = UDim2.new(0.5, 0, 0.5, 2),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 10, 1, 12),

				-- Shadow will appear with 5px on either side, 4px atop, and 8px below
				Image = Images[DROP_SHADOW],
				ImageColor3 = theme.DropShadow.Color,
				ImageTransparency = theme.DropShadow.Transparency,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(18, 18, 18, 18),
			}),
		})
	end)
end

return ExperienceHoverTile
