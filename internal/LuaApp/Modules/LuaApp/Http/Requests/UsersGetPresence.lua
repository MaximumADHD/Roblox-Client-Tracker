local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Url = require(Modules.LuaApp.Http.Url)

--[[
This endpoint returns:

	public class PresenceViewModel
	{
		public PresenceType UserPresenceType { get; }
		public string LastLocation { get; }
		public string AbsolutePlaceUrl { get; }
		public long? PlaceId { get; }
		public Guid? GameId { get; }
		public bool IsGamePlayableOnCurrentDevice { get; }
		public int UserId { get; }
		public string EndpointType => "Presence";
	}

	Where the PresenceType is defined as:

	public enum PresenceType
	{
		Offline = 0,
		Online = 1,
		InGame = 2,
		InStudio = 3
	}
]]

return function(networkImpl, userIds)

	local argTable = {
		userIds = userIds,
	}

	-- construct the url
	local args = Url:makeQueryString(argTable)
	local url = string.format("%s/presence/users?%s",
		Url.WEB_URL, args
	)

	return networkImpl:httpGetJson(url)
end