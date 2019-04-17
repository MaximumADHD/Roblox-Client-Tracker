return function()
	local Library = script.Parent.Parent.Parent
	local Roact = require(Library.Parent.Roact)

	local MockWrapper = require(Library.MockWrapper)

	local workspace = game:GetService("Workspace")

	local Timeline = require(script.Parent.Timeline)

	local function createTestTimeline(startFrame, endFrame, majorInterval, minorInterval)
		return Roact.createElement(MockWrapper, {}, {
			timeline = Roact.createElement(Timeline, {
				StartFrame = startFrame,
				EndFrame = endFrame,
				MajorInterval = majorInterval,
				MinorInterval = minorInterval,
				Height = 24,
				Width = 1000,
				OnInputBegan = function()
				end,
				OnInputChanged = function()
				end,
				OnInputEnded = function()
				end,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTimeline(0, 30, 15, 15)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = workspace
		local instance = Roact.mount(createTestTimeline(32, 65, 15, 3), container)
		local frame = container.Frame

		expect(#frame:GetChildren()).to.never.equal(0)
		for _, tick in ipairs(frame:GetChildren()) do
			expect(tick).to.be.ok()
			expect(tick.TimeLabel).to.be.ok()
			expect(tick.TickLine).to.be.ok()
		end

		Roact.unmount(instance)
	end)

	it("should not error if interval is 0", function ()
		local container = workspace
		local instance = Roact.mount(createTestTimeline(0, 1, 0, 0), container)
		Roact.unmount(instance)
	end)

	it("should not error if time range is 0", function ()
		local container = workspace
		local instance = Roact.mount(createTestTimeline(0, 0, 0, 0), container)
		Roact.unmount(instance)
	end)

	it("first tick should be next possible interval if startTime does not fall on it", function ()
		local container = workspace
		local instance = Roact.mount(createTestTimeline(35, 102, 30, 15), container)
		local frame = container.Frame

		expect(frame:FindFirstChild("1").TimeLabel.Text).to.equal("1.5")

		Roact.unmount(instance)
	end)

	it("first tick should always be visible if it is time 0", function ()
		local container = workspace
		local instance = Roact.mount(createTestTimeline(0, 102, 30, 15), container)
		local frame = container.Frame

		expect(frame:FindFirstChild("1").TimeLabel.Text).to.equal("0")
		expect(frame:FindFirstChild("1").TimeLabel.Visible).to.equal(true)

		Roact.unmount(instance)
	end)
end