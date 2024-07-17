local Root = script:FindFirstAncestor("SceneUnderstanding")

local isSourceAsset = require(Root.isSourceAsset)

local function findSourceAssetsFromDescendant(descendant: Instance): { Instance }
	local sourceAssets = {}
	local parent = descendant.Parent

	while parent do
		if isSourceAsset(parent) then
			table.insert(sourceAssets, parent)
		end
		parent = parent.Parent
	end

	return sourceAssets
end

return findSourceAssetsFromDescendant
