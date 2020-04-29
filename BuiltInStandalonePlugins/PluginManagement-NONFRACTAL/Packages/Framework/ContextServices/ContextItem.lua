--[[
	A base ContextItem used to create new items which will go into Context.
	Use the extend function to extend this class, then override the createProvider function.
	The createProvider function takes a root of a Roact tree, and creates a Provider
	above the root.

	After overriding createProvider and defining a "new" function, you can define
	any instance functions on the item you created. These functions can then
	be called from anywhere in the Roact tree after using mapToProps.

	Example:
		local MyItem = ContextItem:extend("MyItem")

		function MyItem.new(item)
			local self = {
				item = item,
			}

			setmetatable(self, MyItem)
			return self
		end

		function MyItem:createProvider(root)
			return Roact.createElement(Provider, {
				ContextItem = self,
			}, {root})
		end

		function MyItem:get()
			return self.item
		end
]]

local Framework = script.Parent.Parent
local Symbol = require(Framework.Util).Symbol

local contextItemMetatable = {}

function contextItemMetatable:__tostring()
	return self.__name
end

local ContextItem = {}
ContextItem.__index = ContextItem
setmetatable(ContextItem, contextItemMetatable)

local missingCreateProviderMessage = [[
The ContextItem %q is missing the `createProvider` method.
`createProvider` must be defined when creating a Context item!]]

--[[
	A method called to create a new ContextItem class.
]]
function ContextItem:extend(name)
	assert(typeof(name) == "string", "ContextItem class name must be a string")

	local class = {}

	for key, value in pairs(self) do
		class[key] = value
	end

	class.__index = class
	class.__name = name
	class.Key = Symbol.named(name)

	setmetatable(class, contextItemMetatable)

	return class
end

--[[
	Creates a Provider for this context item which will be used
	to provide it to context.

	Expected Parameters:
		Element root = The root element to place the provider above.

	Returns:
		A Provider element which provides self and passes {root} as its child.
]]
function ContextItem:createProvider()
	local message = missingCreateProviderMessage:format(
		tostring(self)
	)

	error(message, 0)
end

return ContextItem