--!strict
local CoreScriptSyncService = game:GetService("CoreScriptSyncService")

local function getFileInfo(
	key: string,
	projectRootName: string?,
	includeProjectRoot: boolean?
): (ModuleScript?, string?)
	local foundScript: Instance? = game
	for _, value in string.split(key, ".") do
		if foundScript == nil then
			break
		else
			foundScript = foundScript:FindFirstChild(value)
		end
	end

	if typeof(foundScript) ~= "Instance" or not foundScript:IsA("ModuleScript") then
		warn("path led to non-ModuleScript:", key, (foundScript :: Instance).ClassName)
		foundScript = nil
	end

	local path = nil
	if foundScript then
		path = CoreScriptSyncService:GetScriptFilePath(foundScript)
		if projectRootName then
			local index, endIndex = string.find(path, projectRootName, 1, true)
			if index then
				path = string.sub(path, if includeProjectRoot then index else (endIndex :: number) + 1)
			end
		end
	end

	return foundScript :: ModuleScript?, path
end

return getFileInfo
