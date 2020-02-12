return function()
	local AccordionRoot = script.Parent
	local AppRoot = AccordionRoot.Parent
	local UIBloxRoot = AppRoot.Parent
	local Packages = UIBloxRoot.Parent
	local AccordionView = require(AccordionRoot.AccordionView)
	local Roact = require(Packages.Roact)

	describe("AccordionView", function()
		it("should mount correctly", function()
			local element = Roact.createElement(AccordionView, {
				items = {"test", "test2"},
				itemWidth = 355,
				itemHeight = 188,
				renderItem = function(item, transparency)
					return Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 1, 0),
						Text = item,
						BackgroundTransparency = transparency,
					})
				end,
				placeholderColor = Color3.fromRGB(255, 255, 255),
				placeholderBaseTransparency = 0.5,
				collapseButtonSize = 40,
				renderCollapseButton = function(activatedCallback)
					return Roact.createElement("TextButton", {
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
						Text = "close",
						AutoButtonColor = false,
						[Roact.Event.Activated] = activatedCallback,
					})
				end,
			})

			local instance = Roact.mount(element)

			Roact.unmount(instance)
		end)

		it("should mount correctly with empty items", function()
			local element = Roact.createElement(AccordionView, {
				items = {},
				itemWidth = 355,
				itemHeight = 188,
				renderItem = function(item, transparency)
					return Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 1, 0),
						Text = item,
						BackgroundTransparency = transparency,
					})
				end,
				placeholderColor = Color3.fromRGB(255, 255, 255),
				placeholderBaseTransparency = 0.5,
				collapseButtonSize = 40,
				renderCollapseButton = function(activatedCallback)
					return Roact.createElement("TextButton", {
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
						Text = "close",
						AutoButtonColor = false,
						[Roact.Event.Activated] = activatedCallback,
					})
				end,
			})

			local instance = Roact.mount(element)

			Roact.unmount(instance)
		end)
	end)
end
