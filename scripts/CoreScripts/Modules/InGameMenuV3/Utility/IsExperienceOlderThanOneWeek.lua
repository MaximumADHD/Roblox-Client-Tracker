--!nonstrict
local Workspace = game:GetService("Workspace")

local MILLISECONDS_PER_SECOND = 1000
local MILLISECONDS_PER_DAY = 24 * 60 * 60 * MILLISECONDS_PER_SECOND
local MILLISECONDS_PER_WEEK = MILLISECONDS_PER_DAY * 7

return function(gameInfo)
	if gameInfo ~= nil and gameInfo.created ~= nil then
		local dateTime = DateTime.fromIsoDate(gameInfo.created)
		local createdDateUnixMillis = dateTime.UnixTimestampMillis
		local currDateUnixMillis = Workspace:GetServerTimeNow() * MILLISECONDS_PER_SECOND

		if currDateUnixMillis - createdDateUnixMillis > MILLISECONDS_PER_WEEK then
			return true
		end
	end

	return false
end
