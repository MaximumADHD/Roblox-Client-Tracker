--[[
	CLILUACORE-311: We need to find a proper way to encapsulate this;
	conditionally depending on PlatformService is bad!
]]
local PlatformService = nil
pcall(function()
	PlatformService = game:GetService("PlatformService")
end)

local Promise = require(script.Parent.Parent.Promise)

local function parseRobuxValue(productInfo)
	local rawText = productInfo and productInfo.Name
	local noJunk = string.gsub(rawText, ",", "")
	noJunk = noJunk and string.match(noJunk, "[0-9]+") or nil
	return noJunk and tonumber(noJunk) or 1000
end

local XboxCatalogData = {}

function XboxCatalogData.GetCatalogInfoAsync()
	if PlatformService == nil then
		error("PlatformService unavailable; are you on XboxOne?")
	end

	local promisified = Promise.promisify(function()
		return PlatformService:BeginGetCatalogInfo()
	end)

	return promisified()
		:andThen(function(catalogInfo)
			local availableProducts = {}

			for _, productInfo in pairs(catalogInfo) do
				local product = {
					robuxValue = parseRobuxValue(productInfo),
					productId = productInfo.ProductId
				}
				table.insert(availableProducts, product)
			end

			return availableProducts
		end)
end

return XboxCatalogData
