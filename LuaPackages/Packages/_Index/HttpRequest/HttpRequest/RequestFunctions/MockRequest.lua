local Root = script:FindFirstAncestor("HttpRequest").Parent
local Cryo = require(Root.Cryo)

return function(url, methodType, options)
	return {
		Start = function(_, callback)
			local mockResponse = {}
			if type(options.mockResponse) == "function" then
				mockResponse = options.mockResponse()
			elseif options.mockResponse then
				mockResponse = options.mockResponse
			end

			local result = Cryo.Dictionary.join({
				Url = url,
				Method = methodType,
			}, mockResponse)

			callback(options.success, result)
		end,
		Cancel = function()
			if options.cancel then
				options.cancel()
			end
		end
	}
end
