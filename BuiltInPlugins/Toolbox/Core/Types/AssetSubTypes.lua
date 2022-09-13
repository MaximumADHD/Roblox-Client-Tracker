--!strict
local FFlagToolboxInsertMaterialsInMS = game:GetFastFlag("ToolboxInsertMaterialsInMS")
local FFlagToolboxFixPackageDragging = game:GetFastFlag("ToolboxFixPackageDragging")

local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Dash = Framework.Dash

local AssetSubTypes = {
	Invalid = "Invalid",
	Ad = "Ad",
	MaterialPack = "MaterialPack",
	Package = "Package",
}

export type AssetSubType = "Invalid" | "Ad" | "MaterialPack" | "Package"

function AssetSubTypes.contains(assetSubTypesArray, assetSubType)
	if FFlagToolboxInsertMaterialsInMS and assetSubTypesArray == nil then
		return false
	end
	local result = Dash.find(assetSubTypesArray, function(subType)
		return subType == assetSubType
	end)

	if FFlagToolboxFixPackageDragging then
		return result == assetSubType
	else
		return result
	end
end

return AssetSubTypes
