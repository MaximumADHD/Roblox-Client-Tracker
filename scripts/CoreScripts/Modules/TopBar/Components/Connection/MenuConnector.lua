-- Remove with FFlagTopBarSignalizeMenuOpen and FFlagTopBarDeprecateRespawnRodux

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local PerfUtils = require(RobloxGui.Modules.Common.PerfUtils)

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)

local Components = script.Parent.Parent
local TopBar = Components.Parent

local SetMenuOpen = require(TopBar.Actions.SetMenuOpen)
local SetRespawnBehaviour = require(TopBar.Actions.SetRespawnBehaviour)

local EventConnection = require(TopBar.Parent.Common.EventConnection)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local GetFFlagEnableInGameMenuDurationLogger =
	require(RobloxGui.Modules.Common.Flags.GetFFlagEnableInGameMenuDurationLogger)

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeMenuOpen = CoreGuiCommon.Flags.FFlagTopBarSignalizeMenuOpen
local FFlagTopBarDeprecateRespawnRodux = require(TopBar.Flags.FFlagTopBarDeprecateRespawnRodux)

local MenuConnector = Roact.PureComponent:extend("MenuConnector")

MenuConnector.validateProps = t.strictInterface({
	setMenuOpen = if FFlagTopBarSignalizeMenuOpen then nil else t.callback,

	setRespawnBehaviour = t.callback,
})

function MenuConnector:didMount()
	if isNewInGameMenuEnabled() then
		local InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
		if not FFlagTopBarSignalizeMenuOpen then
			self.props.setMenuOpen(InGameMenu.getOpen())
		end

		local isEnabled, customCallback = InGameMenu.getRespawnBehaviour()
		self.props.setRespawnBehaviour(isEnabled, customCallback)
	else
		local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
		if not FFlagTopBarSignalizeMenuOpen then
			self.props.setMenuOpen(SettingsHub:GetVisibility())
		end

		local isEnabled, customCallback = SettingsHub:GetRespawnBehaviour()
		self.props.setRespawnBehaviour(isEnabled, customCallback)
	end
end

function MenuConnector:render()
	if isNewInGameMenuEnabled() then
		--TODO: Move require the top of the script when removing isNewInGameMenuEnabled
		local InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
		local inGameMenuOpenChangedEvent = InGameMenu.getOpenChangedEvent()

		local respawnBehaviourChangedEvent
		respawnBehaviourChangedEvent = InGameMenu.getRespawnBehaviourChangedEvent()

		return Roact.createFragment({
			MenuOpenChangedConnection = if FFlagTopBarSignalizeMenuOpen then nil else Roact.createElement(EventConnection, {
				event = inGameMenuOpenChangedEvent.Event,
				callback = function(open)
					self.props.setMenuOpen(open)
				end,
			}),

			RespawnBehaviourConnection = Roact.createElement(EventConnection, {
				event = respawnBehaviourChangedEvent.Event,
				callback = function(isEnabled, customCallback)
					self.props.setRespawnBehaviour(isEnabled, customCallback)
				end,
			}),
		})
	else
		local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
		local settingsHubOpenedEvent = SettingsHub.SettingsShowEvent

		local respawnBehaviourChangedEvent = SettingsHub.RespawnBehaviourChangedEvent

		return Roact.createFragment({
			MenuOpenChangedConnection = if FFlagTopBarSignalizeMenuOpen then nil else Roact.createElement(EventConnection, {
				event = settingsHubOpenedEvent.Event,
				callback = function(open)
					if GetFFlagEnableInGameMenuDurationLogger() and open then
						PerfUtils.menuOpenBegin()
					end
					self.props.setMenuOpen(open)
				end,
			}),

			RespawnBehaviourConnection = Roact.createElement(EventConnection, {
				event = respawnBehaviourChangedEvent.Event,
				callback = function(isEnabled, customCallback)
					self.props.setRespawnBehaviour(isEnabled, customCallback)
				end,
			}),
		})
	end
end

local function mapDispatchToProps(dispatch)
	return {
		setMenuOpen = if FFlagTopBarSignalizeMenuOpen then nil else function(open)
			return dispatch(SetMenuOpen(open))
		end,

		setRespawnBehaviour = if FFlagTopBarDeprecateRespawnRodux then nil else function(isEnabled, customCallback)
			return dispatch(SetRespawnBehaviour(isEnabled, customCallback))
		end or nil,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(MenuConnector)
