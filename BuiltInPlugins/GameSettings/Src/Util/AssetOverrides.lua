--[[
	functionality associated with the asset overrides data structure
]]

local AssetOverrides = {}

local function createTypeKeyedAssetOverridesTable(overrides)
	local result = {}
	if nil ~= overrides then
		for _, subTab in pairs(overrides) do
			result[subTab.assetTypeID] = subTab
		end
	end
	return result
end

local function forEachAssetOverrideChange(current, changed, func)
	local currentKeyed = createTypeKeyedAssetOverridesTable(current)
	local changedKeyed = createTypeKeyedAssetOverridesTable(changed)

	local defaultSubTab = { assetID = 0, isPlayerChoice = true }
	for key, changedSubTab in pairs(changedKeyed) do
		local currentSubTab = currentKeyed[changedSubTab.assetTypeID] or defaultSubTab
		if
			changedSubTab.assetID ~= currentSubTab.assetID
			or changedSubTab.isPlayerChoice ~= currentSubTab.isPlayerChoice
		then
			if not func(changedSubTab) then
				return
			end
		end
	end
end

function AssetOverrides.isEqual(current, changed)
	local equal = true
	forEachAssetOverrideChange(current, changed, function()
		equal = false
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

function AssetOverrides.getErrors(assetOverridesData)
	local result = nil
	for _, subTab in pairs(assetOverridesData) do
		if not subTab.isPlayerChoice then
			local isAssetIDSpecified = nil ~= subTab.assetID
				and 0 ~= subTab.assetID
				and "0" ~= subTab.assetID
				and string.len((string.gsub(subTab.assetID, " ", ""))) > 0
			if not isAssetIDSpecified then
				result = result or {}
				result[subTab.assetTypeID] = "OverrideEmpty" -- OverrideEmpty is a key into a localization table
			end
		end
	end
	return result
end

return AssetOverrides
