--[[
	Action for setting the overall Profile page data status (by user ID).
]]

local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Rodux = require(Packages.Rodux)

export type Type = {
	userId: string,
	status: string, -- RetrievalStauts enum
}

return Rodux.makeActionCreator(script.Name, function(userId: string, status: string): Type
	assert(type(userId) == "string", "SetProfilePageDataStatus action expects userId to be a string")
	assert(type(status) == "string", "SetProfilePageDataStatus action expects status to be a string: "
		.. tostring(status) .. ", type: " .. type(status))

	return {
		userId = userId,
		status = status,
	}
end)
