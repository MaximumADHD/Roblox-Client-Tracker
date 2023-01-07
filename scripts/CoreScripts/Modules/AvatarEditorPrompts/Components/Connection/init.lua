local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)

local ContextActionsBinder = require(script.ContextActionsBinder)

local FFlagFixAvatarEditorPromptsEventsEarly = require(RobloxGui.Modules.Flags.FFlagFixAvatarEditorPromptsEventsEarly)

local AvatarEditorServiceConnector = require(script.AvatarEditorServiceConnector)

local Connection = Roact.PureComponent:extend("Connection")

function Connection:render()
	return Roact.createFragment({
		ContextActionsBinder = Roact.createElement(ContextActionsBinder),
		AvatarEditorServiceConnector = if not FFlagFixAvatarEditorPromptsEventsEarly then Roact.createElement(AvatarEditorServiceConnector) else nil,
	})
end

return Connection
