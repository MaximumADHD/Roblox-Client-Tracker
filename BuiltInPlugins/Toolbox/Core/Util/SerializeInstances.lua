local StudioService = game:GetService("StudioService")
local RobloxPluginGuiService = game:GetService("RobloxPluginGuiService")

local FFlagAssetConfigFixRoactTypeChecks = game:GetFastFlag("AssetConfigFixRoactTypeChecks")

local function SerializeInstances(instances)
	-- parent instances RobloxPluginGuiService so C++ can get DataModel
	local tempFolder = Instance.new("Folder")
	tempFolder.Name = "TemporaryInstances"
	if FFlagAssetConfigFixRoactTypeChecks then
		tempFolder.Parent = RobloxPluginGuiService
	else
		tempFolder.Parent = RobloxPluginGuiService:FindFirstChild("AssetConfig")
	end
	for _, instance in pairs(instances) do
		instance.Parent = tempFolder
	end

	local fileDataString = StudioService:SerializeInstances(instances)

	-- parent instances back to nil so they can be GC'd later if needed
	for _, instance in pairs(instances) do
		instance.Parent = nil
	end
	tempFolder:Destroy()

	return fileDataString
end

return SerializeInstances