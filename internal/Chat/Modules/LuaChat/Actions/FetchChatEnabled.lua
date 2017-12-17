local LuaChat = script.Parent.Parent
local WebApi = require(LuaChat.WebApi)
local ActionType = require(LuaChat.ActionType)

return function(onSuccess)
	return function(store)
		spawn(function()
			local status, response = WebApi.GetChatSettings()
			if status ~= WebApi.Status.OK then
				warn("Failure in WebApi.GetChatSettings", status)
				return
			end
			store:Dispatch({
				type = ActionType.SetChatEnabled,
				value = response.chatEnabled
			})
			if onSuccess then
				onSuccess(response.chatEnabled)
			end
		end)
	end
end