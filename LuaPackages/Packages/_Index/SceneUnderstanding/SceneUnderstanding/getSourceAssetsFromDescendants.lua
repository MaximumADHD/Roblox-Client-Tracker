local Root = script:FindFirstAncestor("SceneUnderstanding")

local isSourceAsset = require(Root.isSourceAsset)
local findSourceAssetsFromDescendant = require(Root.findSourceAssetsFromDescendant)

-- MUS-972 TODO: Stress test this

--[[
	Given a list of descendant instances, this function will attempt to find all
	ancestors that have a SourceAssetId property.

	By default, each instance has a SourceAssetId of -1, so only positive IDs
	are counted.

	If no ancestors are found, an empty array is returned.
]]
local function getSourceAssetsFromDescendants(descendants: { Instance }): { Instance }
	local sourceAssets = {}

	for _, descendant in descendants do
		if isSourceAsset(descendant) then
			table.insert(sourceAssets, descendant)
		end

		for _, candidate in findSourceAssetsFromDescendant(descendant) do
			if not table.find(sourceAssets, candidate) then
				table.insert(sourceAssets, candidate)
			end
		end
	end

	return sourceAssets
end

return getSourceAssetsFromDescendants
