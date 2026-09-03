local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local MatrixGrid = MatrixGridShared.MatrixGrid

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local FillBehavior = require(Foundation.Enums.FillBehavior)

type InputSize = InputSize.InputSize
type SupportedButtonVariant = ButtonVariant.SupportedButtonVariant
type FillBehavior = FillBehavior.FillBehavior

local IconName = BuilderIcons.Icon

local BUTTON_VARIANTS: { SupportedButtonVariant } = {
	ButtonVariant.Standard,
	ButtonVariant.Emphasis,
	ButtonVariant.SoftEmphasis,
	ButtonVariant.Utility,
	ButtonVariant.Link,
	ButtonVariant.Alert,
}

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local STORY_BUTTON_WIDTH = 140
local LAYOUT_COLUMN_WIDTH = 280
local INFO_COLUMN_WIDTH = 260
local LONG_TEXT_CONTAINER_WIDTH = 200
local LONG_BUTTON_TEXT =
	"This is a very long button label that should truncate with an ellipsis when it exceeds the container width"
local INPUT_DELAY_SECONDS = 3

local defaultButtonProps: {
	text: string,
	variant: SupportedButtonVariant,
	size: InputSize,
	icon: string,
} = {
	text = "Button",
	variant = ButtonVariant.Emphasis,
	size = InputSize.Medium,
	icon = IconName.PlaySmall,
}

local PLAYGROUND_VARIANT_OPTIONS: { SupportedButtonVariant } = {
	ButtonVariant.Emphasis,
	ButtonVariant.Standard,
	ButtonVariant.SoftEmphasis,
	ButtonVariant.Utility,
	ButtonVariant.Link,
	ButtonVariant.Alert,
}

local PLAYGROUND_SIZE_OPTIONS: { InputSize } = {
	InputSize.Medium,
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Large,
}

local function noop() end

local function StoryButton(props: {
	text: string?,
	icon: string?,
	variant: SupportedButtonVariant?,
	size: InputSize?,
	isDisabled: boolean?,
	isLoading: boolean?,
	fillBehavior: FillBehavior?,
	width: UDim?,
	inputDelay: number?,
	hug: boolean?,
	useDefaults: boolean?,
	textOnly: boolean?,
})
	local text = props.text
	local icon = props.icon
	local variant = props.variant
	local size = props.size

	if props.useDefaults then
		text = text or defaultButtonProps.text
		if not props.textOnly then
			icon = icon or defaultButtonProps.icon
		end
		variant = variant or defaultButtonProps.variant
		size = size or defaultButtonProps.size
	end

	local fillBehavior: FillBehavior? = props.fillBehavior
	if fillBehavior == nil and not props.hug and props.width == nil then
		fillBehavior = FillBehavior.Fill
	end

	local button = React.createElement(Button, {
		text = text,
		icon = icon,
		variant = (variant or defaultButtonProps.variant) :: SupportedButtonVariant,
		size = (size or defaultButtonProps.size) :: InputSize,
		isDisabled = props.isDisabled,
		isLoading = props.isLoading,
		fillBehavior = fillBehavior,
		width = props.width,
		inputDelay = props.inputDelay or 0,
		onActivated = noop,
	})

	if props.hug then
		return React.createElement(View, {
			tag = "auto-xy",
		}, {
			Content = button,
		})
	end

	local containerWidth = if props.width and props.width.Offset > 0 then props.width.Offset else STORY_BUTTON_WIDTH

	return React.createElement(View, {
		tag = "size-full-0 auto-y",
		Size = UDim2.fromOffset(containerWidth, 0),
	}, {
		Content = button,
	})
end

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

local function LabeledButton(props: {
	label: string,
	LayoutOrder: number,
	text: string?,
	icon: string?,
	variant: SupportedButtonVariant?,
	size: InputSize?,
	isDisabled: boolean?,
	isLoading: boolean?,
	fillBehavior: FillBehavior?,
	width: UDim?,
	inputDelay: number?,
	hug: boolean?,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Button = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 2,
		}, {
			Content = React.createElement(StoryButton, {
				text = props.text,
				icon = props.icon,
				variant = props.variant or defaultButtonProps.variant,
				size = props.size or defaultButtonProps.size,
				isDisabled = props.isDisabled,
				isLoading = props.isLoading,
				fillBehavior = props.fillBehavior,
				width = props.width,
				inputDelay = props.inputDelay,
				hug = if props.hug ~= nil then props.hug else props.text == nil and props.icon ~= nil,
			}),
		}),
	})
end

local function PlaygroundStory(props: {
	controls: {
		icon: string,
		text: string,
		variant: SupportedButtonVariant,
		size: InputSize,
		isDisabled: boolean,
		isLoading: boolean,
		fillBehavior: FillBehavior?,
		width: number,
		inputDelay: number,
		usePath2DSpinner: boolean,
	},
}): React.ReactNode
	local controls = props.controls
	Flags.FoundationUsePath2DSpinner = controls.usePath2DSpinner

	local fillBehavior: FillBehavior? = if controls.fillBehavior == React.None then nil else controls.fillBehavior
	local width = if controls.width == 0 then UDim.new(0, 0) else UDim.new(0, controls.width)

	return React.createElement(View, {
		tag = "row align-y-center gap-medium size-0 auto-xy padding-medium",
	}, {
		Button = React.createElement(Button, {
			icon = StoryIcons.parseIconControl(controls.icon),
			text = controls.text,
			variant = controls.variant,
			isLoading = controls.isLoading,
			isDisabled = controls.isDisabled,
			size = controls.size,
			fillBehavior = fillBehavior,
			width = width,
			inputDelay = controls.inputDelay,
			onActivated = function()
				print(`{controls.variant} Button activated`)
			end,
		}),
	})
end

local function VariantsStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = "row wrap gap-large auto-xy padding-y-large bg-surface-0",
		},
		Dash.map(BUTTON_VARIANTS, function(variant, index)
			return React.createElement(LabeledButton, {
				label = variant,
				LayoutOrder = index,
				variant = variant,
				text = defaultButtonProps.text,
				icon = defaultButtonProps.icon,
				size = defaultButtonProps.size,
				hug = true,
			})
		end)
	)
end

local function StatesStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Disabled = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Disabled",
			contentTag = "auto-xy",
		}, {
			Button = React.createElement(StoryButton, {
				useDefaults = true,
				textOnly = true,
				isDisabled = true,
				hug = true,
			}),
		}),
		Loading = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Loading",
		}, {
			Examples = React.createElement(
				View,
				{
					tag = "row wrap gap-large auto-xy",
					LayoutOrder = 1,
				},
				Dash.map(SIZE_ORDER, function(size, index)
					return React.createElement(LabeledButton, {
						label = size,
						LayoutOrder = index,
						size = size,
						text = defaultButtonProps.text,
						icon = nil,
						variant = defaultButtonProps.variant,
						isLoading = true,
						hug = true,
					})
				end)
			),
		}),
	})
end

local function ControlledRegularButtonExample(): React.ReactNode
	local clickCount, setClickCount = React.useState(0)

	return React.createElement(Button, {
		text = `Clicked {clickCount} time(s)`,
		variant = defaultButtonProps.variant,
		size = defaultButtonProps.size,
		onActivated = function()
			setClickCount(clickCount + 1)
		end,
	})
end

local function ControlledInputDelayExample(): React.ReactNode
	local delayKey, setDelayKey = React.useState(0)

	return React.createElement(Button, {
		key = tostring(delayKey),
		text = "Click to see input delay",
		variant = defaultButtonProps.variant,
		size = defaultButtonProps.size,
		inputDelay = INPUT_DELAY_SECONDS,
		onActivated = function()
			setDelayKey(delayKey + 1)
		end,
	})
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		RegularButton = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Regular button",
			contentTag = "auto-xy",
		}, {
			Button = React.createElement(ControlledRegularButtonExample),
		}),
		InputDelay = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Input delay",
			contentTag = "auto-xy",
		}, {
			Button = React.createElement(ControlledInputDelayExample),
		}),
	})
end

local function FillBehaviorExample(props: {
	label: string,
	LayoutOrder: number,
	fillBehavior: FillBehavior?,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		Size = UDim2.fromOffset(LAYOUT_COLUMN_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Container = React.createElement(View, {
			tag = "row gap-medium size-full-0 auto-xy padding-large radius-medium bg-surface-100",
			Size = UDim2.fromOffset(LAYOUT_COLUMN_WIDTH, 0),
			LayoutOrder = 2,
		}, {
			Button = React.createElement(Button, {
				text = defaultButtonProps.text,
				variant = ButtonVariant.Emphasis,
				size = defaultButtonProps.size,
				fillBehavior = props.fillBehavior,
				onActivated = noop,
				LayoutOrder = 1,
			}),
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Size = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Size",
				contentTag = "row gap-large auto-xy wrap",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledButton, {
					label = size,
					LayoutOrder = index,
					size = size,
					text = defaultButtonProps.text,
					icon = nil,
					variant = ButtonVariant.Emphasis,
					hug = true,
				})
			end)
		),
		FillBehavior = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Fill behavior",
			contentTag = "row gap-xxlarge auto-xy wrap",
		}, {
			Fit = React.createElement(FillBehaviorExample, {
				label = "fillBehavior = Fit",
				LayoutOrder = 1,
				fillBehavior = FillBehavior.Fit,
			}),
			Fill = React.createElement(FillBehaviorExample, {
				label = "fillBehavior = Fill",
				LayoutOrder = 2,
				fillBehavior = FillBehavior.Fill,
			}),
		}),
	})
end

local function LongTextExample(props: {
	label: string,
	LayoutOrder: number,
	variant: SupportedButtonVariant,
	icon: string?,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Container = React.createElement(View, {
			tag = "row size-full-0 auto-y padding-large radius-medium bg-surface-100",
			Size = UDim2.fromOffset(LONG_TEXT_CONTAINER_WIDTH, 0),
			LayoutOrder = 2,
		}, {
			Button = React.createElement(Button, {
				text = LONG_BUTTON_TEXT,
				icon = props.icon,
				variant = props.variant,
				size = defaultButtonProps.size,
				fillBehavior = FillBehavior.Fill,
				onActivated = noop,
				LayoutOrder = 1,
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Icon = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Icon",
		}, {
			Examples = React.createElement(
				View,
				{
					tag = "row wrap gap-large auto-xy",
					LayoutOrder = 1,
				},
				Dash.map(SIZE_ORDER, function(size, index)
					return React.createElement(LabeledButton, {
						label = size,
						LayoutOrder = index,
						size = size,
						text = defaultButtonProps.text,
						icon = defaultButtonProps.icon,
					})
				end)
			),
		}),
		IconByType = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Icon by type",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = INFO_COLUMN_WIDTH,
				showHeader = false,
				columnHeaders = { "Button" },
				headerTextAlign = "left",
				cellAlign = "left",
				rowGap = "xxlarge",
				rows = StoryIcons.buildIconTypeMatrixRows(function(iconExample)
					return {
						React.createElement(StoryButton, {
							text = defaultButtonProps.text,
							icon = iconExample.name,
							variant = defaultButtonProps.variant,
							size = defaultButtonProps.size,
							hug = true,
						}),
					}
				end),
			}),
		}),
		EndAlignedIcon = React.createElement(Section, {
			LayoutOrder = 3,
			name = "End-aligned icon",
			contentTag = "col gap-medium align-x-left auto-xy",
		}, {
			Description = React.createElement(Text, {
				Text = "End-aligned placement is automatic for ArrowUpRightFromSquare (see endAlignedIcons).",
				tag = "auto-xy text-body-small text-align-x-left content-default",
				LayoutOrder = 1,
			}),
			Button = React.createElement(View, {
				tag = "auto-xy",
				LayoutOrder = 2,
			}, {
				Example = React.createElement(StoryButton, {
					text = "Open link",
					icon = IconName.ArrowUpRightFromSquare,
					variant = ButtonVariant.Link,
					size = defaultButtonProps.size,
					hug = true,
				}),
			}),
		}),
		LongText = React.createElement(Section, {
			LayoutOrder = 4,
			name = "Long text",
		}, {
			Examples = React.createElement(View, {
				tag = "row wrap gap-large auto-xy",
				LayoutOrder = 1,
			}, {
				Emphasis = React.createElement(LongTextExample, {
					label = ButtonVariant.Emphasis :: string,
					LayoutOrder = 1,
					variant = ButtonVariant.Emphasis,
					icon = defaultButtonProps.icon,
				}),
				Link = React.createElement(LongTextExample, {
					label = ButtonVariant.Link :: string,
					LayoutOrder = 2,
					variant = ButtonVariant.Link,
					icon = IconName.ArrowUpRightFromSquare,
				}),
			}),
		}),
	})
end

local function InverseSurfaceButtonExample(props: {
	label: string,
	LayoutOrder: number,
	variant: SupportedButtonVariant,
})
	local tokens = useTokens()

	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label :: string,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Surface = React.createElement(View, {
			tag = "row align-y-center auto-xy padding-medium radius-medium",
			backgroundStyle = tokens.Inverse.Surface.Surface_100,
			LayoutOrder = 2,
		}, {
			Button = React.createElement(
				PresentationContext.Provider,
				{ value = { colorNamespace = ColorNamespace.Inverse } },
				React.createElement(StoryButton, {
					useDefaults = true,
					textOnly = true,
					variant = props.variant,
					hug = true,
				})
			),
		}),
	})
end

local function InContextStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		InverseSurface = React.createElement(Section, {
			LayoutOrder = 1,
			name = "On inverse surface",
			contentTag = "col gap-medium align-x-left auto-xy",
		}, {

			Examples = React.createElement(
				View,
				{
					tag = "row wrap gap-large auto-xy",
					LayoutOrder = 1,
				},
				Dash.map(BUTTON_VARIANTS, function(variant, index)
					return React.createElement(InverseSurfaceButtonExample, {
						label = variant,
						LayoutOrder = index,
						variant = variant,
					})
				end)
			),
		}),
	})
end

return {
	summary = "Buttons communicate calls to action and allow users to interact with the interface. Button labels clearly express the action that will occur when clicked.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Variants",
			story = VariantsStory,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "States",
			story = StatesStory,
		},
		{
			name = "Controlled component",
			story = ControlledStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
		{
			name = "In context",
			summary = "Button reads colorNamespace from PresentationContext, not from props.",
			story = InContextStory,
		},
	},
	controls = {
		icon = StoryIcons.buildIconControlOptions({ additional = { IconName.ArrowUpRightFromSquare } }),
		text = defaultButtonProps.text,
		variant = PLAYGROUND_VARIANT_OPTIONS,
		size = PLAYGROUND_SIZE_OPTIONS,
		isDisabled = false,
		isLoading = false,
		fillBehavior = {
			React.None,
			FillBehavior.Fit,
			FillBehavior.Fill,
		} :: { FillBehavior },
		width = 0,
		inputDelay = 0,
		usePath2DSpinner = Flags.FoundationUsePath2DSpinner,
	},
}
