--[[
	Roact inherit's React's concept of 'context' used for putting an object
	into the tree and retrieving it without passing it explicitly.

	This feature should be used sparingly; in most cases, you can use Rodux,
	which is implemented using context under the hood.

	Context does not update and is only passed when a component is initially
	constructed; you should use another mechanism to listen for changes if
	using context.
]]

local Common = script.Parent.Parent
local Roact = require(Common.Roact)

local ContextProvider = Roact.Component:extend("ContextProvider")

function ContextProvider:init()
	-- Set self._context to add values to the tree
	self._context = {
		someValue = 5
	}
end

function ContextProvider:render()
	-- Utility provided by Roact to pull exactly one child out of Children.
	return Roact.oneChild(self.props[Roact.Children])
end

local ContextReader = Roact.Component:extend("ContextReader")

function ContextReader:init()
	-- self._context contains all of the values from our ancestor components
	print("Context value of", self._context.someValue)
end

function ContextReader:render()
	-- No need to return anything
end

return function()
	local element = Roact.createElement(ContextProvider, {
	}, {
		SomeChild = Roact.createElement(ContextReader)
	})

	Roact.reify(element, nil, "SomeName")
end