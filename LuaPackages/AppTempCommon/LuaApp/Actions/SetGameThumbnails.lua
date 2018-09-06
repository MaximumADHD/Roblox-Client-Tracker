local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.AppTempCommon.Common.Action)

--[[
	Passes a table that looks like this : { "universeId" : {json}, ... }

	{
		"26034470" : {
			universeId  :  "26034470",
			placeId  :  "70542190",
			url  :  https://t5.rbxcdn.com/ed422c6fbb22280971cfb289f40ac814,
			final  :  true
		}, {...}, ...
	}

]]

--TODO MOBLUAPP-778 Refactor improper Setter Actions.
return Action(script.Name, function(thumbnailsTable)
	assert(type(thumbnailsTable) == "table",
			string.format("SetGameThumbnails action expects thumbnailsTable to be a table, was %s", type(thumbnailsTable)))

	return {
		thumbnails = thumbnailsTable
	}
end)