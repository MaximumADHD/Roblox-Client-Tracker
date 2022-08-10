--[[
	forRelease is a table like the following:
	{
		Shirt = {
		    marketplaceFeesPercentage = 70
		    allowedPriceRange = {
		         minRobux = 100
		         maxRobux = 5000
		    }
		}
		Hat = {
		    marketplaceFeesPercentage = 70
		    allowedPriceRange = {
		         minRobux = 120
		         maxRobux = 5000
		    }
		}
	}

	forUpload is a table like the following:
	{
		Hat = {
		    allowedFileExtensions = {
		         1 = .rbxm
		    }
		}
		Mesh = {
		    allowedFileExtensions = {
		         1 = .mesh
		    }
		}
		Image = {
		    allowedFileExtensions = {
		         1 = .jpg
		         2 = .png
		         3 = .bmp
		    }
		}
	}
	
	forFree is a table like the following:
	{
		1 = Plugin
	}
]]

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

local FFlagToolboxAssetConfigurationMinPriceFloor2 = game:GetFastFlag("ToolboxAssetConfigurationMinPriceFloor2")

if FFlagToolboxAssetConfigurationMinPriceFloor2 then
	return Action(script.Name, function(forRelease, forUpload, forFree)
		return {
			allowedAssetTypesForRelease = forRelease,
			allowedAssetTypesForUpload = forUpload,
			allowedAssetTypesForFree = forFree,
		}
	end)
else
	return Action(script.Name, function(forRelease, forUpload)
		return {
			allowedAssetTypesForRelease = forRelease,
			allowedAssetTypesForUpload = forUpload,
		}
	end)
end