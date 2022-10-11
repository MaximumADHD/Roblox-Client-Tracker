return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local ChangeFPSPrompt = require(script.Parent.ChangeFPSPrompt)

	local function createTestChangeFPSPrompt(container)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			ChangeFPSPrompt = Roact.createElement(ChangeFPSPrompt),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestChangeFPSPrompt()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestChangeFPSPrompt(container), container)
		local frame = container:FindFirstChildOfClass("ScreenGui")

		expect(frame).to.be.ok()

		Roact.unmount(instance)
	end)
end
