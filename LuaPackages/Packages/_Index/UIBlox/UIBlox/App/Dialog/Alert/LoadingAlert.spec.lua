return function()
	local AlertRoot = script.Parent
	local DialogRoot = AlertRoot.Parent
	local AppRoot = DialogRoot.Parent
	local UIBlox = AppRoot.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local LoadingAlert = require(AlertRoot.LoadingAlert)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function()
			local element = mockStyleComponent({
				Item = Roact.createElement(LoadingAlert, {
					screenSize = Vector2.new(100, 100),
					title = "Hello World",
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end