local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")

local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)

-- Endpoint documented here:
-- https://presence.roblox.com/docs

return function(requestImpl, userIds)
	local userIdsToNumber = {}
	for _, id in pairs(userIds) do
		local idToNumber = tonumber(id)
		if idToNumber then
			table.insert(userIdsToNumber, idToNumber)
		end
	end

	local payload = HttpService:JSONEncode({
		userIds = userIdsToNumber,
	})

	local url = string.format("%s/presence/users", Url.PRESENCE_URL)

	return requestImpl(url, "POST", { postBody = payload })
end