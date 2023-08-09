local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VRService = game:GetService("VRService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)

local UiModeStyleProvider = require(CorePackages.Workspace.Packages.Style).UiModeStyleProvider

local PlayerList = script.Parent
local Connection = PlayerList.Components.Connection

local PlayerListApp = require(PlayerList.Components.Presentation.PlayerListApp)
local PlayerListAppMobile = require(PlayerList.Components.PresentationMobile.PlayerListApp)

local LayoutValues = require(Connection.LayoutValues)
local LayoutValuesProvider = LayoutValues.Provider
local CreateLayoutValues = require(PlayerList.CreateLayoutValues)
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local SetPlayerListVisibility = require(PlayerList.Actions.SetPlayerListVisibility)

local GetFFlagEnableAccessibilitySettingsEffectsInCoreScripts = require(RobloxGui.Modules.Flags.GetFFlagEnableAccessibilitySettingsEffectsInCoreScripts)
local FFlagFixPlayerListOpenOnLaunch = game:DefineFastFlag("FixPlayerListOpenOnLaunch", false)

local PlayerListSwitcher = Roact.PureComponent:extend("PlayerListSwitcher")

function PlayerListSwitcher:didMount()
	if FFlagFixPlayerListOpenOnLaunch then
		self.props.setPlayerListVisible(not self.props.isSmallTouchDevice and not VRService.VREnabled and not TenFootInterface:IsEnabled())
	else
		self.props.setPlayerListVisible(not self.props.isSmallTouchDevice and not VRService.VREnabled)
	end
end

function PlayerListSwitcher:wrapWithUiModeStyleProvider(children) 
	if GetFFlagEnableAccessibilitySettingsEffectsInCoreScripts() then
		return {
			ThemeProvider = Roact.createElement(UiModeStyleProvider, {
				style = {
					themeName = self.props.appStyleForUiModeStyleProvider.themeName,
					fontName = self.props.appStyleForUiModeStyleProvider.fontName,
				},
			}, children)
		}
	end
	return {
		ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
			style = self.props.appStyle,
		}, children)
	}
end

function PlayerListSwitcher:render()
	return Roact.createElement(LayoutValuesProvider, {
		layoutValues = CreateLayoutValues(TenFootInterface:IsEnabled())
	}, self:wrapWithUiModeStyleProvider({
			PlayerListApp = self.props.isSmallTouchDevice and Roact.createElement(PlayerListAppMobile, {
				setLayerCollectorEnabled = self.props.setLayerCollectorEnabled,
			}) or Roact.createElement(PlayerListApp, {
				setLayerCollectorEnabled = self.props.setLayerCollectorEnabled,
			})
		})
	)
end

function PlayerListSwitcher:didUpdate()
	self.props.setPlayerListVisible(not self.props.isSmallTouchDevice)
end

local function mapStateToProps(state)
	return {
		isSmallTouchDevice = state.displayOptions.isSmallTouchDevice,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setPlayerListVisible = function(visible)
			return dispatch(SetPlayerListVisibility(visible))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PlayerListSwitcher)
