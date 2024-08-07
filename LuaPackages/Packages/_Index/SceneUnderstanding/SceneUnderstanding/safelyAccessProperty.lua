--[[
	Utility function that makes it possible to safely access RobloxScript
	properties in any security context.

	This is used so parts of SceneUnderstanding can make use of internal engine
	properties, while including fallbacks when used from user-level scripts.

	Usage:

	```lua
	local model = workspace.Model
	local sourceAssetId = safelyAccessProperty(model, "SourceAssetId", -1)
	```
]]
local function safelyAccessProperty<T>(instance: Instance, property: string, default: T): T
	local success, result = pcall(function()
		return instance[property]
	end)
	return if success then result else default
end

return safelyAccessProperty
