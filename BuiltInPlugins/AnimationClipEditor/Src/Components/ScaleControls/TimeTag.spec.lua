return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)
	local TimeTag = require(script.Parent.TimeTag)

	local GetFFlagRetireUILibraryCompat = require(Plugin.LuaFlags.GetFFlagRetireUILibraryCompat)

	local function createTestTimeTag()
		return Roact.createElement(MockWrapper, {}, {
			TimeTag = Roact.createElement(TimeTag),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTimeTag()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTimeTag(), container)
		local frame = container:FindFirstChildOfClass("ImageLabel")

		expect(frame).to.be.ok()
		if GetFFlagRetireUILibraryCompat() then
			expect(frame.Contents.Time).to.be.ok()
		else
			expect(frame.Border.Time).to.be.ok()
		end

		Roact.unmount(instance)
	end)
end
