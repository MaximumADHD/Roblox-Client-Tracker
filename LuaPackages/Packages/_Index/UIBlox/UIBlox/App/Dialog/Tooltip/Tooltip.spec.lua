return function()
	local TooltipRoot = script.Parent
	local DialogRoot = TooltipRoot.Parent
	local App = DialogRoot.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local Tooltip = require(TooltipRoot.Tooltip)
	local TooltipOrientation = require(TooltipRoot.Enum.TooltipOrientation)

	describe("mount/unmount", function()
		it("should mount and unmount with required properties", function()
			local element = mockStyleComponent({
				TooltipTest = Roact.createElement(Tooltip, {
					-- required
					triggerPosition = Vector2.new(0 ,0),
					triggerSize = Vector2.new(0 ,0),
					bodyText = "Tooltip body text",
				})
			})
			local handle = Roact.mount(element)
			expect(handle).to.be.ok()
			Roact.unmount(handle)
		end)

		it("should mount and unmount with valid properties", function()
			local element = mockStyleComponent({
				TooltipTest = Roact.createElement(Tooltip, {
					-- required
					triggerPosition = Vector2.new(0 ,0),
					triggerSize = Vector2.new(0 ,0),
					bodyText = "Tooltip body text",
					-- optional
					headerText = "Header",
					onDismiss = function() end,
					screenSize = Vector2.new(300 ,600),
					position = UDim2.new(0, 0, 0, 0),
					orientation = TooltipOrientation.Top,
					triggerOnHover = true,
					forceClickTriggerPoint = false,
					isDirectChild = true,
				})
			})
			local handle = Roact.mount(element)
			expect(handle).to.be.ok()
			Roact.unmount(handle)
		end)

		it("should mount and unmount with empty bodyText", function()
			local element = mockStyleComponent({
				TooltipTest = Roact.createElement(Tooltip, {
					-- required
					triggerPosition = Vector2.new(0 ,0),
					triggerSize = Vector2.new(0 ,0),
					bodyText = "",
				})
			})
			local handle = Roact.mount(element)
			expect(handle).to.be.ok()
			Roact.unmount(handle)
		end)
	end)
end
