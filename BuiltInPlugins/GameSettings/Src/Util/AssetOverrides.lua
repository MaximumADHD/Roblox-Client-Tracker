--[[
	functionality to compare two sets of asset overrides and generate a table of just the changed asset overrides
]]

local AssetOverrides = { }

local function createTypeKeyedAssetOverridesTable(overrides)
	local result = {}
	for _, subTab in pairs(overrides) do
		result[subTab.assetTypeID] = subTab
	end
	return result
end

local function forEachAssetOverrideChange(current, changed, func)
	local currentKeyed = createTypeKeyedAssetOverridesTable(current)
	local changedKeyed = createTypeKeyedAssetOverridesTable(changed)

	local defaultSubTab = { assetID=0, isPlayerChoice=true }
	for _, changedSubTab in pairs(changedKeyed) do
		local currentSubTab = currentKeyed[changedSubTab.assetTypeID] or defaultSubTab
		if changedSubTab.assetID ~= currentSubTab.assetID or changedSubTab.isPlayerChoice ~= currentSubTab.isPlayerChoice then
			if not func(changedSubTab) then
				return
			end
		end
	end
end

function AssetOverrides.isEqual(current, changed)
	local equal = true
	forEachAssetOverrideChange(current, changed, function()
		equal = false;
		return false
	end)
	return equal
end

function AssetOverrides.processSaveData(current, changed)
	local result = {}
	forEachAssetOverrideChange(current, changed, function(changedSubTab)
		result[#result + 1] = changedSubTab
		return true
	end)
	return result
end

return AssetOverrides