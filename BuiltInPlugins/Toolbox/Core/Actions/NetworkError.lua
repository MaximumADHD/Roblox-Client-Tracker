local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(response, networkErrorAction)

	-- if response is a string, wrap it in a table
	if type(response) == "string" then
		response = {
			responseBody = response
		}
	end

	return {
		response = response,
		networkErrorAction = networkErrorAction
	}
end)
