--[[
	pollUntil repeatedly runs a function until it returns a truthy value.
]]

local Framework = script:FindFirstAncestor("Util").Parent
local Promise = require(script.Parent.Promise)

local FFlagDevFrameworkPollUntilTaskApi = require(Framework.SharedFlags.getFFlagDevFrameworkPollUntilTaskApi)()

export type Poller = () -> any

if FFlagDevFrameworkPollUntilTaskApi then
	local function pollUntil(fn: Poller, stopAfterSeconds: number?)
		local endTime = os.clock() + (stopAfterSeconds or 1)

		return Promise.new(function(fulfill, reject)
			task.spawn(function()
				while true do
					local success, result = pcall(fn)
					if not success then
						reject(result)
						return
					end
					if result then
						fulfill(result)
						return
					end
					if os.clock() >= endTime then
						break
					end
					task.wait()
				end
				reject()
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
