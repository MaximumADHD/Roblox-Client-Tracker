local RetrievalStatus = {}

local EnumValues =
{
	NotStarted = "NotStarted",
	Fetching = "Fetching",
	Done = "Done",
	Failed = "Failed",
}

setmetatable(RetrievalStatus,
	{
		__newindex = function(t, key, index)
		end,
		__index = function(t, index)
			assert(EnumValues[index] ~= nil, ("RetrievalStatus Enum has no value: " .. tostring(index)))
			return EnumValues[index]
		end
	})

return RetrievalStatus