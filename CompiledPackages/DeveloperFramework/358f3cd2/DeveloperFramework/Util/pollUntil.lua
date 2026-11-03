--[[
	pollUntil repeatedly runs a function until it returns a truthy value.
]]

local Framework = script:FindFirstAncestor("Util").Parent
local Promise = require(script.Parent.Promise)

local FFlagDevFrameworkPollUntilTaskApi = require(Framework.SharedFlags.getFFlagDevFrameworkPollUntilTaskApi)()

export type Poller = () -> boolean

if FFlagDevFrameworkPollUntilTaskApi then
	local function pollUntil(fn: Poller, stopAfterSeconds: number?)
		local endTime = os.clock() + (stopAfterSeconds or 1)

		return Promise.new(function(fulfill, reject)
			task.spawn(function()
				while os.clock() < endTime do
					local result = fn()
					if result then
						fulfill(result)
						return
					end
					task.wait()
				end
				reject("Timeout reached")
			end)
		end)
	end

	return pollUntil
end

local function pollUntil(fn: Poller, stopAfterSeconds: number?)
	-- Stop after the specified amount of time
	local endTime = os.time() + (stopAfterSeconds or 1)
	local doFulfil, doReject
	-- A promise encapsulates the eventual result or timeout
	local promise = Promise.new(function(fulfil, reject)
		doFulfil = fulfil
		doReject = reject
	end)
	spawn(function()
		local result = fn()
		while os.time() < endTime and not result do
			wait()
			result = fn()
		end
		if result then
			doFulfil(result)
		else
			doReject()
		end
	end)
	return promise
end

return pollUntil
