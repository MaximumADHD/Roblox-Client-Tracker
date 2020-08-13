local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)

local createMockMessage = require(script.Parent.Parent.Parent.Helpers.createMockMessage)
local ChatBubble = require(script.Parent.Parent.ChatBubble)
local Constants = require(script.Parent.Parent.Parent.Constants)

return function(target)
	local root = Roact.createFragment({
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 16),
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Bottom,
		}),

		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, Constants.UI_PADDING),
			PaddingRight = UDim.new(0, Constants.UI_PADDING),
			PaddingBottom = UDim.new(0, Constants.UI_PADDING),
			PaddingLeft = UDim.new(0, Constants.UI_PADDING),
		}),

		ShortMessage = Roact.createElement(ChatBubble, {
			LayoutOrder = 1,
			message = createMockMessage({
				text = "Hello World!"
			}),
		}),

		MediumMessage = Roact.createElement(ChatBubble, {
			LayoutOrder = 2,
			message = createMockMessage({
				text = "Testing length to see what happens when it spills to the second line"
			}),
		}),

		LongMessage = Roact.createElement(ChatBubble, {
			LayoutOrder = 3,
			message = createMockMessage({
				text = "Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo " ..
					"consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu" ..
					"fugiat nulla pariatur"
			})
		}),
	})

	local handle = Roact.mount(root, target, "ChatBubble")

	return function()
		Roact.unmount(handle)
	end
end

