return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local DeveloperSubscriptionListItem = require(Plugin.Src.Components.DeveloperSubscriptions.DeveloperSubscriptionListItem)
	local theme = Theme.newDummyTheme()

	local function createListItem()
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			listItem = Roact.createElement(DeveloperSubscriptionListItem, {
				Height = 32,
				LayoutOrder = 0,

				Name = "Test",
				Subscribers = 100,
				Active = true,
				Id = 999,

				OnEditButtonActivated = function()
					-- do nothing
				end,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createListItem()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		Roact.mount(createListItem(), container)
		local label = container:FindFirstChildOfClass("ImageLabel")

		expect(label.IdFrame).to.be.ok()
		expect(label.IdFrame.Text).to.be.ok()
		expect(label.IdFrame.Icon).to.be.ok()

		expect(label.NameText).to.be.ok()
		expect(label.SubscribersText).to.be.ok()
		expect(label.ActiveText).to.be.ok()

		expect(label.EditFrame).to.be.ok()
		expect(label.EditFrame.Button).to.be.ok()
	end)

	it("should show the correct values", function()
		local container = Instance.new("Folder")
		Roact.mount(createListItem(), container)
		local label = container:FindFirstChildOfClass("ImageLabel")

		expect(label.IdFrame.Text.Text).to.equal("999")
		expect(label.NameText.Text).to.equal("Test")
		expect(label.SubscribersText.Text).to.equal("100")
		expect(label.ActiveText.Text).to.equal("Yes")
	end)
end