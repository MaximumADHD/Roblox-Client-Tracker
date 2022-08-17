--!nonstrict
--[[
	Action that sets the user info of the inspected user
	in the inspect and buy menu. This sets the user id which
	is useful for getting the equipped items to inspect and the
	display name which is useful for the title of the page
]]

local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(userId, displayName)
	return {
		userId = userId,
		displayName = displayName
	}
end)