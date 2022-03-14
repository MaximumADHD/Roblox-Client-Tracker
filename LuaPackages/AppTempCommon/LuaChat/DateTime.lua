--[[

This is deprecated. Do not use.

See engine level DateTime API: https://developer.roblox.com/en-us/api-reference/datatype/DateTime

]]

local LocalizationService = game:GetService("LocalizationService")

--[[
	This is a Lua implementation of the DateTime API proposal. It'll eventually
	be implemented in C++ and merged into the rest of the codebase if this model
	of working with dates ends up being useful.
]]

local TimeZone = require(script.Parent.TimeZone)

local LuaDateTime = {}

--[[
	Create a DateTime with the given values in UTC.

	All values are optional!
]]
function LuaDateTime.new(year, month, day, hour, minute, seconds, milliseconds)
	local self = {}
	self.dateTime = DateTime.fromUniversalTime(
		year or 1970,
		month or 1,
		day or 1,
		hour or 0,
		minute or 0,
		seconds or 0,
		milliseconds or 0)
	setmetatable(self, LuaDateTime)
	return self
end

--[[
	Create a DateTime representing now.
]]
function LuaDateTime.now()
	local self = {}
	self.dateTime = DateTime.now()
	setmetatable(self, LuaDateTime)
	return self
end

--[[
	Create a Datetime from the given Unix timestamp.

	Year range is 1400-9999, and timestamp range is between
	first second of year 1400 to the last second of year 9999.
]]
function LuaDateTime.fromUnixTimestamp(timestamp)
	assert(type(timestamp) == "number", "Invalid argument #1 to fromUnixTimestamp, expected number.")

	local self = {}
	self.dateTime = DateTime.fromUnixTimestampMillis(timestamp * 1000)
	setmetatable(self, LuaDateTime)
	return self
end

--[[
	Attempt to create a DateTime from an ISO 8601 date-time string.

	Will return nil on failure and output a warning to a console denoting what
	went wrong. This can probably turned into a second return value if we need
	to handle that data programmatically.
]]
function LuaDateTime.fromIsoDate(isoDate)
	assert(type(isoDate) == "string", "Invalid argument #1 to DateTime.fromIsoDate, expected string.")

	local self = {}
	self.dateTime = DateTime.fromIsoDate(isoDate)
	setmetatable(self, LuaDateTime)
	return self
end

--[[
	Format our current date using a formatting string. Look at the DateTime
	proposal to see information about the different formatting tokens.
	Generally, they try to resemble LDML and/or Moment.js-style formatting.

	The time zone parameter is optional and defaults to the current time zone,
	TimeZone.Current.
]]
function LuaDateTime:Format(formatString, tz, localeId)
	assert(type(formatString) == "string", "Invalid argument #1 to Format, expected string.")

	tz = tz or TimeZone.Current
	localeId = localeId or LocalizationService.RobloxLocaleId

	if tz == TimeZone.UTC then
		return self.dateTime:FormatUniversalTime(formatString, localeId)
	elseif tz == TimeZone.Current then
		return self.dateTime:FormatLocalTime(formatString, localeId)
	else
		error(("Invalid TimeZone \"%s\""):format(tostring(tz)), 2)
	end
end

--[[
	Get a table of values representing the date-time in the given timezone.

	The time zone parameter is optional and defaults to the current zime zone,
	TimeZone.Current.

	Table includes {Year, Month, Day, Hour, Minute, Second, Millisecond}
]]
function LuaDateTime:GetValues(tz)
	tz = tz or TimeZone.Current

	if tz == TimeZone.UTC then
		return self.dateTime:ToUniversalTime()
	elseif tz == TimeZone.Current then
		return self.dateTime:ToLocalTime()
	else
		error(("Invalid TimeZone \"%s\""):format(tostring(tz)), 2)
	end
end

--[[
	Recover a Unix timestamp representing the DateTime's value.
]]
function LuaDateTime:GetUnixTimestamp()
	if self.dateTime:ToUniversalTime().Millisecond > 0 then
		return self.dateTime.UnixTimestamp + (self.dateTime.UnixTimestampMillis % 1000)/1000
	else
		return self.dateTime.UnixTimestamp
	end
end

--[[
	Format the DateTime as an ISO 8601 date string with time attached.

	Always formats the time as UTC. There generally aren't many reasons to
	generate an ISO 8601 date in another time zone.
]]
function LuaDateTime:GetIsoDate()
	return self.dateTime:ToIsoDate()
end

--[[
	Get a human-readable timestamp relative to the given epoch, which defaults
	to now. The format of the time is contextual to how far away the times are.
]]
function LuaDateTime:GetLongRelativeTime(epoch, timezone, localeId)
	-- Not relative time format for now, will do that later in DateTime v2
	return self:Format("lll", timezone, localeId)
end

--[[
	Get a human-readable timestamp relative to the given epoch, which defaults
	to now. The format of the time is contextual to how far away the times are.
]]
function LuaDateTime:GetShortRelativeTime(epoch, timezone, localeId)
	timezone = timezone or TimeZone.Current

	-- Not relative time format for now, will do that later in DateTime v2
	return self:Format("ll", timezone, localeId)
end

LuaDateTime.__index = LuaDateTime

return LuaDateTime
