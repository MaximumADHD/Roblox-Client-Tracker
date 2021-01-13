return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local ErrorDialogContents = require(script.Parent.ErrorDialogContents)

	local function createTestErrorDialogContents()
		return Roact.createElement(MockWrapper, {}, {
			Contents = Roact.createElement(ErrorDialogContents, {
				ErrorType = "TestError",
				Entries = {"TestEntry1", "TestEntry2"},
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestErrorDialogContents()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestErrorDialogContents(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.Layout).to.be.ok()
		expect(frame.Header).to.be.ok()
		expect(frame.Header.Icon).to.be.ok()
		expect(frame.Header.Text).to.be.ok()
		expect(frame.Body).to.be.ok()

		Roact.unmount(instance)
	end)
end