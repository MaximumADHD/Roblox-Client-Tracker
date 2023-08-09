local Responsive = script.Parent
local UIBlox = Responsive.Parent.Parent.Parent
local Packages = UIBlox.Parent
local t = require(Packages.t)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

export type Config<T = number> = {
	[any]: BreakpointConfig | Config<T> | T,
}

export type BreakpointConfig = {
	breakpoint: string,
	min: number,
	max: number,
}

export type Breakpoint = {
	name: string,
	min: number,
	max: number,
}

export type Interface<T> = (T) -> boolean

export type Transformer<T, S> = (T) -> S

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

local function readValue(config, breakpoint, kind, name, depth: number)
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

local function findBreakpoint(config: Config, width): Breakpoint
	local bpconf = Array.find(config, function(subconfig)
		return type(subconfig) == "table"
			and type(subconfig.breakpoint) == "string"
			and width <= (subconfig.max or math.huge)
			and width >= (subconfig.min or 0)
	end) :: BreakpointConfig?
	return if bpconf
		then {
			name = bpconf.breakpoint,
			min = bpconf.min or 0,
			max = bpconf.max or math.huge,
		}
		else defaultBreakpoint
end

local transformables: { [Interface<any>]: Transformer<any, any> } = {
	[t.strictInterface({
		Scale = t.number,
		Offset = t.number,
	})] = function(value)
		return UDim.new(value.Scale, value.Offset)
	end,
}

return {
	getValue = function(context, name)
		local value, _ = readValue(context.config, context.breakpoint, context.kind, name, 0)
		for interface, transform in transformables do
			if interface(value) then
				return transform(value)
			end
		end
		return value
	end,
	findBreakpoint = findBreakpoint,
}
