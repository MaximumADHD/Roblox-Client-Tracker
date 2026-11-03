local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)

local Container = require(Framework.UI.Components.Container)
local Box = require(Framework.UI.Components.Box)
local Image = require(Framework.UI.Components.Image)
local Pane = require(Framework.UI.Components.Pane)

local ui = require(Framework.Style.ComponentSymbols)
local BaseTheme = require(Framework.Style.Themes.BaseTheme)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local ThemeSwitcher = require(Framework.Style.ThemeSwitcher)
local theme = ThemeSwitcher.new()

theme:extend({
	[ui.Box] = join(BaseTheme[ui.Box], {
		Transparency = 0,
		BorderSize = 0,

		["&Black"] = {
			Color = Color3.new(0, 0, 0),
		},

		["&Red"] = {
			Color = Color3.new(0.3, 0, 0),
		},
	}),

	[ui.Image] = join(BaseTheme[ui.Image], {
		["&WarningIcon"] = {
			Image = "rbxasset://textures/ui/ErrorIcon.png",
		},
	}),
})

return function()
	return ContextServices.provide({ theme }, {
		Main = Roact.createElement(Pane, {
			Padding = 20,
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = Color3.fromRGB(128, 128, 128),
		}, {
			-- This element is inset by 20 pixels due to the padding of the parent Container.
			RedElement = Roact.createElement(Container, {
				Size = UDim2.new(1, 0, 0, 100),
				Padding = {
					Right = 20, -- Pad the right side by 20 pixels
				},
				Background = Box,
				BackgroundStyle = "Red",
			}, {
				-- Because of the right padding, this text appears 20px from
				-- the right side of the container.
				Image = Roact.createElement(Container, {
					Size = UDim2.fromOffset(80, 80),
					Position = UDim2.fromScale(1, 0.5),
					AnchorPoint = Vector2.new(1, 0.5),
					Background = Image,
					BackgroundStyle = "WarningIcon",
				}),

				-- When a container has no Background, it is invisible.
				TextContainer = Roact.createElement(Container, {
					Padding = {
						Left = 40, -- Pad the left side by 40 pixels
					},
				}, {
					-- Because of the left padding, this text appears 40px from
					-- the left side of the container.
					Text = Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 1, 0),
						TextXAlignment = Enum.TextXAlignment.Left,
						Text = "This is test text.",
						Font = Enum.Font.SourceSans,
						TextSize = 24,
						TextColor3 = Color3.new(1, 1, 1),
					}),
				}),
			}),
		}),
	})
end
