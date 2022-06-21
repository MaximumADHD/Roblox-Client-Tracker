local HttpService = game:GetService("HttpService")

local getHeaders = require(script.Parent.Util.getHeaders)
local getPostBody = require(script.Parent.Util.getPostBody)

return function(url, methodType, options)
	return {
		Start = function(_, callback)
			local success, response = pcall(function()
				return HttpService:RequestAsync({
					Url = url,
					Method = methodType,
					Body = getPostBody(options.postBody, methodType),
					Headers = getHeaders(options.headers, methodType),
				})
			end)

			callback(success, response)
		end,
		Cancel = function()
			-- no-op
		end,
	}
end
