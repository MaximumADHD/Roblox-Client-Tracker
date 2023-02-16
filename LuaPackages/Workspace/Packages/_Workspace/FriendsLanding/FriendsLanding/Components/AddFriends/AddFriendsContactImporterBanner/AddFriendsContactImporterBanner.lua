local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local t = dependencies.t
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle
local PrimarySystemButton = UIBlox.App.Button.PrimarySystemButton
local getFFlagAddFriendsNewEmptyStateAndBanners = dependencies.getFFlagAddFriendsNewEmptyStateAndBanners

local AddFriendsContactImporterBanner = Roact.PureComponent:extend("AddFriendsContactImporterBanner")

local BANNER_PADDING = 12
local BUTTON_HEIGHT = 28
local MAX_BANNER_WIDTH = 640
local WIDE_SIZE = 480

local noOpt = function() end

type Props = {
	bannerText: string,
	buttonText: string?,
	onActivated: () -> ()?,
	containerWidth: number,
}

AddFriendsContactImporterBanner.validateProps = t.strictInterface({
	bannerText = t.string,
	buttonText = t.optional(t.string),
	onActivated = t.optional(t.callback),
	containerWidth = t.number,
})

function AddFriendsContactImporterBanner:render()
	local props: Props = self.props
	return withStyle(function(style)
		return Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.fromScale(1, 0),
			LayoutOrder = 1,
			BackgroundColor3 = style.Theme.BackgroundUIDefault.Color,
			BackgroundTransparency = style.Theme.BackgroundUIDefault.Transparency,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, BANNER_PADDING),
				PaddingLeft = UDim.new(0, BANNER_PADDING),
				PaddingRight = UDim.new(0, BANNER_PADDING),
				PaddingTop = UDim.new(0, BANNER_PADDING),
			}),
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
			UIStroke = Roact.createElement("UIStroke", {
				Color = style.Theme.Divider.Color,
				Transparency = style.Theme.Divider.Transparency,
				Thickness = 1,
			}),
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = if props.containerWidth >= WIDE_SIZE then Enum.FillDirection.Horizontal else nil,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			UISizeConstraint = Roact.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(MAX_BANNER_WIDTH, math.huge),
			}),
			TitleFrame = Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BorderSizePixel = 0,
				LayoutOrder = 1,
				Size = if props.containerWidth >= WIDE_SIZE then UDim2.fromScale(0.6, 0) else UDim2.fromScale(1, 0),
				BackgroundTransparency = 1,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, BANNER_PADDING),
				}),
				BannerText = Roact.createElement("TextLabel", {
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					Font = style.Font.CaptionBody.Font,
					Size = UDim2.fromScale(1, 0),
					Text = props.bannerText,
					TextColor3 = style.Theme.TextEmphasis.Color,
					TextSize = style.Font.BaseSize :: number * style.Font.CaptionBody.RelativeSize :: number,
					TextTransparency = style.Theme.TextEmphasis.Transparency,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextWrapped = true,
					LayoutOrder = 1,
				}),
			}),
			ButtonFrame = if props.buttonText
				then Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = if props.containerWidth >= WIDE_SIZE
						then UDim2.new(0.4, 0, 0, BUTTON_HEIGHT)
						else UDim2.new(1, 0, 0, BUTTON_HEIGHT),
					LayoutOrder = 2,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						HorizontalAlignment = Enum.HorizontalAlignment.Right,
					}),
					Button = Roact.createElement(PrimarySystemButton, {
						size = if props.containerWidth >= WIDE_SIZE
							then UDim2.new(0, 160, 1, 0)
							else UDim2.fromScale(1, 1),
						text = props.buttonText,
						onActivated = props.onActivated or noOpt,
						fontStyle = style.Font.CaptionBody,
					}),
				})
				else nil,
		})
	end)
end

-- Remove AddFriendsContactImporterBanner folder when cleaning FFlagAddFriendsNewEmptyStateAndBanners
if getFFlagAddFriendsNewEmptyStateAndBanners() then
	return nil :: any
else
	return AddFriendsContactImporterBanner
end
