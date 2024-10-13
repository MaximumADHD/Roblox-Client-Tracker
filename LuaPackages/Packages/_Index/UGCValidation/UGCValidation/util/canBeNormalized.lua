--!strict

--[[
	can the vector be normalized?
]]

local root = script.Parent.Parent

local floatEquals = require(root.util.floatEquals)

local function canBeNormalized(vect: Vector3): boolean
	return (not floatEquals(vect.X, 0)) or (not floatEquals(vect.Y, 0)) or (not floatEquals(vect.Z, 0))
end

return canBeNormalized
