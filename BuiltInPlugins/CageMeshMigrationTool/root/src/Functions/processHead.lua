local root = script:FindFirstAncestor("root")

local constants = require(root.src.constants)
local buildCageMeshInfoMap = require(root.src.Functions.buildCageMeshInfoMap)
local downloadAsset = require(root.src.Functions.downloadAsset)
local processAsset = require(root.src.Functions.processAsset)

return function(headId, rig)
	local cageMeshInfoMap = buildCageMeshInfoMap(rig)
	local folder = downloadAsset(headId, constants.ASSET_TYPE_ID_MAP.Head)
	processAsset(folder, cageMeshInfoMap)
end
