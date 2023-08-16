--[[
	GetItemDetails web API

	Query path: /v1/catalog/items/details
]]
local Packages = script:FindFirstAncestor("NetworkingCurrentlyWearing").Parent
local Dash = require(Packages.Dash)

local CATALOG_URL = require(script.Parent.Parent.CATALOG_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "GetItemDetails" }, function(requestBuilder, itemIds)
		return requestBuilder(CATALOG_URL):path("v1"):path("catalog"):path("items"):path("details"):body({
			items = Dash.map(itemIds, function(itemId)
				return {
					itemType = "Asset",
					id = itemId,
				}
			end),
		})
	end)
end
