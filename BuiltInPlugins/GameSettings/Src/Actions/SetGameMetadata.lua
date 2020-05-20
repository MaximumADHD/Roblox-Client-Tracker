local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework.Util.Action)

return Action(script.Name, function(rootPlaceId, creatorId, creatorType, creatorName)
	assert(type(rootPlaceId) == "number",
        string.format(script.Name" requires rootPlaceId to be a number, not %s", typeof(rootPlaceId)))
    assert(typeof(creatorId) == "number",
		string.format(script.Name.." requires creatorId to be a number, not %s", typeof(creatorId)))
	assert(typeof(creatorType) == "EnumItem" and creatorType.EnumType == Enum.CreatorType,
		string.format(script.Name.." requires creatorType to be an Enum.CreatorType, not %s",
		typeof(creatorType).."("..tostring(creatorType)..")"))
	assert(typeof(creatorName) == "string",
		string.format(script.Name.." requires creatorName to be a string, not %s", typeof(creatorName)))

	return {
        metadata = {
			rootPlaceId = rootPlaceId,
			creatorId = creatorId,
			creatorType = creatorType,
			creatorName = creatorName,
		},
	}
end)