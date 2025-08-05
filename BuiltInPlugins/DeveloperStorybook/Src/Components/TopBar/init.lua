local Main = script.Parent.Parent.Parent
local React = require(Main.Packages.React)
local Types = require(Main.Src.Types)
local RoactRodux = require(Main.Packages.RoactRodux)
local Dash = require(Main.Packages.Dash)

local Framework = require(Main.Packages.Framework)
local findIndex = Dash.findIndex

local UI = Framework.UI
local SelectInput = UI.SelectInput
local Slider = UI.Slider

local Foundation = require(Main.Packages.Foundation)
local View = Foundation.View
local Text = Foundation.Text
local Tooltip = Foundation.Tooltip
local Image = Foundation.Image
local Checkbox = Foundation.Checkbox
local InputSize = Foundation.Enums.InputSize

local joinTags = Framework.Styling.joinTags

local ThemeSwitcher = Framework.Style.ThemeSwitcher

local INPUT_WIDTH = 80
local SLIDER_WIDTH = 120
local SLIDER_HEIGHT = 36

local Actions = Main.Src.Actions
local Thunks = Main.Src.Thunks
local SelectTheme = require(Actions.SelectTheme)
local SelectPlatform = require(Actions.SelectPlatform)
local SetLive = require(Actions.SetLive)
local SetSettings = require(Actions.SetSettings)
local EmbedStorybook = require(Thunks.EmbedStorybook)
local GetStories = require(Thunks.GetStories)

local GuiService = game:GetService("GuiService")

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

-- TODO (AleksandrSl 31/07/2024): Consider joining this and `local isRunningAsPlugin = typeof(props.Plugin:get().OpenScript) == "function"` check in InfoPanel
local isEmbedded = script:FindFirstAncestor("RunStorybook")

function TopBar(props)
	local onToggleLive = function()
		props.setLive(not props.Live)
	end
	local onToggleReducedMotion = function()
		local settings = {
			reducedMotion = not props.Settings.reducedMotion,
			preferredTransparency = props.Settings.preferredTransparency,
			preferredTextSize = props.Settings.preferredTextSize,
			scale = props.Settings.scale,
		}
		props.setSettings(settings)
	end

	local onPreferredTransparencyChanged = function(value: number)
		local settings = {
			reducedMotion = props.Settings.reducedMotion,
			preferredTransparency = value,
			preferredTextSize = props.Settings.preferredTextSize,
			scale = props.Settings.scale,
		}
		props.setSettings(settings)
	end

	local onScaleChanged = function(value: number)
		local settings = {
			reducedMotion = props.Settings.reducedMotion,
			preferredTransparency = props.Settings.preferredTransparency,
			preferredTextSize = props.Settings.preferredTextSize,
			scale = value,
		}
		props.setSettings(settings)
	end

	local onEmbedStorybook = function()
		props.embedStorybook()
	end

	React.useEffect(
		function()
			-- Listen for PreferredTextSize changes
			local connection = GuiService:GetPropertyChangedSignal("PreferredTextSize"):Connect(function()
				-- TODO (AleksandrSl 19/05/2025): Turn setSettings into updateSettings so we don't have to keep unrelated values here.
				local settings = {
					reducedMotion = props.Settings.reducedMotion,
					preferredTransparency = props.Settings.preferredTransparency,
					preferredTextSize = GuiService.PreferredTextSize,
					scale = props.Settings.scale,
				}
				props.setSettings(settings)
			end)

			return function()
				if connection then
					connection:Disconnect()
				end
			end
		end,
		{ props.Settings.reducedMotion, props.Settings.preferredTransparency, props.Settings.scale, props.setSettings }
	)

	return React.createElement("ScrollingFrame", {
		[React.Tag] = "X-RowM X-Middle X-PadS X-FitY",
		ScrollingDirection = Enum.ScrollingDirection.X,
		AutomaticCanvasSize = Enum.AutomaticSize.X,
		CanvasSize = UDim2.new(0, 0, 0, 0),
		ScrollBarThickness = 0,
		BackgroundTransparency = 1,
	}, {
		UIFlexItem = React.createElement("UIFlexItem", {
			FlexMode = Enum.UIFlexMode.None,
		}),
		Collapse = React.createElement(
			Tooltip,
			{ title = "Collapse all stories", LayoutOrder = 1 },
			React.createElement(
				View,
				{
					onActivated = props.getStories,
					tag = "auto-xy padding-small radius-small",
				},
				React.createElement(Image, {
					tag = "size-600",
					Image = "rbxasset://textures/DeveloperStorybook/Collapse.png",
				})
			)
		),
		Embed = if not isEmbedded
			then React.createElement(
				Tooltip,
				{ title = "Embed Storybook in the place", LayoutOrder = 2 },
				React.createElement(
					View,
					{
						onActivated = onEmbedStorybook,
						tag = joinTags(
							"auto-xy padding-small radius-small",
							if props.Embedded then "bg-system-contrast content-system-contrast" else nil
						),
					},
					React.createElement(Image, {
						tag = "size-600",
						Image = "rbxasset://textures/DeveloperStorybook/Embed.png",
					})
				)
			)
			else nil,
		Live = if not isEmbedded
			then React.createElement(Checkbox, {
				LayoutOrder = 3,
				isChecked = props.Live,
				onActivated = onToggleLive,
				label = "Live",
				size = InputSize.XSmall,
			})
			else nil,
		ThemeLabel = React.createElement(Text, {
			Text = "Theme:",
			LayoutOrder = 4,
			tag = "auto-xy text-align-x-left text-label-small",
		}),
		SelectTheme = React.createElement(SelectInput, {
			LayoutOrder = 5,
			Width = INPUT_WIDTH,
			SelectedIndex = findIndex(THEMES, function(theme)
				return theme == props.CurrentTheme
			end) or 1,
			Items = THEMES,
			OnItemActivated = props.selectTheme,
		}),
		PlatformLabel = React.createElement(Text, {
			Text = "Platform:",
			LayoutOrder = 6,
			tag = "auto-xy text-align-x-left text-label-small",
		}),
		SelectPlatform = React.createElement(SelectInput, {
			LayoutOrder = 7,
			Width = INPUT_WIDTH,
			SelectedIndex = findIndex(PLATFORMS, function(platform)
				return platform == props.Platform
			end) or 1,
			Items = PLATFORMS,
			OnItemActivated = props.selectPlatform,
		}),
		ReducedMotion = React.createElement(Checkbox, {
			LayoutOrder = 8,
			isChecked = props.Settings.reducedMotion,
			onActivated = onToggleReducedMotion,
			label = "Reduced Motion",
			size = InputSize.XSmall,
		}),
		PreferredTransparencyLabel = React.createElement(Text, {
			Text = "Preferred Transparency:",
			tag = "auto-xy text-align-x-left text-label-small",
			AnchorPoint = Vector2.new(0, 0),
			LayoutOrder = 9,
		}),
		PreferredTransparencySlider = React.createElement(View, {
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.new(0, SLIDER_WIDTH, 0, SLIDER_HEIGHT),
			LayoutOrder = 10,
		}, {
			Slider = React.createElement(Slider, {
				Min = 0,
				Max = 1,
				Value = props.Settings.preferredTransparency,
				OnValueChanged = onPreferredTransparencyChanged,
				VerticalDragTolerance = SLIDER_HEIGHT,
				ShowInput = true,
			}),
		}),
		PreferredTextSizeLabel = React.createElement(Text, {
			Text = `Preferred Text Size: <b>{props.Settings.preferredTextSize.Name}</b>`,
			RichText = true,
			tag = "auto-xy text-align-x-left text-label-small",
			AnchorPoint = Vector2.new(0, 0),
			LayoutOrder = 11,
		}),
		ScaleLabel = React.createElement(Text, {
			Text = "Scale:",
			tag = "auto-xy text-align-x-left text-label-small",
			AnchorPoint = Vector2.new(0, 0),
			LayoutOrder = 12,
		}),
		ScaleSlider = React.createElement(View, {
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.new(0, SLIDER_WIDTH, 0, SLIDER_HEIGHT),
			LayoutOrder = 13,
		}, {
			Slider = React.createElement(Slider, {
				Min = 0,
				Max = 3,
				Value = props.Settings.scale,
				OnValueChanged = onScaleChanged,
				VerticalDragTolerance = SLIDER_HEIGHT,
				ShowInput = true,
			}),
		}),
	})
end

return RoactRodux.connect(function(state)
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
