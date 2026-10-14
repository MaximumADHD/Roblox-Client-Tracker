local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local TextWithInlineLink = require(Framework.UI.Components.TextWithInlineLink)

return {
	stories = {
		{
			name = "Small",
			story = function()
				return Roact.createElement(TextWithInlineLink, {
					TextProps = {
						Font = Enum.Font.SourceSans,
						TextSize = 18,
						TextXAlignment = Enum.TextXAlignment.Left,
					},
					AutomaticSize = Enum.AutomaticSize.Y,
					TextXAlignment = Enum.TextXAlignment.Left,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					MaxWidth = 300,
					Text = "Click [link] to learn more.",
					LinkText = "here",
					LinkPlaceholder = "[link]",
					OnLinkClicked = function()
						print("Clicked!")
					end,
				})
			end,
		},
		{
			name = "Long",
			story = function()
				return Roact.createElement(TextWithInlineLink, {
					TextProps = {
						TextSize = 18,
						TextXAlignment = Enum.TextXAlignment.Left,
						Font = Enum.Font.SourceSans,
					},
					MaxWidth = 100,
					Text = "Hello here is a {link} that is going to cause this to wrap onto another line and this line after the link will wrap on its own it's that long!",
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					TextXAlignment = Enum.TextXAlignment.Left,
					LinkText = "Link",
					LinkPlaceholder = "{link}",
					OnLinkClicked = function()
						print("Clicked!")
					end,
				})
			end,
		},
	},
}
