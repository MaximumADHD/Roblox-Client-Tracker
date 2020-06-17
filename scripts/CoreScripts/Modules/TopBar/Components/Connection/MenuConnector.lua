local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local Components = script.Parent.Parent
local TopBar = Components.Parent

local SetMenuOpen = require(TopBar.Actions.SetMenuOpen)
local SetRespawnBehaviour = require(TopBar.Actions.SetRespawnBehaviour)

local EventConnection = require(TopBar.Parent.Common.EventConnection)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)

local FFlagTopBarBetterStateInit = require(TopBar.Parent.Flags.FFlagTopBarBetterStateInit)
local FFlagTopBarNewGamepadMenu = require(RobloxGui.Modules.Flags.FFlagTopBarNewGamepadMenu)

local MenuConnector = Roact.PureComponent:extend("MenuConnector")

MenuConnector.validateProps = t.strictInterface({
	setMenuOpen = t.callback,

	setRespawnBehaviour = FFlagTopBarNewGamepadMenu and t.callback or nil,
})

if FFlagTopBarBetterStateInit then
	function MenuConnector:didMount()
		if isNewInGameMenuEnabled() then
			local InGameMenu = require(RobloxGui.Modules.InGameMenu)
			self.props.setMenuOpen(InGameMenu.getOpen())

			if FFlagTopBarNewGamepadMenu then
				local isEnabled, customCallback = InGameMenu.getRespawnBehaviour()
				self.props.setRespawnBehaviour(isEnabled, customCallback)
			end
		else
			local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
			self.props.setMenuOpen(SettingsHub:GetVisibility())

			if FFlagTopBarNewGamepadMenu then
				local isEnabled, customCallback = SettingsHub:GetRespawnBehaviour()
				self.props.setRespawnBehaviour(isEnabled, customCallback)
			end
		end
	end
end

function MenuConnector:render()
	if isNewInGameMenuEnabled() then
		--TODO: Move require the top of the script when removing isNewInGameMenuEnabled
		local InGameMenu = require(RobloxGui.Modules.InGameMenu)
		local inGameMenuOpenChangedEvent = InGameMenu.getOpenChangedEvent()

		local respawnBehaviourChangedEvent
		if FFlagTopBarNewGamepadMenu then
			respawnBehaviourChangedEvent = InGameMenu.getRespawnBehaviourChangedEvent()
		end

		return Roact.createFragment({
			MenuOpenChangedConnection = Roact.createElement(EventConnection, {
				event = inGameMenuOpenChangedEvent.Event,
				callback = function(open)
					self.props.setMenuOpen(open)
				end,
			}),

			RespawnBehaviourConnection = FFlagTopBarNewGamepadMenu and Roact.createElement(EventConnection, {
				event = respawnBehaviourChangedEvent.Event,
				callback = function(isEnabled, customCallback)
					self.props.setRespawnBehaviour(isEnabled, customCallback)
				end,
			}),
		})
	else
		local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
		local settingsHubOpenedEvent = SettingsHub.SettingsShowEvent

		local respawnBehaviourChangedEvent
		if FFlagTopBarNewGamepadMenu then
			respawnBehaviourChangedEvent = SettingsHub.RespawnBehaviourChangedEvent
		end

		return Roact.createFragment({
			MenuOpenChangedConnection = Roact.createElement(EventConnection, {
				event = settingsHubOpenedEvent.Event,
				callback = function(open)
					self.props.setMenuOpen(open)
				end,
			}),

			RespawnBehaviourConnection = FFlagTopBarNewGamepadMenu and Roact.createElement(EventConnection, {
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
		setMenuOpen = function(open)
			return dispatch(SetMenuOpen(open))
		end,

		setRespawnBehaviour = FFlagTopBarNewGamepadMenu and function(isEnabled, customCallback)
			return dispatch(SetRespawnBehaviour(isEnabled, customCallback))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(MenuConnector)