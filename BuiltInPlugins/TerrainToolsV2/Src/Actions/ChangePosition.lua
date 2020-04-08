--[[
	Changes position
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(position)
	assert(type(position) == "table", ("Expected position to be a table, received %s"):format(type(position)))

	local xn = tonumber(position.X)
	local yn = tonumber(position.Y)
	local zn = tonumber(position.Z)

	assert(xn, ("Expected position.X to be a number, received %s"):format(type(position.x)))
	assert(yn, ("Expected position.Y to be a number, received %s"):format(type(position.y)))
	assert(zn, ("Expected position.Z to be a number, received %s"):format(type(position.z)))

	return {
		position = {
			X = xn,
			Y = yn,
			Z = zn,
		},
	}
end)
