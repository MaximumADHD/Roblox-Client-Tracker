return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)
	local StartScreen = require(script.Parent.StartScreen)

	local function createTestStartScreen(container, props)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			StartScreen = Roact.createElement(StartScreen, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestStartScreen()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestStartScreen(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.SelectScreen).to.be.ok()

		Roact.unmount(instance)
	end)
end