local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(response, networkErrorAction)
	local resultResponse = response
	-- if response is a string, wrap it in a table
	if type(response) == "string" then
		resultResponse = {
			responseBody = response,
		}
	end

	return {
		response = resultResponse,
		networkErrorAction = networkErrorAction,
	}
end)
