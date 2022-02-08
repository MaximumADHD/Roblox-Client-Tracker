local Http = script.Parent.Parent.Parent.Parent.Parent
local BaseUrl = require(Http.BaseUrl)

-- This endpoint returns HTML, use its url to open external windows

return function(_)
	return function(assetId)
		assert(type(assetId) == "string", "Expected assetId to be a string")

		local args = BaseUrl.makeQueryString({
			assetId = assetId
		})
		return string.format("%sstudio/plugins/info?%s", BaseUrl.BASE_URL, args)
	end
end