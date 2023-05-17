local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local Dash = dependencies.Dash

local withLocalization = dependencies.withLocalization

local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local PrimarySystemButton = UIBlox.App.Button.PrimarySystemButton
local StandardButtonSize = UIBlox.App.Button.Enum.StandardButtonSize
local Colors = UIBlox.App.Style.Colors

local TextKeys = require(FriendsLanding.Common.TextKeys)

local getFFlagFriendsLandingNewEmptyPage = require(FriendsLanding.Flags.getFFlagFriendsLandingNewEmptyPage)

local IMAGE_LABEL_HEIGHT = 96
local TOP_BAR_HEIGHT = 56
local FILTER_PILL_PADDING = 45

local SIDE_PADDING = 30
local VERTICAL_PADDING_DEFAULT = 15
local VERTICAL_PADDING_BUTTON = 10
local TEXT_WIDTH = 315

type Props = {
	layoutOrder: number,
	pageLoadingTimeReport: () -> ()?,
	openAddFriendsPage: () -> (),
}

local EmptyResultsView = Roact.PureComponent:extend("EmptyResultsView")

EmptyResultsView.defaultProps = {
	layoutOrder = 0,
	pageLoadingTimeReport = nil,
	openAddFriendsPage = if getFFlagFriendsLandingNewEmptyPage() then Dash.noop else nil,
}

function EmptyResultsView:didMount()
	local props: Props = self.props

	if getFFlagFriendsLandingNewEmptyPage() then
		if props.pageLoadingTimeReport then
			props.pageLoadingTimeReport()
		end
	else
		if self.props.pageLoadingTimeReport then
			self.props.pageLoadingTimeReport()
		end
	end
end

function EmptyResultsView:render()
	local props: Props = self.props

	return withStyle(function(style)
		return withLocalization({
			noResultsText = "CommonUI.Messages.Response.NoResults",
			addFriendsBtn = TextKeys.ADD_FRIENDS_BTN,
		})(function(localizedStrings)
			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, -(TOP_BAR_HEIGHT + FILTER_PILL_PADDING)),
				LayoutOrder = if getFFlagFriendsLandingNewEmptyPage()
					then props.layoutOrder
					else self.props.layoutOrder,
				BackgroundTransparency = 1,
			}, {
				IndicatorInner = Roact.createElement("Frame", {
					AutomaticSize = if getFFlagFriendsLandingNewEmptyPage()
						then Enum.AutomaticSize.Y
						else Enum.AutomaticSize.XY,
					Size = UDim2.new(if getFFlagFriendsLandingNewEmptyPage() then 1 else 0, 0, 0, 0),
					BackgroundTransparency = 1,
					Position = UDim2.new(0.5, 0, 0.4, 0),
					AnchorPoint = Vector2.new(0.5, 0.4),
				}, {
					SidePadding = if getFFlagFriendsLandingNewEmptyPage()
						then Roact.createElement("UIPadding", {
							PaddingRight = UDim.new(0, SIDE_PADDING),
							PaddingLeft = UDim.new(0, SIDE_PADDING),
						})
						else nil,
					UIList = Roact.createElement("UIListLayout", {
						VerticalAlignment = Enum.VerticalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						Padding = UDim.new(
							0,
							if getFFlagFriendsLandingNewEmptyPage() then VERTICAL_PADDING_DEFAULT else 0
						),
					}),
					Imagelabel = Roact.createElement(ImageSetLabel, {
						BackgroundTransparency = 1,
						Image = if getFFlagFriendsLandingNewEmptyPage()
							then Images["icons/graphic/findfriends_xlarge"]
							else Images["icons/status/oof_xlarge"],
						ImageColor3 = if getFFlagFriendsLandingNewEmptyPage()
							then Colors.White
							else style.Theme.TextMuted.Color,
						ImageTransparency = if getFFlagFriendsLandingNewEmptyPage()
							then nil
							else style.Theme.TextMuted.Transparency,
						LayoutOrder = 1,
						Size = UDim2.new(0, IMAGE_LABEL_HEIGHT, 0, IMAGE_LABEL_HEIGHT),
					}),
					Textlabel = Roact.createElement("TextLabel", {
						AutomaticSize = if getFFlagFriendsLandingNewEmptyPage()
							then Enum.AutomaticSize.Y
							else Enum.AutomaticSize.XY,
						TextWrapped = if getFFlagFriendsLandingNewEmptyPage() then true else nil,
						BackgroundTransparency = 1,
						Font = Enum.Font.Gotham,
						LayoutOrder = 2,
						Size = UDim2.new(0, if getFFlagFriendsLandingNewEmptyPage() then TEXT_WIDTH else 0, 0, 0),
						Text = if getFFlagFriendsLandingNewEmptyPage()
							then "TEMP: You haven't added any friends yet. To get started, find and add your friends on Roblox."
							else localizedStrings.noResultsText,
						TextColor3 = style.Theme.TextMuted.Color,
						TextSize = style.Font.Header2.RelativeSize :: number * style.Font.BaseSize :: number,
						TextTransparency = style.Theme.TextMuted.Transparency,
					}),
					Padding = if getFFlagFriendsLandingNewEmptyPage()
						then Roact.createElement("Frame", {
							LayoutOrder = 3,
							BackgroundTransparency = 1,
							Size = UDim2.new(0, 0, 0, VERTICAL_PADDING_BUTTON),
						})
						else nil,
					AddFriendsButton = if getFFlagFriendsLandingNewEmptyPage()
						then Roact.createElement(PrimarySystemButton, {
							layoutOrder = 4,
							text = localizedStrings.addFriendsBtn,
							standardSize = StandardButtonSize.Regular,
							onActivated = props.openAddFriendsPage,
						})
						else nil,
				}),
			})
		end)
	end)
end

return EmptyResultsView
