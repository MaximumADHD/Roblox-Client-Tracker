local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local PlayerGUI = Players.LocalPlayer:WaitForChild("PlayerGui")
local InGameMenu = script.Parent.Parent
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

local ScreenOrientationSwitcher = Roact.Component:extend("ScreenOrientationSwitcher")

function ScreenOrientationSwitcher:init()
	self.switchBackToPortraitOnClose = false
	self.priorScreenOrientation = nil
end

function ScreenOrientationSwitcher:didUpdate(priorProps)

	-- Detect user is in Portrait ScreenOrientation when opening the menu.
	-- If portrait detected, force the switch to LandscapeLeft and set a flag
	-- When the menu closes, check flag and reset to Portrait

	local playerGUI = self.props.playerGUI or PlayerGUI
	local menuOpen = self.props.menuOpen
	local screenSize = self.props.screenSize

	if menuOpen ~= priorProps.menuOpen then
		if menuOpen then -- on menu opened
			local portraitOrientation = playerGUI.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait
			local portraitRatio = screenSize.Y > screenSize.X
			local underPortraitThreshold = math.min(screenSize.X, screenSize.Y) < self.props.portraitThreshold
			if (portraitOrientation or portraitRatio) and underPortraitThreshold then
				self.switchBackToPortraitOnClose = true
				self.priorScreenOrientation = playerGUI.ScreenOrientation
				playerGUI.ScreenOrientation = Enum.ScreenOrientation.LandscapeLeft
			else
				self.switchBackToPortraitOnClose = false
			end
		elseif self.switchBackToPortraitOnClose then -- on menu closed
			self.switchBackToPortraitOnClose = false
			playerGUI.ScreenOrientation = self.priorScreenOrientation
			self.priorScreenOrientation = nil
		end
	end
end

function ScreenOrientationSwitcher:render()
	return Roact.oneChild(self.props[Roact.Children])
end

ScreenOrientationSwitcher = InGameMenuPolicy.connect(function(appPolicy, props)
	return {
		portraitThreshold = appPolicy.inGameMenuPortraitThreshold(),
	}
end)(ScreenOrientationSwitcher)


local function mapStateToProps(state, props)
	return {
		menuOpen = state.isMenuOpen,
		screenSize = state.screenSize,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(ScreenOrientationSwitcher)
