return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local Timeline = require(script.Parent.Timeline)

	local function createTestTimeline(startTick, endTick, majorInterval, minorInterval, showAsTime)
		return Roact.createElement(MockWrapper, {}, {
			timeline = Roact.createElement(Timeline, {
				StartTick = startTick,
				EndTick = endTick,
				LastTick = endTick,
				MajorInterval = majorInterval,
				MinorInterval = minorInterval,
				Height = 24,
				Width = 1000,
				ShowAsTime = showAsTime,
				OnInputBegan = function() end,
				OnInputChanged = function() end,
				OnInputEnded = function() end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTimeline(0, 30, 15, 15, true)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTimeline(32, 65, 15, 3, true), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame.Ticks).to.be.ok()
		local ticks = frame.Ticks
		expect(#ticks:GetChildren()).to.never.equal(0)
		for _, tck in ipairs(ticks:GetChildren()) do
			expect(tck).to.be.ok()
			expect(tck.TimeLabel).to.be.ok()
			expect(tck.TickLine).to.be.ok()
		end

		Roact.unmount(instance)
	end)

	it("should not error if interval is 0", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTimeline(0, 1, 0, 0, true), container)
		Roact.unmount(instance)
	end)

	it("should not error if time range is 0", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTimeline(0, 0, 0, 0, true), container)
		Roact.unmount(instance)
	end)

	it("first tick should be next possible interval if startTime does not fall on it", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTimeline(35, 102, 30, 15, true), container)
		local ticks = container:FindFirstChildOfClass("Frame").Ticks

		expect(ticks:FindFirstChild("45").TimeLabel.Text).to.equal("1:15")

		Roact.unmount(instance)
	end)

	it("first tick should always be visible if it is time 0", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTimeline(0, 102, 30, 15, true), container)
		local ticks = container:FindFirstChildOfClass("Frame").Ticks

		expect(ticks:FindFirstChild("0").TimeLabel.Text).to.equal("0:00")
		expect(ticks:FindFirstChild("0").TimeLabel.Visible).to.equal(true)

		Roact.unmount(instance)
	end)

	it("displays frame number instead of time is showAsTime is false", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTimeline(35, 102, 30, 15, false), container)
		local ticks = container:FindFirstChildOfClass("Frame").Ticks

		expect(ticks:FindFirstChild("45").TimeLabel.Text).to.equal("45")

		Roact.unmount(instance)
	end)

	it("should render a separator at 0", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTimeline(0, 30, 0, 0, true), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame:FindFirstChild("FirstTick")).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should not render a separator if not starting at 0", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTimeline(15, 30, 0, 0, true), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame:FindFirstChild("FirstTick")).never.to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render a separator at the end of the animation", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTimeline(0, 30, 0, 0, true), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame:FindFirstChild("LastTick")).to.be.ok()

		Roact.unmount(instance)
	end)
end
