local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Action = require(Modules.Common.Action)


--[[
	Passes a table that looks like this : { placeId : {json}, ... }

	{
		70542190 : {
			universeId  :  0,
			placeId  :  70542190,
			url  :  https://t5.rbxcdn.com/ed422c6fbb22280971cfb289f40ac814,
			final  :  true
		}, {...}, ...
	}

]]
return Action(script.Name, function(thumbnailsTable)
	return {
		thumbnails = thumbnailsTable
	}
end)