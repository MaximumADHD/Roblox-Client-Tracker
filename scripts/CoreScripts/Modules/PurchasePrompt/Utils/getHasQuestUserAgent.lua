local HttpService = game:GetService("HttpService")

return function()
	return string.find(HttpService:GetUserAgent(), "OculusQuest3Store") ~= nil
end