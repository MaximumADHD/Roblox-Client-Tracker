local CorePackages = game:GetService("CorePackages")
local Url = require(CorePackages.Workspace.Packages.Http).Url

--[[
	Documentation of endpoint:
	https://voice.roblox.com/docs#!/Voice/get_v1_settings
]]

return function(requestImpl)
    local url = string.format("%s/v1/settings/", Url.VOICE_URL)

    return requestImpl(url, "GET")
end
