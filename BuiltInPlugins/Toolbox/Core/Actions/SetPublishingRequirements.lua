local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action
local PublishingRequirementsType = require(Plugin.Core.Types.PublishingRequirementsType)

return Action(script.Name, function(publishingRequirements: PublishingRequirementsType.PublishingRequirements)
	return {
		publishingRequirements = publishingRequirements,
	}
end)
