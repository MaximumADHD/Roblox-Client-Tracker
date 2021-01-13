return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local TimelineTick = require(script.Parent.TimelineTick)

	local function createTestTimelineTick()
		return Roact.createElement(MockWrapper, {}, {
			checkBox = Roact.createElement(TimelineTick, {
				Time = 0.5,
				TextSize = 15,
				Position = UDim2.new(),
				Height = 24,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTimelineTick()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTimelineTick(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame.TimeLabel).to.be.ok()
		expect(frame.TickLine).to.be.ok()

		Roact.unmount(instance)
	end)
end