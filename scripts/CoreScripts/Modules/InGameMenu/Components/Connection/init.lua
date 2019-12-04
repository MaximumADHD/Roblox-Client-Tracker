local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact

local FriendStatusConnector = require(script.FriendStatusConnector)

local function Connection()
	return Roact.createFragment({
		FriendStatusConnector = Roact.createElement(FriendStatusConnector),
	})
end

return Connection