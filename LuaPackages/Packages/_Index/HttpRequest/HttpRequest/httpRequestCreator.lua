local Root = script:FindFirstAncestor("HttpRequest").Parent
local Promise = require(Root.Promise)

local HttpRequest = require(script.Parent.HttpRequest)

return function(configOptions)
	assert(type(configOptions.requestFunction) == "function", "Expected requestFunction to be a function")

	return function(url, requestMethod, options)
		assert(type(url) == "string", "Expected url to be a string")
		assert(type(requestMethod) == "string", "Expected requestMethod to be a string")
		assert(not options or type(options) == "table", "Expected options to be a table")
		requestMethod = string.upper(requestMethod)

		local requestWrapper = HttpRequest.new(configOptions, url, requestMethod, options)

		local httpPromise = Promise.new(function(resolve, reject)
			coroutine.wrap(function()
				requestWrapper:start(resolve, reject)
			end)()
		end)

		local function cancel()
			requestWrapper:cancel()
		end

		return httpPromise, cancel
	end
end
