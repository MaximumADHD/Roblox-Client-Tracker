local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Action = require(Modules.Common.Action)


--[[
	Passes a table that looks like this... { placeId = { gameData }, ... }

	{
		"70395446" : {
			universeId  :  149757 ,
			imageToken  :  70395446 ,
			totalDownVotes  :  0 ,
			placeId  :  70395446 ,
			name  :  test ,
			totalUpVotes  :  0 ,
			creatorId  :  22915773 ,
			playerCount  :  0 ,
			creatorName  :  Raeglyn ,
			creatorType  :  User
	     }, {...}, ...
     }
]]

return Action(script.Name, function(games)
	return {
		games = games
	}
end)