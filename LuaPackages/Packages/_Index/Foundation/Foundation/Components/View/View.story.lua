local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local ColorMode = require(Foundation.Enums.ColorMode)
local ShadowPresetModule = require(Foundation.Enums.ShadowPreset)
local StyleProvider = require(Foundation.Providers.Style.StyleProvider)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

type ColorMode = ColorMode.ColorMode
type ShadowPreset = ShadowPresetModule.ShadowPreset

-- Every control holds a complete style tag so it can be applied as-is. This is
-- the "unset" entry, which applies no tag.
local UNSET = ""

type Controls = {
	GroupTransparency: number,
	background: string,
	radius: string,
	stroke: string,
	shadow: string,
}

local SHADOW_PRESETS: { ShadowPreset } = {
	ShadowPresetModule.Raised100,
	ShadowPresetModule.Raised300,
	ShadowPresetModule.Overlay100,
	ShadowPresetModule.Overlay300,
}

local COLOR_MODES: { ColorMode } = { ColorMode.Light, ColorMode.Dark }

local function shadowTag(preset: ShadowPreset): string
	return `shadow-{preset}`
end

local GROUP_TRANSPARENCY_OPTIONS = { 0, 0.25, 0.5, 0.75, 1 }
local BACKGROUND_OPTIONS = { "bg-surface-200", UNSET, "bg-surface-0", "bg-surface-100", "bg-surface-300" }
local RADIUS_OPTIONS = {
	UNSET,
	"radius-none",
	"radius-xsmall",
	"radius-small",
	"radius-medium",
	"radius-large",
	"radius-circle",
}
local STROKE_OPTIONS = {
	UNSET,
	"stroke-standard",
	"stroke-emphasis",
	"stroke-muted",
	"stroke-default",
	"stroke-system-neutral",
	"stroke-system-emphasis",
}
local SHADOW_OPTIONS = { UNSET, unpack(Dash.map(SHADOW_PRESETS, shadowTag)) }

local function PlaygroundStory(props: { controls: Controls }): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		GroupTransparency = controls.GroupTransparency,
		tag = {
			["row align-x-center align-y-center size-2500"] = true,
			[controls.background] = controls.background ~= UNSET,
			[controls.radius] = controls.radius ~= UNSET,
			[controls.stroke] = controls.stroke ~= UNSET,
			[controls.shadow] = controls.shadow ~= UNSET,
		},
	}, {
		Label = React.createElement(Text, {
			Text = "View",
			tag = "auto-xy text-title-medium content-emphasis",
			LayoutOrder = 1,
		}),
	})
end

local function ShadowCard(props: {
	LayoutOrder: number,
	preset: ShadowPreset,
})
	return React.createElement(View, {
		tag = "col align-x-center gap-xxlarge auto-xy padding-x-xxlarge",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = shadowTag(props.preset),
			tag = "auto-xy padding-bottom-xxlarge text-label-small content-default",
			LayoutOrder = 1,
		}),
		Surface = React.createElement(View, {
			tag = `size-3000 radius-large bg-surface-200 {shadowTag(props.preset)}`,
			LayoutOrder = 2,
		}),
	})
end

local function ShadowPanel(props: {
	LayoutOrder: number,
	colorMode: ColorMode,
})
	local tokens = useTokens()

	-- Each panel hosts its own StyleProvider so the nested StyleLink scopes to this
	-- subtree and leaves the sibling panel on its own color mode.
	return React.createElement(View, {
		tag = "auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Provider = React.createElement(StyleProvider, {
			colorMode = props.colorMode,
		}, {
			Panel = React.createElement(View, {
				tag = "col align-x-left gap-xxlarge auto-xy radius-large bg-surface-200",
				-- Overlay300 drops 48px with a 56px blur, so the spill below the cards
				-- exceeds the 32px padding tag cap and needs an explicit bottom value.
				padding = {
					top = UDim.new(0, tokens.Size.Size_800),
					left = UDim.new(0, tokens.Size.Size_800),
					right = UDim.new(0, tokens.Size.Size_800),
					bottom = UDim.new(0, tokens.Size.Size_2000),
				},
			}, {
				Label = React.createElement(Text, {
					Text = props.colorMode :: string,
					tag = "auto-xy text-heading-medium content-emphasis",
					LayoutOrder = 1,
				}),
				Cards = React.createElement(
					View,
					{
						tag = "row align-y-center gap-xxlarge auto-xy",
						LayoutOrder = 2,
					},
					Dash.map(SHADOW_PRESETS, function(preset, index)
						return React.createElement(ShadowCard, {
							key = preset,
							LayoutOrder = index,
							preset = preset,
						})
					end)
				),
			}),
		}),
	})
end

local function ShadowsStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = "row wrap align-x-center align-y-center gap-xxlarge auto-xy padding-xxlarge",
		},
		Dash.map(COLOR_MODES, function(colorMode, index)
			return React.createElement(ShadowPanel, {
				key = colorMode,
				LayoutOrder = index,
				colorMode = colorMode,
			})
		end)
	)
end

return {
	base = true,
	summary = "View",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Shadows",
			summary = "Elevation shadow style tags applied to View via the tag prop, in light and dark side by side",
			story = ShadowsStory,
		},
	},
	controls = {
		GroupTransparency = GROUP_TRANSPARENCY_OPTIONS,
		background = BACKGROUND_OPTIONS,
		radius = RADIUS_OPTIONS,
		stroke = STROKE_OPTIONS,
		shadow = SHADOW_OPTIONS,
	},
}
