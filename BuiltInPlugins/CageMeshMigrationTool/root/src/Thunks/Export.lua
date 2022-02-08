local CollectionService = game:GetService("CollectionService")
local Selection = game:GetService("Selection")

local root = script:FindFirstAncestor("root")

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
			Selection:Set(folder:GetChildren())

			local suffix = getSuffix(folder.Name)
			plugin:PromptSaveSelection(folder.Name .. suffix)
		end
	end
end
