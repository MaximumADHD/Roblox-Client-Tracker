local CollectionService = game:GetService("CollectionService")
local Selection = game:GetService("Selection")

local root = script:FindFirstAncestor("root")

local constants = require(root.src.constants)

return function(plugin)
	return function(store)
		for _, folder in ipairs(CollectionService:GetTagged(constants.TAG)) do
			Selection:Set(folder:GetChildren())
			plugin:PromptSaveSelection(folder.Name .. "_caged")
		end
	end
end
