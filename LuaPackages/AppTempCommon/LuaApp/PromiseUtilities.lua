--[[
	Provides utility functions for Promises
]]

local CorePackages = game:GetService("CorePackages")

local Result = require(CorePackages.AppTempCommon.LuaApp.Result)
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)

local PromiseUtilities = {}

--[[
	Accept a table of promises;
		promises = {
			[1] = Promise.resolve(),
			["Home"] = Promise.reject(),
			...
		}
	Returns a new promise that:
		* is resolved when all input promises are finished.
			returns the results of each individual promises in a list of Results
				results = {
					[1] = Result1,
					["Home"] = Result2,
					...
				}
		* is never rejected.
]]
function PromiseUtilities.Batch(promises)
	assert(type(promises) == "table", "PromiseUtilities expects a list of Promises!")

	local numberOfPromises = 0

	for _, promise in pairs(promises) do
		assert(Promise.is(promise), "PromiseUtilities expects a list of Promises!")
		numberOfPromises = numberOfPromises + 1
	end

	return Promise.new(function(resolve, reject)
		local totalCompleted = 0
		local results = {}

		local function promiseCompleted(key, success, value)
			results[key] = Result.new(success, value)
			totalCompleted = totalCompleted + 1

			if totalCompleted == numberOfPromises then
				resolve(results)
			end
		end

		if next(promises) == nil then
			resolve(results)
		end

		for key, promise in pairs(promises) do
			promise:andThen(
				function(result, ...)
					if select("#", ...) > 0 then
						warn("Promises in PromiseUtilities.Batch should not return tuple")
					end
					promiseCompleted(key, true, result)
				end,
				function(reason)
					promiseCompleted(key, false, reason)
				end
			)
		end
	end)
end

function PromiseUtilities.CountResults(batchPromiseResults)
	local totalCount = 0
	local failureCount = 0

	for _, result in pairs(batchPromiseResults) do
		local success, _ = result:unwrap()
		if not success then
			failureCount = failureCount + 1
		end
		totalCount = totalCount + 1
	end

	return {
		successCount = totalCount - failureCount,
		failureCount = failureCount,
		totalCount = totalCount,
	}
end

return PromiseUtilities