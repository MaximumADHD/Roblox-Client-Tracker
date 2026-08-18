local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local Progress = require(Foundation.Components.Progress)
local ProgressShape = require(Foundation.Enums.ProgressShape)
local ProgressSize = require(Foundation.Enums.ProgressSize)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type ProgressShape = ProgressShape.ProgressShape
type ProgressSize = ProgressSize.ProgressSize

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

local function Section(props: {
	layoutOrder: number,
	name: string,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.layoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "text-label-medium content-default auto-xy",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large align-y-start auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function Subsection(props: {
	layoutOrder: number,
	name: string,
	note: string?,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.layoutOrder,
	}, {
		Title = if props.note
			then React.createElement(View, {
				tag = "col gap-xsmall align-x-left auto-xy",
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
			tag = props.contentTag or "row gap-large align-y-start auto-xy wrap",
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

local function LabeledProgress(props: {
	label: string,
	layoutOrder: number,
	shape: ProgressShape?,
	size: ProgressSize?,
	value: (number | React.Binding<number>)?,
	width: UDim?,
	containerWidth: number?,
})
	local shape: ProgressShape = props.shape or ProgressShape.Bar

	return React.createElement(View, {
		tag = "col gap-small align-x-left auto-xy",
		LayoutOrder = props.layoutOrder,
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
				Indicator = React.createElement(
					Progress,
					{
						shape = shape,
						size = props.size,
						value = props.value,
						width = if shape == ProgressShape.Bar then props.width else nil,
					} :: any
				),
			}),
		}),
	})
end

local function PlaygroundStory(props)
	local controls = props.controls
	local value = if controls.isIndeterminate then nil else controls.value

	return React.createElement(ProgressContainer, {
		shape = controls.shape,
		containerWidth = BAR_CONTAINER_WIDTH,
	}, {
		Progress = React.createElement(
			Progress,
			{
				shape = controls.shape,
				size = controls.size,
				value = value,
			} :: any
		),
	})
end

local function VariantsStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = "row gap-large align-y-start auto-xy wrap padding-large bg-surface-0",
		},
		Dash.map(SHAPE_ORDER, function(shape, index)
			return React.createElement(LabeledProgress, {
				label = shape,
				layoutOrder = index,
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
			layoutOrder = 1,
			name = "Size",
			contentTag = "col gap-xlarge size-full-0 auto-y",
		}, {
			Circle = React.createElement(
				Subsection,
				{
					layoutOrder = 1,
					name = "Circle",
					contentTag = "row gap-large align-y-start auto-xy wrap",
				},
				Dash.map(SIZE_ORDER, function(size, index)
					return React.createElement(LabeledProgress, {
						label = size,
						layoutOrder = index,
						shape = ProgressShape.Circle,
						size = size,
						value = DEFAULT_VALUE,
					})
				end)
			),
			Bar = React.createElement(Subsection, {
				layoutOrder = 2,
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
			layoutOrder = 2,
			name = "Width",
			contentTag = "col gap-xlarge size-full-0 auto-y",
		}, {
			Fixed = React.createElement(Subsection, {
				layoutOrder = 1,
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
				layoutOrder = 2,
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
			layoutOrder = 1,
			name = "Indeterminate",
			contentTag = "row gap-large align-y-start auto-xy wrap",
		}, {
			Circle = React.createElement(LabeledProgress, {
				label = ProgressShape.Circle :: string,
				layoutOrder = 1,
				shape = ProgressShape.Circle,
			}),
			Bar = React.createElement(LabeledProgress, {
				label = ProgressShape.Bar :: string,
				layoutOrder = 2,
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
	end, { isAnimating } :: { unknown })

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
		Circle = React.createElement(LabeledProgress, {
			label = ProgressShape.Circle :: string,
			layoutOrder = 2,
			shape = ProgressShape.Circle,
			value = progressBinding,
		}),
		Bar = React.createElement(LabeledProgress, {
			label = ProgressShape.Bar :: string,
			layoutOrder = 3,
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

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Value = React.createElement(Section, {
			layoutOrder = 1,
			name = "Value",
			contentTag = "col gap-xlarge size-full-0 auto-y",
		}, {
			Circle = React.createElement(
				Subsection,
				{
					layoutOrder = 1,
					name = "Circle",
					contentTag = "row gap-large align-y-start auto-xy wrap",
				},
				Dash.map(VALUE_INCREMENTS, function(value, index)
					return React.createElement(LabeledProgress, {
						label = `{value}`,
						layoutOrder = index,
						shape = ProgressShape.Circle,
						value = value,
					})
				end)
			),
			Bar = React.createElement(
				Subsection,
				{
					layoutOrder = 2,
					name = "Bar",
					contentTag = "row gap-large align-y-start auto-xy wrap",
				},
				Dash.map(VALUE_INCREMENTS, function(value, index)
					return React.createElement(LabeledProgress, {
						label = `{value}`,
						layoutOrder = index,
						shape = ProgressShape.Bar,
						value = value,
					})
				end)
			),
		}),
		Clamping = React.createElement(Section, {
			layoutOrder = 2,
			name = "Clamping values",
			contentTag = "col gap-xlarge size-full-0 auto-y",
		}, {
			Circle = React.createElement(
				Subsection,
				{
					layoutOrder = 1,
					name = "Circle",
					contentTag = "row gap-large align-y-start auto-xy wrap",
				},
				Dash.map(CLAMPING_VALUES, function(example, index)
					return React.createElement(LabeledProgress, {
						label = example.label,
						layoutOrder = index,
						shape = ProgressShape.Circle,
						value = example.value,
					})
				end)
			),
			Bar = React.createElement(
				Subsection,
				{
					layoutOrder = 2,
					name = "Bar",
					contentTag = "row gap-large align-y-start auto-xy wrap",
				},
				Dash.map(CLAMPING_VALUES, function(example, index)
					return React.createElement(LabeledProgress, {
						label = example.label,
						layoutOrder = index,
						shape = ProgressShape.Bar,
						value = example.value,
					})
				end)
			),
		}),
		Label = React.createElement(Section, {
			layoutOrder = 3,
			name = "Label",
			contentTag = "col gap-xlarge size-full-0 auto-y",
		}, {
			Circle = React.createElement(Subsection, {
				layoutOrder = 1,
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
				layoutOrder = 2,
				name = "Bar",
				note = "Labels are not available.",
				contentTag = "auto-xy",
			}, {
				Example = React.createElement(ProgressContainer, {
					shape = ProgressShape.Bar,
				}, {
					Progress = React.createElement(Progress, {
						shape = ProgressShape.Bar,
						value = DEFAULT_VALUE,
					}),
				}),
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
		{ name = "Content", story = ContentStory },
	},
	controls = {
		shape = PLAYGROUND_SHAPE_OPTIONS,
		size = PLAYGROUND_SIZE_OPTIONS,
		value = DEFAULT_VALUE,
		isIndeterminate = false,
	},
}
