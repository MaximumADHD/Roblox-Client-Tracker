local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local join = Framework.Dash.join

local TopBar = require(script.Parent)

return function()
	local function createTestElement(props: {}?)
		local topBarProps: TopBar.Props = join({
			OpenPrompt = function() end,
		}, props or {})

		return mockContext({
			TopBar = Roact.createElement(TopBar, topBarProps)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
