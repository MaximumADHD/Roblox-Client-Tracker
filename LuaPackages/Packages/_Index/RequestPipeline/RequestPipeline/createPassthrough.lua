local root = script.Parent
local Packages = root.Parent

local HttpServiceMock = require(Packages.HttpServiceMock)
local Promise = require(Packages.Promise)

type Request = HttpServiceMock.Request

local function needInternalRequest(request: Request): boolean
	return request.Type == "internal"
end

local function createPassthrough(httpService)
	local function makeRequest(request: Request)
		if needInternalRequest(request) then
			return Promise.new(function(resolve, _reject)
				local wrapper = httpService:RequestInternal({
					Url = request.Url,
					Method = request.Method,
					Headers = request.Headers,
					Body = request.Body,
					Timeout = request.Timeout,
					Priority = request.Priority,
					CachePolicy = request.CachePolicy,
					RequestType = request.RequestType,
				})

				wrapper:Start(function(_success, response)
					resolve({
						type = "response",
						response = response,
					})
				end)
			end):catch(function(errorObject)
				return {
					type = "error",
					error = errorObject,
				}
			end)
		else
			return Promise.try(function()
				local response = httpService:RequestAsync({
					Url = request.Url,
					Method = request.Method,
					Headers = request.Headers,
					Body = request.Body,
				})
				return {
					type = "response",
					response = response,
				}
			end):catch(function(errorObject)
				return {
					type = "error",
					error = errorObject,
				}
			end)
		end
	end

	return makeRequest
end

return createPassthrough
