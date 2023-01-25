local Grid = script.Parent
local UIBlox = Grid.Parent.Parent.Parent
local Packages = UIBlox.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

local function hasValue(setting, value)
	for _, item in setting do
		if item == value then
			return true
		end
	end
	return false
end

local function matches(value, setting)
	if value and setting then
		if typeof(setting) == "table" then
			return hasValue(setting, value)
		else
			return setting == value
		end
	end
	return true
end

local function readValue(config, breakpoint, kind, name, depth)
	local value = config[name]
	local valueDepth = if value ~= nil then depth else -1
	Array.forEach(config, function(subconfig)
		if matches(breakpoint, subconfig.breakpoint) and matches(kind, subconfig.kind) then
			local newValue, newDepth = readValue(subconfig, breakpoint, kind, name, depth + 1)
			if newDepth > valueDepth then
				value = newValue
				valueDepth = newDepth
			end
		end
	end)
	return value, valueDepth
end

local defaultBreakpoint = {
	name = "_default",
	min = math.huge,
	max = 0,
}

local function findBreakpoint(config, width)
	local bpconf = Array.find(config, function(subconfig)
		return type(subconfig) == "table"
			and type(subconfig.breakpoint) == "string"
			and width <= (subconfig.max or math.huge)
			and width >= (subconfig.min or 0)
	end)
	return if bpconf
		then {
			name = bpconf.breakpoint,
			min = bpconf.min or 0,
			max = bpconf.max or math.huge,
		}
		else defaultBreakpoint
end

return {
	getValue = function(context, name)
		local value, _ = readValue(context.config, context.breakpoint, context.kind, name, 0)
		return value
	end,
	findBreakpoint = findBreakpoint,
}
