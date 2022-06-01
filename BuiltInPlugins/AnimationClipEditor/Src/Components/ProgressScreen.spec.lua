return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)
	local ProgressScreen = require(script.Parent.ProgressScreen)

	local function createTestProgressScreen()
		return Roact.createElement(MockWrapper, {}, {
			ProgressScreen = Roact.createElement(ProgressScreen, {
				Progress = 0.0,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestProgressScreen()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
