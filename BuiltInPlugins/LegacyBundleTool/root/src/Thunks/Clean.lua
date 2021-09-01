local Workspace = game:GetService("Workspace")
local CollectionService = game:GetService("CollectionService")

local root = script:FindFirstAncestor("root")

local constants = require(root.src.constants)

return function(plugin)
	return function(store)
		for _, instance in ipairs(CollectionService:GetTagged(constants.TAG)) do
			instance:Destroy()
		end

		for _, child in ipairs(Workspace:GetChildren()) do
			if child:IsA("Model") and constants.AVATAR_IMPORTER_RIG_NAMES[child.Name] then
				child:Destroy()
			end
		end
	end
end
