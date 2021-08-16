return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local RadioButtons = require(Plugin.Core.Components.SearchOptions.RadioButtons)

	local FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton = game:GetFastFlag("ToolboxUseDevFrameworkLoadingBarAndRadioButton")
	if FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton then
		return
	end

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Buttons = Roact.createElement(RadioButtons, {
				Buttons = {
					{Key = "Button1", Text = "Button 1"},
					{Key = "Button2", Text = "Button 2"},
				},
				Selected = "Button1",
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Buttons = Roact.createElement(RadioButtons, {
				Buttons = {
					{Key = "Button1", Text = "Button 1"},
					{Key = "Button2", Text = "Button 2"},
				},
				Selected = "Button1",
			}),
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "Buttons")

		local buttons = container.Buttons
		expect(buttons.Layout).to.be.ok()
		expect(buttons.Button1).to.be.ok()
		expect(buttons.Button1.UIListLayout).to.be.ok()
		expect(buttons.Button1.Background).to.be.ok()
		expect(buttons.Button1.Background.Highlight).to.be.ok()
		expect(buttons.Button1.Text).to.be.ok()

		Roact.unmount(instance)
	end)
end
