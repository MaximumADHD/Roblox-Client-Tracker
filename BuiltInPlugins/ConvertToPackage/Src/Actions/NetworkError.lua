local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(response, networkErrorAction)
	local errmsg = "networkErrorAction must be a string, received %s"
	assert(type(networkErrorAction) == "string", string.format(errmsg, type(networkErrorAction)))
	errmsg = "response must be a string, or table, received %s"
	assert(type(response) == "string" or type(response) == "table", string.format(errmsg, type(response)))
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
