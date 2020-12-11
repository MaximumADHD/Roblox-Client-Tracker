return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)
	local ExpandableTrack = require(script.Parent.ExpandableTrack)

	local function createTestExpandableTrack()
		return Roact.createElement(MockWrapper, {}, {
			ExpandableTrack = Roact.createElement(ExpandableTrack, {
				Indent = 0,
				Name = "TestTrack",
				DoShade = false,
				Expanded = false,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestExpandableTrack()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestExpandableTrack(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.Arrow).to.be.ok()
		expect(frame.NameLabel).to.be.ok()
		expect(frame.ContextButton).to.be.ok()

		Roact.unmount(instance)
	end)
end
