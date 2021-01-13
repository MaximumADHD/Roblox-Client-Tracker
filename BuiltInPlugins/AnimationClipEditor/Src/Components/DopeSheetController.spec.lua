return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local DopeSheetController = require(script.Parent.DopeSheetController)

	local function createTestController()
		return Roact.createElement(MockWrapper, {}, {
			Controller = Roact.createElement(DopeSheetController, {
				Active = true,
				StartFrame = 0,
				EndFrame = 30,
				TopTrackIndex = 1,
				Tracks = {},
				AnimationData = {
					Instances = {
						Root = {
							Tracks = {},
						},
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
		expect(frame.Layout).to.be.ok()
		expect(frame.DopeSheetContainer).to.be.ok()
		expect(frame.DopeSheetContainer.DopeSheet).to.be.ok()
		Roact.unmount(instance)
	end)
end
