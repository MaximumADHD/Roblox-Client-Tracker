return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)
	local MediaControls = require(script.Parent.MediaControls)

	local GetFFlagMoarMediaControls = require(Plugin.LuaFlags.GetFFlagMoarMediaControls)

	local function createTestMediaControls()
		return Roact.createElement(MockWrapper, {}, {
			MediaControls = Roact.createElement(MediaControls, {
				isPlaying = false,
				isLooping = false,
				layoutOrder = 0,
				SkipBackward = function () end,
				SkipForward = function () end,
				TogglePlay = not GetFFlagMoarMediaControls() and function () end or nil,
				ToggleLooping = function () end,
				GoToFirstFrame = GetFFlagMoarMediaControls() and function () end or nil,
				GoToLastFrame = GetFFlagMoarMediaControls() and function () end or nil,
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
		if GetFFlagMoarMediaControls() then
			expect(frame.GoToFirstFrame).to.be.ok()
		end
		expect(frame.SkipBackward).to.be.ok()
		if GetFFlagMoarMediaControls() then
			expect(frame.Reverse).to.be.ok()
			expect(frame.Pause).to.be.ok()
			expect(frame.Play).to.be.ok()
		else
			expect(frame.PlayPause).to.be.ok()
		end
		expect(frame.SkipForward).to.be.ok()
		if GetFFlagMoarMediaControls() then
			expect(frame.GoToLastFrame).to.be.ok()
			end
		expect(frame.Loop).to.be.ok()

		Roact.unmount(instance)
	end)
end