--[[
	'Refs' are a concept that let you break out of the Roact paradigm and access
	Roblox instances directly.

	Pass a callback as a prop using the key [Roact.Ref] to receive
	the reference.

	When the object is destructed or the ref is replaced in an update, the ref
	callback will be passed nil.

	This feature is intended to be an escape hatch; it should not be necessary
	for the majority of work using Roact. In many cases, code using refs can be
	isolated and exposed with a friendlier API.
]]

local Common = script.Parent.Parent
local Roact = require(Common.Roact)

return function()
	local currentFrame

	local element = Roact.createElement("Frame", {
		[Roact.Ref] = function(rbx)
			-- All properties are already set and the object has been parented
			currentFrame = rbx
		end
	})

	Roact.reify(element, nil, "SomeName")

	print("Have object", currentFrame)
end