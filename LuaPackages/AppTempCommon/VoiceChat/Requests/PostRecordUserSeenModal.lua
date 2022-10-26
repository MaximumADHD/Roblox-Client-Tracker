local CorePackages = game:GetService("CorePackages")
local Url = require(CorePackages.Workspace.Packages.Http).Url

--[[
	Documentation of endpoint:
    https://voice.roblox.com/docs#!/Voice/post_v1_settings_record_user_seen_upsell_modal
]]

return function(requestImpl)
	local url = string.format("%s/v1/settings/record-user-seen-upsell-modal", Url.VOICE_URL)

	return requestImpl(url, "POST", {postBody = '{}'})
end
