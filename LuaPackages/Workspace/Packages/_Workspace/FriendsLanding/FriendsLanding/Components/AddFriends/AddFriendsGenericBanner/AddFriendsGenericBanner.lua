local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local ImageSetButton = UIBlox.Core.ImageSet.Button
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local Colors = UIBlox.App.Style.Colors

local BANNER_PADDING = 12
local BANNER_ICON_SIZE = 48
local BANNER_CORNER_RADIUS = 8

local INFO_ICON_SIZE = 16
local INFO_ICON_OFFSET = UDim2.new(0, -8, 0, 8)
local INFO_ICON_IMAGE = Images["icons/actions/info_small"]

type Props = {
	bannerTitle: string,
	bannerText: string,
	bannerIcon: string,
	onActivated: () -> (),
	hasInfoButton: boolean?,
	onInfoButtonActivated: () -> ()?,
}

return function(props: Props)
	local style = useStyle()
	return Roact.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.fromScale(1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, {
		Banner = Roact.createElement(ImageSetButton, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.fromScale(1, 0),
			LayoutOrder = 1,
			BackgroundColor3 = style.Theme.BackgroundUIDefault.Color,
			BackgroundTransparency = style.Theme.BackgroundUIDefault.Transparency,
			[Roact.Event.Activated] = props.onActivated,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, BANNER_PADDING),
				PaddingLeft = UDim.new(0, BANNER_PADDING),
				PaddingRight = UDim.new(0, BANNER_PADDING),
				PaddingTop = UDim.new(0, BANNER_PADDING),
			}),
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, BANNER_CORNER_RADIUS),
			}),
			UIStroke = Roact.createElement("UIStroke", {
				Color = style.Theme.Divider.Color,
				Transparency = style.Theme.Divider.Transparency,
				Thickness = 1,
			}),
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, BANNER_PADDING),
			}),
			BannerIcon = Roact.createElement(ImageSetLabel, {
				-- Need icon color = White for colored icons to show color correctly
				ImageColor3 = Colors.White,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, BANNER_ICON_SIZE, 0, BANNER_ICON_SIZE),
				Image = props.bannerIcon,
				LayoutOrder = 1,
			}),
			BannerTextFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Size = UDim2.new(1, -(BANNER_ICON_SIZE + BANNER_PADDING + INFO_ICON_SIZE), 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
			}, {
				TextUIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 4),
				}),
				BannerTitle = Roact.createElement(StyledTextLabel, {
					automaticSize = Enum.AutomaticSize.Y,
					size = UDim2.fromScale(1, 0),
					text = props.bannerTitle,
					fontStyle = style.Font.Header2,
					colorStyle = style.Theme.TextEmphasis,
					textXAlignment = Enum.TextXAlignment.Left,
					textYAlignment = Enum.TextYAlignment.Top,
					lineHeight = 1,
					layoutOrder = 1,
				}),
				BannerText = Roact.createElement(StyledTextLabel, {
					automaticSize = Enum.AutomaticSize.Y,
					size = UDim2.fromScale(1, 0),
					text = props.bannerText,
					fontStyle = style.Font.CaptionBody,
					colorStyle = style.Theme.TextDefault,
					textXAlignment = Enum.TextXAlignment.Left,
					textYAlignment = Enum.TextYAlignment.Top,
					lineHeight = 1,
					layoutOrder = 2,
				}),
			}),
		}),
		BannerInfoButton = props.hasInfoButton and Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.fromScale(1, 0),
			Position = INFO_ICON_OFFSET,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Top,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
			}),
			InfoIcon = Roact.createElement(ImageSetButton, {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, INFO_ICON_SIZE, 0, INFO_ICON_SIZE),
				Image = INFO_ICON_IMAGE,
				ImageColor3 = style.Theme.IconEmphasis.Color,
				ImageTransparency = style.Theme.IconEmphasis.Transparency,
				ZIndex = 2,
				[Roact.Event.Activated] = props.onInfoButtonActivated,
			}),
		}),
	})
end
