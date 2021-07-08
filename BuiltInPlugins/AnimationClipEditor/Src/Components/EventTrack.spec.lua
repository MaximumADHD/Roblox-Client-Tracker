return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local EventTrack = require(script.Parent.EventTrack)

	local GetFFlagRealtimeChanges = require(Plugin.LuaFlags.GetFFlagRealtimeChanges)

	local sampleEvents = {
		Keyframes = {1, 2, 5, 6},
		Data = {
			[1] = {},
			[2] = {},
			[5] = {},
			[6] = {},
		},
	}
	local testSelectedEvents = {1, 2}
	local testPreviewEvents = {1, 2}

	local function createTestEventTrack(selectedEvents, previewEvents)
		return Roact.createElement(MockWrapper, {}, {
			Track = Roact.createElement(EventTrack, {
				Size = UDim2.new(0, 1000, 0, 24),
				Events = sampleEvents,
				SelectedEvents = selectedEvents or {},
				PreviewEvents = previewEvents,
				LayoutOrder = 0,
				Width = 1000,
				StartFrame = 0,
				EndFrame = 26,
				ZIndex = 0,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestEventTrack()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestEventTrack(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.KeyframeDisplayArea).to.be.ok()
		for _, child in ipairs(frame.KeyframeDisplayArea:GetChildren()) do
			expect(child).to.be.ok()
		end

		Roact.unmount(instance)
	end)

	it("should have proper number of events", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestEventTrack(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(#frame.KeyframeDisplayArea:GetChildren()).to.be.equal(4)

		Roact.unmount(instance)
	end)

	it("should not render selected events when PreviewEvents exists", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestEventTrack(testSelectedEvents, {}), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(#frame.KeyframeDisplayArea:GetChildren()).to.equal(2)

		Roact.unmount(instance)
	end)

	if not GetFFlagRealtimeChanges() then
		-- Realtime changes have removed the PreviewKeyframes
		it("should render Preview events from this track", function()
			local container = Instance.new("Folder")
			local instance = Roact.mount(createTestEventTrack(testSelectedEvents, testPreviewEvents), container)
			local frame = container:FindFirstChildOfClass("Frame")

			expect(#frame.KeyframeDisplayArea:GetChildren()).to.equal(4)

			Roact.unmount(instance)
		end)
	end
end
