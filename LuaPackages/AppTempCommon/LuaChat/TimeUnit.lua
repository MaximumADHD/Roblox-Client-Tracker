local TimeUnit = setmetatable({}, {
	__index = function(self, key)
		error(("Invalid TimeUnit \"%s\""):format(tostring(key)), 2)
	end
})

TimeUnit.Seconds = "Seconds"
TimeUnit.Minutes = "Minutes"
TimeUnit.Hours = "Hours"
TimeUnit.Days = "Days"
TimeUnit.Months = "Months"
TimeUnit.Years = "Years"

-- Locale-specific
TimeUnit.Weeks = "Weeks"

return TimeUnit