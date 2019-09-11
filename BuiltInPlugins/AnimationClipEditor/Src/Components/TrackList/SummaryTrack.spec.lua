return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local SummaryTrack = require(script.Parent.SummaryTrack)

	local function createTestSummaryTrack(unusedTracks)
		return Roact.createElement(MockWrapper, {}, {
			SummaryTrack = Roact.createElement(SummaryTrack, {
				Name = "TestTrack",
				UnusedTracks = unusedTracks,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestSummaryTrack()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestSummaryTrack(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.NameLabel).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render an AddTrackButton when there are unused tracks", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestSummaryTrack({
			{
				Name = "UnusedTrack",
				Instance = "Root",
			}
		}), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.NameLabel).to.be.ok()
		expect(frame.AddTrackButton).to.be.ok()

		Roact.unmount(instance)
	end)
end
