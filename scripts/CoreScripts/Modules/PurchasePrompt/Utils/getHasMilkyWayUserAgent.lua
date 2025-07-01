local HttpService = game:GetService("HttpService")
local CorePackages = game:GetService("CorePackages")
local FStringMilkyWayStoreUserAgent = require(CorePackages.Workspace.Packages.SharedFlags).FStringMilkyWayStoreUserAgent

return function(): boolean
	return string.find(HttpService:GetUserAgent(), FStringMilkyWayStoreUserAgent) ~= nil
end
