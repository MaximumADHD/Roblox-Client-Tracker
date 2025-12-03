local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)

local LayoutValuesContext = require(script.Parent.LayoutValuesContext)

local function layoutValuesProvider(props)
	return Roact.createElement(LayoutValuesContext.Provider, {
		value = props.layoutValues,
	}, Roact.oneChild(props[Roact.Children]))
end

local function withLayoutValues(callback)
	assert(type(callback) == "function", "Expect withLayoutValues callback to be a function.")
	return Roact.createElement(LayoutValuesContext.Consumer, {
		render = callback,
	})
end

return {
	Provider = layoutValuesProvider,
	Consumer = LayoutValuesContext.Consumer,
	WithLayoutValues = withLayoutValues,
}
