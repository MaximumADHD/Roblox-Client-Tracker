local CollectionService = game:GetService("CollectionService")
local Selection = game:GetService("Selection")
local PublishService = game:GetService("PublishService")

local root = script:FindFirstAncestor("root")

local FFlagHSRMoveToCDN5 = game:GetFastFlag("HSRMoveToCDN5")

local constants = require(root.src.constants)

local function getSuffix(name)
	if name == "Head_SpecialMesh" then
		return ""
	end
	return "_caged"
end

return function(plugin)
	return function(store)
		for _, folder in ipairs(CollectionService:GetTagged(constants.TAG)) do
			if FFlagHSRMoveToCDN5 then
				PublishService:PublishDescendantAssets(folder)
			end

			Selection:Set(folder:GetChildren())

			local suffix = getSuffix(folder.Name)
			plugin:PromptSaveSelection(folder.Name .. suffix)
		end
	end
end
