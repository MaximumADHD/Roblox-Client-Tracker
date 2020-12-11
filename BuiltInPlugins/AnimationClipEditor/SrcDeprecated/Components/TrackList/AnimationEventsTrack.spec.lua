return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)
	local AnimationEventsTrack = require(script.Parent.AnimationEventsTrack)

	local function createTestAnimationEventsTrack()
		return Roact.createElement(MockWrapper, {}, {
			AnimationEventsTrack = Roact.createElement(AnimationEventsTrack, {
				Indent = 0,
				Name = "TestTrack",
				DoShade = false,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestAnimationEventsTrack()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestAnimationEventsTrack(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.TitleLabel).to.be.ok()
		expect(frame.AddEvent).to.be.ok()
		expect(frame.AddEvent.EventMarker).to.be.ok()
		expect(frame.AddEvent.EventBorder).to.be.ok()

		Roact.unmount(instance)
	end)
end
