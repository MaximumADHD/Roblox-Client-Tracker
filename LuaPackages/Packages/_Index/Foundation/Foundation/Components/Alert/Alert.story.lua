local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Alert = require(Foundation.Components.Alert)
local AlertSeverity = require(Foundation.Enums.AlertSeverity)
local AlertVariant = require(Foundation.Enums.AlertVariant)
local Breakpoint = require(Foundation.Enums.Breakpoint)
local BreakpointConfig = require(Foundation.Utility.Responsive.BreakpointConfig)
local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local Flags = require(Foundation.Utility.Flags)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel
local Section = StorySection.Section
local IconName = BuilderIcons.Icon
local IconVariant = BuilderIcons.IconVariant
type AlertSeverity = AlertSeverity.AlertSeverity
type AlertVariant = AlertVariant.AlertVariant
type AlertAction = {
	text: string,
	onActivated: () -> (),
}

local VARIANT_ORDER: { AlertVariant } = {
	AlertVariant.Feedback,
	AlertVariant.System,
}

local SEVERITY_ORDER: { AlertSeverity } = {
	AlertSeverity.Info,
	AlertSeverity.Warning,
	AlertSeverity.Success,
	AlertSeverity.Error,
}

local INLINE_WIDTH = 480
local STACKED_WIDTH = BreakpointConfig.widths[Breakpoint.XSmall]
local CUSTOM_ICON = { name = IconName.CircleQuestion, variant = IconVariant.Filled }
local CUSTOM_REGULAR_ICON = { name = IconName.Key, variant = IconVariant.Regular }
local DEFAULT_TEXT = "Alert text"
local LONG_TEXT =
	"Your session is about to expire. You have been inactive for a while, so please save any in-progress work and sign in again to continue."
local RICH_TEXT =
	"<b>Your session is about to expire.</b> You have been inactive for a while, so please save any in-progress work and <font color='#4b9fff'>sign in again</font> to continue."

type AlertActions = {
	primary: AlertAction,
	secondary: AlertAction?,
}?

local LONG_LINK_TEXT = "Read the full maintenance schedule and what it means for your experiences"
local SHORT_LINK_TEXT = "Read schedule"

type ActionLabels = {
	primary: string,
	secondary: string,
}

local DEFAULT_ACTION_LABELS = { primary = "Primary", secondary = "Secondary" }
local LONG_ACTION_LABELS = { primary = "Save and continue editing", secondary = "Discard all my changes" }

local function noop() end

local function buildActions(count: number, labels: ActionLabels?): AlertActions
	if count < 1 then
		return nil
	end

	local actionLabels = labels or DEFAULT_ACTION_LABELS
	return {
		primary = { text = actionLabels.primary, onActivated = noop },
		secondary = if count >= 2 then { text = actionLabels.secondary, onActivated = noop } else nil,
	}
end

local function BoundedAlert(props: {
	width: number?,
	LayoutOrder: number,
	children: React.ReactNode,
})
	return React.createElement(View, {
		Size = UDim2.fromOffset(props.width or INLINE_WIDTH, 0),
		tag = "auto-y",
		LayoutOrder = props.LayoutOrder,
	}, props.children)
end

local function Example(props: {
	LayoutOrder: number,
	label: string,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-small size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = "col size-full-0 auto-y",
			LayoutOrder = 2,
		}, props.children),
	})
end

local WIDTH_CASES = {
	{ key = "Stacked", width = STACKED_WIDTH, caption = `≤{STACKED_WIDTH}px — stacked` },
	{ key = "Inline", width = INLINE_WIDTH, caption = `{INLINE_WIDTH}px (after {STACKED_WIDTH}px) — inline` },
}

local function WidthPair(props: {
	LayoutOrder: number,
	label: string?,
	renderAlert: () -> React.ReactNode,
}): React.ReactNode
	local cells: { [string]: React.ReactNode } = {}
	for index, case in WIDTH_CASES do
		cells[case.key] = React.createElement(View, {
			tag = "col gap-small auto-xy",
			LayoutOrder = index,
		}, {
			Label = React.createElement(Text, {
				Text = case.caption,
				tag = "auto-xy text-caption-small text-align-x-left content-default",
				LayoutOrder = 1,
			}),
			Alert = React.createElement(BoundedAlert, { width = case.width, LayoutOrder = 2 }, {
				Alert = props.renderAlert(),
			}),
		})
	end

	local pair = React.createElement(View, {
		tag = "row wrap align-y-top gap-xlarge auto-xy",
		LayoutOrder = if props.label then 2 else props.LayoutOrder,
	}, cells)

	if props.label == nil then
		return pair
	end

	return React.createElement(Example, {
		LayoutOrder = props.LayoutOrder,
		label = props.label,
	}, {
		Pair = pair,
	})
end

local HAS_ACTIONS_OPTIONS = { "None", "Link", "One action", "Two actions" }

local function PlaygroundStory(props: {
	controls: {
		variant: AlertVariant,
		severity: AlertSeverity,
		text: string,
		hasActions: string,
		isDismissable: boolean,
		richText: boolean,
		hasCustomIcon: boolean,
	},
}): React.ReactNode
	local controls = props.controls
	local onClose = if controls.isDismissable then noop else nil
	local icon = if controls.hasCustomIcon then CUSTOM_ICON else nil

	local alert: React.ReactNode
	if controls.hasActions == "Link" then
		alert = React.createElement(Alert, {
			variant = controls.variant,
			severity = controls.severity,
			icon = icon,
			text = controls.text,
			richText = controls.richText,
			link = { text = "Link text", onActivated = noop },
			onClose = onClose,
			LayoutOrder = 1,
		})
	elseif controls.hasActions == "One action" or controls.hasActions == "Two actions" then
		alert = React.createElement(Alert, {
			variant = controls.variant,
			severity = controls.severity,
			icon = icon,
			text = controls.text,
			richText = controls.richText,
			actions = buildActions(if controls.hasActions == "Two actions" then 2 else 1),
			onClose = onClose,
			LayoutOrder = 1,
		})
	else
		alert = React.createElement(Alert, {
			variant = controls.variant,
			severity = controls.severity,
			icon = icon,
			text = controls.text,
			richText = controls.richText,
			onClose = onClose,
			LayoutOrder = 1,
		})
	end

	return React.createElement(View, {
		tag = "col size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Alert = alert,
	})
end

local function VariantsStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col auto-xy padding-large bg-surface-0",
	}, {
		Matrix = React.createElement(MatrixGrid, {
			labelColumnWidth = 80,
			showHeader = false,
			columnHeaders = { "Alert" },
			cellColumnWidth = INLINE_WIDTH,
			headerTextAlign = "left",
			cellAlign = "left",
			rowGap = "xxlarge",
			rows = Dash.map(VARIANT_ORDER, function(variant)
				return {
					label = matrixLabel(variant :: string),
					cells = {
						React.createElement(BoundedAlert, { LayoutOrder = 1 }, {
							Alert = React.createElement(Alert, {
								variant = variant :: AlertVariant,
								text = DEFAULT_TEXT,
							}),
						}),
					},
				}
			end),
		}),
	})
end

local function SeverityStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col auto-xy padding-large bg-surface-0",
	}, {
		Matrix = React.createElement(MatrixGrid, {
			labelColumnWidth = 80,
			showHeader = false,
			columnHeaders = { "Alert" },
			cellColumnWidth = INLINE_WIDTH,
			headerTextAlign = "left",
			cellAlign = "left",
			rowGap = "xxlarge",
			rows = Dash.map(SEVERITY_ORDER, function(severity)
				return {
					label = matrixLabel(severity :: string),
					cells = {
						React.createElement(BoundedAlert, { LayoutOrder = 1 }, {
							Alert = React.createElement(Alert, {
								severity = severity :: AlertSeverity,
								text = DEFAULT_TEXT,
							}),
						}),
					},
				}
			end),
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Width = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Width",
			contentTag = "col gap-large size-full-0 auto-y",
		}, {
			FullContainer = React.createElement(Example, {
				LayoutOrder = 1,
				label = "Unconstrained — the alert fills its parent",
			}, {
				Alert = React.createElement(Alert, {
					text = DEFAULT_TEXT,
					link = { text = "Link text", onActivated = noop },
					LayoutOrder = 1,
				}),
			}),
			NarrowWidth = React.createElement(Example, {
				LayoutOrder = 2,
				label = `Constrained by the parent to {STACKED_WIDTH}px — the link stacks under the message`,
			}, {
				Alert = React.createElement(BoundedAlert, { width = STACKED_WIDTH, LayoutOrder = 1 }, {
					Alert = React.createElement(Alert, {
						text = DEFAULT_TEXT,
						link = { text = "Link text", onActivated = noop },
					}),
				}),
			}),
			FixedWidth = React.createElement(Example, {
				LayoutOrder = 3,
				label = `Constrained by the parent to {INLINE_WIDTH}px (after {STACKED_WIDTH}px)`,
			}, {
				Alert = React.createElement(BoundedAlert, { LayoutOrder = 1 }, {
					Alert = React.createElement(Alert, {
						text = DEFAULT_TEXT,
						link = { text = "Link text", onActivated = noop },
					}),
				}),
			}),
		}),
	})
end

local function ControlledExample(props: {
	LayoutOrder: number,
	label: string,
	text: string,
	dismissedBy: "Close" | "Primary action",
})
	local isVisible, setIsVisible = React.useState(true)

	local function dismiss()
		setIsVisible(false)
	end

	local alert
	if props.dismissedBy == "Close" then
		alert = React.createElement(Alert, {
			text = props.text,
			onClose = dismiss,
		})
	else
		alert = React.createElement(Alert, {
			text = props.text,
			actions = {
				primary = {
					text = "Primary",
					onActivated = dismiss,
				},
			},
		})
	end

	return React.createElement(Example, { LayoutOrder = props.LayoutOrder, label = props.label }, {
		Body = if isVisible
			then React.createElement(BoundedAlert, { LayoutOrder = 1 }, { Alert = alert })
			else React.createElement(Button, {
				text = "Show alert",
				variant = ButtonVariant.Standard,
				onActivated = function()
					setIsVisible(true)
				end,
				LayoutOrder = 1,
			}),
	})
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		ByClose = React.createElement(ControlledExample, {
			LayoutOrder = 1,
			label = "Dismissed by the close affordance",
			text = "Dismiss this alert with its close button.",
			dismissedBy = "Close",
		}),
		ByAction = React.createElement(ControlledExample, {
			LayoutOrder = 2,
			label = "Dismissed by the primary action, with no close affordance",
			text = "Trigger the action to dismiss this alert.",
			dismissedBy = "Primary action",
		}),
	})
end

type TrailingConfig = {
	label: string,
	hasLink: boolean,
	linkText: string?,
	actionCount: number,
}

local LINK_TRAILING_LABEL = if Flags.FoundationAlertStackTrailingOnOverflow
	then "Link + close — the link stacks once it needs more than the message minimum leaves"
	else "Link + close"

local TRAILING_CONFIGS: { TrailingConfig } = {
	{ label = "Short link + close", hasLink = true, linkText = SHORT_LINK_TEXT, actionCount = 0 },
	{ label = LINK_TRAILING_LABEL, hasLink = true, actionCount = 0 },
	{ label = "Primary + close", hasLink = false, actionCount = 1 },
	{ label = "Primary + secondary + close", hasLink = false, actionCount = 2 },
}

local function buildWrappingExamples(): { [string]: React.ReactNode }
	local children: { [string]: React.ReactNode } = {}

	for index, config in TRAILING_CONFIGS do
		children[`Example-{index}`] = React.createElement(WidthPair, {
			LayoutOrder = index,
			label = config.label,
			renderAlert = function()
				return if config.hasLink
					then React.createElement(Alert, {
						text = LONG_TEXT,
						link = { text = config.linkText or LONG_LINK_TEXT, onActivated = noop },
						onClose = noop,
					})
					else React.createElement(Alert, {
						text = LONG_TEXT,
						actions = buildActions(config.actionCount, LONG_ACTION_LABELS),
						onClose = noop,
					})
			end,
		})
	end

	return children
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		WithLink = React.createElement(Section, {
			LayoutOrder = 1,
			name = "With link",
			contentTag = "col gap-large size-full-0 auto-y",
		}, {
			Pair = React.createElement(WidthPair, {
				LayoutOrder = 1,
				renderAlert = function()
					return React.createElement(Alert, {
						text = DEFAULT_TEXT,
						link = { text = "Link text", onActivated = noop },
					})
				end,
			}),
		}),
		WithActions = React.createElement(Section, {
			LayoutOrder = 2,
			name = "With actions",
			contentTag = "col gap-large size-full-0 auto-y",
		}, {
			OneAction = React.createElement(WidthPair, {
				LayoutOrder = 1,
				label = "One action",
				renderAlert = function()
					return React.createElement(Alert, {
						text = DEFAULT_TEXT,
						actions = buildActions(1),
					})
				end,
			}),
			TwoActions = React.createElement(WidthPair, {
				LayoutOrder = 2,
				label = "Two actions",
				renderAlert = function()
					return React.createElement(Alert, {
						text = DEFAULT_TEXT,
						actions = buildActions(2),
					})
				end,
			}),
		}),
		Wrapping = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Wrapping",
			contentTag = "col gap-large size-full-0 auto-y",
		}, buildWrappingExamples()),
		RichText = React.createElement(Section, {
			LayoutOrder = 4,
			name = "Rich text",
			contentTag = "col gap-large size-full-0 auto-y",
		}, {
			Pair = React.createElement(WidthPair, {
				LayoutOrder = 1,
				label = "richText interprets markup and stays wrapped",
				renderAlert = function()
					return React.createElement(Alert, {
						text = RICH_TEXT,
						richText = true,
					})
				end,
			}),
		}),
		CustomIcon = React.createElement(Section, {
			LayoutOrder = 5,
			name = "Custom icon",
			contentTag = "col gap-large size-full-0 auto-y",
		}, {
			Filled = React.createElement(BoundedAlert, { LayoutOrder = 1 }, {
				Alert = React.createElement(Alert, {
					severity = AlertSeverity.Info,
					icon = CUSTOM_ICON,
					text = DEFAULT_TEXT,
				}),
			}),
			Regular = React.createElement(BoundedAlert, { LayoutOrder = 2 }, {
				Alert = React.createElement(Alert, {
					severity = AlertSeverity.Info,
					icon = CUSTOM_REGULAR_ICON,
					text = DEFAULT_TEXT,
				}),
			}),
		}),
	})
end

return {
	summary = "Alert is an inline (Feedback) or system-level (System) message that surfaces severity-styled information with an optional link and up to two actions. Standard and Emphasis fall back to Feedback.",
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
			name = "Severity",
			story = SeverityStory,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "Controlled component",
			story = ControlledStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		variant = VARIANT_ORDER,
		severity = SEVERITY_ORDER,
		text = DEFAULT_TEXT,
		hasActions = HAS_ACTIONS_OPTIONS,
		isDismissable = false,
		richText = false,
		hasCustomIcon = false,
	},
}
