--[[
	Provides the given list of ContextItems to the list of children.

	NOTE:
	ContextItems can not consume each other from the same provide call.
	Instead nest any consumer in its own provide call.

	Params:
		list<ContextItem> ContextItems = A list of ContextItems to provide to the plugin.
		list<Component> Children = The children to render with the given context.

	Example:
		local Localization = ContextServices.Localization
		local Stylizer = ContextServices.Stylizer

		local localization = Localization.new(...)
		local theme = Stylizer.new(...)

		function MyPlugin:render()
			return ContextServices.provide({
				localization,
				theme,
			}, {
				MyRootComponent = Roact.createElement(MyRootComponent),
			})
		end
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local Context = require(Framework.UI.ContextServices.Context)
local Dash = require(Framework.Parent.Dash)
local iterable = Dash.iterable
local join = Dash.join
local collect = Dash.collect
local filter = Dash.filter
local forEach = Dash.forEach

local insert = table.insert

local MultipleProvider = Roact.PureComponent:extend("MultipleProvider")

function MultipleProvider:init(props)
	local iterator = iterable(props.ContextItems)
	local items = {}
	local originalKeys = {}
	for key, item in iterator do
		insert(items, item)
		originalKeys[#items] = key
	end
	self.state = {
		count = 0,
	}
	self.connections = {}
	-- Deduplicate context items passed twice
	-- e.g. provideMockContext merges the default items and additional items into a single list
	local keyToItem = collect(items, function(index: number, item)
		assert(item.Key, string.format("provide: item at %s was not a ContextItem.", tostring(originalKeys[index])))
		return item.Key, item
	end)
	-- Filter out items which are later overwritten
	self.filteredItems = filter(items, function(item)
		return keyToItem[item.Key] == item
	end)
	forEach(self.filteredItems, function(item)
		local key = item.Key
		self.state[key] = item
	end)
	self.onRender = function(upstreamContext)
		local props = self.props
		local children = props[Roact.Children]
		local value = join(upstreamContext, self.state)
		local provider = Roact.createElement(Context.Provider, {
			key = "Provider",
			value = value,
		}, children)
		forEach(self.filteredItems, function(item)
			if props.Roact17 or (not props.Roact17 and item.getProvider) then
				provider = item:getProvider({ provider })
				if provider.key == nil then
					provider.key = item.Key
				end
			end
		end)
		return provider
	end
end

function MultipleProvider:didMount()
	forEach(self.filteredItems, function(item)
		local key = item.Key
		self.state[key] = item
		self:addConnection(key, item)
	end)
end

function MultipleProvider:addConnection(key, item)
	local signal = item:getSignal()
	if signal then
		self.connections[key] = signal:Connect(function(_)
			self:setState({
				count = self.state.count + 1,
			})
		end)
	end
end

function MultipleProvider:render()
	return Roact.createElement(Context.Consumer, {
		render = self.onRender,
	})
end

function MultipleProvider:willUnmount()
	for _, connection in pairs(self.connections) do
		connection:Disconnect()
	end
end

-- Setting roact17 to true allows for the usage of context items as hooks
local function provide(contextItems, children, roact17)
	assert(contextItems, "provide: Expected a ContextItems list to provide.")
	assert(children, "provide: Expected a table of children.")

	return Roact.createElement(MultipleProvider, {
		ContextItems = contextItems,
		Roact17 = roact17,
	}, children)
end

return provide
