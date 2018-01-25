local Modules = script.Parent.Parent.Parent
local Components = Modules.Components

local ActionType = require(Modules.ActionType)
local BaseScreen = require(Modules.Views.Phone.BaseScreen)
local Create = require(Modules.Create)
local Constants = require(Modules.Constants)
local GameShareComponent = require(Components.GameShareComponent)

local GameShareView = BaseScreen:Template()
GameShareView.__index = GameShareView

function GameShareView.new(appState, route)
	local self = {}
	self.appState = appState
	self.route = route

	setmetatable(self, GameShareView)

	local tabletDivider = Create.new"Frame" {
		Name = "TabletDivider",
		BackgroundColor3 = Constants.Color.GRAY5,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 15),
		LayoutOrder = 1,
	}

	local innerFrame = Create.new"Frame" {
		Name = "InnerFrame",
		Size = UDim2.new(0, 540, 1, -15),
		Position = UDim2.new(0.5, 0, 0, 0),
		AnchorPoint = Vector2.new(0.5, 0),
		BackgroundColor3 = Constants.Color.GRAY5,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = 2,
		Create.new("UIListLayout") {
			Name = "ListLayout",
			SortOrder = "LayoutOrder",
		},

		tabletDivider,
	}

	self.gameShareComponent = GameShareComponent.new(appState, route.parameters.placeId, innerFrame)
	self.rbx = self.gameShareComponent.rbx

	return self
end

function GameShareView:Start()
	self.gameShareComponent:Start()

	BaseScreen.Start(self)

	self.appState.store:Dispatch({
		type = ActionType.SetTabBarVisible,
		value = false,
	})
end

function GameShareView:Stop()
	self.gameShareComponent:Stop()

	BaseScreen.Stop(self)

	self.appState.store:Dispatch({
		type = ActionType.SetTabBarVisible,
		value = true,
	})
end

function GameShareView:Destruct()
	self.gameShareComponent:Destruct()

	BaseScreen.Destruct(self)
end

return GameShareView