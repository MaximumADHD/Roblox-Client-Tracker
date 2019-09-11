return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local Templates = require(Plugin.Src.Util.Templates)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local EditorController = require(script.Parent.EditorController)

	local function createTestController(animationData)
		return Roact.createElement(MockWrapper, {}, {
			Controller = Roact.createElement(EditorController, {
				Active = true,
				Size = UDim2.new(0, 1000, 0, 500),
				AnimationData = animationData,
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
		expect(frame.Layout).to.be.ok()
		expect(frame.TrackListAndControlContainer).to.be.ok()
		local trackListContainer = frame.TrackListAndControlContainer
		expect(trackListContainer.AnimationControlPanel).to.be.ok()
		expect(trackListContainer.EventsAndTracks).to.be.ok()
		expect(trackListContainer.EventsAndTracks.Layout).to.be.ok()
		expect(trackListContainer.EventsAndTracks.TrackList).to.be.ok()
		expect(frame.TrackListBorder).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render the track editor if AnimationData exists", function()
		local container = Instance.new("Folder")
		local element = createTestController(Templates.animationData())
		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame.TrackEditor).to.be.ok()
		expect(frame.SettingsAndVerticalScrollBar).to.be.ok()
		expect(frame.SettingsAndVerticalScrollBar.SettingsButton).to.be.ok()
		expect(frame.SettingsAndVerticalScrollBar.TrackScrollbar).to.be.ok()
		expect(frame.IgnoreLayout).to.be.ok()
		expect(frame.IgnoreLayout.TrackColors).to.be.ok()
		expect(frame:FindFirstChild("StartScreen")).never.to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render the start screen if AnimationData does not exist", function()
		local container = Instance.new("Folder")
		local element = createTestController()
		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame.StartScreen).to.be.ok()
		expect(frame:FindFirstChild("TrackEditor")).never.to.be.ok()
		Roact.unmount(instance)
	end)
end