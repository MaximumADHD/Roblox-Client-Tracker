local Framework = script.Parent.Parent
local Dash = require(Framework.Parent.Dash)
local includes = Dash.includes

local function hasTag(tags: string?, element: string?): boolean
	return if tags and element then includes(tags:split(" "), element) else false
end

return hasTag
