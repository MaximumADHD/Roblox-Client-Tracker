local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact

local FriendStatusConnector = require(script.FriendStatusConnector)
local LastInputTypeConnector = require(script.LastInputTypeConnector)
local MouseOverrideManager = require(script.MouseOverrideManager)

local function Connection()
	return Roact.createFragment({
		FriendStatusConnector = Roact.createElement(FriendStatusConnector),
		LastInputTypeConnector = Roact.createElement(LastInputTypeConnector),
		MouseOverrideManager = Roact.createElement(MouseOverrideManager),
	})
end

return Connection