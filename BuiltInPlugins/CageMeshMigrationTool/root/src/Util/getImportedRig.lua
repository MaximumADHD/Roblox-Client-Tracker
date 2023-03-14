local root = script:FindFirstAncestor("root")

local Workspace = game:GetService("Workspace")

local constants = require(root.src.constants)

local function getImportedRig()
	for _, child in ipairs(Workspace:GetChildren()) do
		if child:IsA("Model") and constants.AVATAR_IMPORTER_RIG_NAMES[child.Name] then
			return child
		end
	end
	return nil
end

return getImportedRig
