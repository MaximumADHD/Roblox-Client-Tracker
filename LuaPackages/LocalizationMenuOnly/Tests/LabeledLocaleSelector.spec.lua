local CorePackages = game:GetService("CorePackages")

return function()
	local Roact = require(CorePackages.Roact)
	local LabeledLocaleSelector = require(script.Parent.Parent.Components.LabeledLocaleSelector)

	it("mounts and unmounts", function()
		local element = Roact.createElement(LabeledLocaleSelector)
		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)

	it("inits with label text and displays that label text", function()
		local container = Instance.new("Frame")

		local element = Roact.createElement(LabeledLocaleSelector, {
			LabelText = "Choose your locale"
		})

		local handle = Roact.mount(element, container)
		expect(container.Frame.LocaleIdLabel.Text).to.equal("Choose your locale")
		Roact.unmount(handle)
	end)
end
