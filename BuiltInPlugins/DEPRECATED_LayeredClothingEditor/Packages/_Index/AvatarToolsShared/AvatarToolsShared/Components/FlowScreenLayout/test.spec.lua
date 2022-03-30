return function()
	local Packages = script.Parent.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local Framework = require(Packages.Framework)

	local TestHelpers = Framework.TestHelpers

	local FlowScreenLayout = require(script.Parent)

	local function createFlowScreenLayout(hasBackButton, hasContent, scrollable)
		local renderContentFrame = function()
			return Roact.createElement("Frame")
		end
		return TestHelpers.provideMockContext(nil, {
			FlowScreenLayout = Roact.createElement(FlowScreenLayout, {
				Title = "Title",
				PromptText = "Prompt",
				NextButtonText = "Next",
				BackButtonText = "Back",
				NextButtonEnabled = true,
				BackButtonEnabled = true,
				HasBackButton = hasBackButton,
				Scrollable = scrollable,
				GoToNext = function() end,
				GoToPrevious = function() end,
				RenderContent = hasContent and renderContentFrame or nil,
			})
		})
	end

	it("should render correctly with scollbar", function()
		local container = Instance.new("Folder")
		local element = createFlowScreenLayout(false, true, true)
		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		local scrollingFrame = frame.MainFrame.Scroller

		expect(frame).to.be.ok()
		expect(scrollingFrame).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render correctly with no back button and content", function()
		local container = Instance.new("Folder")
		local element = createFlowScreenLayout(false, true, false)
		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		local content = frame.Content

		local prompt = content.Prompt
		local flowScreenContent = content.Content
		local nextAndBackButtonContainer = content.NextAndBackButtonContainer
		local layout = nextAndBackButtonContainer.Layout
		local nextButton = nextAndBackButtonContainer.NextButton
		local backButton = nextAndBackButtonContainer:FindFirstChild("BackButton")

		expect(frame).to.be.ok()
		expect(content).to.be.ok()
		expect(prompt).to.be.ok()
		expect(flowScreenContent).to.be.ok()
		expect(layout).to.be.ok()
		expect(nextAndBackButtonContainer).to.be.ok()
		expect(nextButton).to.be.ok()
		expect(backButton).to.equal(nil)

		Roact.unmount(instance)
	end)

	it("should render correctly with no back button and no content", function()
		local container = Instance.new("Folder")
		local element = createFlowScreenLayout(false, false, false)
		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		local content = frame.Content

		local prompt = content.Prompt
		local flowScreenContent = content.Content
		local nextAndBackButtonContainer = content.NextAndBackButtonContainer
		local layout = nextAndBackButtonContainer.Layout
		local nextButton = nextAndBackButtonContainer.NextButton
		local backButton = nextAndBackButtonContainer:FindFirstChild("BackButton")

		expect(frame).to.be.ok()
		expect(content).to.be.ok()
		expect(prompt).to.be.ok()
		expect(flowScreenContent).to.equal(nil)
		expect(layout).to.be.ok()
		expect(nextAndBackButtonContainer).to.be.ok()
		expect(nextButton).to.be.ok()
		expect(backButton).to.equal(nil)

		Roact.unmount(instance)
	end)

	it("should render correctly with back button and content", function()
		local container = Instance.new("Folder")
		local element = createFlowScreenLayout(true, true, false)
		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		local content = frame.Content

		local prompt = content.Prompt
		local flowScreenContent = content.Content
		local nextAndBackButtonContainer = content.NextAndBackButtonContainer
		local layout = nextAndBackButtonContainer.Layout
		local nextButton = nextAndBackButtonContainer.NextButton
		local backButton = nextAndBackButtonContainer:FindFirstChild("BackButton")

		expect(frame).to.be.ok()
		expect(content).to.be.ok()
		expect(prompt).to.be.ok()
		expect(flowScreenContent).to.be.ok()
		expect(layout).to.be.ok()
		expect(nextAndBackButtonContainer).to.be.ok()
		expect(nextButton).to.be.ok()
		expect(backButton).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render correctly with back button and no content", function()
		local container = Instance.new("Folder")
		local element = createFlowScreenLayout(true, false, false)
		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		local content = frame.Content

		local prompt = content.Prompt
		local nextAndBackButtonContainer = content.NextAndBackButtonContainer
		local layout = nextAndBackButtonContainer.Layout
		local nextButton = nextAndBackButtonContainer.NextButton
		local backButton = nextAndBackButtonContainer:FindFirstChild("BackButton")

		expect(frame).to.be.ok()
		expect(content).to.be.ok()
		expect(prompt).to.be.ok()
		expect(layout).to.be.ok()
		expect(nextAndBackButtonContainer).to.be.ok()
		expect(nextButton).to.be.ok()
		expect(backButton).to.be.ok()

		Roact.unmount(instance)
	end)

end