--[[
	HttpResponse

	Encapsulates the response from an http request. Nothing fancy
]]


local HttpResponse = {}
HttpResponse.__index = HttpResponse

function HttpResponse.new(response, responseTime, statusCode)
	local responseObj = {
		responseTimeMs = responseTime,
		responseCode = statusCode,
		responseBody = response
	}
	setmetatable(responseObj, HttpResponse)

	return responseObj
end

return HttpResponse