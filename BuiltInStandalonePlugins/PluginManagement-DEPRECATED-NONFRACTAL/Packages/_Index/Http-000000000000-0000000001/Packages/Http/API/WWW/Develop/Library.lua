local Http = script.Parent.Parent.Parent.Parent
local BaseUrl = require(Http.BaseUrl)

-- RETURNS A WEB PAGE. OPEN THIS LINK IN AN EXTERNAL BROWSER.
-- example :
-- https://www.roblox.com/develop/library?CatalogContext=2&SortType=0&SortAggregation=3&SortCurrency=0&Category=7


return function(_)
	return function(catalogContext, sortType, sortAggregation, sortCurrency, category)
		assert(type(catalogContext) == "number", "Expected catalogContext to be a number")
		assert(type(sortType) == "number", "Expected sortType to be a number")
		assert(type(sortAggregation) == "number", "Expected sortAggregation to be a number")
		assert(type(sortCurrency) == "number", "Expected sortCurrency to be a number")
		assert(type(category) == "number", "Expected category to be a number")

		local args = BaseUrl.makeQueryString({
			CatalogContext = catalogContext,
			SortType = sortType,
			SortAggregation = sortAggregation,
			SortCurrency = sortCurrency,
			Category = category,
		})

		return string.format("%sdevelop/library?%s", BaseUrl.BASE_URL, args)
	end
end