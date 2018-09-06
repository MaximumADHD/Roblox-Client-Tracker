local CorePackages = game:GetService("CorePackages")
local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)

return function(requestImpl, userId)
	local url = string.format("%s/users/%s/friends",
		Url.FRIEND_URL, userId
	)

	return requestImpl(url, "GET")
end