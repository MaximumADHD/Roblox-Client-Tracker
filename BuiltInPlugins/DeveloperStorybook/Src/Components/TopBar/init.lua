local Main = script.Parent.Parent.Parent
local React = require(Main.Packages.React)
local Types = require(Main.Src.Types)
local RoactRodux = require(Main.Packages.RoactRodux)
local Dash = require(Main.Packages.Dash)

local Foundation = require(Main.Packages.Foundation)
local View = Foundation.View
local Text = Foundation.Text
local Tooltip = Foundation.Tooltip
local Dropdown = Foundation.Dropdown
local Image = Foundation.Image
local NumberInput = Foundation.NumberInput
local FoundationSlider = Foundation.Slider
local Checkbox = Foundation.Checkbox
local InputSize = Foundation.Enums.InputSize
local Visibility = Foundation.Enums.Visibility
local ColorMode = Foundation.Enums.ColorMode
local ThemeName = Foundation.Enums.ThemeName

local Framework = require(Main.Packages.Framework)
local ThemeSwitcher = Framework.Style.ThemeSwitcher

local INPUT_WIDTH = UDim.new(0, 80)
local SLIDER_INPUT_WIDTH = UDim.new(0, 60)

local Actions = Main.Src.Actions
local Thunks = Main.Src.Thunks
local SelectColorMode = require(Actions.SelectColorMode)
local SelectThemeName = require(Actions.SelectThemeName)
local SelectPlatform = require(Actions.SelectPlatform)
local SetLive = require(Actions.SetLive)
local SetSettings = require(Actions.SetSettings)
local EmbedStorybook = require(Thunks.EmbedStorybook)
local GetStories = require(Thunks.GetStories)

local GuiService = game:GetService("GuiService")

local TopBar = React.PureComponent:extend("TopBar")

-- Not a Foundation ColorMode: picking it clears the stored color mode so the
-- storybook follows Studio's Light/Dark setting again.
local DEFAULT_COLOR_MODE = "Default"

local COLOR_MODES = {
	{ id = DEFAULT_COLOR_MODE, text = DEFAULT_COLOR_MODE },
	{ id = ColorMode.Light :: string, text = ColorMode.Light :: string },
	{ id = ColorMode.Dark :: string, text = ColorMode.Dark :: string },
}

-- Foundation.Enums.ThemeName is a dictionary, so list its values explicitly to
-- keep the dropdown order stable.
local THEME_NAMES = {
	{ id = ThemeName.Default, text = ThemeName.Default },
	{ id = ThemeName.CircuitRush, text = ThemeName.CircuitRush },
	{ id = ThemeName.CosmicDust, text = ThemeName.CosmicDust },
	{ id = ThemeName.ElectricLime, text = ThemeName.ElectricLime },
	{ id = ThemeName.HyperPlum, text = ThemeName.HyperPlum },
	{ id = ThemeName.InfernoBlast, text = ThemeName.InfernoBlast },
	{ id = ThemeName.Kids, text = ThemeName.Kids },
	{ id = ThemeName.KineticEnergy, text = ThemeName.KineticEnergy },
	{ id = ThemeName.LavaGlow, text = ThemeName.LavaGlow },
	{ id = ThemeName.NebulaDrift, text = ThemeName.NebulaDrift },
	{ id = ThemeName.NitroFrost, text = ThemeName.NitroFrost },
	{ id = ThemeName.PixelPop, text = ThemeName.PixelPop },
	{ id = ThemeName.PolarFreeze, text = ThemeName.PolarFreeze },
	{ id = ThemeName.QuantumPulse, text = ThemeName.QuantumPulse },
	{ id = ThemeName.StarBurst, text = ThemeName.StarBurst },
	{ id = ThemeName.SuperCharge, text = ThemeName.SuperCharge },
}

local PLATFORM_STRING = "Default,Console,Desktop"
local ok, platforms = pcall(function()
	return game:GetFastString("DebugStorybookPlatformList")
end)
if ok then
	PLATFORM_STRING = platforms
end
local PLATFORMS = Dash.map(PLATFORM_STRING:split(","), function(platform)
	return { id = platform, text = platform }
end)

-- TODO (AleksandrSl 31/07/2024): Consider joining this and `local isRunningAsPlugin = typeof(props.Plugin:get().OpenScript) == "function"` check in InfoPanel
local isEmbedded = script:FindFirstAncestor("RunStorybook")

function SliderWithInput(props: {
	value: number,
	onValueChanged: (v: number) -> (),
	text: string,
	range: NumberRange,
	LayoutOrder: number,
})
	return React.createElement(View, {
		tag = "row align-y-center gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.text,
			tag = "auto-xy text-label-small text-align-x-left",
			AnchorPoint = Vector2.new(0, 0),
			LayoutOrder = 1,
		}),
		Slider = React.createElement(FoundationSlider, {
			range = props.range,
			width = INPUT_WIDTH,
			value = props.value,
			size = InputSize.Small,
			knobVisibility = Visibility.Always,
			onValueChanged = props.onValueChanged,
			LayoutOrder = 2,
		}),
		Input = React.createElement(NumberInput, {
			label = "",
			onChanged = props.onValueChanged,
			LayoutOrder = 3,
			value = props.value,
			size = InputSize.XSmall,
			width = SLIDER_INPUT_WIDTH,
			step = 0.1,
			precision = 2,
			minimum = 0,
			maximum = 1,
		}),
	})
end

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
						tag = {
							["auto-xy padding-small radius-small"] = true,
							["bg-system-contrast content-system-contrast"] = props.Embedded,
						},
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
		ColorModeLabel = React.createElement(Text, {
			Text = "Color mode:",
			LayoutOrder = 4,
			tag = "auto-xy text-label-small text-align-x-left",
		}),
		SelectColorMode = React.createElement(Dropdown.Root, {
			label = "",
			width = INPUT_WIDTH,
			onItemChanged = function(id)
				props.selectColorMode(id)
			end,
			items = COLOR_MODES,
			value = props.ColorMode or DEFAULT_COLOR_MODE,
			LayoutOrder = 5,
			size = InputSize.XSmall,
		}),
		ThemeNameLabel = React.createElement(Text, {
			Text = "Theme:",
			LayoutOrder = 6,
			tag = "auto-xy text-label-small text-align-x-left",
		}),
		SelectThemeName = React.createElement(Dropdown.Root, {
			label = "",
			width = INPUT_WIDTH,
			onItemChanged = function(id)
				props.selectThemeName(id)
			end,
			items = THEME_NAMES,
			value = props.ThemeName or ThemeName.Default,
			LayoutOrder = 7,
			size = InputSize.XSmall,
		}),
		PlatformLabel = React.createElement(Text, {
			Text = "Platform:",
			LayoutOrder = 8,
			tag = "auto-xy text-label-small text-align-x-left",
		}),
		SelectPlatform = React.createElement(Dropdown.Root, {
			label = "",
			LayoutOrder = 9,
			width = INPUT_WIDTH,
			value = props.Platform,
			items = PLATFORMS,
			onItemChanged = props.selectPlatform,
			size = InputSize.XSmall,
		}),
		ReducedMotion = React.createElement(Checkbox, {
			LayoutOrder = 10,
			isChecked = props.Settings.reducedMotion,
			onActivated = onToggleReducedMotion,
			label = "Reduced Motion",
			size = InputSize.XSmall,
		}),
		PreferredTransparencySlider = React.createElement(SliderWithInput, {
			range = NumberRange.new(0, 1),
			LayoutOrder = 11,
			value = props.Settings.preferredTransparency,
			onValueChanged = onPreferredTransparencyChanged,
			text = "Preferred Transparency:",
		}),
		PreferredTextSizeLabel = React.createElement(Text, {
			Text = `Preferred Text Size: <b>{props.Settings.preferredTextSize.Name}</b>`,
			RichText = true,
			tag = "auto-xy text-label-small text-align-x-left",
			AnchorPoint = Vector2.new(0, 0),
			LayoutOrder = 12,
		}),
		Slider = React.createElement(SliderWithInput, {
			range = NumberRange.new(0, 3),
			value = props.Settings.scale,
			onValueChanged = onScaleChanged,
			text = "Scale:",
			LayoutOrder = 13,
		}),
	})
end

return RoactRodux.connect(function(state)
	return {
		Embedded = state.Stories.embedded,
		ColorMode = state.Stories.colorMode,
		ThemeName = state.Stories.themeName,
		Live = state.Stories.live,
		Platform = state.Stories.platform,
		Settings = state.Stories.settings,
	}
end, function(dispatch)
	return {
		selectColorMode = function(colorMode)
			ThemeSwitcher.setTheme(colorMode)
			dispatch(SelectColorMode(if colorMode == DEFAULT_COLOR_MODE then nil else colorMode))
		end,
		selectThemeName = function(themeName)
			dispatch(SelectThemeName(themeName))
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
