-- ROBLOX upstream: https://github.com/TheBrainFamily/wait-for-expect/blob/v3.0.0/src/index.ts

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local Promise = require(rootWorkspace.Promise)

local helpersModule = require(script.helpers)
local getSetTimeoutFn = helpersModule.getSetTimeoutFn

-- ROBLOX deviation: setTimeout currently operates at minimum 30Hz rate. Any lower number seems to be treated as 0
local TICK = 50

local defaults = {
	timeout = 5000,
	interval = 50,
}

local function waitForExpect(expectation: () -> (), _timeout: number?, _interval: number?)
	local timeout = _timeout or defaults.timeout
	local interval = _interval or defaults.interval

	local setTimeout = getSetTimeoutFn()
	if interval < TICK then
		interval = TICK
	end

	local maxTries = math.ceil(timeout / interval)
	local tries = 0
	return Promise.new(function(resolve, reject)
		local rejectOrRerun, runExpectation
		function rejectOrRerun(error_)
			if tries > maxTries then
				reject(error_)
				return
			end
			setTimeout(runExpectation, interval)
		end
		function runExpectation()
			tries += 1
			xpcall(function()
				Promise.delay(0)
					:andThen(function()
						return expectation()
					end)
					:andThen(function()
						return Promise.delay(0)
					end)
					:andThen(function()
						return resolve()
					end)
					:catch(rejectOrRerun)
			end, function(error_)
				rejectOrRerun(error_)
			end)
		end
		-- ROBLOX deviation: setTimeout currently operates at minimum 30Hz rate. Any lower number seems to be treated as 0
		setTimeout(runExpectation, TICK)
	end)
end

return waitForExpect
