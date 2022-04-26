--[[
	HttpResponse

	Encapsulates the response from an http request. Nothing fancy
]]

local HttpResponse = {}

function HttpResponse.new(response, responseTime, statusCode, requestType, url)
	return {
		responseTimeMs = responseTime,
		responseCode = statusCode,
		responseBody = response,
		requestType = requestType,
		url = url,
	}
end

return HttpResponse
