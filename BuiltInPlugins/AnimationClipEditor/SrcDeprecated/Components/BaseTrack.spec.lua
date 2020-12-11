return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)

	local BaseTrack = require(script.Parent.BaseTrack)

	local function createTestBaseTrack(children)
		return Roact.createElement(MockWrapper, {}, {
			Track = Roact.createElement(BaseTrack, {
				Size = UDim2.new(0, 100, 0, 24),
				Width = 100,
				LayoutOrder = 0,
				ZIndex = 0,
			}, children)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestBaseTrack()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestBaseTrack(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.KeyframeDisplayArea).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render children inside KeyframeDisplayArea", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestBaseTrack({
			ChildFrame = Roact.createElement("Frame"),
		}), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.KeyframeDisplayArea).to.be.ok()
		expect(frame.KeyframeDisplayArea.ChildFrame).to.be.ok()

		Roact.unmount(instance)
	end)
end
