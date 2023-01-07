local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local act = Roact.act
local RunService = game:GetService("RunService")

return function(predicate, timeout: number?)
	local fixedTimeout = timeout or 1
	local waitedTime = 0
	while waitedTime < fixedTimeout and not predicate() do
		act(function()
			waitedTime = waitedTime + RunService.Heartbeat:Wait()
		end)
	end
end
