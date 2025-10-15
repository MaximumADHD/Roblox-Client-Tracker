-- ROBLOX upstream: no upstream
-- ROBLOX comment: created to avoid circular dependency
local ignore = {} :: { [number]: string }
local function getIgnore()
	return ignore
end

local function setIgnore(newIgnore: { [number]: string })
	ignore = newIgnore
end

return {
	getIgnore = getIgnore,
	setIgnore = setIgnore,
}
