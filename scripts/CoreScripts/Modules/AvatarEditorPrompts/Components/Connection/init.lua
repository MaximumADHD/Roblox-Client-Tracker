local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local ContextActionsBinder = require(script.ContextActionsBinder)
local AvatarEditorServiceConnector = require(script.AvatarEditorServiceConnector)

local Connection = Roact.PureComponent:extend("Connection")

function Connection:render()
	return Roact.createFragment({
		ContextActionsBinder = Roact.createElement(ContextActionsBinder),
		AvatarEditorServiceConnector = Roact.createElement(AvatarEditorServiceConnector),
	})
end

return Connection