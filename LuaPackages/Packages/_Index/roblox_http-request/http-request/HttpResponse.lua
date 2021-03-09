local HttpResponse = {}
HttpResponse.__index = HttpResponse
HttpResponse.__tostring = function(self)
	local fieldsToShow = {}

	for key, value in pairs(self) do
		table.insert(fieldsToShow, string.format("%s = %s", tostring(key), tostring(value)))
	end
	table.sort(fieldsToShow)

	return "<HttpResponse: " .. table.concat(fieldsToShow, ", ") .. ">"
end

function HttpResponse.success(statusCode, responseBody)
	return setmetatable({
		responseCode = statusCode,
		responseBody = responseBody,
	}, HttpResponse)
end

function HttpResponse.error(httpError)
	return setmetatable({
		HttpError = httpError,
	}, HttpResponse)
end

return HttpResponse
