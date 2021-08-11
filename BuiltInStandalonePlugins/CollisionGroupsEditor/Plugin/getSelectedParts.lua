local FFlagCleanupLuaPluginErrors = game:DefineFastFlag("CleanupLuaPluginErrors", false)

local function testRestrictedInstance(instance)
	local a = instance.Name
end

return function()
	local parts = {}

	for _, object in pairs(game:GetService("Selection"):Get()) do
		if FFlagCleanupLuaPluginErrors and not pcall(testRestrictedInstance, object) then
			continue
		end

		if object:IsA("BasePart") then
			table.insert(parts, object)
		end

		for _, descendant in pairs(object:GetDescendants()) do
			if descendant:IsA("BasePart") then
				table.insert(parts, descendant)
			end
		end
	end

	return parts
end