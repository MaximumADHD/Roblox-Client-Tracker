local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

local FFlagShowAssetConfigReasons = game:GetFastFlag("ShowAssetConfigReasons")

return Action(script.Name, function(response, networkErrorAction)
	-- if response is a string, wrap it in a table
	if type(response) == "string" then
		response = {
			responseBody = response
		}
	end

	-- With the flag on, we will be putting response inside the action.
	-- So the action have access to everything with this error.
	if FFlagShowAssetConfigReasons then
		return {
			name = networkErrorAction.name,
			trigger = networkErrorAction.trigger,
			action = networkErrorAction.action,
			response = response,
		}
	else
		return {
			response = response,
			networkErrorAction = networkErrorAction
		}
	end

end)
