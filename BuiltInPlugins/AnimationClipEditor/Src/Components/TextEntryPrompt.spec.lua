return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local TextEntryPrompt = require(script.Parent.TextEntryPrompt)

	local function createTestTextEntryPrompt(container, inputText, noticeText)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			TextEntryPrompt = Roact.createElement(TextEntryPrompt, {
				PromptText = "Test",
				InputText = inputText,
				NoticeText = noticeText,
				Buttons = {
					{Key = "Test", Text = "Test"},
				},
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTextEntryPrompt()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestTextEntryPrompt(container)

		local instance = Roact.mount(element, container)
		local gui = container:FindFirstChildOfClass("ScreenGui")
		expect(gui).to.be.ok()
		local main = gui.TopLevelDetector.ScrollBlocker
		local contents = main.Background.CenterFrame.Container
		expect(contents).to.be.ok()
		expect(contents.Layout).to.be.ok()
		expect(contents.PromptText).to.be.ok()
		expect(contents.Center).to.be.ok()
		expect(contents.Center.Layout).to.be.ok()
		expect(contents.Center.TextBox).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render InputText and NoticeText if provided", function()
		local container = Instance.new("Folder")

		local element = createTestTextEntryPrompt(container, "Test", "Test")

		local instance = Roact.mount(element, container)
		local gui = container:FindFirstChildOfClass("ScreenGui")
		local main = gui.TopLevelDetector.ScrollBlocker
		local contents = main.Background.CenterFrame.Container
		expect(contents.Center.InputText).to.be.ok()
		expect(contents.NoticeText).to.be.ok()

		Roact.unmount(instance)
	end)
end
