local CorePackages = game:GetService("CorePackages")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)
local BackButton = require(ShareGame.Components.BackButton)
local SearchArea = require(ShareGame.Components.SearchArea)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Header = Roact.PureComponent:extend("Header")

function Header:render()
	local deviceLayout = self.props.deviceLayout
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder
	local zIndex = self.props.zIndex
	local closePage = self.props.closePage
	local searchAreaActive = self.props.searchAreaActive

	local layoutSpecific = Constants.LayoutSpecific[deviceLayout]
	local isDesktop = deviceLayout == Constants.DeviceLayout.DESKTOP
	local isSearchingOnMobile = (not isDesktop) and searchAreaActive

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = size,
		AnchorPoint = Vector2.new(0, 1),
		LayoutOrder = layoutOrder,
		ZIndex = zIndex,
	}, {
		Title = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Visible = not isSearchingOnMobile,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Heading.InviteFriends"),
			TextSize = layoutSpecific.PAGE_TITLE_TEXT_SIZE,
			TextColor3 = Constants.Color.WHITE,
			Font = Enum.Font.SourceSansSemibold,
			ZIndex = self.props.zIndex,
		}),
		BackButton = Roact.createElement(BackButton, {
			isArrow = not isDesktop,
			visible = not isSearchingOnMobile,
			position = UDim2.new(0, 0, 0.5, 0),
			size = UDim2.new(
				0, layoutSpecific.BACK_BUTTON_WIDTH,
				0, layoutSpecific.BACK_BUTTON_HEIGHT
			),
			anchorPoint = Vector2.new(0, 0.5),
			zIndex = zIndex,
			onClick = closePage,
		}),
		SearchArea = Roact.createElement(SearchArea, {
			fullWidthSearchBar = not isDesktop,
			searchBoxMargin = layoutSpecific.SEARCH_BOX_MARGIN,
			anchorPoint = Vector2.new(1, 0.5),
			position = UDim2.new(1, 0, 0.5, 0),
			zIndex = zIndex,
		})
	})
end

return Header
