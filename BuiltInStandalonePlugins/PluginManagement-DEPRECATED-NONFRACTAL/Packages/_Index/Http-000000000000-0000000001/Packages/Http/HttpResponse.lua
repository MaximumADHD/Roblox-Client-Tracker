--[[
	HttpResponse

	Encapsulates the response from an http request. Nothing fancy
]]

local HttpResponse = {}

function HttpResponse.new(response, responseTime, statusCode, requestOptions)
	return {
		responseTimeMs = responseTime,
		responseCode = statusCode,
		responseBody = response,
		requestOptions = requestOptions,
	}
end

return HttpResponse
