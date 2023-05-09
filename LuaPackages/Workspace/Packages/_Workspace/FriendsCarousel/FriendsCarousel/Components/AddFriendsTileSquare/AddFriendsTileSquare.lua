local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)

local t = dependencies.t
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local memoize = dependencies.memoize

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState
local Images = UIBlox.App.ImageSet.Images
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local UIBloxIconSize = UIBlox.App.Constant.IconSize
local Badge = UIBlox.App.Indicator.Badge
local Style = UIBlox.Style

local getTextHeight = require(FriendsCarousel.Utils.getTextHeight)

local Packages = FriendsCarousel.Parent
local Colors = require(Packages.Style).Colors

local FIND_FRIENDS_ICON_COLORED = Images["icons/graphic/findfriends_large"]

export type Props = {
	badgeValue: string | number | nil,
	onActivated: () -> (),
	tileSize: number,
	labelText: string,
}

type State = {
	iconTransparency: number,
	backgroundTransparency: number,
}

local TILE_SIZE: number = 100
local TITLE_MARGIN: number = 8
local BORDER_RADIUS: number = 8
local BADGE_MARGINS: number = 8
local MAX_LINES: number = 2

local divideTransparency = function(transparency: number, divisor: number): number
	return 1 - (1 - transparency) / divisor
end

local AddFriendsTileSquare = Roact.PureComponent:extend("AddFriendsTileSquare")

AddFriendsTileSquare.defaultProps = {
	badgeValue = nil,
	tileSize = TILE_SIZE,
	labelText = "",
}

AddFriendsTileSquare.validateProps = t.strictInterface({
	badgeValue = t.optional(t.union(t.string, t.integer)),
	onActivated = t.callback,
	tileSize = t.number,
	labelText = t.string,
})

function AddFriendsTileSquare:init()
	self.state = {} :: State

	self.onStateChanged = function(newTileState: Enum, iconStyle, backgroundStyle)
		local iconTransparency = iconStyle.Transparency
		local backgroundTransparency = backgroundStyle.Transparency
		if newTileState == ControlState.Pressed then
			iconTransparency = divideTransparency(iconStyle.Transparency, 2)
			backgroundTransparency = divideTransparency(backgroundStyle.Transparency, 2)
		elseif newTileState == ControlState.Hover then
			iconTransparency = divideTransparency(iconStyle.Transparency, 2)
			backgroundTransparency = divideTransparency(backgroundStyle.Transparency, 2)
		end
		self:setState({
			iconTransparency = iconTransparency,
			backgroundTransparency = backgroundTransparency,
		})
	end

	self.onStateChangedSetup = memoize(function(iconStyle, backgroundStyle)
		return function(_, newTileState)
			self.onStateChanged(newTileState, iconStyle, backgroundStyle)
		end
	end)

	self.getTextHeight = memoize(function(text, fontType, fontSize): number
		return getTextHeight(text, fontType, fontSize)
	end)
end

function AddFriendsTileSquare:render()
	local state: State = self.state
	local props: Props = self.props
	local backgroundTransparency: number = state.backgroundTransparency
	local iconTransparency: number = state.iconTransparency

	return Style.withStyle(function(style: dependencies.UIBloxAppStyle)
		local theme = style.Theme
		local font = style.Font
		local iconStyle = theme.IconEmphasis
		local backgroundStyle = theme.BackgroundUIDefault
		local fontSize: number = font.BaseSize * font.CaptionHeader.RelativeSize
		local textHeight: number = self.getTextHeight(props.labelText, font.CaptionHeader.Font, fontSize)

		return Roact.createFragment({
			AddFriendsTileSquare = Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.fromOffset(props.tileSize, 0),
				BackgroundTransparency = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, TITLE_MARGIN),
				}),
				AddFriendButton = Roact.createElement(Interactable, {
					LayoutOrder = 1,
					Size = UDim2.fromOffset(props.tileSize, props.tileSize),
					BackgroundTransparency = 1,
					onStateChanged = self.onStateChangedSetup(iconStyle, backgroundStyle),
					[Roact.Event.Activated] = props.onActivated,
				}, {
					Background = Roact.createElement("Frame", {
						Size = UDim2.fromScale(1, 1),
						BackgroundTransparency = backgroundTransparency,
						BackgroundColor3 = backgroundStyle.Color,
					}, {
						UICorner = Roact.createElement("UICorner", {
							CornerRadius = UDim.new(0, BORDER_RADIUS),
						}),
						Icon = Roact.createElement(ImageSetLabel, {
							AnchorPoint = Vector2.new(0.5, 0.5),
							BackgroundTransparency = 1,
							ImageTransparency = iconTransparency,
							ImageColor3 = Colors.White,

							Image = FIND_FRIENDS_ICON_COLORED,
							Size = UDim2.fromOffset(UIBloxIconSize.Large, UIBloxIconSize.Large),
							Position = UDim2.fromScale(0.5, 0.5),
						}),
						Badge = props.badgeValue and Roact.createElement(Badge, {
							anchorPoint = Vector2.new(1, 0),
							position = UDim2.fromOffset(props.tileSize - BADGE_MARGINS, BADGE_MARGINS),
							value = props.badgeValue,
						}),
					}),
				}),
				AddFriendsLabel = Roact.createElement(StyledTextLabel, {
					layoutOrder = 2,
					text = props.labelText,
					fontStyle = font.CaptionHeader,
					colorStyle = theme.TextEmphasis,
					size = UDim2.fromOffset(props.tileSize, textHeight * MAX_LINES),
					textTruncate = Enum.TextTruncate.AtEnd,
					textXAlignment = Enum.TextXAlignment.Center,
					textYAlignment = Enum.TextYAlignment.Top,
					fluidSizing = false,
					richText = false,
					lineHeight = 1,
				}),
			}),
		})
	end)
end

return AddFriendsTileSquare
