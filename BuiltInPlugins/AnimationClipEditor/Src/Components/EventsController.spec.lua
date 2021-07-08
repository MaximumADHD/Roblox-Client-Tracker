return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local Constants = require(Plugin.Src.Util.Constants)
	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local EventsController = require(script.Parent.EventsController)

	local function createTestController()
		return Roact.createElement(MockWrapper, {}, {
			Controller = Roact.createElement(EventsController, {
				Active = true,
				StartFrame = 0,
				EndFrame = 30,
				TrackPadding = Constants.TRACK_PADDING_SMALL,
				AbsolutePosition = Vector2.new(),
				AbsoluteSize = Vector2.new(500, 22),
				AnimationData = {
					Events = {
						Keyframes = {},
						Data = {},
					},
				},
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestController()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestController()
		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()
		expect(frame.Track).to.be.ok()
		Roact.unmount(instance)
	end)
end
