-- ROBLOX upstream: no upstream
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

local exports = {}

local function toMatchInlineSnapshot(self, received, expected: string)
	local function serialize(received)
		if typeof(received) == "string" then
			return received
		end

		if Array.isArray(received) then
			local response = ("Array [\n%s\n]"):format(Array.join(
				Array.map(received, function(val)
					return serialize(val)
				end),
				","
			))

			return response
		end

		error("toMatchInlineSnapshot does not support " .. typeof(received) .. ", please implement it yourself")
	end

	local function passes(received, expected: string)
		return serialize(received) == expected
	end

	return {
		pass = passes(received, expected),
		message = function()
			return "expected " .. expected .. " to equal " .. serialize(received)
		end,
	}
end

exports.toMatchInlineSnapshot = toMatchInlineSnapshot

return exports
