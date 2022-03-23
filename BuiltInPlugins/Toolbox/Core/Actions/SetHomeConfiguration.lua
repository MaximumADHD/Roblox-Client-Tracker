local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

local HomeTypes = require(Plugin.Core.Types.HomeTypes)

return Action(script.Name, function(assetType: Enum.AssetType, configuration: HomeTypes.HomeConfiguration)
	return {
		assetType = assetType,
		configuration = configuration,
	}
end)
