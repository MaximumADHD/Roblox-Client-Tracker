local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent

local React = require(Packages.React)
local Foundation = require(Packages.Foundation)

local useTokens = Foundation.Hooks.useTokens
local Image = Foundation.Image
local Text = Foundation.Text

local BulletList = require(Root.Components.BulletList)

return {
	summary = "An array of strings and/or elements displayed as a bulleted list.",
	stories = {
		{
			name = "Basic",
			summary = "A basic bullet list with string items.",
			story = function()
				return React.createElement(BulletList, {
					Items = {
						"Bulbasaur",
						"Charmander",
						"Squirtle",
						"This indeed is a very long item for this list example that one would expect to overflow had we not wrapped it.",
					},
					TextWrapped = true,
				})
			end,
		},

		{
			name = "With Indentation",
			summary = "A bullet list with indented sub-items.",
			story = function()
				return React.createElement(BulletList, {
					Items = {
						"Grass",
						{ Text = "Bulbasaur", Style = "SubItem" },
						"Fire",
						{ Text = "Charmander", Style = "SubItem" },
						{ Text = "Cyndaquil", Style = "SubItem" },
						"Water",
						{ Text = "Squirtle", Style = "SubItem" },
						{ Text = "Totodile", Style = "SubItem" },
						{
							Text = "This indeed is a very long item for this list example that one would expect to overflow had we not wrapped it.",
							Style = "SubItem",
						},
					},
					TextWrapped = true,
				})
			end,
		},

		{
			name = "With Rendered Components",
			summary = "BulletList can render custom components as items.",
			story = function()
				local tokens = useTokens()
				local linkColor = tokens.Color.Content.Link

				return React.createElement(BulletList, {
					Items = {
						React.createElement(Image, {
							Size = UDim2.fromOffset(100, 100),
							Image = "rbxasset://textures/ui/common/robux_color@2x.png",
						}),
						"As you can see, arbitrary elements can be used as list items",
						React.createElement(Text, {
							TextXAlignment = Enum.TextXAlignment.Left,
							AutomaticSize = Enum.AutomaticSize.XY,
							onActivated = function()
								print("link clicked")
							end,
							textStyle = linkColor,
							Text = "And here is a link, displayed as a list element",
						}),
					},
					TextWrapped = true,
				})
			end,
		},
	},
}
