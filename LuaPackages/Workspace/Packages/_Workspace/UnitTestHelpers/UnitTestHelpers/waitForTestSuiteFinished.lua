local RunService = game:GetService("RunService")
local LogService = game:GetService("LogService")

local TIMEOUT = 60 * 5

local function waitUntil(predicate, timeout)
	timeout = timeout or 1
	local waitedTime = 0
	while waitedTime < timeout and not predicate() do
		waitedTime = waitedTime + RunService.Heartbeat:Wait()
	end
end

local function waitForTestSuiteFinished()
	waitUntil(function()
		local history = LogService:GetLogHistory()
		for _, log in ipairs(history) do
			if string.match(log.message, "%d+ passed, %d+ failed, %d+ skipped") then
				return true
			end
		end

		return false
	end, TIMEOUT)
end

return waitForTestSuiteFinished
