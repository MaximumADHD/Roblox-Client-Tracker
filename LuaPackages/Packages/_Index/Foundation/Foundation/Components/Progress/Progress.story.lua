local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local Flags = require(Foundation.Utility.Flags)
local PreferencesProvider = require(Foundation.Providers.Preferences)
local Progress = require(Foundation.Components.Progress)
local ProgressBar = require(script.Parent.ProgressBar)
local ProgressCircle = require(script.Parent.ProgressCircle)
local ProgressShape = require(Foundation.Enums.ProgressShape)
local ProgressSize = require(Foundation.Enums.ProgressSize)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type ProgressShape = ProgressShape.ProgressShape
type ProgressSize = ProgressSize.ProgressSize
type ProgressBarProps = ProgressBar.ProgressBarProps
type ProgressCircleProps = ProgressCircle.ProgressCircleProps

local SIZE_ORDER: { ProgressSize } = {
	ProgressSize.Small,
	ProgressSize.Medium,
	ProgressSize.Large,
}

local SHAPE_ORDER: { ProgressShape } = {
	ProgressShape.Bar,
	ProgressShape.Circle,
}

local PLAYGROUND_SHAPE_OPTIONS: { ProgressShape } = {
	ProgressShape.Bar,
	ProgressShape.Circle,
}

local PLAYGROUND_SIZE_OPTIONS: { ProgressSize } = {
	ProgressSize.Medium,
	ProgressSize.Small,
	ProgressSize.Large,
}

local DEFAULT_VALUE = 65
local BAR_CONTAINER_WIDTH = 300
local WIDTH_FILL_CONTAINER = 400
local WIDTH_FIXED = UDim.new(0, 200)
local WIDTH_FILL = UDim.new(1, 0)

local VALUE_INCREMENTS: { number } = {
	0,
	25,
	50,
	75,
	100,
}

local CLAMPING_VALUES: { { label: string, value: number } } = {
	{ label = "-10", value = -10 },
	{ label = "150", value = 150 },
}

local REDUCED_MOTION_EXAMPLES: { { label: string, note: string, reducedMotion: boolean } } = {
	{
		label = "Default",
		note = "Circle sweeps a spinning arc, bar scrolls a shimmer.",
		reducedMotion = false,
	},
	{
		label = "Reduced motion",
		note = "Both pulse in place, with no movement.",
		reducedMotion = true,
	},
}

local function Section(props: {
	LayoutOrder: number,
	name: string,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "auto-xy text-label-medium content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function Subsection(props: {
	LayoutOrder: number,
	name: string,
	note: string?,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = if props.note
			then React.createElement(View, {
				tag = "col align-x-left gap-xsmall auto-xy",
				LayoutOrder = 1,
			}, {
				Name = React.createElement(Text, {
					Text = props.name,
					tag = "auto-xy text-caption-small text-align-x-left content-default",
					LayoutOrder = 1,
				}),
				Note = React.createElement(Text, {
					Text = props.note,
					tag = "auto-xy text-caption-small text-align-x-left content-muted",
					LayoutOrder = 2,
				}),
			})
			else React.createElement(Text, {
				Text = props.name,
				tag = "auto-xy text-caption-small text-align-x-left content-default",
				LayoutOrder = 1,
			}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function ProgressContainer(props: {
	shape: ProgressShape,
	width: UDim?,
	containerWidth: number?,
	children: React.ReactNode,
})
	if props.shape == ProgressShape.Bar then
		return React.createElement(View, {
			tag = "size-full-0 auto-y",
			Size = UDim2.fromOffset(props.containerWidth or BAR_CONTAINER_WIDTH, 0),
		}, props.children)
	end

	return React.createElement(View, {
		tag = "auto-xy",
	}, props.children)
end

local function WidthExampleContainer(props: {
	width: number,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col size-full-0 auto-y padding-medium radius-medium bg-surface-100",
		Size = UDim2.fromOffset(props.width, 0),
	}, props.children)
end

local function buildBarProgressProps(props: {
	size: ProgressSize?,
	value: (number | React.Binding<number>)?,
	width: UDim?,
	showLabel: boolean?,
	minValueLabel: string?,
	maxValueLabel: string?,
}): ProgressBarProps
	local barProps = {
		shape = ProgressShape.Bar,
		size = props.size,
		value = props.value,
		width = props.width,
		showLabel = props.showLabel,
	} :: ProgressBarProps
	if props.minValueLabel ~= nil and props.minValueLabel ~= "" then
		barProps.minValueLabel = props.minValueLabel
	end
	if props.maxValueLabel ~= nil and props.maxValueLabel ~= "" then
		barProps.maxValueLabel = props.maxValueLabel
	end
	return barProps
end

local function LabeledProgress(props: {
	label: string,
	LayoutOrder: number,
	shape: ProgressShape?,
	size: ProgressSize?,
	value: (number | React.Binding<number>)?,
	width: UDim?,
	containerWidth: number?,
	showLabel: boolean?,
	minValueLabel: string?,
	maxValueLabel: string?,
})
	local shape: ProgressShape = props.shape or ProgressShape.Bar

	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Progress = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 2,
		}, {
			Container = React.createElement(ProgressContainer, {
				shape = shape,
				width = props.width,
				containerWidth = props.containerWidth,
			}, {
				Indicator = if shape == ProgressShape.Bar
					then React.createElement(
						Progress,
						buildBarProgressProps({
							size = props.size,
							value = props.value,
							width = props.width,
							showLabel = props.showLabel,
							minValueLabel = props.minValueLabel,
							maxValueLabel = props.maxValueLabel,
						})
					)
					else React.createElement(
						Progress,
						{
							shape = ProgressShape.Circle,
							size = props.size,
							value = props.value,
						} :: ProgressCircleProps
					),
			}),
		}),
	})
end

local function PlaygroundStory(props)
	local controls = props.controls
	local value = if controls.isIndeterminate then nil else controls.value

	local barProps = buildBarProgressProps({
		size = controls.size,
		value = value,
		showLabel = if Flags.FoundationProgressBarBetaUpdate then controls.showLabel else nil,
		minValueLabel = if Flags.FoundationProgressBarBetaUpdate then controls.minValueLabel else nil,
		maxValueLabel = if Flags.FoundationProgressBarBetaUpdate then controls.maxValueLabel else nil,
	})

	return React.createElement(ProgressContainer, {
		shape = controls.shape,
		containerWidth = BAR_CONTAINER_WIDTH,
	}, {
		Progress = if controls.shape == ProgressShape.Bar
			then React.createElement(Progress, barProps)
			else React.createElement(
				Progress,
				{
					shape = ProgressShape.Circle,
					size = controls.size,
					value = value,
				} :: ProgressCircleProps
			),
	})
end

local function VariantsStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = "row wrap gap-large auto-xy padding-large bg-surface-0",
		},
		Dash.map(SHAPE_ORDER, function(shape, index)
			return React.createElement(LabeledProgress, {
				label = shape,
				LayoutOrder = index,
				shape = shape,
				value = DEFAULT_VALUE,
			})
		end)
	)
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Size = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Size",
			contentTag = "col gap-xlarge size-full-0 auto-y",
		}, {
			Circle = React.createElement(
				Subsection,
				{
					LayoutOrder = 1,
					name = "Circle",
					contentTag = "row gap-large auto-xy wrap",
				},
				Dash.map(SIZE_ORDER, function(size, index)
					return React.createElement(LabeledProgress, {
						label = size,
						LayoutOrder = index,
						shape = ProgressShape.Circle,
						size = size,
						value = DEFAULT_VALUE,
					})
				end)
			),
			Bar = React.createElement(Subsection, {
				LayoutOrder = 2,
				name = "Bar (Medium only)",
				contentTag = "auto-xy",
			}, {
				Medium = React.createElement(ProgressContainer, {
					shape = ProgressShape.Bar,
				}, {
					Indicator = React.createElement(Progress, {
						shape = ProgressShape.Bar,
						value = DEFAULT_VALUE,
					}),
				}),
			}),
		}),
		Width = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Width",
			contentTag = "col gap-xlarge size-full-0 auto-y",
		}, {
			Fixed = React.createElement(Subsection, {
				LayoutOrder = 1,
				name = `Fixed width (200px in {BAR_CONTAINER_WIDTH}px parent)`,
				contentTag = "auto-xy",
			}, {
				Example = React.createElement(WidthExampleContainer, {
					width = BAR_CONTAINER_WIDTH,
				}, {
					Progress = React.createElement(Progress, {
						shape = ProgressShape.Bar,
						value = DEFAULT_VALUE,
						width = WIDTH_FIXED,
					}),
				}),
			}),
			Fill = React.createElement(Subsection, {
				LayoutOrder = 2,
				name = `Fill ({WIDTH_FILL_CONTAINER}px parent)`,
				contentTag = "auto-xy",
			}, {
				Example = React.createElement(WidthExampleContainer, {
					width = WIDTH_FILL_CONTAINER,
				}, {
					Progress = React.createElement(Progress, {
						shape = ProgressShape.Bar,
						value = DEFAULT_VALUE,
						width = WIDTH_FILL,
					}),
				}),
			}),
		}),
	})
end

local function StatesStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Indeterminate = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Indeterminate",
			contentTag = "row gap-large auto-xy wrap",
		}, {
			Circle = React.createElement(LabeledProgress, {
				label = ProgressShape.Circle :: string,
				LayoutOrder = 1,
				shape = ProgressShape.Circle,
			}),
			Bar = React.createElement(LabeledProgress, {
				label = ProgressShape.Bar :: string,
				LayoutOrder = 2,
				shape = ProgressShape.Bar,
			}),
		}),
	})
end

local function ControlledProgressExample(): React.ReactNode
	local progressBinding, updateProgress = React.useBinding(0)
	local isAnimating, setIsAnimating = React.useState(false)

	React.useEffect(function()
		local connection
		if isAnimating then
			local startTime = tick()
			local durationSeconds = 3

			connection = game:GetService("RunService").Heartbeat:Connect(function()
				local elapsed = tick() - startTime
				local newProgress = math.min(elapsed / durationSeconds * 100, 100)
				updateProgress(newProgress)

				if newProgress >= 100 then
					connection:Disconnect()
					setIsAnimating(false)
				end
			end)
		end

		return function()
			if connection then
				connection:Disconnect()
			end
		end
	end, { isAnimating })

	local function startAnimation()
		updateProgress(0)
		setIsAnimating(true)
	end

	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
	}, {
		Label = React.createElement(Text, {
			Text = progressBinding:map(function(progressValue)
				return `Progress: {math.floor(progressValue)}%`
			end),
			tag = "size-0-0 auto-xy text-title-small content-emphasis",
			LayoutOrder = 1,
		}),
		Circles = React.createElement(View, {
			tag = "row align-y-center gap-large auto-xy",
			LayoutOrder = 2,
		}, {
			Medium = React.createElement(LabeledProgress, {
				label = ProgressSize.Medium :: string,
				LayoutOrder = 1,
				shape = ProgressShape.Circle,
				size = ProgressSize.Medium,
				value = progressBinding,
			}),
			Large = React.createElement(LabeledProgress, {
				label = ProgressSize.Large :: string,
				LayoutOrder = 2,
				shape = ProgressShape.Circle,
				size = ProgressSize.Large,
				value = progressBinding,
			}),
		}),
		Bar = React.createElement(LabeledProgress, {
			label = ProgressShape.Bar :: string,
			LayoutOrder = 3,
			shape = ProgressShape.Bar,
			value = progressBinding,
		}),
		Start = React.createElement(Button, {
			text = if isAnimating then "Animating..." else "Start animation",
			onActivated = startAnimation,
			isDisabled = isAnimating,
			LayoutOrder = 4,
		}),
	})
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Example = React.createElement(ControlledProgressExample),
	})
end

local function MotionExample(props: {
	LayoutOrder: number,
	label: string,
	note: string,
	reducedMotion: boolean,
})
	return React.createElement(Subsection, {
		LayoutOrder = props.LayoutOrder,
		name = props.label,
		note = props.note,
		contentTag = "row gap-xlarge align-y-center auto-xy wrap",
	}, {
		Preferences = React.createElement(PreferencesProvider, {
			reducedMotion = props.reducedMotion,
		}, {
			Circle = React.createElement(LabeledProgress, {
				label = ProgressShape.Circle :: string,
				LayoutOrder = 1,
				shape = ProgressShape.Circle,
			}),
			Bar = React.createElement(LabeledProgress, {
				label = ProgressShape.Bar :: string,
				LayoutOrder = 2,
				shape = ProgressShape.Bar,
			}),
		}),
	})
end

local function ReducedMotionStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Indeterminate = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Indeterminate",
				contentTag = "col gap-xlarge size-full-0 auto-y",
			},
			Dash.map(REDUCED_MOTION_EXAMPLES, function(example, index)
				return React.createElement(MotionExample, {
					LayoutOrder = index,
					label = example.label,
					note = example.note,
					reducedMotion = example.reducedMotion,
				})
			end)
		),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Value = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Value",
			contentTag = "col gap-xlarge size-full-0 auto-y",
		}, {
			Circle = React.createElement(
				Subsection,
				{
					LayoutOrder = 1,
					name = "Circle",
					contentTag = "row gap-large auto-xy wrap",
				},
				Dash.map(VALUE_INCREMENTS, function(value, index)
					return React.createElement(LabeledProgress, {
						label = `{value}`,
						LayoutOrder = index,
						shape = ProgressShape.Circle,
						value = value,
					})
				end)
			),
			Bar = React.createElement(
				Subsection,
				{
					LayoutOrder = 2,
					name = "Bar",
					contentTag = "row gap-large auto-xy wrap",
				},
				Dash.map(VALUE_INCREMENTS, function(value, index)
					return React.createElement(LabeledProgress, {
						label = `{value}`,
						LayoutOrder = index,
						shape = ProgressShape.Bar,
						value = value,
					})
				end)
			),
		}),
		Clamping = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Clamping values",
			contentTag = "col gap-xlarge size-full-0 auto-y",
		}, {
			Circle = React.createElement(
				Subsection,
				{
					LayoutOrder = 1,
					name = "Circle",
					contentTag = "row gap-large auto-xy wrap",
				},
				Dash.map(CLAMPING_VALUES, function(example, index)
					return React.createElement(LabeledProgress, {
						label = example.label,
						LayoutOrder = index,
						shape = ProgressShape.Circle,
						value = example.value,
					})
				end)
			),
			Bar = React.createElement(
				Subsection,
				{
					LayoutOrder = 2,
					name = "Bar",
					contentTag = "row gap-large auto-xy wrap",
				},
				Dash.map(CLAMPING_VALUES, function(example, index)
					return React.createElement(LabeledProgress, {
						label = example.label,
						LayoutOrder = index,
						shape = ProgressShape.Bar,
						value = example.value,
					})
				end)
			),
		}),
		Label = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Label",
			contentTag = "col gap-xlarge size-full-0 auto-y",
		}, {
			Circle = React.createElement(Subsection, {
				LayoutOrder = 1,
				name = "Circle",
				note = "Label is only available in Large.",
				contentTag = "auto-xy",
			}, {
				Large = React.createElement(Progress, {
					shape = ProgressShape.Circle,
					size = ProgressSize.Large,
					value = DEFAULT_VALUE,
				}),
			}),
			Bar = React.createElement(Subsection, {
				LayoutOrder = 2,
				name = "Bar",
				note = if Flags.FoundationProgressBarBetaUpdate then nil else "Labels are not available.",
				contentTag = "row gap-xlarge auto-xy wrap",
			}, {
				Default = React.createElement(LabeledProgress, {
					label = "Default labels",
					LayoutOrder = 1,
					shape = ProgressShape.Bar,
					value = DEFAULT_VALUE,
					containerWidth = BAR_CONTAINER_WIDTH,
					showLabel = if Flags.FoundationProgressBarBetaUpdate then true else nil,
				}),
				Custom = if Flags.FoundationProgressBarBetaUpdate
					then React.createElement(LabeledProgress, {
						label = "Custom labels",
						LayoutOrder = 2,
						shape = ProgressShape.Bar,
						value = DEFAULT_VALUE,
						containerWidth = BAR_CONTAINER_WIDTH,
						showLabel = true,
						minValueLabel = "0",
						maxValueLabel = "1000",
					})
					else nil,
			}),
		}),
	})
end

return {
	summary = "Visual feedback for task completion in Bar or Circle shape, with determinate and indeterminate states.",
	stories = {
		{ name = "Playground", story = PlaygroundStory :: unknown },
		{ name = "Variants", story = VariantsStory },
		{ name = "Sizing", story = SizingStory },
		{ name = "States", story = StatesStory },
		{ name = "Controlled component", story = ControlledStory },
		{
			name = "Reduced motion",
			summary = "Read from PreferencesProvider, not from props. Only the indeterminate state animates, so determinate progress is unaffected.",
			story = ReducedMotionStory,
		},
		{ name = "Content", story = ContentStory },
	},
	controls = {
		shape = PLAYGROUND_SHAPE_OPTIONS,
		size = PLAYGROUND_SIZE_OPTIONS,
		value = DEFAULT_VALUE,
		isIndeterminate = false,
		showLabel = false,
		minValueLabel = "",
		maxValueLabel = "",
	},
}
