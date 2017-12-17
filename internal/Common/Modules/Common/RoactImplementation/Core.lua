--[[
	Provides methods and data core to the implementation of the Roact
	Virtual DOM.

	This module doesn't interact with the Roblox hierarchy and should have no
	dependencies on other Roact modules.
]]

local Common = script.Parent.Parent

local Symbol = require(Common.Symbol)

local Core = {}

-- Marker used to specify children of a node.
Core.Children = Symbol.named("Children")

-- Marker used to specify a callback to receive the underlying Roblox object.
Core.Ref = Symbol.named("Ref")

-- Marker used to specify that a component is a Roact Portal.
Core.Portal = Symbol.named("Portal")

--[[
	Index into 'Event' to get a prop key for attaching to an event on a
	Roblox Instance.

	Example:

		Roact.createElement("TextButton", {
			Text = "Hello, world!",

			[Roact.Event.MouseButton1Click] = function(rbx)
				print("Clicked", rbx)
			end
		})
]]
Core.Event = {}

local eventMetatable = {
	__tostring = function(self)
		return ("Event(%s)"):format(self.type)
	end
}

setmetatable(Core.Event, {
	__index = function(self, eventName)
		local event = {
			type = "event",
			name = eventName
		}

		setmetatable(event, eventMetatable)

		Core.Event[eventName] = event

		return event
	end
})

--[[
	Utility to retrieve one child out the children passed to a component.

	If passed nil or an empty table, will return nil.

	Throws an error if passed more than one child, but can be passed zero.
]]
function Core.oneChild(children)
	if not children then
		return
	end

	local key, child = next(children)

	if not child then
		return
	end

	local after = next(children, key)

	if after then
		error("Expected at most child, had more than one child.", 2)
	end

	return child
end

--[[
	Is this element backed by a Roblox instance directly?
]]
function Core.isPrimitiveElement(element)
	if type(element) ~= "table" then
		return false
	end

	return type(element.type) == "string"
end

--[[
	Is this element defined by a pure function?
]]
function Core.isFunctionalElement(element)
	if type(element) ~= "table" then
		return false
	end

	return type(element.type) == "function"
end

--[[
	Is this element defined by a component class?
]]
function Core.isStatefulElement(element)
	if type(element) ~= "table" then
		return false
	end

	return type(element.type) == "table"
end

--[[
	Is this element a Portal?
]]
function Core.isPortal(element)
	if type(element) ~= "table" then
		return false
	end

	return element.type == Core.Portal
end

--[[
	Creates a new Roact element of the given type.

	Does not create any concrete objects.
]]
function Core.createElement(elementType, props, children)
	if elementType == nil then
		error(("Expected elementType as an argument to createElement!"), 2)
	end

	props = props or {}

	if children then
		if props[Core.Children] then
			warn("props[Children] was defined but was overriden by third parameter to createElement!")
		end

		props[Core.Children] = children
	end

	return {
		type = elementType,
		props = props,
	}
end

return Core