local GuiService = game:GetService("GuiService")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Common = Modules.Common
local LuaApp = Modules.LuaApp

local Roact = require(Common.Roact)
local RoactRodux = require(Common.RoactRodux)
local RoactAnalyticsHomePage = require(Modules.LuaApp.Services.RoactAnalyticsHomePage)
local RoactNetworking = require(Modules.LuaApp.Services.RoactNetworking)
local RoactServices = require(Modules.LuaApp.RoactServices)

local Promise = require(Modules.LuaApp.Promise)
local RefreshScrollingFrame = require(Modules.LuaApp.Components.RefreshScrollingFrame)
local UserCarouselEntry = require(LuaApp.Components.Home.UserCarouselEntry)
local FlagSettings = require(Modules.LuaApp.FlagSettings)
local HomeHeaderUserInfo = require(LuaApp.Components.Home.HomeHeaderUserInfo)
local MyFeedButton = require(LuaApp.Components.Home.MyFeedButton)
local DropshadowFrame = require(LuaApp.Components.DropshadowFrame)
local Carousel = require(LuaApp.Components.Carousel)
local TopBar = require(LuaApp.Components.TopBar)
local GameCarousels = require(LuaApp.Components.GameCarousels)
local GamesList = require(LuaApp.Components.Games.GamesList)
local LocalizedSectionHeaderWithSeeAll = require(Modules.LuaApp.Components.LocalizedSectionHeaderWithSeeAll)
local User = require(LuaApp.Models.User)
local Constants = require(LuaApp.Constants)
local FitChildren = require(LuaApp.FitChildren)
local Functional = require(Common.Functional)
local memoize = require(Common.memoize)
local AppPage = require(Modules.LuaApp.AppPage)
local AppPageLocalizationKeys = require(Modules.LuaApp.AppPageLocalizationKeys)

local Url = require(Modules.LuaApp.Http.Url)
local ApiFetchGamesData = require(Modules.LuaApp.Thunks.ApiFetchGamesData)
local ApiFetchAllUsersFriends = require(Modules.LuaApp.Thunks.ApiFetchAllUsersFriends)

local isLuaGamesPageEnabled = FlagSettings.IsLuaGamesPageEnabled()

local SIDE_PADDING = 15
local SECTION_PADDING = 15
local CAROUSEL_PADDING = Constants.GAME_CAROUSEL_PADDING
local CAROUSEL_PADDING_DIM = UDim.new(0, CAROUSEL_PADDING)

local USER_ICON_SIZE = 84
local USER_NAME_TEXT_SIZE = 18
local USER_NAME_TOP_PADDING = 6
local FRIEND_SECTION_TOP_PADDING = 15
local FRIEND_SECTION_BOTTOM_PADDING = 27
local FRIEND_SECTION_HEIGHT =
	USER_ICON_SIZE + USER_NAME_TEXT_SIZE + USER_NAME_TOP_PADDING +
	FRIEND_SECTION_TOP_PADDING + FRIEND_SECTION_BOTTOM_PADDING

local FEED_SECTION_PADDING = 60
local FEED_SECTION_PADDING_TOP = FEED_SECTION_PADDING - CAROUSEL_PADDING
local FEED_SECTION_PADDING_BOTTOM = FEED_SECTION_PADDING
local FEED_BUTTON_HEIGHT = 32
local FEED_SECTION_HEIGHT = FEED_SECTION_PADDING_TOP + FEED_BUTTON_HEIGHT + FEED_SECTION_PADDING_BOTTOM

local PRESENCE_WEIGHTS = {
	[User.PresenceType.IN_GAME] = 3,
	[User.PresenceType.ONLINE] = 2,
	[User.PresenceType.IN_STUDIO] = 1,
	[User.PresenceType.OFFLINE] = 0,
}
local CURRENT_PAGE = AppPage.Home

local function Spacer(props)
	local height = props.height
	local layoutOrder = props.LayoutOrder

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, height),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	})
end

local function onSeeAllFriends()
	local url = string.format("%susers/friends", Url.BASE_URL)
	GuiService:BroadcastNotification(url,
		GuiService:GetNotificationTypeList().VIEW_PROFILE)
end

local HomePage = Roact.PureComponent:extend("HomePage")

function HomePage:init()
	self.onGamesSelected = function(sort)
		if isLuaGamesPageEnabled then
			return self:setState({
				gameSort = sort
			})
		else
			-- If Games page is not Lua, use web-view's SeeAll page.
			local notificationType = GuiService:GetNotificationTypeList().GAMES_SEE_ALL
			return GuiService:BroadcastNotification(sort.name, notificationType)
		end
	end
	self.onBack = function()
		return self.onGamesSelected(false)
	end
end

function HomePage:render()
	local topBarHeight = self.props.topBarHeight
	local friends = self.props.friends
	local localUserModel = self.props.localUserModel
	local formFactor = self.props.formFactor
	local friendCount = self.props.friendCount
	local gameSort = self.state.gameSort
	local refresh = self.props.refresh
	local homePageAnalytics = self.props.homePageAnalytics

	-- TODO: Could use a state stack to move to the games list page, but for now
	-- this is all we need to get the base-level functionality:
	if gameSort then
		return Roact.createElement(GamesList, {
			currentPage = CURRENT_PAGE,
			sort = gameSort,
			onBack = self.onBack,
			onSelected = self.onGamesSelected,
			analytics = homePageAnalytics,
		})
	end

	local function createUserEntry(user, count)
		return Roact.createElement(UserCarouselEntry, {
			user = user,
			formFactor = formFactor,
			count = count,
			highlightColor = Constants.Color.WHITE,
			thumbnailType = Constants.AvatarThumbnailTypes.AvatarThumbnail,
		})
	end


	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
	}, {
		TopBar = Roact.createElement(TopBar, {
			LayoutOrder = 1,
			showBackButton = false,
			showBuyRobux = true,
			showNotifications = true,
			showSearch = true,
			textKey = AppPageLocalizationKeys[CURRENT_PAGE],
			ZIndex = 2,
		}),
		Scroller = Roact.createElement(RefreshScrollingFrame, {
			Position = UDim2.new(0, 0, 0, topBarHeight),
			Size = UDim2.new(1, 0, 1, -topBarHeight),
			CanvasSize = UDim2.new(1, 0, 0, 0),
			BackgroundColor3 = Constants.Color.GRAY4,
			BorderSizePixel = 0,
			ScrollBarThickness = 0,
			currentPage = CURRENT_PAGE,
			refresh = refresh,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			TitleSection = localUserModel and Roact.createElement(HomeHeaderUserInfo, {
				sidePadding = SIDE_PADDING,
				sectionPadding = SECTION_PADDING,
				LayoutOrder = 2,
				localUserModel = localUserModel,
				formFactor = formFactor,
			}) or nil,
			FriendSection = #friends > 0 and
				Roact.createElement(FitChildren.FitFrame, {
					Size = UDim2.new(1, 0, 0, 0),
					fitAxis = FitChildren.FitAxis.Height,
					BackgroundTransparency = 1,
					LayoutOrder = 4,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					Container = Roact.createElement(FitChildren.FitFrame, {
						Size = UDim2.new(1, 0, 0, 0),
						BackgroundTransparency = 1,
						fitFields = {
							Size = FitChildren.FitAxis.Height,
						},
					}, {
						SidePadding = Roact.createElement("UIPadding", {
							PaddingLeft = CAROUSEL_PADDING_DIM,
							PaddingRight = CAROUSEL_PADDING_DIM,
						}),
						Header = Roact.createElement(LocalizedSectionHeaderWithSeeAll, {
							text = {
								"Feature.Home.HeadingFriends",
								friendCount = friendCount,
							},
							LayoutOrder = 1,
							onSelected = onSeeAllFriends,
						}),
					}),
					CarouselFrame = Roact.createElement(DropshadowFrame, {
						Size = UDim2.new(1, 0, 0, FRIEND_SECTION_HEIGHT),
						BackgroundColor3 = Constants.Color.WHITE,
						LayoutOrder = 2,
					}, {
						Carousel = Roact.createElement(Carousel, {
							Position = UDim2.new(0, 5, 0, 0),
							childPadding = 1,
						}, Functional.Map(friends, createUserEntry))
					}),
				}) or nil,
			GameCarousels = Roact.createElement(GameCarousels, {
				onSelected = self.onGamesSelected,
				gameSortGroup = Constants.GameSortGroups.HomeGames,
				LayoutOrder = 5,
				analytics = homePageAnalytics,
			}),
			FeedSection = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, FEED_SECTION_HEIGHT),
				BackgroundTransparency = 1,
				LayoutOrder = 6,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				MyFeedPadding1 = Roact.createElement(Spacer, {
					height = FEED_SECTION_PADDING_TOP,
					LayoutOrder = 1,
				}),
				MyFeedButton = Roact.createElement(MyFeedButton, {
					Size = UDim2.new(1, 0, 0, FEED_BUTTON_HEIGHT),
					LayoutOrder = 2,
				}),
				MyFeedPadding2 = Roact.createElement(Spacer, {
					height = FEED_SECTION_PADDING_BOTTOM,
					LayoutOrder = 3,
				}),
			}),
		}),
	})
end

local selectFriends = memoize(function(users)
	local friends = {}
	local function friendPreference(friend1, friend2)
		local friend1Weight = PRESENCE_WEIGHTS[friend1.presence]
		local friend2Weight = PRESENCE_WEIGHTS[friend2.presence]

		if friend1Weight == friend2Weight then
			return friend1.name < friend2.name
		else
			return friend1Weight > friend2Weight
		end
	end

	for _, user in pairs(users) do
		if user.isFriend then
			friends[#friends + 1] = user
		end
	end

	table.sort(friends, friendPreference)

	return friends
end)

local selectLocalUser = memoize(function(users, id)
	return users[id]
end)

HomePage = RoactRodux.connect(function(store, props)
	local state = store:GetState()

	return {
		friends = selectFriends(
			state.Users
		),
		localUserModel = selectLocalUser(state.Users, state.LocalUserId),
		formFactor = state.FormFactor,
		friendCount = state.FriendCount,
		topBarHeight = state.TopBar.totalHeight,
		gameSorts = state.GameSorts,

		refresh = function()
			local networking = props.networking
			local fetchPromises = {}
			table.insert(fetchPromises, store:Dispatch(ApiFetchAllUsersFriends(networking)))
			table.insert(fetchPromises, store:Dispatch(ApiFetchGamesData(networking, Constants.GameSortGroups.HomeGames)))
			return Promise.all(fetchPromises)
		end,
	}
end)(HomePage)

return RoactServices.connect({
	networking = RoactNetworking,
	homePageAnalytics = RoactAnalyticsHomePage,
})(HomePage)