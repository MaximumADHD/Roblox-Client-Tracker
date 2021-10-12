local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)

local FrameworkStyle = Framework.Style
local Colors = require(FrameworkStyle.Colors)
local BaseTheme = require(FrameworkStyle.Themes.BaseTheme)
local StudioTheme = require(FrameworkStyle.Themes.StudioTheme)
local ui = require(FrameworkStyle).ComponentSymbols

local UI = require(Framework.UI)
local ExpandablePane = UI.ExpandablePane
local Image = UI.Decoration.Image
local LinkText = UI.LinkText
local Pane = UI.Pane
local SimpleExpandablePane = UI.SimpleExpandablePane
local TextLabel = UI.Decoration.TextLabel

local UIFolderData = require(Framework.UI.UIFolderData)
local PaneStyle = require(UIFolderData.Pane.style)

local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier

local Dash = require(Framework.packages.Dash)
local join = Dash.join

local borderBox = PaneStyle["&BorderBox"]

local theme = StudioTheme.new()
theme:extend({
	[ui.ExpandablePane] = join(BaseTheme[ui.ExpandablePane], {
		["&CustomStyle"] = join(borderBox, {
			Arrow = {
				AnchorPoint = Vector2.new(0, 0.5),
				Color = Colors.White,
				Image = "rbxasset://textures/DeveloperFramework/Favorites/star_stroke.png",
				Position = UDim2.new(0, 0, 0.5, 0),
				Size = UDim2.fromOffset(12, 12),

				[StyleModifier.Selected] = {
					Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
				},
			},
			Background = Colors.darker(Colors.Blue_Dark, 0.5),
			BorderColor = Colors.Blue,
		}),
	})
})

local ExpandedChangedStory = Roact.PureComponent:extend("ExpandedChangedStory")

function ExpandedChangedStory:init()
	self.state = {
		expanded = false,
		expandedCount = 0,
	}

	self.expandedChanged = function()
		self:setState(function(prevState)
			local expanded = not prevState.expanded
			local expandedCount = prevState.expandedCount
			if expanded then
				expandedCount += 1
			end
			return {
				expanded = expanded,
				expandedCount = expandedCount,
			}
		end)
	end
end

function ExpandedChangedStory:render()
	return Roact.createElement(ExpandablePane, {
		Expanded = self.state.expanded,
		OnExpandedChanged = self.expandedChanged,
		Text = "OnExpandedChanged",
	}, {
		Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Text = "This has an OnExpandedChanged callback",
		}),
		Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Text = string.format("Expanded %d times", self.state.expandedCount),
		}),
	})
end

function CustomHeader(props)
	return Roact.createElement(SimpleExpandablePane, join(props, {
		HeaderComponent = Roact.createElement(Pane, {
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			Layout = Enum.FillDirection.Horizontal,
			Size = UDim2.fromScale(1, 1),
			Spacing = 8,
		}, {
			Icon = Roact.createElement(Image, {
				LayoutOrder = 1,
				Image = "rbxasset://textures/StudioSharedUI/alert_warning@2x.png",
				Size = UDim2.fromOffset(20, 20),
			}),
			Link = Roact.createElement(LinkText, {
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 2,
				OnClick = function() print("Link clicked") end,
				Text = "1 warning",
				TextColor = Colors.White,
			}),
		})
	}))
end

return {
	stories = {
		{
			name = "Default",
			story = Roact.createElement(SimpleExpandablePane, {
				Text = "Title",
			}, {
				Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.Y,
					Text = "This has the Default style",
				})
			}),
		},
		{
			name = "OnExpandedChanged",
			story = ExpandedChangedStory,
		},
		{
			name = "Pane Styles",
			story = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor = Colors.Gray_Mid,
				Layout = Enum.FillDirection.Vertical,
				Padding = 10,
				Spacing = 10,
			}, {
				Box = Roact.createElement(SimpleExpandablePane, {
					LayoutOrder = 1,
					Style = "Box",
					Text = "Box",
				}, {
					Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.Y,
						Text = "This has a Box style",
					})
				}),

				RoundBox = Roact.createElement(SimpleExpandablePane, {
					LayoutOrder = 2,
					Style = "RoundBox",
					Text = "RoundBox",
				}, {
					Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.Y,
						Text = "This has a RoundBox style",
					})
				}),

				BorderBox = Roact.createElement(SimpleExpandablePane, {
					LayoutOrder = 3,
					Style = "BorderBox",
					Text = "BorderBox",
				}, {
					Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.Y,
						Text = "This has a BorderBox style",
					})
				}),
			})
		},
		{
			name = "Custom Header",
			story = Roact.createElement(CustomHeader, {
				Style = "BorderBox",
				Text = "Title",
			}, {
				Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.Y,
					Text = "This has custom header contents added with HeaderComponent",
				})
			})
		},
		{
			name = "Custom Style",
			story = ContextServices.provide({theme}, {
				Roact.createElement(SimpleExpandablePane, {
					Style = "CustomStyle",
					Text = "Title",
				}, {
					Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.Y,
						Text = "This has a custom style",
					})
				})
			})
		}
	}
}
