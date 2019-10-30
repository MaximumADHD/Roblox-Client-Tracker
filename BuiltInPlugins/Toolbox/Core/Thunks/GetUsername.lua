local Plugin = script.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local SetOwnerUsername = require(Actions.SetOwnerUsername)
local SetLocalUsername = require(Actions.SetLocalUsername)

local getUserId = require(Plugin.Core.Util.getUserId)

return function(userId)
	return function(store)
		spawn(function()
			local username = game:GetService("Players"):GetNameFromUserIdAsync(userId)
			if username then
				store:dispatch(SetOwnerUsername(username))
			end
			if userId == getUserId() then
				store:dispatch(SetLocalUsername(username))
			end
		end)
	end
end
