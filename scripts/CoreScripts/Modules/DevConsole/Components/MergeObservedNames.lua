--!strict

--[[
	Merges the given `field` value of every entry into the `into` set, mutating it in place.
	Returns true if any new value was added, so callers can skip a setState when nothing changed.
]]
local function mergeObservedNames(entries: { any }, into: { [string]: boolean }, field: string): boolean
	local changed = false
	for _, entry in entries do
		local value = entry[field]
		if value and not into[value] then
			into[value] = true
			changed = true
		end
	end
	return changed
end

return mergeObservedNames
