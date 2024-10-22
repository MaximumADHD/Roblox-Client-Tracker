local Dash = script.Parent
local Types = require(Dash.Types)

type AllHandler = (any, any) -> boolean

local defaultHandler = function(value)
	return value
end

local function all(input: Types.Table, handler: AllHandler?): boolean
	local allHandler = handler or defaultHandler
	for key, value in input do
		if not allHandler(value, key) then
			return false
		end
	end
	return true
end

return all
