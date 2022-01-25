local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Action)

return Action(script.Name, function(pluginId, name, description, versionId, created, updated)
	assert(type(pluginId) == "string", "Expected pluginId to be a string")
	assert(type(name) == "string", "Expected name to be a string")
	assert(type(description) == "string", "Expected description to be a string")
	assert(type(versionId) == "string", "Expected versionId to be a string")
	assert(type(created) == "string", "Expected created to be a string")
	assert(type(updated) == "string", "Expected updated to be a string")

	return {
		pluginId = pluginId,
		name = name,
		description = description,
		versionId = versionId,
		created = created,
		updated = updated,
	}
end)
