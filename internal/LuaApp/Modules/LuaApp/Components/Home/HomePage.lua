local GuiService = game:GetService("GuiService")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Common = Modules.Common
local LuaApp = Modules.LuaApp

local Roact = require(Common.Roact)
local RoactRodux = require(Common.RoactRodux)

local MyFeedButton = require(LuaApp.Components.Home.MyFeedButton)
local HomeGamePlaces = require(LuaApp.Components.Home.HomeGamePlaces)
local LocalizedSectionHeaderWithSeeAll = require(LuaApp.Components.LocalizedSectionHeaderWithSeeAll)
local UserCarouselEntry = require(LuaApp.Components.Home.UserCarouselEntry)
local DropshadowFrame = require(LuaApp.Components.DropshadowFrame)
local Carousel = require(LuaApp.Components.Carousel)
local TopBar = require(LuaApp.Components.TopBar)
local GamesList = require(LuaApp.Components.Games.GamesList)
local StringsLocale = require(LuaApp.StringsLocale)
local User = require(LuaApp.Models.User)
local Constants = require(LuaApp.Constants)
local FitChildren = require(LuaApp.FitChildren)
local Functional = require(Common.Functional)
local memoize = require(Common.memoize)
local AppPage = require(Modules.LuaApp.AppPage)

local Url = require(Modules.LuaApp.Http.Url)

local UseTempRoactLuaVersionOfGamesPage = settings():GetFFlag("UseTempRoactLuaVersionOfGamesPage")

local function Spacer(props)
	local height = props.height
	local layoutOrder = props.LayoutOrder

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, height),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	})
end

local HomePage = Roact.PureComponent:extend("HomePage")

local SIDE_PADDING = 15
local SECTION_PADDING = 15
local FRIENDS_LIST_PADDING_BOTTOM = 20
local CAROUSEL_PADDING = Constants.GAME_CAROUSEL_PADDING
local CAROUSEL_PADDING_DIM = UDim.new(0, CAROUSEL_PADDING)

local BUILDERCLUB_LOGO_WIDTH = 24
local BUILDERCLUB_LOGO_HEIGHT = 24
local BUILDERCLUB_LOGOS = {
	[Enum.MembershipType.BuildersClub] = "rbxasset://textures/ui/LuaApp/icons/ic-bc-small.png",
	[Enum.MembershipType.TurboBuildersClub] = "rbxasset://textures/ui/LuaApp/icons/ic-tbc-small.png",
	[Enum.MembershipType.OutrageousBuildersClub] = "rbxasset://textures/ui/LuaApp/icons/ic-obc-small.png",
}
local TITLE_SECTION_USERNAME_BC_PADDING = 12
local TITLE_USERNAME_TEXT_SIZE = 38
local TITLE_SECTION_HEIGHT =
	(TITLE_USERNAME_TEXT_SIZE > BUILDERCLUB_LOGO_HEIGHT) and TITLE_USERNAME_TEXT_SIZE
	or BUILDERCLUB_LOGO_HEIGHT

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

local function newCounter()
	local count = 1
	return function ()
		count = count + 1
		return count
	end
end

function HomePage:init()
	self.onGamesSeeAll = function(sort)
		if UseTempRoactLuaVersionOfGamesPage then
			self:setState({
				gamesSeeAllSort = sort and sort.displayName
			})
		else
			if sort then
				-- If Games page is not Lua, use web-view's SeeAll page.
				local notificationType = GuiService:GetNotificationTypeList().GAMES_SEE_ALL
				GuiService:BroadcastNotification(sort.name, notificationType)
			end
		end
	end
end

function HomePage:render()
	local friends = self.props.friends
	local localUser = self.props.localUser
	local formFactor = self.props.formFactor
	local friendCount = self.props.friendCount
	local gamesSeeAllSort = self.state.gamesSeeAllSort

	-- TODO: Could use a state stack to move to the games list page, but for now
	-- this is all we need to get the base-level functionality:
	if gamesSeeAllSort then
		return Roact.createElement(GamesList, {
			showSort = gamesSeeAllSort,
			onBack = function() self.onGamesSeeAll(false) end,
			currentPage = CURRENT_PAGE,
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

	local isLocalPlayerBC = localUser.membership ~= Enum.MembershipType.None
	local nextLayoutOrder = newCounter()

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		TopBar = Roact.createElement(TopBar, {
			LayoutOrder = 1,
			showBackButton = false,
			showBuyRobux = true,
			showNotifications = true,
			showSearch = true,
			textKey = { StringsLocale.Keys.HOME },
		}),
		Scroller = Roact.createElement(FitChildren.FitScrollingFrame, {
			Size = UDim2.new(1, 0, 1, -TopBar.getHeight()),
			CanvasSize = UDim2.new(1, 0, 0, 0),
			BackgroundColor3 = Constants.Color.GRAY4,
			BorderSizePixel = 0,
			ScrollBarThickness = 0,
			LayoutOrder = 2,
			fitFields = { CanvasSize = FitChildren.FitAxis.Height },
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Padding1 = Roact.createElement(Spacer, {
				height = SIDE_PADDING,
				LayoutOrder = nextLayoutOrder(),
			}),
			TitleSection = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, TITLE_SECTION_HEIGHT),
				BackgroundTransparency = 1,
				LayoutOrder = nextLayoutOrder(),
			}, {
				UserInfo = Roact.createElement("Frame", {
					Size = UDim2.new(1, -SIDE_PADDING*2, 1, 0),
					Position = UDim2.new(0, SIDE_PADDING, 0, 0),
					BackgroundTransparency = 1,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					BuildersClub = isLocalPlayerBC and Roact.createElement("ImageLabel", {
							Size = UDim2.new(0, BUILDERCLUB_LOGO_WIDTH, 0, BUILDERCLUB_LOGO_HEIGHT),
							Image = BUILDERCLUB_LOGOS[localUser.membership],
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
						LayoutOrder = 1,
					}) or nil,
					Padding = isLocalPlayerBC and Roact.createElement("Frame", {
						Size = UDim2.new(0, TITLE_SECTION_USERNAME_BC_PADDING, 1, 0),
						BackgroundTransparency = 1,
						LayoutOrder = 2,
					}) or nil,
					Username = Roact.createElement("TextLabel", {
						Size = isLocalPlayerBC and
							UDim2.new(1, -BUILDERCLUB_LOGO_WIDTH-TITLE_SECTION_USERNAME_BC_PADDING, 0, TITLE_USERNAME_TEXT_SIZE)
							or UDim2.new(1, 0, 0, TITLE_USERNAME_TEXT_SIZE),
						BackgroundTransparency = 1,
						TextSize = TITLE_USERNAME_TEXT_SIZE,
						TextColor3 = Constants.Color.GRAY1,
						Font = Enum.Font.SourceSans,
						Text = localUser.name,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextScaled = true,
						LayoutOrder = 3,
					}),
				})
			}),
			Padding2 = Roact.createElement(Spacer, {
				height = SECTION_PADDING,
				LayoutOrder = nextLayoutOrder(),
			}),
			FriendSection = #friends > 0 and
				Roact.createElement(FitChildren.FitFrame, {
					Size = UDim2.new(1, 0, 0, 0),
					fitAxis = FitChildren.FitAxis.Height,
					BackgroundTransparency = 1,
					LayoutOrder = nextLayoutOrder(),
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
								StringsLocale.Keys.FRIENDS_COUNT,
								COUNT = friendCount,
							},
							LayoutOrder = 1,
							onActivated = function()
								local url = string.format("%susers/friends", Url.BASE_URL)
								GuiService:BroadcastNotification(url,
									GuiService:GetNotificationTypeList().VIEW_PROFILE)
							end,
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
						},
							Functional.Map(friends, createUserEntry)
						)
					}),
					Padding4 = Roact.createElement(Spacer, {
						height = FRIENDS_LIST_PADDING_BOTTOM,
						LayoutOrder = 3,
					}),
				}) or nil,
			GameCarousels = Roact.createElement(HomeGamePlaces, {
				onSeeAll = self.onGamesSeeAll,
				LayoutOrder = nextLayoutOrder(),
			}),
			FeedSection = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, FEED_SECTION_HEIGHT),
				BackgroundTransparency = 1,
				LayoutOrder = nextLayoutOrder(),
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

local connector = RoactRodux.connect(function(store, props)
	local state = store:GetState()
	return {
		friends = selectFriends(
			state.Users
		),
		localUser = state.LocalUser,
		formFactor = state.FormFactor,
		friendCount = state.FriendCount,
	}
end)

return connector(HomePage)