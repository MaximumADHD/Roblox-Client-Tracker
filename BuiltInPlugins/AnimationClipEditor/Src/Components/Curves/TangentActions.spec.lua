--!strict
return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local TangentActions = require(script.Parent.TangentActions)

	local function createTestTangentActions()
		return Roact.createElement(MockWrapper, {}, {
			Cubic = Roact.createElement(TangentActions, {}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTangentActions()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
