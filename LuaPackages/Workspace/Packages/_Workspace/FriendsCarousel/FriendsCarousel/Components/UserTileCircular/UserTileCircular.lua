local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)

local Roact = dependencies.Roact
local React = dependencies.React
local Text = dependencies.Text
local llama = dependencies.llama
local memoize = dependencies.memoize

local UIBlox = dependencies.UIBlox
local useStyle = UIBlox.Core.Style.useStyle
local Images = UIBlox.App.ImageSet.Images
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local TILE_SIZE: number = 96
local TILE_PADDING: number = 8
local INFO_HEIGHT: number = 24
local GAME_TITLE_PADDING: number = 4

local PRESENCE_ICON_SIZE: number = 12
local PRESENCE_ICON_PADDING: number = 4
local PRESENCE_ICON = Images["component_assets/circle_25"]

local calculateTextBounds = memoize(function(text: string, font: dependencies.UIBloxFontType, baseSize: number): Vector2
	local textSize = font.RelativeSize * baseSize
	return Text.GetTextBounds(text, font.Font, textSize, Vector2.new(10000, 10000))
end)

type Props = {
	username: string,
	thumbnail: string,
	contextualText: string,
	layoutOrder: number,

	tileSize: number,
	infoHeight: number,

	showOnlineIndicator: boolean?,
	isContextualTextMuted: boolean?,

	onActivated: (roactRef: any) -> ()?,
}

local defaultProps = {
	username = "",
	thumbnail = "",
	layoutOrder = 0,
	tileSize = TILE_SIZE,
	infoHeight = INFO_HEIGHT,
}

local UserTileCircular = function(passedProps)
	local props: Props = llama.Dictionary.join(defaultProps, passedProps or {})

	local userTileRef = Roact.createRef()
	local onActivated = React.useCallback(function()
		if userTileRef and props.onActivated then
			props.onActivated(userTileRef)
		end
	end, { userTileRef })

	local style: dependencies.UIBloxAppStyle = useStyle()
	local contextualTextFont = style.Font.CaptionSubHeader
	local usernameTextFont = style.Font.CaptionHeader
	local usernameTextBounds = calculateTextBounds(props.username, usernameTextFont, style.Font.BaseSize)
	local usernameTextWidth =
		math.min(props.tileSize - PRESENCE_ICON_SIZE - PRESENCE_ICON_PADDING, usernameTextBounds.X)

	return Roact.createFragment({
		UserTileCircular = Roact.createElement("TextButton", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.fromOffset(props.tileSize, 0),
			BackgroundTransparency = 1,
			Text = "",
			LayoutOrder = props.layoutOrder,
			[Roact.Ref] = userTileRef :: any,
			[Roact.Event.Activated] = onActivated :: any,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, TILE_PADDING),
			}),
			PlayerAvatar = Roact.createElement(ImageSetLabel, {
				Image = props.thumbnail,
				LayoutOrder = 1,
				Size = UDim2.new(0, props.tileSize, 0, props.tileSize),
			}, {
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
			}),
			UserInfo = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, props.infoHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, GAME_TITLE_PADDING),
				}),
				UsernameFrame = Roact.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundTransparency = 1,
					LayoutOrder = 1,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
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
					PlayerName = Roact.createElement(StyledTextLabel, {
						layoutOrder = 2,
						text = props.username,
						fontStyle = usernameTextFont,
						size = UDim2.new(0, usernameTextWidth, 0, usernameTextBounds.Y),
						colorStyle = style.Theme.TextEmphasis,
						textTruncate = Enum.TextTruncate.AtEnd,
						textXAlignment = Enum.TextXAlignment.Left,
						textYAlignment = Enum.TextYAlignment.Center,
						fluidSizing = false,
						richText = false,
					}),
				}),
				ContextualInfo = if props.contextualText
					then Roact.createElement(StyledTextLabel, {
						layoutOrder = 2,
						text = props.contextualText,
						fontStyle = contextualTextFont,
						size = UDim2.new(
							1,
							0,
							0,
							calculateTextBounds(props.contextualText, contextualTextFont, style.Font.BaseSize).Y
						),
						colorStyle = props.isContextualTextMuted and style.Theme.TextMuted or style.Theme.TextEmphasis,
						textTruncate = Enum.TextTruncate.AtEnd,
						textXAlignment = Enum.TextXAlignment.Center,
						textYAlignment = Enum.TextYAlignment.Top,
						fluidSizing = false,
						richText = false,
						lineHeight = 1,
					})
					else nil,
			}),
		}),
	})
end

return UserTileCircular
