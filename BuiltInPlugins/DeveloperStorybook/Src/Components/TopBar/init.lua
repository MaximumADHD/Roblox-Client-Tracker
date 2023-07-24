local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local Roact = require(Main.Packages.Roact)
local RoactRodux = require(Main.Packages.RoactRodux)

local Framework = require(Main.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Dash = Framework.Dash
local findIndex = Dash.findIndex

local UI = Framework.UI
local Button = UI.Button
local Checkbox = UI.Checkbox
local Pane = UI.Pane
local SelectInput = UI.SelectInput
local Slider = UI.Slider
local Tooltip = UI.Tooltip
local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkBetterInit = SharedFlags.getFFlagDevFrameworkBetterInit()
local Image = if FFlagDevFrameworkBetterInit then UI.Image else UI.Decoration.Image
local TextLabel = if FFlagDevFrameworkBetterInit then UI.TextLabel else UI.Decoration.TextLabel
local SearchBar = if FFlagDevFrameworkBetterInit then UI.SearchBar else Framework.StudioUI.SearchBar

local StyleModifier = Framework.Util.StyleModifier

local ThemeSwitcher = Framework.Style.ThemeSwitcher

local Actions = Main.Src.Actions
local Thunks = Main.Src.Thunks
local SelectTheme = require(Actions.SelectTheme)
local SelectPlatform = require(Actions.SelectPlatform)
local SetSearch = require(Actions.SetSearch)
local SetLive = require(Actions.SetLive)
local SetSettings = require(Actions.SetSettings)
local EmbedStorybook = require(Thunks.EmbedStorybook)
local GetStories = require(Thunks.GetStories)

local TopBar = Roact.PureComponent:extend("TopBar")

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
	local style = props.Stylizer
	local sizes = style.Sizes

	local isEmbedded = script:FindFirstAncestor("RunStorybook")

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
			}),
		}),
		Collapse = Roact.createElement(Button, {
			Style = "Round",
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.fromOffset(32, 32),
			LayoutOrder = 2,
			OnClick = props.getStories,
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = "Collapse all stories",
			}),
			Icon = Roact.createElement(Image, {
				Size = UDim2.fromOffset(24, 24),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = "rbxasset://textures/DeveloperStorybook/Collapse.png",
			}),
		}),
		Embed = Roact.createElement(Button, {
			StyleModifier = isEmbedded and StyleModifier.Disabled or nil,
			Style = props.Embedded and "RoundPrimary" or "Round",
			Size = UDim2.fromOffset(32, 32),
			AnchorPoint = Vector2.new(1, 0),
			LayoutOrder = 4,
			OnClick = self.onEmbedStorybook,
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = "Embed Storybook in the place",
			}),
			Icon = Roact.createElement(Image, {
				Size = UDim2.fromOffset(24, 24),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = "rbxasset://textures/DeveloperStorybook/Embed.png",
			}),
		}),
		Live = Roact.createElement(Checkbox, {
			LayoutOrder = 5,
			Checked = props.Live,
			OnClick = self.onToggleLive,
			Text = "Live",
		}),
		ThemeLabel = Roact.createElement(TextLabel, {
			Text = "Theme:",
			AutomaticSize = Enum.AutomaticSize.XY,
			AnchorPoint = Vector2.new(0, 0),
			LayoutOrder = 7,
		}),
		SelectTheme = Roact.createElement(Pane, {
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.new(0, sizes.SelectInput, 1, 0),
			LayoutOrder = 8,
		}, {
			Input = Roact.createElement(SelectInput, {
				Width = sizes.SelectInput,
				SelectedIndex = findIndex(THEMES, function(theme)
					return theme == props.CurrentTheme
				end) or 1,
				Items = THEMES,
				OnItemActivated = props.selectTheme,
			}),
		}),
		PlatformLabel = Roact.createElement(TextLabel, {
			Text = "Platform:",
			AutomaticSize = Enum.AutomaticSize.XY,
			AnchorPoint = Vector2.new(0, 0),
			LayoutOrder = 9,
		}),
		SelectPlatform = Roact.createElement(Pane, {
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.new(0, sizes.SelectInput, 1, 0),
			LayoutOrder = 10,
		}, {
			Input = Roact.createElement(SelectInput, {
				Width = sizes.SelectInput,
				SelectedIndex = findIndex(PLATFORMS, function(platform)
					return platform == props.Platform
				end) or 1,
				Items = PLATFORMS,
				OnItemActivated = props.selectPlatform,
			}),
		}),
		ReducedMotion = Roact.createElement(Checkbox, {
			LayoutOrder = 11,
			Checked = props.Settings.reducedMotion,
			OnClick = self.onToggleReducedMotion,
			Text = "Reduced Motion",
		}),
		PreferredTransparencyLabel = Roact.createElement(TextLabel, {
			Text = "Preferred Transparency:",
			AutomaticSize = Enum.AutomaticSize.XY,
			AnchorPoint = Vector2.new(0, 0),
			LayoutOrder = 12,
		}),
		PreferredTransparencySlider = Roact.createElement(Pane, {
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.new(0, sizes.Slider, 1, 0),
			LayoutOrder = 13,
		}, {
			Slider = Roact.createElement(Slider, {
				Min = 0,
				Max = 1,
				Value = props.Settings.preferredTransparency,
				OnValueChanged = self.onPreferredTransparencyChanged,
				ShowInput = true,
			}),
		}),
	})
end

TopBar = withContext({
	Stylizer = ContextServices.Stylizer,
})(TopBar)

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
