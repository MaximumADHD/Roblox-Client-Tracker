local Main = script.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local RoactRodux = require(Main.Packages.RoactRodux)

local Framework = require(Main.Packages.Framework)
local ContextServices = Framework.ContextServices

local Dash = Framework.Dash
local findIndex = Dash.findIndex

local UI = Framework.UI
local Decoration = UI.Decoration
local Button = UI.Button
local Pane = UI.Pane
local Tooltip = UI.Tooltip
local SelectInput = UI.SelectInput
local TextLabel = UI.Decoration.TextLabel

local StudioUI = Framework.StudioUI
local SearchBar = StudioUI.SearchBar

local ThemeSwitcher = Framework.Style.ThemeSwitcher

local Actions = Main.Src.Actions
local Thunks = Main.Src.Thunks
local SelectTheme = require(Actions.SelectTheme)
local SetSearch = require(Actions.SetSearch)
local EmbedStorybook = require(Thunks.EmbedStorybook)
local GetStories = require(Thunks.GetStories)

local TopBar = Roact.PureComponent:extend("TopBar")

local THEMES = {
	"Default",
	"Light",
	"Dark",
}

function TopBar:render()
	local props = self.props
	local style = props.Stylizer
	local sizes = style.Sizes

	return Roact.createElement(Pane, {
		Size = UDim2.new(1, 0, 0, sizes.TopBar),
		Style = "Box",
		Padding = 5,
		Layout = Enum.FillDirection.Horizontal,
		Spacing = 5,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
	}, {
		FilterTree = Roact.createElement(Pane, {
			Size = UDim2.new(0, sizes.SearchBar, 1, 0),
			LayoutOrder = 1,
		}, {
			Search = Roact.createElement(SearchBar, {
				PlaceholderText = "Search...",
				Width = sizes.SearchBar,
				ShowSearchButton = false,
				ShowSearchIcon = true,
				OnTextChanged = props.setSearch,
			})
		}),
		Collapse = Roact.createElement(Button, {
			Style = "Round",
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.fromOffset(32, 32),
			LayoutOrder = 2,
			OnClick = props.getStories,
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = "Collapse all stories"
			}),
			Icon = Roact.createElement(Decoration.Image, {
				Size = UDim2.fromOffset(24, 24),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = "rbxasset://textures/DeveloperStorybook/Collapse.png"
			})
		}),
		Embed = Roact.createElement(Button, {
			Style = props.Embedded and "RoundPrimary" or "Round",
			Size = UDim2.fromOffset(32, 32),
			AnchorPoint = Vector2.new(1, 0),
			LayoutOrder = 4,
			OnClick = props.embedStorybook,
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = "Embed Storybook in the place"
			}),
			Icon = Roact.createElement(Decoration.Image, {
				Size = UDim2.fromOffset(24, 24),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = "rbxasset://textures/DeveloperStorybook/Embed.png"
			})
		}),
		ThemeLabel = Roact.createElement(TextLabel, {
			Text = "Theme:",
			AutomaticSize = Enum.AutomaticSize.XY,
			AnchorPoint = Vector2.new(1, 0),
			LayoutOrder = 5,
		}),
		SelectTheme = Roact.createElement(Pane, {
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.new(0, sizes.SelectTheme, 1, 0),
			LayoutOrder = 6,
		}, {
			Input = Roact.createElement(SelectInput, {
				Width = sizes.SelectTheme,
				SelectedIndex = findIndex(THEMES, function(theme)
					return theme == props.CurrentTheme
				end) or 1,
				Items = THEMES,
				OnItemActivated = props.selectTheme,
			})
		})
	})
end

ContextServices.mapToProps(TopBar, {
	Stylizer = ContextServices.Stylizer,
})

return RoactRodux.connect(
	function(state, props)
		return {
			Embedded = state.Stories.embedded,
			CurrentTheme = state.Stories.theme,
		}
	end,
	function(dispatch)
		return {
			selectTheme = function(theme)
				ThemeSwitcher.setTheme(theme)
				dispatch(SelectTheme(theme))
			end,
			setSearch = function(text)
				dispatch(SetSearch(text))
			end,
			embedStorybook = function()
				dispatch(EmbedStorybook())
			end,
			getStories = function()
				dispatch(GetStories())
			end,
		}
	end
)(TopBar)
