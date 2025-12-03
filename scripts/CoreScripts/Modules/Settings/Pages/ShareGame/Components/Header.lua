--!nonstrict
local CorePackages = game:GetService("CorePackages")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Packages.Roact)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Theme = require(RobloxGui.Modules.Settings.Theme)
local Constants = require(ShareGame.Constants)
local BackButton = require(ShareGame.Components.BackButton)
local SearchArea = require(ShareGame.Components.SearchArea)

local getTranslator = require(ShareGame.getTranslator)
local RobloxTranslator = getTranslator()

local Header = Roact.PureComponent:extend("Header")

function Header:render()
	local deviceLayout = self.props.deviceLayout
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder
	local zIndex = self.props.zIndex
	local closePage = self.props.closePage
	local searchAreaActive = self.props.searchAreaActive
	local analytics = self.props.analytics

	local toggleSearchIcon = self.props.toggleSearchIcon
	local iconType = self.props.iconType

	local layoutSpecific = Constants.LayoutSpecific[deviceLayout]
	local isDesktop = deviceLayout == Constants.DeviceLayout.DESKTOP

	local isSearchingWithIcon = toggleSearchIcon and searchAreaActive
	local backButtonWidth
	if iconType == BackButton.IconType.None then
		backButtonWidth = layoutSpecific.BACK_BUTTON_WIDTH
	else
		backButtonWidth = layoutSpecific.BACK_BUTTON_MODAL_WIDTH
	end

	local isTitleVisible = not isSearchingWithIcon
	local visible = true

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = size,
		AnchorPoint = Vector2.new(0, 1),
		LayoutOrder = layoutOrder,
		ZIndex = zIndex,
		Position = UDim2.new(0, 0, 0, 4),
	}, {
		Title = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Visible = isTitleVisible,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Heading.InviteFriends"),
			TextSize = Theme.textSize(layoutSpecific.PAGE_TITLE_TEXT_SIZE),
			TextColor3 = Constants.Color.WHITE,
			Font = Theme.font(Enum.Font.SourceSansSemibold, "Semibold"),
			ZIndex = zIndex,
		}),
		BackButton = Roact.createElement(BackButton, {
			visible = visible,
			iconType = iconType,
			position = UDim2.new(0, 0, 0.5, 0),
			size = UDim2.new(
				0,
				backButtonWidth or layoutSpecific.BACK_BUTTON_WIDTH,
				0,
				layoutSpecific.BACK_BUTTON_HEIGHT
			),
			anchorPoint = Vector2.new(0, 0.5),
			zIndex = zIndex,
			onClick = closePage,
		}),
		SearchArea = Roact.createElement(SearchArea, {
			fullWidthSearchBar = toggleSearchIcon or not isDesktop,
			searchBoxMargin = layoutSpecific.SEARCH_BOX_MARGIN,
			anchorPoint = Vector2.new(1, 0.5),
			position = UDim2.new(1, 0, 0.5, 0),
			size = UDim2.new(1, -backButtonWidth, 1, 0),
			zIndex = zIndex,
			analytics = analytics,
		}),
	})
end

return Header
