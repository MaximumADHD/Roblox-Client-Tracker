local RunService = game:GetService("RunService")

return function(predicate, timeout)
	timeout = timeout or 1
	local waitedTime = 0
	while waitedTime < timeout and not predicate() do
		waitedTime = waitedTime + RunService.Heartbeat:Wait()
	end
end
