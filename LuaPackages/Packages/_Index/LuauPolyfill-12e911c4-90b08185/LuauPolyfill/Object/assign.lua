--!strict
local None = require(script.Parent.None)
type Object = { [any]: any }

--[[
	Merges values from zero or more tables onto a target table. If a value is
	set to None, it will instead be removed from the table.

	This function is identical in functionality to JavaScript's Object.assign.
]]
-- Luau TODO: no way to strongly type this accurately, it doesn't eliminate deleted keys of T, and Luau won't do intersections of type packs: <T, ...U>(T, ...: ...U): T & ...U
local function assign<T, U, V, W>(target: T, source0: U?, source1: V?, source2: W?, ...): T & U & V & W
	if source0 ~= nil and typeof(source0 :: any) == "table" then
		for key, value in pairs(source0 :: any) do
			if value == None then
				(target :: any)[key] = nil
			else
				(target :: any)[key] = value
			end
		end
	end

	if source1 ~= nil and typeof(source1 :: any) == "table" then
		for key, value in pairs(source1 :: any) do
			if value == None then
				(target :: any)[key] = nil
			else
				(target :: any)[key] = value
			end
		end
	end

	if source2 ~= nil and typeof(source2 :: any) == "table" then
		for key, value in pairs(source2 :: any) do
			if value == None then
				(target :: any)[key] = nil
			else
				(target :: any)[key] = value
			end
		end
	end

	for index = 1, select("#", ...) do
		local rest = select(index, ...)

		if rest ~= nil and typeof(rest) == "table" then
			for key, value in pairs(rest) do
				if value == None then
					(target :: any)[key] = nil
				else
					(target :: any)[key] = value
				end
			end
		end
	end

	-- TODO? we can add & Object to this, if needed by real-world code, once CLI-49825 is fixed
	return (target :: any) :: T & U & V & W
end

return assign
