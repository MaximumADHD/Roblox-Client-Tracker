local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local BulletList = require(Framework.UI.Components.BulletList)
local LinkText = require(Framework.UI.Components.LinkText)
local Image = require(Framework.UI.Components.Image)

return function()
	return {
		Basic = Roact.createElement(BulletList, {
			Items = {
				"Bulbasaur",
				"Charmander",
				"Squirtle",
				"This indeed is a very long item for this list example that one would expect to overflow had we not wrapped it.",
			},
			TextWrapped = true,
		}),

		WithIndentation = Roact.createElement(BulletList, {
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
		}),

		WithRenderedComponents = Roact.createElement(BulletList, {
			Items = {
				Roact.createElement(Image, {
					Size = UDim2.fromOffset(100, 100),
					Image = "rbxasset://textures/ui/common/robux_color@2x.png",
				}),
				"As you can see, arbitrary elements can be used as list items",
				Roact.createElement(LinkText, {
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
					OnClick = function()
						print("Link clicked!")
					end,
					Text = "And here is a link, displayed as a list element",
				}),
			},
			TextWrapped = true,
		}),
	}
end
