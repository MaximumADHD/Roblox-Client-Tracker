local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local PlayerGUI = Players.LocalPlayer:WaitForChild("PlayerGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local ScreenOrientationSwitcher = Roact.Component:extend("ScreenOrientationSwitcher")

function ScreenOrientationSwitcher:init()
	self.switchBackToPortraitOnClose = false
end

function ScreenOrientationSwitcher:didUpdate(priorProps)

	-- Detect user is in Portrait ScreenOrientation when opening the menu.
	-- If portrait detected, force the switch to LandscapeLeft and set a flag
	-- When the menu closes, check flag and reset to Portrait

	local playerGUI = self.props.playerGUI or PlayerGUI
	local menuOpen = self.props.menuOpen

	if menuOpen ~= priorProps.menuOpen then
		if menuOpen then -- on menu opened
			if playerGUI.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait then
				self.switchBackToPortraitOnClose = true
				playerGUI.ScreenOrientation = Enum.ScreenOrientation.LandscapeLeft
			else
				self.switchBackToPortraitOnClose = false
			end
		elseif self.switchBackToPortraitOnClose then -- on menu closed
			self.switchBackToPortraitOnClose = false
			playerGUI.ScreenOrientation = Enum.ScreenOrientation.Portrait
		end
	end
end

function ScreenOrientationSwitcher:render()
	return Roact.oneChild(self.props[Roact.Children])
end

local function mapStateToProps(state, props)
	return {
		menuOpen = state.isMenuOpen,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(ScreenOrientationSwitcher)
