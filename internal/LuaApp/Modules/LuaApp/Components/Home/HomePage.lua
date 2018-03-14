local GuiService = game:GetService("GuiService")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local Constants = require(Modules.LuaApp.Constants)
local DropshadowFrame = require(Modules.LuaApp.Components.DropshadowFrame)
local FitChildren = require(Modules.LuaApp.FitChildren)
local GameCarousel = require(Modules.LuaApp.Components.Games.GameCarousel)
local LocalizedSectionHeader = require(Modules.LuaApp.Components.LocalizedSectionHeader)
local LocalizedSectionHeaderWithSeeAll = require(Modules.LuaApp.Components.LocalizedSectionHeaderWithSeeAll)
local LocalizedTextButton = require(Modules.LuaApp.Components.LocalizedTextButton)
local StringsLocale = require(Modules.LuaApp.StringsLocale)
local TopBar = require(Modules.LuaApp.Components.TopBar)
local UserCarousel = require(Modules.LuaApp.Components.Home.UserCarousel)

local function Spacer(props)
	local height = props.height
	local layoutOrder = props.LayoutOrder

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, height),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	})
end

local HomePage = Roact.Component:extend("HomePage")

local SIDE_PADDING = 15
local SECTION_PADDING = 15
local CAROUSEL_PADDING = 20

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

-- This is a SUPER HACKY way of getting the screen resolution, as part of the work-around for lacking SizeFromContents.
--   MPowell 10/2017
local function GetScreenRes()
	local screenGui = Instance.new("ScreenGui", game.StarterGui)
	local screenRes = screenGui.AbsoluteSize
	screenGui:Destroy()
	return screenRes
end

local function GameCarousels(props)
	local games = props.games
	local gameSorts = props.gameSorts
	local gameSortGroups = props.gameSortGroups
	local width = props.width
	local layoutOrder = props.layoutOrder

	local curLayoutOrder = 1
	local function nextLayoutOrder()
		local oldLayoutOrder = curLayoutOrder
		curLayoutOrder = curLayoutOrder + 1
		return oldLayoutOrder
	end

	local homeSorts = gameSortGroups["HomeGames"].sorts
	local content = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = "LayoutOrder",
		}),
	}
	if homeSorts then
		for index, sortToken in ipairs(homeSorts) do
			local sort = gameSorts[sortToken]
			if not sort then
				error("Erroneous sort token found in HomeGames sort group")
			end
			content["Carousel" .. index] = Roact.createElement(GameCarousel, {
				sort = sort,
				games = games,
				width = width,
				LayoutOrder = nextLayoutOrder(),
			})

			content["CarouselPadding" .. index] = Roact.createElement(Spacer, {
				height = CAROUSEL_PADDING,
				LayoutOrder = nextLayoutOrder(),
			})
		end
	end

	return Roact.createElement(FitChildren.FitFrame, {
		LayoutOrder = layoutOrder,
	}, content)
end

function HomePage:render()
	local games = self.props.games
	local gameSorts = self.props.gameSorts
	local gameSortGroups = self.props.gameSortGroups
	local users = self.props.users
	local localUser = self.props.localUser
	local formFactor = self.props.formFactor
	local friendCount = self.props.friendCount

	local userCount = 0
	for _ in pairs(users) do
		userCount = userCount + 1
	end

	local width = GetScreenRes().x

	local curLayoutOrder = 1
	local function nextLayoutOrder()
		local oldLayoutOrder = curLayoutOrder
		curLayoutOrder = curLayoutOrder + 1
		return oldLayoutOrder
	end

	local function isLocalPlayerBC()
		return localUser.membership ~= Enum.MembershipType.None
	end

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
			Size = UDim2.new(1, 0, 1, 0),
			CanvasSize = UDim2.new(1, 0, 0, 0),
			BackgroundColor3 = Constants.Color.GRAY4,
			BorderSizePixel = 0,
			ScrollBarThickness = 0,
			LayoutOrder = 2,
			fitFields = { CanvasSize = FitChildren.FitAxis.Height },
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = "LayoutOrder",
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
						SortOrder = "LayoutOrder",
						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					BuildersClub = isLocalPlayerBC() and Roact.createElement("ImageLabel", {
							Size = UDim2.new(0, BUILDERCLUB_LOGO_WIDTH, 0, BUILDERCLUB_LOGO_HEIGHT),
							Image = BUILDERCLUB_LOGOS[localUser.membership],
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
						LayoutOrder = 1,
					}) or nil,
					Padding = isLocalPlayerBC() and Roact.createElement("Frame", {
						Size = UDim2.new(0, TITLE_SECTION_USERNAME_BC_PADDING, 1, 0),
						BackgroundTransparency = 1,
						LayoutOrder = 2,
					}) or nil,
					Username = Roact.createElement("TextLabel", {
						Size = isLocalPlayerBC() and
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
			FriendSection = userCount ~= 0 and
				Roact.createElement(FitChildren.FitFrame, {
					Size = UDim2.new(1, 0, 0, 0),
					fitAxis = FitChildren.FitAxis.Height,
					BackgroundTransparency = 1,
					LayoutOrder = nextLayoutOrder(),
				}, {
					Layout = Roact.createElement("UIListLayout", {
						SortOrder = "LayoutOrder",
					}),
					Header = Roact.createElement(LocalizedSectionHeaderWithSeeAll, {
						text = {
							StringsLocale.Keys.FRIENDS_COUNT,
							COUNT = friendCount,
						},
						width = width,
						LayoutOrder = 1,
					}),
					CarouselFrame = Roact.createElement(DropshadowFrame, {
						Size = UDim2.new(1, 0, 0, FRIEND_SECTION_HEIGHT),
						BackgroundColor3 = Constants.Color.WHITE,
						LayoutOrder = 2,
					}, {
						Carousel = Roact.createElement(UserCarousel, {
							users = users,
							formFactor = formFactor,
						})
					}),
				}) or nil,
			Padding4 = Roact.createElement(Spacer, {
				height = SECTION_PADDING,
				LayoutOrder = nextLayoutOrder(),
			}),
			GameCarousels = Roact.createElement(GameCarousels, {
				games = games,
				gameSorts = gameSorts,
				gameSortGroups = gameSortGroups,
				width = width,
				layoutOrder = nextLayoutOrder(),
			}),
			FeedSection = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, FEED_SECTION_HEIGHT),
				BackgroundTransparency = 1,
				LayoutOrder = nextLayoutOrder(),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = "LayoutOrder",
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

local connector = RoactRodux.connect(function(store, props)
	local state = store:GetState()

	return {
		games = state.Games,
		gameSorts = state.GameSorts,
		gameSortGroups = state.GameSortGroups,
		users = state.Users,
		localUser = state.LocalUser,
		formFactor = state.FormFactor,
		friendCount = state.FriendCount,
	}
end)

return connector(HomePage)