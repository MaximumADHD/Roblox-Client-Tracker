local GuiService = game:GetService("GuiService")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Common = Modules.Common
local LuaApp = Modules.LuaApp
local Components = LuaApp.Components

local Roact = require(Common.Roact)
local RoactRodux = require(Common.RoactRodux)

local LocalizedSectionHeaderWithSeeAll = require(Components.LocalizedSectionHeaderWithSeeAll)
local SectionHeaderWithSeeAll = require(Components.SectionHeaderWithSeeAll)
local UserCarouselEntry = require(Components.Home.UserCarouselEntry)
local LocalizedTextButton = require(Components.LocalizedTextButton)
local DropshadowFrame = require(Components.DropshadowFrame)
local GameCard = require(Components.Games.GameCard)
local Carousel = require(Components.Carousel)
local TopBar = require(Components.TopBar)
local GamesList = require(Components.Games.GamesList)
local StringsLocale = require(LuaApp.StringsLocale)
local User = require(LuaApp.Models.User)
local Constants = require(LuaApp.Constants)
local FitChildren = require(LuaApp.FitChildren)
local Functional = require(Common.Functional)
local memoize = require(Common.memoize)

local Url = require(Modules.LuaApp.Http.Url)

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
local CAROUSEL_PADDING = 20
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
local FEED_BUTTON_HEIGHT = 32
local FEED_SECTION_HEIGHT = FEED_SECTION_PADDING*2 + FEED_BUTTON_HEIGHT

local PRESENCE_WEIGHTS = {
	[User.PresenceType.IN_GAME] = 3,
	[User.PresenceType.ONLINE] = 2,
	[User.PresenceType.IN_STUDIO] = 1,
	[User.PresenceType.OFFLINE] = 0,
}

local function newCounter()
	local count = 1
	return function ()
		count = count + 1
		return count
	end
end

local onSeeAll

local function createGameCard(game, gameCardLayoutOrder)
	return Roact.createElement(GameCard, {
		game = game,
		LayoutOrder = gameCardLayoutOrder,
	})
end

local function createGameSort(gameSort, gameSortLayoutOrder)
	return Roact.createElement(FitChildren.FitFrame, {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 0),
		fitFields = {
			Size = FitChildren.FitAxis.Height,
		},
		LayoutOrder = gameSortLayoutOrder
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		["Sort Title: " .. gameSort.displayName] = Roact.createElement(SectionHeaderWithSeeAll, {
			text = gameSort.displayName,
			LayoutOrder = 1,
			onActivated = function() onSeeAll(gameSort.displayName) end,
		}),
		["Sort: " .. gameSort.displayName] = Roact.createElement(Carousel, {
			LayoutOrder = 2,
		}, Functional.Map(gameSort, createGameCard)),
	})
end

function HomePage:init()
	onSeeAll = function(sort)
		self:setState({
			seeAllSort = sort
		})
	end
end

function HomePage:render()
	local gameSorts = self.props.gameSorts
	local friends = self.props.friends
	local localUser = self.props.localUser
	local formFactor = self.props.formFactor
	local friendCount = self.props.friendCount
	local seeAllSort = self.state.seeAllSort

	-- TODO: Could use a state stack to move to the games list page, but for now
	-- this is all we need to get the base-level functionality:
	if seeAllSort then
		return Roact.createElement(GamesList, {
			showSort = seeAllSort,
			onBack = function() onSeeAll(false) end,
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
	local gameCarousels = Functional.Map(gameSorts, createGameSort)
	gameCarousels.Layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = CAROUSEL_PADDING_DIM,
	})
	gameCarousels.Padding = Roact.createElement("UIPadding", {
		PaddingTop = CAROUSEL_PADDING_DIM,
		PaddingBottom = CAROUSEL_PADDING_DIM,
		PaddingLeft = CAROUSEL_PADDING_DIM,
		PaddingRight = CAROUSEL_PADDING_DIM,
	})

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
						Carousel = Roact.createElement(Carousel, {},
							Functional.Map(friends, createUserEntry)
						)
					}),
				}) or nil,
			Padding4 = Roact.createElement(Spacer, {
				height = SECTION_PADDING,
				LayoutOrder = nextLayoutOrder(),
			}),
			GameCarousels = Roact.createElement(FitChildren.FitFrame, {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				LayoutOrder = nextLayoutOrder(),
				fitFields = {
					Size = FitChildren.FitAxis.Height,
				},
			}, gameCarousels),
			FeedSection = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, FEED_SECTION_HEIGHT),
				BackgroundTransparency = 1,
				LayoutOrder = nextLayoutOrder(),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				FeedPadding1 = Roact.createElement(Spacer, {
					height = FEED_SECTION_PADDING,
					LayoutOrder = 1,
				}),
				MyFeedButtonFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, FEED_BUTTON_HEIGHT),
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}, {
					MyFeedButton = Roact.createElement(LocalizedTextButton, {
						Size = UDim2.new(0.5, 0, 1, 0),
						Position = UDim2.new(0.25, 0, 0, 0),
						BackgroundColor3 = Constants.Color.WHITE,
						BorderColor3 = Constants.Color.GRAY3,
						TextSize = 20,
						Text = { StringsLocale.Keys.MY_FEED },
						Font = Enum.Font.SourceSans,

						[Roact.Event.Activated] = function()
							local notificationType = GuiService:GetNotificationTypeList().VIEW_MY_FEED
							GuiService:BroadcastNotification("", notificationType)
						end,
					})
				}),
				FeedPadding2 = Roact.createElement(Spacer, {
					height = FEED_SECTION_PADDING,
					LayoutOrder = 3,
				}),
			}),
			Padding5 = Roact.createElement(Spacer, {
				height = SIDE_PADDING,
				LayoutOrder = nextLayoutOrder(),
			}),
		}),
	})
end

local selectSorts = memoize(function(sortsId, sortsInfo, sortsGames, games)
	if not sortsId then
		return
	end

	local sorts = {}
	for _, sortId in ipairs(sortsId) do
		local sortInfo = sortsInfo[sortId]

		if sortInfo then
			local sortGames = sortsGames[sortInfo.name]
			local sort = {
				displayName = sortInfo.displayName,
			}

			for gameLayoutOrder, gameId in ipairs(sortGames) do
				sort[gameLayoutOrder] = games[gameId]
			end

			sorts[#sorts + 1] = sort
		end
	end

	return sorts
end)

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
		gameSorts = selectSorts(
			state.GameSortGroups["HomeGames"].sorts,
			state.GameSorts,
			state.GamesInSort,
			state.Games
		),
		friends = selectFriends(
			state.Users
		),
		localUser = state.LocalUser,
		formFactor = state.FormFactor,
		friendCount = state.FriendCount,
	}
end)

return connector(HomePage)