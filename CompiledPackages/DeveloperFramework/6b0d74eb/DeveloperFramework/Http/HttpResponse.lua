--[[
	HttpResponse

	Encapsulates the response from an http request. Nothing fancy
]]

local Framework = script:FindFirstAncestor("Http").Parent
local Dash = require(Framework.Parent.Dash)

local HttpResponse = {}
HttpResponse.__tostring = function(hr)
	local prettified = Dash.pretty(hr, {
		depth = math.huge,
		multiline = true,
	})
	return `HttpResponse = {prettified}`
end

function HttpResponse.new(response, responseTime, statusCode, requestOptions)
	local hr = {
		responseTimeMs = responseTime,
		responseCode = statusCode,
		responseBody = response,
		requestOptions = requestOptions,
	}
	setmetatable(hr, HttpResponse)

	return hr
end

return HttpResponse
