local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local PlayerGUI = (Players.LocalPlayer :: Player):WaitForChild("PlayerGui")
local InGameMenu = script.Parent.Parent
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

local ScreenOrientationSwitcher = Roact.Component:extend("ScreenOrientationSwitcher")

local MAX_LOOP_MITIGATION = 25

function ScreenOrientationSwitcher:init()

	local playerGUI = self.props.playerGUI or PlayerGUI

	self.restoreScreenOrientationOnClose = false
	self.openingScreenOrientation = nil
	self.lastScreenOrientation = playerGUI.CurrentScreenOrientation

	-- proactive mitigation: avoid infinite loop by keeping a count of
	-- CurrentScreenOrientation changes while menu is open
	self.loopMitigationCounter = 0
end

function ScreenOrientationSwitcher:didUpdate(priorProps)
	-- Detect user is in Portrait ScreenOrientation when opening the menu.
	-- If portrait detected, force the switch to LandscapeRight and set a flag
	-- When the menu closes, check flag and reset to Portrait

	local playerGUI = self.props.playerGUI or PlayerGUI
	local menuOpen = self.props.menuOpen
	local screenSize = self.props.screenSize
	local currScreenOrientation = playerGUI.CurrentScreenOrientation

	local changedDuringOpen = menuOpen
		and menuOpen == priorProps.menuOpen
		and self.lastScreenOrientation ~= currScreenOrientation
		and self.loopMitigationCounter < MAX_LOOP_MITIGATION

	if changedDuringOpen then
		self.loopMitigationCounter = self.loopMitigationCounter + 1
	end

	local menuWasJustOpenedOrClosed = menuOpen ~= priorProps.menuOpen
	if menuWasJustOpenedOrClosed and menuOpen then
		self.openingScreenOrientation = playerGUI.ScreenOrientation
	end

	if menuWasJustOpenedOrClosed or changedDuringOpen then

		if menuOpen then
			local portraitOrientation = playerGUI.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait
			local portraitRatio = screenSize.Y > screenSize.X
			local underPortraitThreshold = math.min(screenSize.X, screenSize.Y) < self.props.portraitThreshold
			if (portraitOrientation or portraitRatio) and underPortraitThreshold then
				self.restoreScreenOrientationOnClose = true
				if changedDuringOpen then -- toggle to force update
					playerGUI.ScreenOrientation = Enum.ScreenOrientation.Sensor
				end
				playerGUI.ScreenOrientation = Enum.ScreenOrientation.LandscapeRight
			elseif menuWasJustOpenedOrClosed then
				self.restoreScreenOrientationOnClose = nil
			end
		elseif menuWasJustOpenedOrClosed and self.restoreScreenOrientationOnClose and self.openingScreenOrientation then
			self.restoreScreenOrientationOnClose = nil
			playerGUI.ScreenOrientation = self.openingScreenOrientation
			self.openingScreenOrientation = nil
		end
	end

	if menuWasJustOpenedOrClosed then
		self.loopMitigationCounter = 0
	end

	self.lastScreenOrientation = currScreenOrientation
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
