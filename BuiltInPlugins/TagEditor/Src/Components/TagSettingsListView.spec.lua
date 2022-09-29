local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local mockContext = require(Plugin.Src.Util.mockContext)

local join = Framework.Dash.join

local TagSettingsListView = require(script.Parent.TagSettingsListView)

return function()
	local function createTestElement(props: {}?)
		local componentProps: TagSettingsListView.Props = join({
			-- If there are any props required for this component, add defaults for them here
		}, props or {})

		return mockContext({
			TagSettingsListView = Roact.createElement(TagSettingsListView, componentProps)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly with optional props", function ()
		-- New Plugin Setup: Test each prop your component accepts.
		-- You can do this with one or many individual tests.
	end)
end
