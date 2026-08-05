local Framework = script:FindFirstAncestor("UI").Parent
local Dash = require(Framework.Parent.Dash)
local Roact = require(Framework.Parent.Roact)

local getFFlagDevFrameworkShimmerImprovements = require(Framework.SharedFlags.getFFlagDevFrameworkShimmerImprovements)

local ContextServices = require(Framework.UI.ContextServices)

local Style = Framework.Style
local ui = require(Style.ComponentSymbols)
local Colors = require(Style.Colors)
local StyleKey = require(Style.StyleKey)
local ThemeSwitcher = require(Style.ThemeSwitcher)
local BaseTheme = require(Style.Themes.BaseTheme)

local Components = Framework.UI.Components
local Pane = require(Components.Pane)
local Shimmer = require(Components.Shimmer)

local join = Dash.join

local darkThemeOverride = {
	[StyleKey.ShimmerContent] = Colors.Gray_Mid,
}
local lightThemeOverride = {
	[StyleKey.ShimmerContent] = Colors.Gray_Lightest,
}

local theme = ThemeSwitcher.new(darkThemeOverride, lightThemeOverride)
theme:extend({
	[ui.Pane] = join(BaseTheme[ui.Pane], {
		["&PlaceholderContent"] = {
			Background = StyleKey.ShimmerContent,
			CornerRadius = UDim.new(0, 4),
		},
	}),
})

local RenderLater = Roact.Component:extend("RenderLater")

function RenderLater:didMount()
	self.summonTask = task.delay(self.delay, function()
		self:setState({ mounted = true })
	end)
end

function RenderLater:willUnmount()
	task.cancel(self.summonTask)
end

function RenderLater:render()
	if self.state.mounted then
		return Roact.createFragment(self.props.children)
	else
		return nil
	end
end

if getFFlagDevFrameworkShimmerImprovements() then
	return {
		stories = {
			{
				name = "Shimmer",
				story = Roact.createElement(Shimmer, {
					CornerRadius = 4,
					Size = UDim2.fromOffset(128, 128),
				}),
			},
			{
				name = "Content Placeholder",
				summary = "Multiple shimmers can be combined to create a placeholder for loading content",
				story = ContextServices.provide({ theme }, {
					Story = Roact.createElement(Pane, {
						Size = UDim2.fromOffset(256, 128),
						Style = "PlaceholderContent",
					}, {
						UICorner = Roact.createElement("UICorner", {
							CornerRadius = UDim.new(0, 4),
						}),

						ImagePlaceholder = Roact.createElement(Shimmer, {
							AnchorPoint = Vector2.new(0, 0.5),
							CornerRadius = UDim.new(0.5, 0),
							Position = UDim2.new(0, 16, 0.5, 0),
							Size = UDim2.fromOffset(80, 80),
						}),

						TextPlaceholder1 = Roact.createElement(Shimmer, {
							AnchorPoint = Vector2.new(1, 0.5),
							CornerRadius = 6,
							Position = UDim2.new(1, -16, 0.33, 0),
							Size = UDim2.fromOffset(128, 24),
						}),

						TextPlaceholder2 = Roact.createElement(Shimmer, {
							AnchorPoint = Vector2.new(1, 0.5),
							CornerRadius = 6,
							Position = UDim2.new(1, -16, 0.66, 0),
							Size = UDim2.fromOffset(128, 24),
						}),
					}),
				}),
			},
		},
	}
else
	return {
		stories = {
			{
				name = "Shimmer",
				story = Roact.createElement(Shimmer, {
					Size = UDim2.fromOffset(200, 200),
				}),
			},

			-- Shimmers should all be on the same clock
			{
				name = "Multiple shimmers, deferred",
				story = Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.XY,
					Spacing = 10,
					Layout = Enum.FillDirection.Horizontal,
				}, {
					Shimmer1 = Roact.createElement(Shimmer, {
						Size = UDim2.fromOffset(200, 200),
					}),

					Shimmer2 = Roact.createElement(RenderLater, {
						delay = 2,
					}, {
						Shimmer = Roact.createElement(Shimmer, {
							Size = UDim2.fromOffset(200, 200),
						}),
					}),
				}),
			},
		},
	}
end
