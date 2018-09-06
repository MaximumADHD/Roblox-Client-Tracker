local TimeZone = setmetatable({}, {
	__index = function(self, key)
		error(("Invalid TimeZone \"%s\""):format(tostring(key)), 2)
	end
})

TimeZone.UTC = -2
TimeZone.Current = -1

return TimeZone