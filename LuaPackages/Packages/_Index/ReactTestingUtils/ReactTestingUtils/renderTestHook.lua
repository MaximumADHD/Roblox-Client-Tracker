local ReactTestingUtils = script:FindFirstAncestor("ReactTestingUtils")

local Packages = ReactTestingUtils.Parent
local React = require(Packages.React)
local ReactTestingLibrary = require(Packages.ReactTestingLibrary)

local render = ReactTestingLibrary.render

type Options = {
	wrapper: React.ComponentType<{
		children: React.ReactNode,
	}>,
}

local function renderTestHook<T...>(hook: () -> T..., options: Options?): () -> T...
	local result = React.createRef()

	local function TestComponent()
		result.current = table.pack(hook())
	end

	render(React.createElement(TestComponent), {
		wrapper = if options then options.wrapper else nil,
	})

	return function()
		return table.unpack(result.current)
	end
end

return renderTestHook
