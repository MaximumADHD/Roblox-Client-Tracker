local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local VRService = game:GetService("VRService")
local GamepadService = game:GetService("GamepadService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)

local InGameMenuConstants = require(RobloxGui.Modules.InGameMenu.Resources.Constants)
local VRHub = require(RobloxGui.Modules.VR.VRHub)

local isSubjectToDesktopPolicies = require(RobloxGui.Modules.InGameMenu.isSubjectToDesktopPolicies)

local ExternalEventConnection = require(CorePackages.RoactUtilities.ExternalEventConnection)

local Components = script.Parent.Parent
local Actions = Components.Parent.Actions
local SetGamepadMenuOpen = require(Actions.SetGamepadMenuOpen)

local InGameMenu
if isNewInGameMenuEnabled() then
	InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
end

local IconButton = require(script.Parent.IconButton)

local MenuIcon = Roact.PureComponent:extend("MenuIcon")

local BACKGROUND_SIZE = 32
local ICON_SIZE = 24

local FFlagEnableNewVrSystem = require(RobloxGui.Modules.Flags.FFlagEnableNewVrSystem)
local EngineFeatureEnableVRUpdate2 = game:GetEngineFeature("EnableVRUpdate2")

MenuIcon.validateProps = t.strictInterface({
	layoutOrder = t.integer,
	setGamepadMenuOpen = t.callback,
})

function MenuIcon:init()
	self:setState({
		vrShowMenuIcon = FFlagEnableNewVrSystem and VRService.VREnabled and ((EngineFeatureEnableVRUpdate2 and VRHub.ShowTopBar) or GamepadService.GamepadCursorEnabled),
	})
	
	self.menuIconActivated = function()

		if FFlagEnableNewVrSystem and VRService.VREnabled and ((EngineFeatureEnableVRUpdate2 and VRHub.ShowTopBar) or GamepadService.GamepadCursorEnabled) then
			-- in the new VR System, the menu icon opens the gamepad menu instead
			if EngineFeatureEnableVRUpdate2 then
				InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
			else
				self.props.setGamepadMenuOpen(true)
			end
			
		else
			if isNewInGameMenuEnabled() then
				InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
			else
				local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
				SettingsHub:ToggleVisibility(InGameMenuConstants.AnalyticsMenuOpenTypes.TopbarButton)
			end
		end
	end
	self.menuIconOnHover = function()
		if isNewInGameMenuEnabled() then
			-- Disable Menu Icon hovering if not on DUA
			if not isSubjectToDesktopPolicies() then
				return
			end
			InGameMenu.openInGameMenu(InGameMenuConstants.InitalPageKey)
			InGameMenu.setMenuIconTooltipOpen(false)
		end
	end
end

function MenuIcon:render()
	local visible = not TenFootInterface:IsEnabled()
	if FFlagEnableNewVrSystem then
		visible = (not VRService.VREnabled or self.state.vrShowMenuIcon)
	end
	return Roact.createElement("Frame", {
		Visible = visible,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, BACKGROUND_SIZE, 1, 0),
		LayoutOrder = self.props.layoutOrder
	}, {
		Background = Roact.createElement(IconButton, {
			icon = "rbxasset://textures/ui/TopBar/coloredlogo.png",
			iconSize = ICON_SIZE,

			onActivated = self.menuIconActivated,
			onHover = self.menuIconOnHover,
		}),
		ShowTopBarListener = FFlagEnableNewVrSystem and (not EngineFeatureEnableVRUpdate2 or GamepadService) and Roact.createElement(ExternalEventConnection, {
			event = EngineFeatureEnableVRUpdate2 and VRHub.ShowTopBarChanged.Event or GamepadService:GetPropertyChangedSignal("GamepadCursorEnabled"),
			callback = function()
				self:setState({
					vrShowMenuIcon = VRService.VREnabled and ((EngineFeatureEnableVRUpdate2 and VRHub.ShowTopBar) or GamepadService.GamepadCursorEnabled),
				})
			end,
		})
	})
end

local function mapDispatchToProps(dispatch)
	return {
		setGamepadMenuOpen = function(open)
			return dispatch(SetGamepadMenuOpen(open))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(MenuIcon)
