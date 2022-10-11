local Number = require(script.Parent.Parent.Parent.LuauPolyfill).Number
local NULL = require(script.Parent.null)

local function deepContains(a: any, b: any): (boolean, string?)
	if typeof(a) ~= typeof(b) then
		local message = ("{1}: value of type '%s'\n{2}: value of type '%s'"):format(
			typeof(a),
			typeof(b)
		)
		return false, message
	end

	if Number.isNaN(a) and Number.isNaN(b) then
		return true
	end

	if a == b then
		return true
	end

	if a == NULL or b == NULL or typeof(a) ~= "table" then
		return false, string.format("{1} (%s) ~= {2} (%s)", tostring(a), tostring(b))
	end

	for key, value in pairs(b) do
		local success, innerMessage = deepContains(a[key], value)
		if not success then
			-- ROBLOX FIXME Luau: Luau should infer the return as (false, string) | (true, nil), and then know `not success` means innerMessage is string
			local message = (innerMessage :: string)
				:gsub("{1}", ("{1}[%s]"):format(tostring(key)))
				:gsub("{2}", ("{2}[%s]"):format(tostring(key)))

			return false, message
		end
	end
	return true
end

return deepContains
