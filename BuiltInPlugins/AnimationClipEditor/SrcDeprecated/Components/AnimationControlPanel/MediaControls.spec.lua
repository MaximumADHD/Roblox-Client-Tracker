return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)
	local MediaControls = require(script.Parent.MediaControls)

	local function createTestMediaControls()
		return Roact.createElement(MockWrapper, {}, {
			MediaControls = Roact.createElement(MediaControls, {
				isPlaying = false,
				isLooping = false,
				layoutOrder = 0,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestMediaControls()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestMediaControls(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.SkipBackward).to.be.ok()
		expect(frame.PlayPause).to.be.ok()
		expect(frame.SkipForward).to.be.ok()
		expect(frame.Loop).to.be.ok()

		Roact.unmount(instance)
	end)
end