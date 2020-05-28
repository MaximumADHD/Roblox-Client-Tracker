local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Action = require(Plugin.Framework.Util).Action

return Action(script.Name, function(creatorType)
	assert(typeof(creatorType) == "EnumItem" and creatorType.EnumType == Enum.CreatorType,
		script.Name.." requires creatorType to be an Enum.CreatorType, not "..typeof(creatorType))

	return {
		creatorType = creatorType,
	}
end)