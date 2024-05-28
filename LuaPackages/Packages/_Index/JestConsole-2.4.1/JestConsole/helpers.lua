-- ROBLOX NOTE upstream: Added some utilities to support keeping the upstream code consistent
type unknown = any

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local inspect = LuauPolyfill.util.inspect
type Array<T> = LuauPolyfill.Array<T>

local typesModule = require(CurrentModule.types)
type InspectOptions = typesModule.InspectOptions

function concatRestArgs(restArgs: Array<unknown>)
	local restStr = ""
	if #restArgs > 0 then
		restStr = " " .. table.concat(restArgs, " ")
	end
	return restStr
end

function getFormattedValue(value: unknown, inspectOptions: InspectOptions?)
	return if type(value) == "string" then value else inspect(value, inspectOptions)
end

function format(...)
	return formatter(nil, ...)
end

function formatWithOptions(inspectOptions: InspectOptions, fmt: unknown, ...)
	return formatter(inspectOptions, fmt, ...)
end

function formatter(inspectOptions: InspectOptions?, fmt: unknown, ...)
	local args = { ... }

	local fmtArgs = {}
	local extraArgs = {}

	if type(fmt) == "string" then
		local _, c = fmt:gsub("%%[sdj%%]", "")

		for key, value in pairs(args) do
			local formattedValue = getFormattedValue(value, inspectOptions)
			if key <= c then
				table.insert(fmtArgs, formattedValue)
			else
				table.insert(extraArgs, formattedValue)
			end
		end
	else
		fmt = inspect(fmt, inspectOptions)
		for _, value in pairs(args) do
			table.insert(extraArgs, getFormattedValue(value, inspectOptions))
		end
	end

	return string.format(fmt, table.unpack(fmtArgs)) .. concatRestArgs(extraArgs)
end

return {
	format = format,
	formatWithOptions = formatWithOptions,
	concatRestArgs = concatRestArgs,
}
