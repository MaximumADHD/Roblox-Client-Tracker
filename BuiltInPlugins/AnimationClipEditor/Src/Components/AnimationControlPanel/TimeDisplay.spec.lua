return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local Constants = require(Plugin.Src.Util.Constants)
	local MockWrapper = require(Plugin.Src.Context.MockWrapper)
	local TimeDisplay = require(script.Parent.TimeDisplay)

	local function createTestTimeDisplay()
		return Roact.createElement(MockWrapper, {}, {
			-- Create a 1 second clip, set the Playhead at half length.
			TimeDisplay = Roact.createElement(TimeDisplay, {
				EndTick = Constants.TICK_FREQUENCY,
				Playhead = Constants.TICK_FREQUENCY / 2,
				EditingLength = Constants.TICK_FREQUENCY,
				FrameRate = Constants.DEFAULT_FRAMERATE,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTimeDisplay()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
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
