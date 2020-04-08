--[[
	Changes size
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(size)
	assert(type(size) == "table", ("Expected size to be a table, received %s"):format(type(size)))

	local xn = tonumber(size.X)
	local yn = tonumber(size.Y)
	local zn = tonumber(size.Z)

	assert(xn, ("Expected size.X to be a number, received %s"):format(type(size.x)))
	assert(yn, ("Expected size.Y to be a number, received %s"):format(type(size.y)))
	assert(zn, ("Expected size.Z to be a number, received %s"):format(type(size.z)))

	return {
		size = {
			X = xn,
			Y = yn,
			Z = zn,
		},
	}
end)
