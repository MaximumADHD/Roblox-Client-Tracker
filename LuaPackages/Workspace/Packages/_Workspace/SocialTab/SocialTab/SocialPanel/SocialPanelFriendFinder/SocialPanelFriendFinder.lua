local SocialTab = script:FindFirstAncestor("SocialTab")
local TextService = game:GetService("TextService")

local SocialTabContext = require(SocialTab.SocialTabContext)

local dependencies = require(SocialTab.dependencies)

local React = dependencies.React
local UIBlox = dependencies.UIBlox

local useStyle = UIBlox.Core.Style.useStyle
local Interactable = UIBlox.Core.Control.Interactable
local Images = UIBlox.App.ImageSet.Images
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local IconButton = UIBlox.App.Button.IconButton
local ControlState = UIBlox.Core.Control.Enum.ControlState
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local ImageSetComponent = UIBlox.Core.ImageSet.Label
local getIconSize = UIBlox.App.ImageSet.getIconSize

local LocalizedKeys = require(SocialTab.Enums.LocalizedKeys)

local useDispatch = dependencies.useDispatch
local useLocalization = dependencies.useLocalization
local useSelector = dependencies.useSelector

local TEXT_ICON_PADDING = 4
local PADDING = 8
local CARET_HEIGHT = 8
local CARET_WIDTH = 16
local BANNER_HEIGHT = 72
local HEADER_HEIGHT = 50
local ICON_SPACING = 60
local LAYOUT_PADDING = 12
local TOOLTIP_WIDTH = 240
local CORNER_RADIUS = UDim.new(0, 8)

export type Props = {
	layoutOrder: number,
	onAddFriends: any,
	onGoToFriendsPage: any,
}

local function friendFinderSelector(state)
	local localFriendsList = state.SocialTab and state.SocialTab.Friends.byUserId.localUserId or {}
	local localUserId = state.LocalUserId or nil
	return {
		friendsCount = #localFriendsList,
		uid = localUserId,
	}
end

local function SocialPanelFriendFinder(props: Props)
	local layoutOrder = props.layoutOrder

	local selection = useSelector(friendFinderSelector)
	local friendsCount = selection.friendsCount
	local uid = selection.uid

	local style = useStyle()
	local socialContext: any = React.useContext(SocialTabContext.Context)

	local closeDrawer = socialContext.closeDrawer
	local analytics = socialContext.useRoactService(socialContext.roactAnalytics)
	local hover, setHover = React.useState(false)
	local dispatch = useDispatch()

	local headerText = friendsCount > 0
			and {
				LocalizedKeys.FriendsHeaderWithCount.rawValue(),
				friendCount = friendsCount,
			}
		or LocalizedKeys.FriendsHeader.rawValue()

	local localized = useLocalization({
		headerText = headerText,
		findFriends = "Feature.Friends.Action.FindFriends",
		tooltipHeader = "Feature.SocialTab.Label.AddFriendHintBody",
		tooltipBody = "Feature.SocialTab.Label.FindFriendsHintBody",
	})

	local function onStateChanged(oldState, newState)
		setHover(newState == ControlState.Hover)
	end

	local function onGoToFriendsPage()
		analytics.EventStream:setRBXEvent("SocialTab", "buttonClick", {
			btn = "CarouselTitle",
			uid = uid,
		})

		analytics.EventStream:setRBXEvent("SocialTab", "buttonClick", {
			btn = "friendsLanding",
			uid = uid,
		})
		dispatch(closeDrawer())
		props.onGoToFriendsPage()
	end

	local function onAddFriends()
		analytics.EventStream:setRBXEvent("SocialTab", "buttonClick", {
			btn = "AddFriends",
			uid = uid,
		})
		dispatch(closeDrawer())
		props.onAddFriends()
	end

	local headerTextHeight = TextService:GetTextSize(
		localized.tooltipHeader,
		style.Font.BaseSize * style.Font.CaptionHeader.RelativeSize,
		style.Font.CaptionHeader.Font,
		Vector2.new(TOOLTIP_WIDTH, 1000)
	).Y

	local bodyTextHeight = TextService:GetTextSize(
		localized.tooltipHeader,
		style.Font.BaseSize * style.Font.CaptionBody.RelativeSize,
		style.Font.CaptionBody.Font,
		Vector2.new(TOOLTIP_WIDTH, 1000)
	).Y

	local friendsBannerIcon = friendsCount > 0 and Images["icons/menu/findfriends_large"]
		or Images["icons/menu/friends_large"]

	return React.createElement(React.Fragment, {
		LayoutOrder = layoutOrder,
	}, {
		Header = React.createElement(Interactable, {
			Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
			BackgroundTransparency = 1,
			AutoButtonColor = false,
			[React.Event.Activated] = onGoToFriendsPage,
			onStateChanged = function() end,
		}, {
			Title = React.createElement(StyledTextLabel, {
				fluidSizing = true,
				richText = false,
				fontStyle = style.Font.Header1,
				size = UDim2.new(1, -getIconSize(IconSize.Small) - TEXT_ICON_PADDING, 0, HEADER_HEIGHT),
				text = localized.headerText,
				colorStyle = style.Theme.TextEmphasis,
				textXAlignment = Enum.TextXAlignment.Left,
				textYAlignment = Enum.TextYAlignment.Center,
				textTruncate = Enum.TextTruncate.AtEnd,
			}),

			SeeAllArrow = friendsCount > 0 and React.createElement(ImageSetComponent, {
				Size = UDim2.fromOffset(getIconSize(IconSize.Small), getIconSize(IconSize.Small)),
				Position = UDim2.new(1, -getIconSize(IconSize.Small), 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Image = Images["icons/navigation/pushRight_small"],
				ImageColor3 = style.Theme.TextEmphasis.Color,
				ImageTransparency = style.Theme.TextEmphasis.Transparency,
				LayoutOrder = 2,
			}) or nil,
		}),
		SearchFriendsBanner = React.createElement(Interactable, {
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 0, BANNER_HEIGHT),
			BackgroundTransparency = 1,
			onStateChanged = onStateChanged,
			[React.Event.Activated] = onAddFriends,
		}, {
			HoverMask = hover and React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = style.Theme.BackgroundOnHover.Color,
				BackgroundTransparency = style.Theme.BackgroundOnHover.Transparency,
				BorderSizePixel = 0,
				ZIndex = 2,
			}, {
				Corner = React.createElement("UICorner", {
					CornerRadius = CORNER_RADIUS,
				}),
			}) or nil,
			Frame = React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = style.Theme.BackgroundUIDefault.Color,
				BackgroundTransparency = style.Theme.BackgroundUIDefault.Transparency,
				BorderSizePixel = 0,
				ZIndex = 1,
			}, {

				Corner = React.createElement("UICorner", {
					CornerRadius = CORNER_RADIUS,
				}),
				Layout = React.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, LAYOUT_PADDING),
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				Padding = React.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, PADDING),
					PaddingRight = UDim.new(0, PADDING),
				}),
				IconFindFriends = React.createElement(IconButton, {
					iconSize = IconSize.Medium,
					isDisabled = true,
					iconColor3 = hover and style.Theme.IconOnHover.Color or style.Theme.IconDefault.Color,
					iconTransparency = hover and style.Theme.IconOnHover.Transparency
						or style.Theme.IconDefault.Transparency,
					layoutOrder = 1,
					icon = friendsBannerIcon,
				}),

				Label = React.createElement("TextLabel", {
					LayoutOrder = 2,
					Text = localized.findFriends,
					Size = UDim2.new(1, -ICON_SPACING, 1, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextSize = style.Font.BaseSize * style.Font.CaptionHeader.RelativeSize,
					TextColor3 = style.Theme.TextDefault.Color,
				}),
			}),
			FriendFinderTooltip = friendsCount == 0 and React.createElement("Frame", {
				ZIndex = 2,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, CARET_HEIGHT + BANNER_HEIGHT),
				Position = UDim2.new(0, 0, 0, BANNER_HEIGHT),
			}, {
				UIListLayout = React.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
				}),

				CaretFrame = React.createElement("Frame", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(0, CARET_WIDTH, 0, CARET_HEIGHT),
					LayoutOrder = 1,
				}, {
					Caret = React.createElement(ImageSetLabel, {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = UDim2.new(0, CARET_WIDTH, 0, CARET_HEIGHT),
						Image = Images["component_assets/triangleUp_16"],
						ImageColor3 = style.Theme.SystemPrimaryDefault.Color,
						ImageTransparency = style.Theme.SystemPrimaryDefault.Transparency,
					}),
				}),

				Content = React.createElement("TextButton", {
					AutoButtonColor = false,
					Text = "",
					Size = UDim2.new(0, TOOLTIP_WIDTH, 0, BANNER_HEIGHT),
					BackgroundColor3 = style.Theme.SystemPrimaryDefault.Color,
					BackgroundTransparency = style.Theme.SystemPrimaryDefault.Transparency,
					BorderSizePixel = 0,
					LayoutOrder = 2,
				}, {
					VerticalLayout = React.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Vertical,
						Padding = UDim.new(0, PADDING),
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					Padding = React.createElement("UIPadding", {
						PaddingTop = UDim.new(0, LAYOUT_PADDING),
						PaddingBottom = UDim.new(0, LAYOUT_PADDING),
						PaddingLeft = UDim.new(0, LAYOUT_PADDING),
						PaddingRight = UDim.new(0, LAYOUT_PADDING),
					}),
					Header = React.createElement(StyledTextLabel, {
						colorStyle = style.Theme.SystemPrimaryContent,
						fontStyle = style.Font.CaptionHeader,
						layoutOrder = 1,
						text = localized.tooltipHeader,
						textXAlignment = Enum.TextXAlignment.Left,
						size = UDim2.new(1, 0, 0, headerTextHeight),
					}),
					Body = React.createElement(StyledTextLabel, {
						colorStyle = style.Theme.SystemPrimaryContent,
						fontStyle = style.Font.CaptionBody,
						layoutOrder = 2,
						text = localized.tooltipBody,
						textXAlignment = Enum.TextXAlignment.Left,
						size = UDim2.new(1, 0, 0, bodyTextHeight),
					}),
				}),
			}),
		}),
	})
end

return SocialPanelFriendFinder
