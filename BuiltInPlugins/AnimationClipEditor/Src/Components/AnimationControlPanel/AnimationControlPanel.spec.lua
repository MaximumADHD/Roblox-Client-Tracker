return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)
	local AnimationControlPanel = require(script.Parent.AnimationControlPanel)

	local function createTestControlPanel()
		return Roact.createElement(MockWrapper, {}, {
			AnimationControlPanel = Roact.createElement(AnimationControlPanel, {
				IsPlaying = false,
				StartFrame = 0,
				EndFrame = 10,
				Playhead = 0,
				EditingLength = 10,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestControlPanel()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestControlPanel(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.AnimationClipDropdown).to.be.ok()
		expect(frame.MediaControls).to.be.ok()
		expect(frame.TimeDisplay).to.be.ok()

		Roact.unmount(instance)
	end)
end