local HttpService = game:GetService("HttpService")

local getHeaders = require(script.Parent.Util.getHeaders)
local getPostBody = require(script.Parent.Util.getPostBody)

return function(url, methodType, options)
	return HttpService:RequestInternal({
		Url = url,
		Method = methodType,

		Body = getPostBody(options.postBody, methodType),
		Timeout = options.timeout or 15000,
		CachePolicy = options.cachePolicy or Enum.HttpCachePolicy.None,
		Priority = options.priority or 0,
		Headers = getHeaders(options.headers, methodType),
		RequestType = options.requestType or nil,
		AllowSandboxing = options.allowSandboxing or nil
	})
end
