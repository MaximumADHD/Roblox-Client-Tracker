local CorePackages = game:GetService("CorePackages")

local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local act = ReactRoblox.act

local DEFAULT_TIMEOUT = 1

local function waitUntil<T>(predicate: () -> (boolean, T) | () -> boolean, timeout: number?): T
	local duration = if timeout == nil then DEFAULT_TIMEOUT else timeout
	local stopAt = os.clock() + duration

	local lastError = nil

	while os.clock() < stopAt do
		local success, result, value = pcall(predicate)

		if success and result then
			return value
		end

		if not success then
			lastError = result
		end

		act(function()
			task.wait()
		end)
	end

	local message = ("operation has timed out (maximum time allowed was %f seconds)"):format(duration)
	if lastError ~= nil then
		message ..= ": " .. tostring(lastError)
	end
	error(message)
end

return waitUntil
