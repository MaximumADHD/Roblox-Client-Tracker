local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local Dialog = require(Foundation.Components.Dialog)
local DialogActions = require(Foundation.Components.Dialog.Actions)
local DialogSize = require(Foundation.Enums.DialogSize)
local DialogStoryHelpers = require(Foundation.Components.Dialog.DialogStoryHelpers)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local OnCloseCallbackReason = require(Foundation.Enums.OnCloseCallbackReason)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixInfoLabel = MatrixGridShared.matrixInfoLabel

local DialogExample = DialogStoryHelpers.DialogExample
local LabeledDialogTrigger = DialogStoryHelpers.LabeledDialogTrigger
local RootStory = DialogStoryHelpers.RootStory
local Section = DialogStoryHelpers.Section
local dialogStoryList = DialogStoryHelpers.dialogStoryList
local heroMediaDialogChildren = DialogStoryHelpers.heroMediaDialogChildren
local listDialogChildren = DialogStoryHelpers.listDialogChildren
local makeDialogChildren = DialogStoryHelpers.makeDialogChildren
local minimalDialogChildren = DialogStoryHelpers.minimalDialogChildren

type DialogAction = DialogActions.DialogAction
type DialogSize = DialogSize.DialogSize
type OnCloseCallbackReason = OnCloseCallbackReason.OnCloseCallbackReason

local SIZE_ORDER: { DialogSize } = DialogStoryHelpers.SIZE_ORDER
local DEFAULT_SIZE: DialogSize = DialogStoryHelpers.DEFAULT_SIZE
local FULL_COMPOSITION_MATRIX_LABEL_WIDTH = 180
local ACTIONS_MATRIX_CELL_WIDTH = 160
local FULL_COMPOSITION_ACTIONS_LABEL = "Actions label copy can wrap across multiple lines."
local FULL_COMPOSITION_CONTENT = "Text string example — body copy passed to Dialog.Text."
local FULL_COMPOSITION_RICH_CONTENT = table.concat({
	"Text string example — body copy passed to Dialog.Text.",
	"This dialog shows a longer description that spans multiple lines, similar to welcome or confirmation copy in production flows.",
	"<b>Important:</b> Review the details below before confirming. Contact support if you have <i>questions</i> about your account.",
}, "\n\n")

local function fullDialogChildren()
	return makeDialogChildren({
		hasHeroMedia = true,
		hasActions = true,
		actionsLabel = FULL_COMPOSITION_ACTIONS_LABEL,
		contentChildren = {
			DialogText = React.createElement(Dialog.Text, {
				Text = FULL_COMPOSITION_CONTENT,
				LayoutOrder = 1,
			}),
			List = dialogStoryList(3, 2),
		} :: { [string]: React.ReactNode },
	})
end

local function formatCloseReason(reason: OnCloseCallbackReason?): string
	if reason == OnCloseCallbackReason.BackdropClick then
		return "Backdrop click"
	end

	return "Close affordance"
end

local function ControlledExample(props: {
	label: string,
	layoutOrder: number,
	hasOnClose: boolean,
})
	local isOpen, setIsOpen = React.useState(false)
	local closeReason, setCloseReason = React.useState("")

	local function dismiss(reason: string)
		setCloseReason(reason)
		setIsOpen(false)
	end

	return React.createElement(View, {
		tag = "col gap-small auto-xy",
		LayoutOrder = props.layoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		OpenButton = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 2,
		}, {
			Button = React.createElement(Button, {
				text = if isOpen then "Close" else "Open",
				onActivated = function()
					if isOpen then
						dismiss("Close")
					else
						setCloseReason("")
						setIsOpen(true)
					end
				end,
				variant = if isOpen then ButtonVariant.Standard else ButtonVariant.Emphasis,
			}),
		}),
		Status = React.createElement(Text, {
			Text = if closeReason == ""
				then if props.hasOnClose
					then "Open the dialog, then dismiss with the close affordance or a backdrop click."
					else "Open the dialog, then dismiss with Cancel or Confirm."
				else `Closed via: {closeReason}`,
			tag = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-default",
			LayoutOrder = 3,
		}),
		DialogRoot = if isOpen
			then React.createElement(DialogExample, {
				size = DEFAULT_SIZE,
				hasBackdrop = props.hasOnClose,
				onClose = if props.hasOnClose
					then function(reason: OnCloseCallbackReason?)
						dismiss(formatCloseReason(reason))
					end
					else nil,
				children = if props.hasOnClose
					then minimalDialogChildren()
					else makeDialogChildren({
						hasActions = true,
						actions = {
							{
								text = "Cancel",
								variant = ButtonVariant.Standard,
								onActivated = function()
									dismiss("Cancel")
								end,
							},
							{
								text = "Confirm",
								variant = ButtonVariant.Emphasis,
								onActivated = function()
									dismiss("Confirm")
								end,
							},
						} :: { DialogAction },
					}),
			})
			else nil,
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Size = React.createElement(
			Section,
			{
				layoutOrder = 1,
				name = "Size",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledDialogTrigger, {
					label = size,
					layoutOrder = index,
					size = size,
					children = minimalDialogChildren(),
				})
			end)
		),
	})
end

local function ControlledStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		DismissPaths = React.createElement(Section, {
			layoutOrder = 1,
			name = "Dismiss paths",
		}, {
			OnClose = React.createElement(ControlledExample, {
				label = "onClose",
				layoutOrder = 1,
				hasOnClose = true,
			}),
			Actions = React.createElement(ControlledExample, {
				label = "Actions dismiss",
				layoutOrder = 2,
				hasOnClose = false,
			}),
		}),
	})
end

local function ContentStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Subparts = React.createElement(Section, {
			layoutOrder = 1,
			name = "Subparts",
		}, {
			TitleAndText = React.createElement(LabeledDialogTrigger, {
				label = "Title and text",
				layoutOrder = 1,
				children = minimalDialogChildren(),
			}),
			Text = React.createElement(LabeledDialogTrigger, {
				label = "Text",
				layoutOrder = 2,
				children = makeDialogChildren({
					hasTitle = false,
				}),
			}),
			Actions = React.createElement(LabeledDialogTrigger, {
				label = "Actions",
				layoutOrder = 3,
				children = makeDialogChildren({
					hasActions = true,
				}),
			}),
			ActionsLabel = React.createElement(LabeledDialogTrigger, {
				label = "Actions label",
				layoutOrder = 4,
				children = makeDialogChildren({
					hasActions = true,
					actionsLabel = FULL_COMPOSITION_ACTIONS_LABEL,
				}),
			}),
			HeroMedia = React.createElement(LabeledDialogTrigger, {
				label = "HeroMedia",
				layoutOrder = 5,
				children = heroMediaDialogChildren(),
			}),
			Content = React.createElement(LabeledDialogTrigger, {
				label = "Content",
				layoutOrder = 6,
				children = listDialogChildren(6),
			}),
		}),
		FullComposition = React.createElement(Section, {
			layoutOrder = 2,
			name = "Full composition",
			note = "Hero media, title, Dialog.Text, actions, and actions label composed at every size.",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = FULL_COMPOSITION_MATRIX_LABEL_WIDTH,
				columnHeaders = Dash.map(SIZE_ORDER, function(size)
					return size
				end),
				cellColumnWidth = ACTIONS_MATRIX_CELL_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowGap = "xxlarge",
				rows = {
					{
						label = matrixInfoLabel(
							"With list",
							"Dialog.Text plus list content. List may scroll when it overflows."
						),
						cells = Dash.map(SIZE_ORDER, function(size)
							return React.createElement(LabeledDialogTrigger, {
								layoutOrder = 1,
								size = size,
								children = fullDialogChildren(),
							})
						end),
					},
					{
						label = matrixInfoLabel("Without scrolling", "Dialog.Text only — no list content."),
						cells = Dash.map(SIZE_ORDER, function(size)
							return React.createElement(LabeledDialogTrigger, {
								layoutOrder = 1,
								size = size,
								children = makeDialogChildren({
									hasHeroMedia = true,
									content = FULL_COMPOSITION_RICH_CONTENT,
									hasActions = true,
									actionsLabel = FULL_COMPOSITION_ACTIONS_LABEL,
								}),
							})
						end),
					},
				},
			}),
		}),
		Backdrop = React.createElement(Section, {
			layoutOrder = 3,
			name = "Backdrop",
		}, {
			WithBackdrop = React.createElement(LabeledDialogTrigger, {
				label = "hasBackdrop = true",
				layoutOrder = 1,
				hasBackdrop = true,
				children = minimalDialogChildren(),
			}),
			WithoutBackdrop = React.createElement(LabeledDialogTrigger, {
				label = "hasBackdrop = false",
				layoutOrder = 2,
				hasBackdrop = false,
				children = minimalDialogChildren(),
			}),
		}),
	})
end

return {
	summary = "A modal container for title, content, media, and actions with fixed semantic sizes.",
	stories = {
		{
			name = "Playground",
			story = RootStory :: unknown,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "Controlled component",
			summary = "Parent owns open state; dismiss via onClose or action buttons.",
			story = ControlledStory,
		},
		{
			name = "Content",
			summary = "Optional subparts and backdrop.",
			story = ContentStory,
		},
	},
	controls = {
		size = Dash.values(DialogSize),
		disablePortal = false,
		hasBackdrop = true,
	},
}
