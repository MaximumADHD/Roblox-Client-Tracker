local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)

local TopBar = script.Parent.Parent

local FFlagRemoveTopBarInputTypeRodux = require(TopBar.Flags.GetFFlagRemoveTopBarInputTypeRodux)()
local FFlagTopBarSignalizeHealthBar = require(TopBar.Flags.FFlagTopBarSignalizeHealthBar)

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
		CoreGuiConnector = Roact.createElement(CoreGuiConnector),
		MenuConnector = Roact.createElement(MenuConnector),
		ChatConnector = Roact.createElement(ChatConnector),
		HealthConnector = if FFlagTopBarSignalizeHealthBar then nil else Roact.createElement(HealthConnector),
		EnabledNotifier = Roact.createElement(EnabledNotifier),
		OpenUIConnector = Roact.createElement(OpenUIConnector),
		LastInputTypeConnector = if FFlagRemoveTopBarInputTypeRodux then nil else Roact.createElement(LastInputTypeConnector),
	})
end

return Connection
