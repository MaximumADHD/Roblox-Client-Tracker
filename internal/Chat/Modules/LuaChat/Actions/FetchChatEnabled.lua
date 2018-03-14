local LuaChat = script.Parent.Parent
local WebApi = require(LuaChat.WebApi)
local SetChatEnabled = require(LuaChat.Actions.SetChatEnabled)

return function(onSuccess)
	return function(store)
		spawn(function()
			local status, response = WebApi.GetChatSettings()
			if status ~= WebApi.Status.OK then
				warn("Failure in WebApi.GetChatSettings", status)
				return
			end
			store:Dispatch(SetChatEnabled(response.chatEnabled))
			if onSuccess then
				onSuccess(response.chatEnabled)
			end
		end)
	end
end