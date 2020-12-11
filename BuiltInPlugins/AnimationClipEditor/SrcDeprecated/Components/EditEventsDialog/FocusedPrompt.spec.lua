return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)

	local FocusedPrompt = require(script.Parent.FocusedPrompt)

	local function createTestFocusedPrompt(container, promptText, children)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			FocusedPrompt = Roact.createElement(FocusedPrompt, {
				PromptText = promptText,
				Buttons = {
					{Key = "Test", Text = "Test"},
				},
			}, children),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestFocusedPrompt()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestFocusedPrompt(container, "")

		local instance = Roact.mount(element, container)
		local gui = container:FindFirstChildOfClass("ScreenGui")
		expect(gui).to.be.ok()
		local main = gui.TopLevelDetector.ScrollBlocker
		expect(main).to.be.ok()
		expect(main.Background).to.be.ok()
		expect(main.Background.CenterFrame).to.be.ok()
		expect(main.Background.CenterFrame.Padding).to.be.ok()
		expect(main.Background.CenterFrame.Container).to.be.ok()
		expect(main.Background.CenterFrame.Buttons).to.be.ok()
		expect(main.Background.CenterFrame.Buttons[1]).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render a prompt if it is given", function()
		local container = Instance.new("Folder")

		local element = createTestFocusedPrompt(container, "")

		local instance = Roact.mount(element, container)
		local gui = container:FindFirstChildOfClass("ScreenGui")
		local main = gui.TopLevelDetector.ScrollBlocker
		local contents = main.Background.CenterFrame.Container
		expect(contents.PromptText).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render its children if no prompt is given", function()
		local container = Instance.new("Folder")

		local element = createTestFocusedPrompt(container, nil, {
			ChildFrame = Roact.createElement("Frame"),
		})

		local instance = Roact.mount(element, container)
		local gui = container:FindFirstChildOfClass("ScreenGui")
		local main = gui.TopLevelDetector.ScrollBlocker
		local contents = main.Background.CenterFrame.Container
		expect(contents.ChildFrame).to.be.ok()

		Roact.unmount(instance)
	end)
end
