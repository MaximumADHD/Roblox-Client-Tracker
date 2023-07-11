--!strict

--[[
	pretty print Vector3
]]

local function prettyPrintVector3(v: Vector3): string
	return string.format("%.2f, %.2f, %.2f", v.X, v.Y, v.Z)
end

return prettyPrintVector3
