local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Parent.React)
local ContextServices = require(Framework.UI.ContextServices)

local Colors = require(Framework.Style.Colors)
local BaseTheme = require(Framework.Style.Themes.BaseTheme)
local StudioTheme = require(Framework.Style.Themes.StudioTheme)
local ui = require(Framework.Style.ComponentSymbols)

local ExpandablePane = require(Framework.UI.Components.ExpandablePane)
local Image = require(Framework.UI.Components.Image)
local LinkText = require(Framework.UI.Components.LinkText)
local Pane = require(Framework.UI.Components.Pane)
local SimpleExpandablePane = require(Framework.UI.Components.ExpandablePane.SimpleExpandablePane)
local TextLabel = require(Framework.UI.Components.TextLabel)

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local ExpandablePaneStyle = require(UIFolderData.ExpandablePane.style)

local StyleModifier = require(Framework.Util.StyleModifier)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local borderBox = ExpandablePaneStyle["&BorderBox"]
local header = ExpandablePaneStyle.Header

local theme = StudioTheme.new()
theme:extend({
	[ui.ExpandablePane] = join(BaseTheme[ui.ExpandablePane], {
		["&CustomStyle"] = join(borderBox, {
			Background = Colors.darker(Colors.Blue_Dark, 0.5),
			BorderColor = Colors.Blue,
			Header = join(header, {
				Arrow = {
					Color = Colors.White,
					Image = "rbxasset://textures/DeveloperFramework/Favorites/star_stroke.png",
					Size = UDim2.fromOffset(14, 14),

					[StyleModifier.Selected] = {
						Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
					},
				},
				Height = 50,
			}),
		}),
	}),
})

local ExpandedChangedStory = React.PureComponent:extend("ExpandedChangedStory")

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
	return React.createElement(ExpandablePane, {
		Expanded = self.state.expanded,
		OnExpandedChanged = self.expandedChanged,
		Text = "OnExpandedChanged",
	}, {
		React.createElement(TextLabel, {
			Text = "This has an OnExpandedChanged callback",
			[React.Tag] = "X-FitY",
		}),
		React.createElement(TextLabel, {
			Text = string.format("Expanded %d times", self.state.expandedCount),
			[React.Tag] = "X-FitY",
		}),
	})
end

function CustomHeader(props)
	return React.createElement(
		Pane,
		join({
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			Layout = Enum.FillDirection.Horizontal,
			Spacing = 8,
		}, props),
		{
			Icon = React.createElement(Image, {
				LayoutOrder = 1,
				Image = "rbxasset://textures/StudioSharedUI/alert_warning@2x.png",
				Size = UDim2.fromOffset(20, 20),
			}),
			Link = React.createElement(LinkText, {
				LayoutOrder = 2,
				OnClick = function()
					print("Link clicked")
				end,
				Text = "1 warning",
			}),
		}
	)
end

return {
	stories = {
		{
			name = "Default",
			story = React.createElement(SimpleExpandablePane, {
				Text = "Title",
			}, {
				React.createElement(TextLabel, {
					Text = "This has the Default style",
					[React.Tag] = "X-Fit",
				}),
			}),
		},
		{
			name = "OnExpandedChanged",
			story = ExpandedChangedStory,
		},
		{
			name = "Pane Styles",
			story = React.createElement(Pane, {
				[React.Tag] = "Muted X-FitY X-ColumnM X-Pad",
			}, {
				Box = React.createElement(SimpleExpandablePane, {
					LayoutOrder = 1,
					Style = "Box",
					Text = "Box",
				}, {
					React.createElement(TextLabel, {
						Text = "This has a Box style",
						[React.Tag] = "X-Fit",
					}),
				}),

				RoundBox = React.createElement(SimpleExpandablePane, {
					LayoutOrder = 2,
					Style = "RoundBox",
					Text = "RoundBox",
				}, {
					React.createElement(TextLabel, {
						Text = "This has a RoundBox style",
						[React.Tag] = "X-Fit",
					}),
				}),

				BorderBox = React.createElement(SimpleExpandablePane, {
					LayoutOrder = 3,
					Style = "BorderBox",
					Text = "BorderBox",
				}, {
					React.createElement(TextLabel, {
						Text = "This has a BorderBox style",
						[React.Tag] = "X-Fit",
					}),
				}),
			}),
		},
		{
			name = "Other Styles",
			story = React.createElement(Pane, {
				[React.Tag] = "Muted X-FitY X-ColumnM X-Pad",
			}, {
				Section = React.createElement(SimpleExpandablePane, {
					LayoutOrder = 1,
					Style = "Section",
					Text = "Section",
				}, {
					React.createElement(TextLabel, {
						Text = "This has a Section style",
						[React.Tag] = "X-Fit",
					}),
				}),
			}),
		},
		{
			name = "Custom Header",
			story = React.createElement(SimpleExpandablePane, {
				HeaderComponent = CustomHeader,
				Style = "BorderBox",
				Text = "Title",
			}, {
				React.createElement(TextLabel, {
					Text = "This has a custom HeaderComponent",
					[React.Tag] = "X-Fit",
				}),
			}),
		},
		{
			name = "Custom Style",
			summary = "Custom header Height, Arrow style, BackgroundColor and BorderColor.",
			story = ContextServices.provide({ theme }, {
				React.createElement(SimpleExpandablePane, {
					Style = "CustomStyle",
					Text = "Title",
				}, {
					React.createElement(TextLabel, {
						Text = "This has a custom style",
						[React.Tag] = "X-Fit",
					}),
				}),
			}),
		},
		{
			name = "Always Expanded",
			summary = "Can't collapse pane and arrow is hidden.",
			story = React.createElement(SimpleExpandablePane, {
				AlwaysExpanded = true,
				Style = "Section",
				Text = "Section",
			}, {
				React.createElement(TextLabel, {
					Text = "This pane will stay open",
					[React.Tag] = "X-Fit",
				}),
			}),
		},
	},
}
