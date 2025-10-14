local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)

local TopBar = script.Parent.Parent

local FFlagRemoveTopBarInputTypeRodux = require(TopBar.Flags.GetFFlagRemoveTopBarInputTypeRodux)()
local FFlagTopBarDeprecateCoreGuiRodux = require(TopBar.Flags.FFlagTopBarDeprecateCoreGuiRodux)
local FFlagTopBarDeprecateChatRodux = require(TopBar.Flags.FFlagTopBarDeprecateChatRodux)
local FFlagTopBarDeprecateDisplayOptionsRodux = require(TopBar.Flags.FFlagTopBarDeprecateDisplayOptionsRodux)
local FFlagTopBarDeprecateRespawnRodux = require(TopBar.Flags.FFlagTopBarDeprecateRespawnRodux)
local FFlagTopBarDeprecateMoreMenuRodux = require(TopBar.Flags.FFlagTopBarDeprecateMoreMenuRodux)

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeHealthBar = CoreGuiCommon.Flags.FFlagTopBarSignalizeHealthBar
local FFlagTopBarSignalizeMenuOpen = CoreGuiCommon.Flags.FFlagTopBarSignalizeMenuOpen

local CoreGuiConnector = require(script.CoreGuiConnector)
local MenuConnector = require(script.MenuConnector)
local ChatConnector = require(script.ChatConnector)
local HealthConnector = require(script.HealthConnector)
local EnabledNotifier = require(script.EnabledNotifier)
local OpenUIConnector = require(script.OpenUIConnector)
local LastInputTypeConnector = require(script.LastInputTypeConnector)

local Connection = Roact.PureComponent:extend("Connection")

function Connection:render()
	return Roact.createFragment({
		CoreGuiConnector = if FFlagTopBarDeprecateCoreGuiRodux then nil else Roact.createElement(CoreGuiConnector),
		MenuConnector = if FFlagTopBarSignalizeMenuOpen and FFlagTopBarDeprecateRespawnRodux then nil else Roact.createElement(MenuConnector),
		ChatConnector = if FFlagTopBarDeprecateChatRodux then nil else Roact.createElement(ChatConnector),
		HealthConnector = if FFlagTopBarSignalizeHealthBar then nil else Roact.createElement(HealthConnector),
		EnabledNotifier = if FFlagTopBarDeprecateDisplayOptionsRodux then nil else Roact.createElement(EnabledNotifier),
		OpenUIConnector = if FFlagTopBarDeprecateMoreMenuRodux then nil else Roact.createElement(OpenUIConnector),
		LastInputTypeConnector = if FFlagRemoveTopBarInputTypeRodux then nil else Roact.createElement(LastInputTypeConnector),
	})
end

return Connection
