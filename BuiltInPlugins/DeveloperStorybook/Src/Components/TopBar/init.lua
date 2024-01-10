local Main = script.Parent.Parent.Parent
local React = require(Main.Packages.React)
local Types = require(Main.Src.Types)
local RoactRodux = require(Main.Packages.RoactRodux)

local Framework = require(Main.Packages.Framework)
local Dash = Framework.Dash
local findIndex = Dash.findIndex

local UI = Framework.UI
local Button = UI.Button
local Checkbox = UI.Checkbox
local Pane = UI.Pane
local SelectInput = UI.SelectInput
local Slider = UI.Slider
local Tooltip = UI.Tooltip
local Image = UI.Image
local TextLabel = UI.TextLabel
local SearchBar = UI.SearchBar

local StyleModifier = Framework.Util.StyleModifier

local ThemeSwitcher = Framework.Style.ThemeSwitcher

local INPUT_WIDTH = 80
local SLIDER_WIDTH = 120

local Actions = Main.Src.Actions
local Thunks = Main.Src.Thunks
local SelectTheme = require(Actions.SelectTheme)
local SelectPlatform = require(Actions.SelectPlatform)
local SetSearch = require(Actions.SetSearch)
local SetLive = require(Actions.SetLive)
local SetSettings = require(Actions.SetSettings)
local EmbedStorybook = require(Thunks.EmbedStorybook)
local GetStories = require(Thunks.GetStories)

local TopBar = React.PureComponent:extend("TopBar")

local THEMES = {
	"Default",
	"Light",
	"Dark",
}

local PLATFORM_STRING = "Default,Console,Desktop"
local ok, platforms = pcall(function()
	return game:GetFastString("DebugStorybookPlatformList")
end)
if ok then
	PLATFORM_STRING = platforms
end
local PLATFORMS = PLATFORM_STRING:split(",")

function TopBar:init()
	self.onToggleLive = function()
		self.props.setLive(not self.props.Live)
	end

	self.onToggleReducedMotion = function()
		local settings = {
			reducedMotion = not self.props.Settings.reducedMotion,
			preferredTransparency = self.props.Settings.preferredTransparency,
		}
		self.props.setSettings(settings)
	end

	self.onPreferredTransparencyChanged = function(value: number)
		local settings = {
			reducedMotion = self.props.Settings.reducedMotion,
			preferredTransparency = value,
		}
		self.props.setSettings(settings)
	end

	self.onEmbedStorybook = function()
		local isEmbedded = script:FindFirstAncestor("RunStorybook")
		if not isEmbedded then
			self.props.embedStorybook()
		end
	end
end

function TopBar:render()
	local props = self.props

	local isEmbedded = script:FindFirstAncestor("RunStorybook")

	return React.createElement(Pane, {
		[React.Tag] = "Plugin-TopBar Main X-RowM X-Middle X-PadS",
	}, {
		FilterTree = React.createElement(Pane, {
			Size = UDim2.new(0, 300, 1, 0),
			LayoutOrder = 1,
		}, {
			Search = React.createElement(SearchBar, {
				PlaceholderText = "Search...",
				Width = 300,
				ShowSearchButton = false,
				ShowSearchIcon = true,
				OnTextChanged = props.setSearch,
			}),
		}),
		Collapse = React.createElement(Button, {
			Style = "Round",
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.fromOffset(32, 32),
			LayoutOrder = 2,
			OnClick = props.getStories,
		}, {
			Tooltip = React.createElement(Tooltip, {
				Text = "Collapse all stories",
			}),
			Icon = React.createElement(Image, {
				Size = UDim2.fromOffset(24, 24),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = "rbxasset://textures/DeveloperStorybook/Collapse.png",
			}),
		}),
		Embed = React.createElement(Button, {
			StyleModifier = isEmbedded and StyleModifier.Disabled or nil,
			Style = props.Embedded and "RoundPrimary" or "Round",
			Size = UDim2.fromOffset(32, 32),
			AnchorPoint = Vector2.new(1, 0),
			LayoutOrder = 4,
			OnClick = self.onEmbedStorybook,
		}, {
			Tooltip = React.createElement(Tooltip, {
				Text = "Embed Storybook in the place",
			}),
			Icon = React.createElement(Image, {
				Size = UDim2.fromOffset(24, 24),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = "rbxasset://textures/DeveloperStorybook/Embed.png",
			}),
		}),
		Live = React.createElement(Checkbox, {
			LayoutOrder = 5,
			Checked = props.Live,
			OnClick = self.onToggleLive,
			Text = "Live",
		}),
		ThemeLabel = React.createElement(TextLabel, {
			Text = "Theme:",
			LayoutOrder = 7,
			[React.Tag] = "X-Fit",
		}),
		SelectTheme = React.createElement(Pane, {
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.new(0, INPUT_WIDTH, 1, 0),
			LayoutOrder = 8,
		}, {
			Input = React.createElement(SelectInput, {
				Width = INPUT_WIDTH,
				SelectedIndex = findIndex(THEMES, function(theme)
					return theme == props.CurrentTheme
				end) or 1,
				Items = THEMES,
				OnItemActivated = props.selectTheme,
			}),
		}),
		PlatformLabel = React.createElement(TextLabel, {
			Text = "Platform:",
			LayoutOrder = 9,
			[React.Tag] = "X-Fit",
		}),
		SelectPlatform = React.createElement(Pane, {
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.new(0, INPUT_WIDTH, 1, 0),
			LayoutOrder = 10,
		}, {
			Input = React.createElement(SelectInput, {
				Width = INPUT_WIDTH,
				SelectedIndex = findIndex(PLATFORMS, function(platform)
					return platform == props.Platform
				end) or 1,
				Items = PLATFORMS,
				OnItemActivated = props.selectPlatform,
			}),
		}),
		ReducedMotion = React.createElement(Checkbox, {
			LayoutOrder = 11,
			Checked = props.Settings.reducedMotion,
			OnClick = self.onToggleReducedMotion,
			Text = "Reduced Motion",
		}),
		PreferredTransparencyLabel = React.createElement(TextLabel, {
			Text = "Preferred Transparency:",
			AutomaticSize = Enum.AutomaticSize.XY,
			AnchorPoint = Vector2.new(0, 0),
			LayoutOrder = 12,
		}),
		PreferredTransparencySlider = React.createElement(Pane, {
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.new(0, SLIDER_WIDTH, 1, 0),
			LayoutOrder = 13,
		}, {
			Slider = React.createElement(Slider, {
				Min = 0,
				Max = 1,
				Value = props.Settings.preferredTransparency,
				OnValueChanged = self.onPreferredTransparencyChanged,
				ShowInput = true,
			}),
		}),
	})
end

return RoactRodux.connect(function(state, props)
	return {
		Embedded = state.Stories.embedded,
		CurrentTheme = state.Stories.theme,
		Live = state.Stories.live,
		Platform = state.Stories.platform,
		Settings = state.Stories.settings,
	}
end, function(dispatch)
	return {
		selectTheme = function(theme)
			ThemeSwitcher.setTheme(theme)
			dispatch(SelectTheme(theme))
		end,
		selectPlatform = function(platform)
			dispatch(SelectPlatform(platform))
		end,
		setSearch = function(text: string)
			dispatch(SetSearch(text))
		end,
		setLive = function(live: boolean)
			dispatch(SetLive(live))
		end,
		setSettings = function(settings: Types.Settings)
			dispatch(SetSettings(settings))
		end,
		embedStorybook = function()
			dispatch(EmbedStorybook())
		end,
		getStories = function()
			dispatch(GetStories())
		end,
	}
end)(TopBar)
