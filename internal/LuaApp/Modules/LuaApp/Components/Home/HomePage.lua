local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local Constants = require(Modules.LuaApp.Constants)
local GameCarousel = require(Modules.LuaApp.Components.Games.GameCarousel)
local SectionHeader = require(Modules.LuaApp.Components.SectionHeader)
local SectionHeaderWithSeeAll = require(Modules.LuaApp.Components.SectionHeaderWithSeeAll)
local DropshadowFrame = require(Modules.LuaApp.Components.DropshadowFrame)

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

local TITLE_USERNAME_TEXT_SIZE = 38

local BUILDERCLUB_LOGO_WIDTH = 48
local BUILDERCLUB_LOGO_HEIGHT = 24

local USER_ICON_SIZE = 84
local USER_NAME_TEXT_SIZE = 18
local USER_NAME_TOP_PADDING = 6
local FRIEND_SECTION_TOP_PADDING = 15
local FRIEND_SECTION_BOTTOM_PADDING = 27
local FRIEND_SECTION_HEIGHT =
	USER_ICON_SIZE + USER_NAME_TEXT_SIZE + USER_NAME_TOP_PADDING +
	FRIEND_SECTION_TOP_PADDING + FRIEND_SECTION_BOTTOM_PADDING

local FEED_SECTION_HEIGHT = 100

-- This is a SUPER HACKY way of getting the screen resolution, as part of the work-around for lacking SizeFromContents.
--   MPowell 10/2017
local function GetScreenRes()
	local screenGui = Instance.new("ScreenGui", game.StarterGui)
	local screenRes = screenGui.AbsoluteSize
	screenGui:Destroy()
	return screenRes
end

function HomePage:render()
	local games = self.props.games
	local gameSorts = self.props.gameSorts

	local width = GetScreenRes().x

	local height = 0
	local curLayoutOrder = 1
	local function nextLayoutOrder()
		local oldLayoutOrder = curLayoutOrder
		curLayoutOrder = curLayoutOrder + 1
		return oldLayoutOrder
	end

	local content = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = "LayoutOrder",
		})
	}

	content["Padding1"] = Roact.createElement(Spacer, {
		height = SIDE_PADDING,
		LayoutOrder = nextLayoutOrder(),
	})
	height = height + SIDE_PADDING

	content["TitleMargins"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, TITLE_USERNAME_TEXT_SIZE),
		BackgroundTransparency = 1,
		LayoutOrder = nextLayoutOrder(),
	}, {
		Title = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, -SIDE_PADDING*2, 0, TITLE_USERNAME_TEXT_SIZE),
			Position = UDim2.new(0, SIDE_PADDING, 0, 0),
			BackgroundTransparency = 1,
			TextSize = TITLE_USERNAME_TEXT_SIZE,
			TextColor3 = Constants.Color.GRAY1,
			Font = Enum.Font.SourceSans,
			Text = "UsernameHere",
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
	height = height + TITLE_USERNAME_TEXT_SIZE

	content["Padding2"] = Roact.createElement(Spacer, {
		height = SECTION_PADDING,
		LayoutOrder = nextLayoutOrder(),
	})
	height = height + SECTION_PADDING

	content["BuilderClubLogoMargins"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, BUILDERCLUB_LOGO_HEIGHT),
		BackgroundTransparency = 1,
		LayoutOrder = nextLayoutOrder(),
	}, {
		BuilderClubLogo = Roact.createElement("ImageLabel", {
			Size = UDim2.new(0, BUILDERCLUB_LOGO_WIDTH, 0, BUILDERCLUB_LOGO_HEIGHT),
			Position = UDim2.new(0, SIDE_PADDING, 0, 0),
			Image = "rbxasset://textures/ui/LuaApp/icons/ic-obc.png",
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}),
	})
	height = height + BUILDERCLUB_LOGO_HEIGHT

	content["Padding3"] = Roact.createElement(Spacer, {
		height = SECTION_PADDING,
		LayoutOrder = nextLayoutOrder(),
	})
	height = height + SECTION_PADDING

	content["FriendSectionHeader"] = Roact.createElement(SectionHeaderWithSeeAll, {
		text = "Friends (123)",
		width = width,
		LayoutOrder = nextLayoutOrder(),
	})
	height = height + SectionHeaderWithSeeAll.height("Friends (123)", width)

	content["FriendSection"] = Roact.createElement(DropshadowFrame, {
		Size = UDim2.new(1, 0, 0, FRIEND_SECTION_HEIGHT),
		BackgroundColor3 = Constants.Color.WHITE,
		LayoutOrder = nextLayoutOrder(),
	})
	height = height + FRIEND_SECTION_HEIGHT

	content["Padding4"] = Roact.createElement(Spacer, {
		height = SECTION_PADDING,
		LayoutOrder = nextLayoutOrder(),
	})
	height = height + SECTION_PADDING

	for index, sort in ipairs(gameSorts) do
		content["Carousel" .. index] = Roact.createElement(GameCarousel, {
			sort = sort,
			games = games,
			width = width,
			LayoutOrder = nextLayoutOrder(),
		})
		height = height + GameCarousel.height(sort.name, width)

		content["CarouselPadding" .. index] = Roact.createElement(Spacer, {
			height = CAROUSEL_PADDING,
			LayoutOrder = nextLayoutOrder(),
		})
		height = height + CAROUSEL_PADDING
	end

	content["FeedSectionHeader"] = Roact.createElement(SectionHeader, {
		text = "My Feed",
		width = width,
		LayoutOrder = nextLayoutOrder(),
	})
	height = height + SectionHeader.height("My Feed", width)

	content["FeedSection"] = Roact.createElement(DropshadowFrame, {
		Size = UDim2.new(1, 0, 0, FEED_SECTION_HEIGHT),
		BackgroundColor3 = Constants.Color.WHITE,
		LayoutOrder = nextLayoutOrder(),
	}, {
		-- This is just a skeleton, so the actual feed contents will come later
	})
	height = height + FEED_SECTION_HEIGHT

	return Roact.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 1, 0),
		CanvasSize = UDim2.new(1, 0, 0, height + SIDE_PADDING),
		BackgroundColor3 = Constants.Color.GRAY4,
		BorderSizePixel = 0,
		ScrollBarThickness = 0,
	}, content)
end

local connector = RoactRodux.connect(function(store, props)
	local state = store:GetState()

	return {
		games = state.Games,
		gameSorts = state.HomeGameSorts
	}
end)

return connector(HomePage)