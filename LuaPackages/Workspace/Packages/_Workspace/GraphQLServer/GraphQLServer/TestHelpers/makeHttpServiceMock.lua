local function makeHttpServiceMock(mockSuccess, mockResponse): HttpService
	local HttpServiceMock = {
		RequestInternal = function(_options)
			return {
				Start = function(_self, callback)
					callback(mockSuccess, mockResponse)
				end,
			}
		end,
	}

	return HttpServiceMock :: any
end

return makeHttpServiceMock
