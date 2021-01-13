return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)
	local ScaleHandle = require(script.Parent.ScaleHandle)

	local function createTestScaleHandle()
		return Roact.createElement(MockWrapper, {}, {
			ScaleHandle = Roact.createElement(ScaleHandle)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestScaleHandle()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestScaleHandle(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.Bar).to.be.ok()

		Roact.unmount(instance)
	end)
end