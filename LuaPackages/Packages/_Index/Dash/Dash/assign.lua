local Dash = script.Parent
local None = require(Dash.None)
local Types = require(Dash.Types)
local forEach = require(Dash.forEach)
local forEachArgs = require(Dash.forEachArgs)

--[=[
	Adds new key/value pairs to the _target_ table from subsequent table arguments in left-to-right order.

	The `None` symbol can be used to remove existing elements in _target_. `nil` or `None` arguments are skipped.

	@param target The table to assign into.
	@param ... One or more tables whose entries will be assigned to _target_.
	@return The mutated _target_ table.

	@example
	```luau
		local characters = {
			Frodo = {
				name = "Frodo Baggins",
				team = "blue"
			},
			Boromir = {
				score = 5
			}
		}
		local otherCharacters = {
			Frodo = {
				team = "red",
				score = 10
			},
			Bilbo = {
				team = "yellow",
			},
			Boromir = {
				score = {1, 2, 3}
			}
		}
		local result = assign(characters, otherCharacters)
		print(result) --> {
			Frodo = {
				team = "red",
				score = 10
			},
			Bilbo = {
				team = "yellow"
			},
			Boromir = {
				score = {1, 2, 3}
			}
		}
	```
]=]
local function assign(target: {}, ...: {}?): Types.Table
	-- Iterate through the varags in order
	forEachArgs(function(input: {}?)
		-- Ignore items which are not defined
		if input == nil or input == None then
			return
		else
			-- Iterate through each key of the input and assign to target at the same key
			forEach(input, function(value, key)
				if value == None then
					target[key] = nil
				else
					target[key] = value
				end
			end)
		end
	end, ...)
	return target
end

return assign
