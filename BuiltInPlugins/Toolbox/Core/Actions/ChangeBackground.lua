local FFlagToolboxAssetStyleUpdate2 = game:GetFastFlag("ToolboxAssetStyleUpdate2")

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(settings, index, selected)
	-- Delete action with removal of flag
	if FFlagToolboxAssetStyleUpdate2 then
		return nil
	end
	return {
		settings = settings,
		index = index,
		selected = selected,
	}
end)
