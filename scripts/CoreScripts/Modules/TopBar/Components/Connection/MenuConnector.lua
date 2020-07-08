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

local isNewGamepadMenuEnabled = require(RobloxGui.Modules.Flags.isNewGamepadMenuEnabled)

local MenuConnector = Roact.PureComponent:extend("MenuConnector")

MenuConnector.validateProps = t.strictInterface({
	setMenuOpen = t.callback,

	setRespawnBehaviour = isNewGamepadMenuEnabled() and t.callback or nil,
})

function MenuConnector:didMount()
	if isNewInGameMenuEnabled() then
		local InGameMenu = require(RobloxGui.Modules.InGameMenu)
		self.props.setMenuOpen(InGameMenu.getOpen())

		if isNewGamepadMenuEnabled() then
			local isEnabled, customCallback = InGameMenu.getRespawnBehaviour()
			self.props.setRespawnBehaviour(isEnabled, customCallback)
		end
	else
		local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
		self.props.setMenuOpen(SettingsHub:GetVisibility())

		if isNewGamepadMenuEnabled() then
			local isEnabled, customCallback = SettingsHub:GetRespawnBehaviour()
			self.props.setRespawnBehaviour(isEnabled, customCallback)
		end
	end
end

function MenuConnector:render()
	if isNewInGameMenuEnabled() then
		--TODO: Move require the top of the script when removing isNewInGameMenuEnabled
		local InGameMenu = require(RobloxGui.Modules.InGameMenu)
		local inGameMenuOpenChangedEvent = InGameMenu.getOpenChangedEvent()

		local respawnBehaviourChangedEvent
		if isNewGamepadMenuEnabled() then
			respawnBehaviourChangedEvent = InGameMenu.getRespawnBehaviourChangedEvent()
		end

		return Roact.createFragment({
			MenuOpenChangedConnection = Roact.createElement(EventConnection, {
				event = inGameMenuOpenChangedEvent.Event,
				callback = function(open)
					self.props.setMenuOpen(open)
				end,
			}),

			RespawnBehaviourConnection = isNewGamepadMenuEnabled() and Roact.createElement(EventConnection, {
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
		if isNewGamepadMenuEnabled() then
			respawnBehaviourChangedEvent = SettingsHub.RespawnBehaviourChangedEvent
		end

		return Roact.createFragment({
			MenuOpenChangedConnection = Roact.createElement(EventConnection, {
				event = settingsHubOpenedEvent.Event,
				callback = function(open)
					self.props.setMenuOpen(open)
				end,
			}),

			RespawnBehaviourConnection = isNewGamepadMenuEnabled() and Roact.createElement(EventConnection, {
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

		setRespawnBehaviour = isNewGamepadMenuEnabled() and function(isEnabled, customCallback)
			return dispatch(SetRespawnBehaviour(isEnabled, customCallback))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(MenuConnector)