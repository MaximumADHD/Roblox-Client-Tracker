local FFlagToolboxUseGetVote = game:GetFastFlag("ToolboxUseGetVote")
local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(assetId, userVote)
	if FFlagToolboxUseGetVote then
		return {
			assetId = assetId,
			userVote = userVote,
		}
	end
end)
