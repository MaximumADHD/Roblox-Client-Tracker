--[[
	A component that establishes a connection to a Roblox event when it is rendered.
]]

local CorePackages = game:GetService("CorePackages")
local ExternalEventConnection = require(script.Parent.ExternalEventConnection)
local React = require(CorePackages.Packages.React)

return React.memo(ExternalEventConnection, function(newProps, oldProps)
	return not newProps.closure and newProps.event == oldProps.event
		and newProps.callback ~= nil and oldProps.callback ~= nil
end)
