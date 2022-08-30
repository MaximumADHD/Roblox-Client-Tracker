--!strict

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
    return Dash.find(assetSubTypesArray, function(subType)
        return subType == assetSubType
    end)
end

return AssetSubTypes
