local FFlagToolboxAssetStyleUpdate = game:GetFastFlag("ToolboxAssetStyleUpdate")

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(settings, index, selected)
	-- Delete action with removal of flag
	if FFlagToolboxAssetStyleUpdate then
		return nil
	end
	return {
		settings = settings,
		index = index,
		selected = selected,
	}
end)
