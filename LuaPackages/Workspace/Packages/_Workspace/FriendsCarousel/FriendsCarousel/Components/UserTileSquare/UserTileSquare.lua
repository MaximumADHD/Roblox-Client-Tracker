local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)

local Roact = dependencies.Roact
local React = dependencies.React
local llama = dependencies.llama

local UIBlox = dependencies.UIBlox
local PlayerTile = UIBlox.App.Tile.PlayerTile
local Interactable = UIBlox.Core.Control.Interactable
local Images = UIBlox.App.ImageSet.Images
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local useStyle = UIBlox.Core.Style.useStyle

local PlayerName = require(script.Parent.PlayerName)
local getTextHeight = require(FriendsCarousel.Utils.getTextHeight)

local TILE_SIZE: number = 100
local TILE_PADDING: number = 8
local CONTEXTUAL_INFO_PADDING: number = 2
local CONTEXTUAL_MAX_LINES: number = 1

local PRESENCE_ICON_SIZE: number = 12
local PRESENCE_ICON_PADDING: number = 4
local PRESENCE_ICON = Images["component_assets/circle_25"]

type Button = {
	icon: any,
	isSecondary: boolean,
	onActivated: () -> (),
}

export type Props = {
	username: string,
	thumbnail: string,
	contextualText: string,
	layoutOrder: number,

	tileSize: number,
	contextualInfoLines: number,

	showOnlineIndicator: boolean?,
	isContextualTextMuted: boolean?,

	onActivated: (roactRef: any) -> ()?,
	buttons: { Button },
}

local defaultProps = {
	username = "",
	thumbnail = "",
	tileSize = TILE_SIZE,
	contextualInfoLines = CONTEXTUAL_MAX_LINES,
}

local noOpt = function() end

local UserTileSquare =
	function(passedProps)
		local props: Props = llama.Dictionary.join(defaultProps, passedProps or {})
		local tileSize = props.tileSize

		local userTileRef = Roact.createRef()
		local onActivated = React.useCallback(function()
			if userTileRef and props.onActivated then
				props.onActivated(userTileRef)
			end
		end, { userTileRef })

		local style: dependencies.UIBloxAppStyle = useStyle()

		local contextualTextFont = style.Font.CaptionSubHeader
		local textHeight = React.useMemo(function()
			local contextualTextFontSize: number = style.Font.BaseSize * style.Font.CaptionSubHeader.RelativeSize
			return getTextHeight(props.contextualText, contextualTextFont.Font, contextualTextFontSize)
		end, { props.contextualText })

		return Roact.createFragment({
			UserTileSquare = Roact.createElement("Frame", {
				[Roact.Ref] = userTileRef,
				LayoutOrder = props.layoutOrder,
				Size = UDim2.fromOffset(tileSize, 0),
				BackgroundTransparency = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				PlayerAvatarFrame = Roact.createElement("Frame", {
					LayoutOrder = 1,
					Size = UDim2.fromOffset(tileSize, tileSize),
					BackgroundTransparency = 1,
				}, {
					PlayerAvatar = Roact.createElement(PlayerTile, {
						tileSize = UDim2.fromOffset(tileSize, tileSize),
						thumbnail = props.thumbnail,
						onActivated = onActivated,
						buttons = props.buttons,
					}),
				}),
				Padding1 = Roact.createElement("Frame", {
					LayoutOrder = 2,
					Size = UDim2.fromOffset(0, TILE_PADDING),
					BackgroundTransparency = 1,
				}),
				UserInfo = Roact.createElement(Interactable, {
					LayoutOrder = 3,
					[Roact.Event.Activated] = onActivated,
					AutomaticSize = Enum.AutomaticSize.XY,
					onStateChanged = noOpt,
					BackgroundTransparency = 1,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					PlayerName = Roact.createElement(PlayerName, {
						layoutOrder = 1,
						name = props.username,
						tileSize = tileSize,
					}),
					Padding2 = Roact.createElement("Frame", {
						LayoutOrder = 2,
						Size = UDim2.fromOffset(0, CONTEXTUAL_INFO_PADDING),
						BackgroundTransparency = 1,
					}),
					ContextualInfoFrame = Roact.createElement("Frame", {
						AutomaticSize = Enum.AutomaticSize.XY,
						BackgroundTransparency = 1,
						LayoutOrder = 3,
					}, {
						Layout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
							VerticalAlignment = Enum.VerticalAlignment.Center,
							SortOrder = Enum.SortOrder.LayoutOrder,
							Padding = UDim.new(0, PRESENCE_ICON_PADDING),
						}),
						PresenceIcon = props.showOnlineIndicator and Roact.createElement(ImageSetLabel, {
							AnchorPoint = Vector2.new(0.5, 0.5),
							Image = PRESENCE_ICON,
							ImageColor3 = style.Theme.OnlineStatus.Color,
							ImageTransparency = style.Theme.OnlineStatus.Transparency,
							LayoutOrder = 1,
							Position = UDim2.fromScale(0.5, 0.5),
							Size = UDim2.new(0, PRESENCE_ICON_SIZE, 0, PRESENCE_ICON_SIZE),
							BackgroundTransparency = 1,
							ScaleType = Enum.ScaleType.Slice,
						}) or nil,
						ContextualInfo = props.contextualText and Roact.createElement(StyledTextLabel, {
							layoutOrder = 2,
							text = props.contextualText,
							fontStyle = contextualTextFont,
							size = UDim2.fromOffset(
								if props.showOnlineIndicator
									then props.tileSize - (PRESENCE_ICON_SIZE + PRESENCE_ICON_PADDING)
									else props.tileSize,
								textHeight * props.contextualInfoLines
							),
							colorStyle = props.isContextualTextMuted and style.Theme.TextMuted
								or style.Theme.TextEmphasis,
							textTruncate = Enum.TextTruncate.AtEnd,
							textXAlignment = Enum.TextXAlignment.Left,
							textYAlignment = Enum.TextYAlignment.Center,
							fluidSizing = false,
							richText = false,
							lineHeight = 1,
						}) or nil,
					}),
				}),
			}),
		})
	end

return UserTileSquare
