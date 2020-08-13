local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)

local createMockMessage = require(script.Parent.Parent.Parent.Helpers.createMockMessage)
local Constants = require(script.Parent.Parent.Parent.Constants)
local ChatBubble = require(script.Parent.Parent.ChatBubble)

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
				text = "Light Theme/Default"
			}),
		}),

		MediumMessage = Roact.createElement(ChatBubble, {
			LayoutOrder = 2,
			theme = "Dark",
			message = createMockMessage({
				text = "Dark Theme"
			}),
		}),

		LongMessage = Roact.createElement(ChatBubble, {
			LayoutOrder = 3,
			theme = "Friend",
			message = createMockMessage({
				text = "Friend Theme which only shows for friends of player"
			})
		}),
	})


	local handle = Roact.mount(root, target, "Themes")

	return function()
		Roact.unmount(handle)
	end
end

