return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local NoticeToast = require(script.Parent.NoticeToast)

	local function createTestNoticeToast(container, children)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			NoticeToast = Roact.createElement(NoticeToast, {
				Text = "TestText",
				ShowTime = 5,
				FadeTime = 1,
			}, children)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestNoticeToast()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestNoticeToast(container)

		local instance = Roact.mount(element, container)
		local gui = container:FindFirstChildOfClass("ScreenGui")
		expect(gui).to.be.ok()
		local main = gui.TopLevelFrame
		expect(main).to.be.ok()
		expect(main.Container).to.be.ok()
		expect(main.Container.Background).to.be.ok()
		expect(main.Container.Shadow).to.be.ok()

		local containerFrame = main.Container.Background.Border
		expect(containerFrame.Text).to.be.ok()
		expect(containerFrame.Text.Padding).to.be.ok()

		Roact.unmount(instance)
	end)
end
