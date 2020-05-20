-- Rounds a number to 3 decimal places and converts it to a string for display

local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Math = require(Plugin.Framework.Util.Math)

return function(num)
	return tostring(Math.round(num, 3))
end