local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Framework.Util).Action

return Action(script.Name, function(creatorType)
	-- TODO: Once EnumItem:IsA arrives, replace this workaround.
	assert(typeof(creatorType) == "EnumItem" and (creatorType :: any).EnumType == Enum.CreatorType,
		script.Name.." requires creatorType to be an Enum.CreatorType, not "..typeof(creatorType))

	return {
		creatorType = creatorType,
	}
end)
