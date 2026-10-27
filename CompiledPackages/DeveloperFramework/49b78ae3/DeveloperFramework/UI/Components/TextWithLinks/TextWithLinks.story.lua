local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local TextWithLinks = require(Framework.UI.Components.TextWithLinks)

return {
	stories = {
		{
			name = "Small",
			story = function()
				return Roact.createElement(TextWithLinks, {
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
					LinkMap = {
						["[link]"] = {
							LinkText = "here",
							LinkCallback = function()
								print("Clicked!")
							end,
						},
					},
				})
			end,
		},
		{
			name = "Long",
			story = function()
				return Roact.createElement(TextWithLinks, {
					TextProps = {
						TextSize = 18,
						TextXAlignment = Enum.TextXAlignment.Left,
						Font = Enum.Font.SourceSans,
					},
					MaxWidth = 100,
					Text = "Hello here is a {link} that is going to cause this to wrap onto another line and this line after the link will wrap on its own it's that long!",
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					TextXAlignment = Enum.TextXAlignment.Left,
					LinkMap = {
						["{link}"] = {
							LinkText = "link",
							LinkCallback = function()
								print("Clicked!")
							end,
						},
					},
				})
			end,
		},
		{
			name = "Varied",
			story = function()
				return Roact.createElement(TextWithLinks, {
					TextProps = {
						TextSize = 18,
						TextXAlignment = Enum.TextXAlignment.Left,
						Font = Enum.Font.SourceSans,
					},
					MaxWidth = 100,
					Text = "Hello here is some long text with multiple links. This first {link1} uses one placeholder, while this second {link2} uses another. This third {link1} uses the same placeholder as the first. This line after the link will wrap on its own it's that long!",
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					TextXAlignment = Enum.TextXAlignment.Left,
					LinkMap = {
						["{link1}"] = {
							LinkText = "link",
							LinkCallback = function()
								print("Clicked link 1!")
							end,
						},
						["{link2}"] = {
							LinkText = "link",
							LinkCallback = function()
								print("Clicked link 2!")
							end,
						},
					},
				})
			end,
		},
	},
}
