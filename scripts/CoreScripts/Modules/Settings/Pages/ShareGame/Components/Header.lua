local CorePackages = game:GetService("CorePackages")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)
local BackButton = require(ShareGame.Components.BackButton)
local SearchArea = require(ShareGame.Components.SearchArea)

local FFlagLuaInviteModalEnabled = settings():GetFFlag("LuaInviteModalEnabledV384")
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

	local toggleSearchIcon
	local iconType
	if FFlagLuaInviteModalEnabled then
		toggleSearchIcon = self.props.toggleSearchIcon
		iconType = self.props.iconType
	end

	local layoutSpecific = Constants.LayoutSpecific[deviceLayout]
	local isDesktop = deviceLayout == Constants.DeviceLayout.DESKTOP
	local isSearchingOnMobile
	if not FFlagLuaInviteModalEnabled then
		isSearchingOnMobile = (not isDesktop) and searchAreaActive
	end

	local isSearchingWithIcon
	local backButtonWidth
	if FFlagLuaInviteModalEnabled then
		isSearchingWithIcon = toggleSearchIcon and searchAreaActive
		if iconType == BackButton.IconType.None then
			backButtonWidth = layoutSpecific.BACK_BUTTON_WIDTH
		else
			backButtonWidth = layoutSpecific.BACK_BUTTON_MODAL_WIDTH
		end
	end

	local isArrow
	local isTitleVisible
	local visible
	if FFlagLuaInviteModalEnabled then
		isTitleVisible = not isSearchingWithIcon
		visible = true
	else
		isTitleVisible = not isSearchingOnMobile
		isArrow = not isDesktop
		visible = not isSearchingOnMobile
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = size,
		AnchorPoint = Vector2.new(0, 1),
		LayoutOrder = layoutOrder,
		ZIndex = zIndex,
	}, {
		Title = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Visible = isTitleVisible,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Heading.InviteFriends"),
			TextSize = layoutSpecific.PAGE_TITLE_TEXT_SIZE,
			TextColor3 = Constants.Color.WHITE,
			Font = Enum.Font.SourceSansSemibold,
			ZIndex = zIndex,
		}),
		BackButton = Roact.createElement(BackButton, {
			isArrow = isArrow,
			visible = visible,
			iconType = iconType,
			position = UDim2.new(0, 0, 0.5, 0),
			size = UDim2.new(
				0, FFlagLuaInviteModalEnabled and backButtonWidth or layoutSpecific.BACK_BUTTON_WIDTH,
				0, layoutSpecific.BACK_BUTTON_HEIGHT
			),
			anchorPoint = Vector2.new(0, 0.5),
			zIndex = zIndex,
			onClick = closePage,
		}),
		SearchArea = Roact.createElement(SearchArea, {
			fullWidthSearchBar = FFlagLuaInviteModalEnabled and toggleSearchIcon or not isDesktop,
			searchBoxMargin = layoutSpecific.SEARCH_BOX_MARGIN,
			anchorPoint = Vector2.new(1, 0.5),
			position = UDim2.new(1, 0, 0.5, 0),
			size = FFlagLuaInviteModalEnabled and UDim2.new(1, -backButtonWidth, 1, 0),
			zIndex = zIndex,
		})
	})
end

return Header
