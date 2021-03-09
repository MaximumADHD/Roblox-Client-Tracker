local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")

local StatusCode = require(script.Parent.Parent.StatusCode)

local DEFAULT_THROTTLING_PRIORITY = Enum.ThrottlingPriority.Extreme
local DEFAULT_POST_ASYNC_CONTENT_TYPE = Enum.HttpContentType.ApplicationJson

local function doHttpGet(url, options)
	return pcall(function()
		return HttpRbxApiService:GetAsyncFullUrl(
			url,
			options.throttlingPriority or DEFAULT_THROTTLING_PRIORITY,
			options.httpRequestType or nil
		)
	end)
end

local function doHttpPost(url, options)
	local jsonPayload
	assert(options.postBody, "Expected a postBody to be specified with this request")
	if type(options.postBody) == "table" then
		jsonPayload = HttpService:JSONEncode(options.postBody)
	elseif type(options.postBody) == "string" then
		jsonPayload = options.postBody
	else
		error("Expected postBody to be a string or table")
	end

	return pcall(function()
		return HttpRbxApiService:PostAsyncFullUrl(
			url,
			jsonPayload,
			options.throttlingPriority or DEFAULT_THROTTLING_PRIORITY,
			options.contentType or DEFAULT_POST_ASYNC_CONTENT_TYPE,
			options.httpRequestType or nil
		)
	end)
end

local function createResponse(result)
	local statusCode = StatusCode.OK

	local jsonSuccess, _ = pcall(function()
		return HttpService:JSONDecode(result)
	end)

	if not jsonSuccess then
		-- When a non-json string is returned that means an error has occured
		-- The returned string will be of the form "HTTP XXX (description)"
		statusCode = tonumber(result:sub(6,8))
	end

	return {
		Body = result,
		StatusCode = statusCode,
		Headers = {},
	}
end

return function(url, methodType, options)
	return {
		Start = function(_, callback)
			local success, result
			if methodType == "GET" then
				success, result = doHttpGet(url, options)
			elseif methodType == "POST" then
				success, result = doHttpPost(url, options)
			else
				error("Unsupported method: " .. methodType)
			end

			local response = createResponse(result)

			callback(success, response)
		end,
		Cancel = function()
			-- no-op
		end
	}
end
