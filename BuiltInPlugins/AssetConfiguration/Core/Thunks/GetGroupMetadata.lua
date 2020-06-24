local Plugin = script.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local SetGroupMetadata = require(Actions.SetGroupMetadata)

return function(groupId)
	return function(store)
		spawn(function()
			local groupMetadata = game:GetService("GroupService"):GetGroupInfoAsync(groupId)
			if groupMetadata then
				store:dispatch(SetGroupMetadata(groupMetadata))
			end
		end)
	end
end
