return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)
	local TimeDisplay = require(script.Parent.TimeDisplay)

	local function createTestTimeDisplay()
		return Roact.createElement(MockWrapper, {}, {
			TimeDisplay = Roact.createElement(TimeDisplay, {
				EndFrame = 30,
				Playhead = 15,
				EditingLength = 30,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTimeDisplay()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTimeDisplay(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.CurrentFrameBox).to.be.ok()
		expect(frame.DividerLabel).to.be.ok()
		expect(frame.EndFrameBox).to.be.ok()

		Roact.unmount(instance)
	end)
end