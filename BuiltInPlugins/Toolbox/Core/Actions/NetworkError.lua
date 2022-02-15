local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Util = require(Libs.Framework).Util
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
