local CorePackages = game:GetService("CorePackages")

local MockableProxyServices = require(CorePackages.Workspace.Packages.MockableProxyServices)

-- Returns the server's unix time in seconds. GetServerTimeNow throws until the client has connected to a server.
local function getServerNow(): number
	local success, now = pcall(function()
		return MockableProxyServices.Workspace:GetServerTimeNow()
	end)
	return if success then now else DateTime.now().UnixTimestamp
end

return getServerNow
