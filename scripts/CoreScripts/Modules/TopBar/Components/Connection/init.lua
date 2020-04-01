local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

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
		HealthConnector = Roact.createElement(HealthConnector),
		EnabledNotifier = Roact.createElement(EnabledNotifier),
		OpenUIConnector = Roact.createElement(OpenUIConnector),
		LastInputTypeConnector = Roact.createElement(LastInputTypeConnector),
	})
end

return Connection