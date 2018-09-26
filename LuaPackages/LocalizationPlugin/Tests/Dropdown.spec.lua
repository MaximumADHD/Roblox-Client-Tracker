local CorePackages = game:GetService("CorePackages")

return function()
	local Roact = require(CorePackages.Roact)
	local Dropdown = require(script.Parent.Parent.Components.Dropdown)

	it("mounts and unmounts", function()
		local handle = Roact.mount(Roact.createElement(Dropdown, {
			ListItems = {},
		}))

		Roact.unmount(handle)
	end)

	itFIXME("inits with an item list and includes the default value in the resulting UI", function()
		local container = Instance.new("Frame")

		local element = Roact.createElement(Dropdown, {
			CurrentText = "Option 1 (default)",
			ListItems = {
				"Option 1",
				"Option 2"
			},
		})

		local handle = Roact.mount(element, container)
		expect(container.Frame.button.textLabel.Text).to.equal("Option 1 (default)")
		Roact.unmount(handle)
	end)
end
