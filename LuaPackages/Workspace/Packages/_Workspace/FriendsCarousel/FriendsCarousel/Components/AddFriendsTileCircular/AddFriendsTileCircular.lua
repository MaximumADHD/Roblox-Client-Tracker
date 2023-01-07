local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local useStyle = UIBlox.Core.Style.useStyle
local Images = UIBlox.App.ImageSet.Images
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local UIBloxIconSize = UIBlox.App.Constant.IconSize
local llama = dependencies.llama

local getTextHeight = require(FriendsCarousel.Utils.getTextHeight)

local THUMBNAIL_PADDING = 8
local ADD_FRIEND_ICON = Images["icons/menu/friends_large"]
local CIRCLE_ICON = Images["component_assets/circle_68_stroke_2"]

type Props = {
	layoutOrder: number,
	onActivated: () -> (),
	thumbnailSize: number,
	totalHeight: number,
	labelText: string,
}

local defaultProps = {
	layoutOrder = 0,
	onActivated = function() end,
	thumbnailSize = 96,
	totalHeight = 96,
	labelText = "",
}

local AddFriendsTileCircular = function(passedProps)
	local props: Props = llama.Dictionary.join(defaultProps, passedProps or {})
	local style = useStyle()

	local fontSize: number = style.Font.BaseSize * style.Font.CaptionHeader.RelativeSize
	return Roact.createFragment({
		AddFriendsTileCircular = Roact.createElement("Frame", {
			Size = UDim2.new(0, props.thumbnailSize, 0, props.totalHeight),
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, THUMBNAIL_PADDING),
			}),
			AddFriendButton = Roact.createElement("TextButton", {
				LayoutOrder = 1,
				Size = UDim2.new(0, props.thumbnailSize, 0, props.thumbnailSize),
				BackgroundColor3 = style.Theme.UIEmphasis.Color,
				Text = "",
				BackgroundTransparency = style.Theme.UIEmphasis.Transparency,
				[Roact.Event.Activated] = props.onActivated,
			}, {
				AddFriendButtonBorder = Roact.createElement(ImageSetLabel, {
					Image = CIRCLE_ICON,
					BackgroundTransparency = 1,
					ImageColor3 = style.Theme.SecondaryDefault.Color,
					ImageTransparency = style.Theme.SecondaryDefault.Transparency,
					Size = UDim2.new(0, props.thumbnailSize, 0, props.thumbnailSize),
				}, {
					AddIcon = Roact.createElement(ImageSetLabel, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundTransparency = 1,
						Image = ADD_FRIEND_ICON,
						ImageColor3 = style.Theme.IconEmphasis.Color,
						Position = UDim2.fromScale(0.5, 0.5),
						Size = UDim2.fromOffset(UIBloxIconSize.Large, UIBloxIconSize.Large),
					}),
				}),
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
			}),
			AddFriendsLabel = Roact.createElement(StyledTextLabel, {
				layoutOrder = 2,
				text = props.labelText,
				fontStyle = style.Font.CaptionHeader,
				colorStyle = style.Theme.TextEmphasis,
				size = UDim2.fromOffset(
					props.thumbnailSize,
					getTextHeight(props.labelText, style.Font.CaptionHeader.Font, fontSize)
				),
				textTruncate = Enum.TextTruncate.AtEnd,
				textXAlignment = Enum.TextXAlignment.Center,
				textYAlignment = Enum.TextYAlignment.Top,
				fluidSizing = false,
				richText = false,
				lineHeight = 1,
			}),
		}),
	})
end

return AddFriendsTileCircular
