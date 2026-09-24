--[[
	A base ContextItem used to create new items which will go into the React.Context provided down the Roact tree.

	To create a simple context item that passes a value through the tree use:
	local MyItem = ContextItem:createSimple("MyItem")

	To allow this item to update, pass an options.getChangedSignal function which returns a signal.
	Any consuming components will re-render whenever the signal is fired.

	For a more complex context item class that you can add additional methods to use:
	local MyItem = ContextItem:extend("MyItem")

	Override the getSignal function to return a signal that prompts re-render.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Util = require(Framework.Util)
local React = Util.React
local Symbol = Util.Symbol
local Signal = Util.Signal

local contextItemMetatable = {}

function contextItemMetatable:__tostring()
	return self.__name
end

local ContextItem = {}
ContextItem.__index = ContextItem
setmetatable(ContextItem, contextItemMetatable)

--[[
	A method called to create a new ContextItem class.
]]
function ContextItem:extend(name)
	assert(typeof(name) == "string", "ContextItem class name must be a string")

	local class = table.clone(self)
	class.__index = class
	class.__name = name
	class.Key = Symbol.named(name)

	if React ~= "" then
		class.Context = React.createContext({})

		function class.use()
			return React.useContext(class.Context)
		end
	end

	setmetatable(class, contextItemMetatable)

	return class
end

if React ~= "" then
	function ContextItem:getProvider(children)
		return React.createElement(self.Context.Provider, {
			value = self,
		}, children)
	end
end

--[[
	Specifies a signal which will fire when any consumers should be re-rendered.
]]
function ContextItem:getSignal()
	return nil
end

--[[
	Cleans up the context item (e.g. disconnecting from events).
	Optional override
]]
function ContextItem:destroy() end

function ContextItem:__tostring()
	return tostring(self.__name)
end

--[[
	Creates a simple ContextItem that wraps the object passed to its constructor.
	Provides :get() method to get the wrapped object in components that need it.

	Required Parameters:
		string name: Name of the Context item

	Optional Parameters:
		table options: A table of optional parameters
			callback getValues: Used to get return value of ContextItem:get().
				If not provided, then ContextItem:get() just returns the object this context item wraps.
			callback getChangedSignal: () -> Signal?
				Should return a signal for this context item to connect to. When that signal fires, this context item updates.
				If not provided, then the context item will be static
			callback verifyNewItem: A callback fired when the simple ContextItem is being created for verification purposes.
			callback destroy: Optional function to destroy the wrapped object
]]
function ContextItem:createSimple(name, options)
	assert(name, "ContextItem:createSimple expects a name parameter")
	assert(typeof(name) == "string", "ContextItem:createSimple expects the name parameter to be a string")
	if options then
		assert(
			typeof(options) == "table",
			"ContextItem:createSimple expects the options parameter to be either nil or a table"
		)
	end
	local SimpleContextItem = ContextItem:extend(name)

	function SimpleContextItem.new(obj)
		if options and options.verifyNewItem then
			options.verifyNewItem(obj)
		end
		local self = setmetatable({
			_obj = obj,
		}, SimpleContextItem)

		local changedSignal = options and options.getChangedSignal and options.getChangedSignal(obj)
		if changedSignal then
			self._updateSignal = Signal.new()
			self._connection = changedSignal:Connect(function()
				self._updateSignal:Fire(self)
			end)
		end

		return self
	end

	function SimpleContextItem:destroy()
		if self._connection then
			self._connection:Disconnect()
			self._connection = nil
		end

		if options and options.destroy then
			options.destroy(self._obj)
		end
		self._obj = nil
	end

	function SimpleContextItem:getSignal()
		return self._updateSignal
	end

	function SimpleContextItem:getConsumerItem()
		return table.clone(self)
	end

	function SimpleContextItem:get()
		return options and options.getValues and options.getValues(self._obj) or self._obj
	end

	return SimpleContextItem
end

return ContextItem
