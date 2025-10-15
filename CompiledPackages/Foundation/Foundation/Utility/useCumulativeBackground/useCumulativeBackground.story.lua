local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Slider = require(Foundation.Components.Slider)
local Checkbox = require(Foundation.Components.Checkbox)
local Text = require(Foundation.Components.Text)
local InputLabel = require(Foundation.Components.InputLabel)
local InputSize = require(Foundation.Enums.InputSize)
local Visibility = require(Foundation.Enums.Visibility)

local useTokens = require(Foundation.Providers.Style.useTokens)
local useCumulativeBackground = require(script.Parent.useCumulativeBackground)

return {
	summary = "Sometimes we need to get a color matching that of the semi-transparent element on a solid background. \z
	useCumulativeBackground uses lerp magic to get it. Without cumulative background the element on top of the \z
	semi-transparent one has the same semi-transparent background, when you check the option the helper is used and the solid color is applied.",
	stories = {
		{
			name = "Base",
			story = function()
				local transparency, setTransparency = React.useBinding(0.5)
				local hue, setHue = React.useBinding(0)
				local saturation, setSaturation = React.useBinding(0)
				local useCumulative, setUseCumulative = React.useState(true)

				return React.createElement(
					View,
					{ tag = "auto-xy col gap-large" },
					React.createElement(Checkbox, {
						label = "Use cumulative background",
						isChecked = useCumulative,
						onActivated = function()
							setUseCumulative(function(old)
								return not old
							end)
						end,
						size = InputSize.XSmall,
					}),
					React.createElement(
						View,
						{
							tag = "auto-xy col gap-medium",
						},
						React.createElement(
							Text,
							{ LayoutOrder = 1, Text = "Semi-transparent element background", tag = "auto-xy" }
						),
						React.createElement(
							View,
							{ LayoutOrder = 2, tag = "size-2600-0 auto-y row gap-large" },
							React.createElement(InputLabel, {
								Text = "Transparency",
								size = InputSize.Medium,
							}),
							React.createElement(Slider, {
								value = transparency,
								onValueChanged = setTransparency,
								size = InputSize.Medium,
								knobVisibility = Visibility.Always,
							})
						),
						React.createElement(
							View,
							{ LayoutOrder = 3, tag = "size-2600-0 auto-y row gap-large" },
							React.createElement(InputLabel, {
								Text = "Hue",
								size = InputSize.Medium,
							}),
							React.createElement(Slider, {
								value = hue,
								onValueChanged = setHue,
								size = InputSize.Medium,
								knobVisibility = Visibility.Always,
							})
						),
						React.createElement(
							View,
							{ LayoutOrder = 4, tag = "size-2600-0 auto-y row gap-large" },
							React.createElement(InputLabel, {
								Text = "Saturation",
								size = InputSize.Medium,
							}),
							React.createElement(Slider, {
								value = saturation,
								onValueChanged = setSaturation,
								size = InputSize.Medium,
								knobVisibility = Visibility.Always,
							})
						)
					),
					-- selene: allow(shadowing)
					React.createElement(function(props: {
						useCumulative: boolean,
						transparency: React.Binding<number>,
						hue: React.Binding<number>,
						saturation: React.Binding<number>,
					})
						local tokens = useTokens()
						local baseBg = tokens.Color.Surface.Surface_100
						local elementBg = React.joinBindings({ props.transparency, props.hue, props.saturation })
							:map(function(values)
								-- selene: allow(roblox_internal_custom_color)
								return { Color3 = Color3.fromHSV(values[2], values[3], 1), Transparency = values[1] }
							end)
						local cumulativeBacgrkound = useCumulativeBackground(baseBg, elementBg)

						return React.createElement(
							View,
							{
								Size = UDim2.fromOffset(200, 200),
								backgroundStyle = baseBg,
								tag = "padding-large col align-x-center align-y-center",
							},
							React.createElement(
								View,
								{
									backgroundStyle = elementBg,
									tag = "size-2000 col align-x-center align-y-center",
								},
								React.createElement(View, {
									backgroundStyle = if useCumulative then cumulativeBacgrkound else elementBg,
									tag = "size-1000",
								}, {
									-- Bleed the element into the parent only on one side, so it's visible where the element is, but you can check that it has the same color
									Top = React.createElement(View, {
										Size = UDim2.new(1, 0, 0, 1),
										Position = UDim2.fromOffset(0, 0),
										tag = "bg-system-emphasis",
									}),
									Right = React.createElement(View, {
										Size = UDim2.new(0, 1, 1, 0),
										Position = UDim2.new(1, -1, 0, 0),
										tag = "bg-system-emphasis",
									}),
									Bottom = React.createElement(View, {
										Size = UDim2.new(1, 0, 0, 1),
										Position = UDim2.new(0, 0, 1, -1),
										tag = "bg-system-emphasis",
									}),
								})
							)
						)
					end, {
						transparency = transparency,
						hue = hue,
						saturation = saturation,
						useCumulative = useCumulative,
					})
				)
			end,
		},
	},
}
