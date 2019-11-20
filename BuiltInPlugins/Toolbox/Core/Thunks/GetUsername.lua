local Plugin = script.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local SetOwnerUsername = require(Actions.SetOwnerUsername)

local getUserId = require(Plugin.Core.Util.getUserId)

return function(userId)
	return function(store)
		spawn(function()
			local username = game:GetService("Players"):GetNameFromUserIdAsync(userId)
			if username then
				store:dispatch(SetOwnerUsername(username))
			end
		end)
	end
end
