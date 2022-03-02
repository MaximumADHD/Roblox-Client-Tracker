--[[
	Provides the given list of ContextItems to the list of children.

	NOTE:
	Items will be provided in the order of the ContextItems parameter.
	This means that if one ContextItem relies on a previous item, it should
	be put in the ContextItems list AFTER the item it relies on.

	Params:
		list<ContextItem> ContextItems = A list of ContextItems to provide to the plugin.
		list<Component> Children = The children to render with the given context.

	Example:
		local Localization = ContextServices.Localization
		local Theme = ContextServices.Theme

		local localization = Localization.new(...)
		local theme = Theme.new(...)

		function MyPlugin:render()
			return ContextServices.provide({
				localization, theme,
			}, {
				MyRootComponent = Roact.createElement(MyRootComponent),
			})
		end
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local Context = require(Framework.ContextServices.Context)
local Dash = require(Framework.packages.Dash)
local join = Dash.join
local collect = Dash.collect
local filter = Dash.filter
local forEach = Dash.forEach

local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

local MultipleProvider = Roact.PureComponent:extend("MultipleProvider")

if FFlagDevFrameworkUseCreateContext then
	function MultipleProvider:init(props)
		local items = props.ContextItems
		self.state = {
			count = 0
		}
		self.connections = {}
		-- Deduplicate context items passed twice
		-- e.g. provideMockContext merges the default items and additional items into a single list
		local keyToItem = collect(items, function(index, item)
			assert(item.Key,
				string.format("provide: item at %i was not a ContextItem.", index))
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
				value = value
			}, children)
			forEach(self.filteredItems, function(item)
				if item.getProvider then
					provider = item:getProvider({provider})
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
			self.connections[key] = signal:Connect(function(newValue)
				self:setState({
					[key] = newValue,
					count = self.state.count + 1
				})
			end)
		end
	end

	function MultipleProvider:render()
		return Roact.createElement(Context.Consumer, {
			render = self.onRender
		})
	end

	function MultipleProvider:willUnmount()
		for _, connection in pairs(self.connections) do
			connection:Disconnect()
		end
	end

else

	function MultipleProvider:render()
		local props = self.props
		local items = props.ContextItems

		local children = props[Roact.Children]
		local root = Roact.createFragment(children)

		for index = #items, 1, -1 do
			local item = items[index]

			if item then
				local createProvider = item.createProvider
				assert(createProvider and type(createProvider) == "function",
					string.format("provide: item at %i was not a ContextItem.", index))
				root = item:createProvider(root)
			end
		end

		return root
	end

end

local function provide(contextItems, children)
	assert(contextItems, "provide: Expected a ContextItems list to provide.")
	assert(children, "provide: Expected a table of children.")

	return Roact.createElement(MultipleProvider, {
		ContextItems = contextItems,
	}, children)
end

return provide
