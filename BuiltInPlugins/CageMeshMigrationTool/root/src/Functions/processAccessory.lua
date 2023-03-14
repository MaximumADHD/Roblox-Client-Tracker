local root = script:FindFirstAncestor("root")

local constants = require(root.src.constants)
local buildCageMeshInfoMap = require(root.src.Functions.buildCageMeshInfoMap)
local downloadAsset = require(root.src.Functions.downloadAsset)
local processAsset = require(root.src.Functions.processAsset)

return function(accessoryId, rig)
	local cageMeshInfoMap = buildCageMeshInfoMap(rig)
	-- using Hat here to force the download to be a MeshPart Accessory
	local folder = downloadAsset(accessoryId, constants.ASSET_TYPE_ID_MAP.Hat)
	folder.Name = tonumber(accessoryId)
	processAsset(folder, cageMeshInfoMap)
end
