local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local Components = script.Parent.Parent
local TopBar = Components.Parent

local SetMenuOpen = require(TopBar.Actions.SetMenuOpen)

local EventConnection = require(TopBar.Parent.Common.EventConnection)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)

local FFlagTopBarBetterStateInit = require(TopBar.Parent.Flags.FFlagTopBarBetterStateInit)

local MenuConnector = Roact.PureComponent:extend("MenuConnector")

MenuConnector.validateProps = t.strictInterface({
	setMenuOpen = t.callback,
})

if FFlagTopBarBetterStateInit then
	function MenuConnector:didMount()
		if isNewInGameMenuEnabled() then
			local InGameMenu = require(RobloxGui.Modules.InGameMenu)
			self.props.setMenuOpen(InGameMenu.getOpen())
		else
			local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
			self.props.setMenuOpen(SettingsHub:GetVisibility())
		end
	end
end

function MenuConnector:render()
	if isNewInGameMenuEnabled() then
		--TODO: Move require the top of the script when removing isNewInGameMenuEnabled
		local InGameMenu = require(RobloxGui.Modules.InGameMenu)
		local inGameMenuOpenChangedEvent = InGameMenu.getOpenChangedEvent()
		return Roact.createFragment({
			MenuOpenChangedConnection = Roact.createElement(EventConnection, {
				event = inGameMenuOpenChangedEvent.Event,
				callback = function(open)
					self.props.setMenuOpen(open)
				end,
			}),
		})
	else
		local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
		local settingsHubOpenedEvent = SettingsHub.SettingsShowEvent
		return Roact.createFragment({
			MenuOpenChangedConnection = Roact.createElement(EventConnection, {
				event = settingsHubOpenedEvent.Event,
				callback = function(open)
					self.props.setMenuOpen(open)
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
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(MenuConnector)