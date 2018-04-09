local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Game = require(Modules.LuaApp.Models.Game)
local Overview = require(Modules.LuaApp.Components.GameDetails.Overview)
local FitChildren = require(Modules.LuaApp.FitChildren)
local TabbedFrame = require(Modules.LuaApp.Components.TabbedFrame)
local Details = require(Modules.LuaApp.Components.GameDetails.Details)
local StringsLocale = require(Modules.LuaApp.StringsLocale)
local LocalizedTextLabel = require(Modules.LuaApp.Components.LocalizedTextLabel)
local DropshadowFrame = require(Modules.LuaApp.Components.DropshadowFrame)
local Functional = require(Modules.Common.Functional)
local Constants = require(Modules.LuaApp.Constants)
local Game = require(Modules.LuaApp.Models.Game)
local GameDetail = require(Modules.LuaApp.Models.GameDetail)

local GameDetailsPage = Roact.Component:extend("GameDetailsPage")

local PADDING = 12
local PADDING_UDIM = UDim.new(0, PADDING)
local MIN_WIDTH = 300 + 2*PADDING
local MAX_WIDTH = 1000
local TITLE_SIZE = UDim2.new(1, 0, 0, 30)
local SHOW_SHARE_WIDTH = 370

local function Layout(props)
	props.SortOrder = props.SortOrder or Enum.SortOrder.LayoutOrder
	props.FillDirection = props.FillDirection or Enum.FillDirection.Vertical
	props.Padding = props.Padding or PADDING_UDIM
	return Roact.createElement("UIListLayout", props)
end

local function Title(props)
	props.Size = props.Size or TITLE_SIZE
	props.BackgroundTransparency = props.BackgroundTransparency or 1
	props.TextSize = props.TextSize or 20
	props.TextYAlignment = props.TextYAlignment or Enum.TextYAlignment.Center
	props.TextXAlignment = props.TextXAlignment or Enum.TextXAlignment.Left
	return Roact.createElement(LocalizedTextLabel, props)
end

local function AboutTab(props)
	local gameDetail = props.gameDetail

	return {
		Layout = Roact.createElement(Layout),
		DetailsTitle = Roact.createElement(Title, {
			Text = {StringsLocale.Keys.DETAILS},
			LayoutOrder = 2,
		}),
		Details = Roact.createElement(Details, {
			gameDetail = gameDetail,
			LayoutOrder = 3,
			padding = PADDING,
			isMaxWidth = props.width == MAX_WIDTH,
		}),
		VIPServersTitle = Roact.createElement(Title, {
			Text = {StringsLocale.Keys.VIP_SERVERS},
			LayoutOrder = 4,
		}),
		GameBadgesTitle = Roact.createElement(Title, {
			Text = {StringsLocale.Keys.GAME_BADGES},
			LayoutOrder = 5,
		}),
	}
end

local function makeStoreCard(children, index, card)
	children["Card " .. index] = Roact.createElement(DropshadowFrame, {
		Size = UDim2.new(0, 150, 0, 240),
		LayoutOrder = index,
		BackgroundColor3 = Constants.Color.WHITE,
	}, {
		Roact.createElement("ImageLabel", {
			Size = UDim2.new(0, 150, 0, 150),
			BorderSizePixel = 0,
		}),
		Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 150, 0, 20),
			Position = UDim2.new(0, 0, 0, 150),
			Text = card.name
		}),
	})
	return children
end

local function GridDisplay(props)
	return Roact.createElement(FitChildren.FitFrame, {
		Size = UDim2.new(1, 0, 0, 0),
		Position = UDim2.new(0, 0, 0, 30),
		BackgroundTransparency = 1,
		LayoutOrder = props.LayoutOrder,
		fitFields = {
			Size = FitChildren.FitAxis.Height,
		},
	}, Functional.FoldDictionary(props.cardData, {
		Layout = Roact.createElement("UIGridLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			CellPadding = UDim2.new(0, PADDING, 0, PADDING),
			CellSize = UDim2.new(0, 150, 0, 240),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}, makeStoreCard))
end

local function StoreTab(props)
	local passes = props.passes
	local gear = props.gear

	return {
		Layout = Roact.createElement(Layout),
		PassesTitle = Roact.createElement(Title, {
			Text = {StringsLocale.Keys.PASSES_FOR_THIS_GAME},
			LayoutOrder = 2,
		}),
		Passes = Roact.createElement(GridDisplay, {
			LayoutOrder = 3,
			cardData = passes,
		}),
		GearTitle = Roact.createElement(Title, {
			Text = {StringsLocale.Keys.GEAR_FOR_THIS_GAME},
			LayoutOrder = 4,
		}),
		Gear = Roact.createElement(GridDisplay, {
			LayoutOrder = 5,
			cardData = gear,
		}),
	}
end

local function LeaderboardsTab(props)
	return {
		Layout = Roact.createElement(Layout),
		Players = Roact.createElement(Title, {
			Text = {StringsLocale.Keys.PLAYERS},
			LayoutOrder = 2,
		}),
		Groups = Roact.createElement(Title, {
			Text = {StringsLocale.Keys.CLANS},
			LayoutOrder = 3,
		}),
	}
end

local function ServersTab(props)
	return {
		Layout = Roact.createElement(Layout),
		VIPTitle = Roact.createElement(Title, {
			Text = {StringsLocale.Keys.VIP_SERVERS},
			LayoutOrder = 2,
		}),
		FriendsTitle = Roact.createElement(Title, {
			Text = {StringsLocale.Keys.SERVERS_MY_FRIENDS_ARE_IN},
			LayoutOrder = 3,
		}),
		OtherTitle = Roact.createElement(Title, {
			Text = {StringsLocale.Keys.OTHER_SERVERS},
			LayoutOrder = 4,
		}),
	}
end

function GameDetailsPage:recalcWidth()
	local screenGui = Instance.new("ScreenGui", game.StarterGui)

	local width = screenGui.AbsoluteSize.X
	screenGui:Destroy()

	width = width < MIN_WIDTH and MIN_WIDTH or width
	self.props.width = width >= MAX_WIDTH and MAX_WIDTH or width
end

function GameDetailsPage:render()
	local game = self.props.game
	self.props.passes = {{ -- Dummy data until we get thunks for these
		name = "Epic Content",
	}, {
		name = "Additional Bosses",
	}, {
		name = "Hacking Tools",
	}}
	self.props.gear = {{
		name = "Banhammer",
	}, {
		name = "Darkheart",
	}}
	self.props.game = Game.mock()
	self:recalcWidth()

	return Roact.createElement(FitChildren.FitScrollingFrame, {
		ScrollBarThickness = 0,
		Position = UDim2.new(0.5, -self.props.width/2, 0, 0),
		Size = UDim2.new(0, self.props.width, 1, 0),
		fitFields = {
			CanvasSize = FitChildren.FitAxis.Height,
		},
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = PADDING_UDIM,
			PaddingRight = PADDING_UDIM,
			PaddingBottom = PADDING_UDIM,
			PaddingLeft = PADDING_UDIM,
		}),
		Layout = Roact.createElement(Layout),
		Overview = Roact.createElement(Overview, {
			game = game,
			padding = PADDING,
			isMaxWidth = self.props.width == MAX_WIDTH,
			showShare = self.props.width > SHOW_SHARE_WIDTH,

			LayoutOrder = 1,
		}),
		TabbedFrame = Roact.createElement(TabbedFrame, {
			props = {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				LayoutOrder = 2,

				fitAxis = FitChildren.FitAxis.Height,
			},
			tabs = {{
				label = {StringsLocale.Keys.ABOUT},
				content = function () return AboutTab(self.props) end,
			}, {
				label = {StringsLocale.Keys.STORE},
				content = function () return StoreTab(self.props) end,
			}, {
				label = {StringsLocale.Keys.LEADERBOARDS},
				content = function () return LeaderboardsTab(self.props) end,
			}, {
				label = {StringsLocale.Keys.SERVERS},
				content = function () return ServersTab(self.props) end,
			}},
		})
	})
end

return GameDetailsPage