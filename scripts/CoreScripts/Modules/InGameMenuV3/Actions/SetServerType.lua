local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Rodux).makeActionCreator

--[[
	serverType: string
]]

return Action(script.Name, function(serverType)
	assert(type(serverType) == "string", "SetServerType: serverType must be a string")

	return {
		serverType = serverType,
	}
end)
