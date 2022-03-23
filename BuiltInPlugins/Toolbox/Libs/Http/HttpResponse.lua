--!strict
--[[
	HttpResponse

	Encapsulates the response from an http request. Nothing fancy
]]

local HttpResponse = {}

export type HttpResponse = {
	responseTimeMs: number,
	responseCode: number,
	responseBody: any,
	requestType: string,
	url: string,
}

function HttpResponse.new(response, responseTime, statusCode, requestType, url): HttpResponse
	return {
		responseTimeMs = responseTime,
		responseCode = statusCode,
		responseBody = response,
		requestType = requestType,
		url = url,
	}
end

return HttpResponse
