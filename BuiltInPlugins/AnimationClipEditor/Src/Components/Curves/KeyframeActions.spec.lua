--!strict
return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local KeyframeActions = require(script.Parent.KeyframeActions)

	local function createTestKeyframeActions()
		return Roact.createElement(MockWrapper, {}, {
			Cubic = Roact.createElement(KeyframeActions, {}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestKeyframeActions()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
