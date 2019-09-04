-- Taken from Roact.Symbol and modified to produce exact string names
-- to allow for serialization/pathing.

return function (name)
	assert(type(name) == "string", "Symbols must be created using a string name!")

	local self = newproxy(true)

	-- Unlike Symbols in Roact, we need the exact names.
	getmetatable(self).__tostring = function()
		return name
	end

	return self
end
