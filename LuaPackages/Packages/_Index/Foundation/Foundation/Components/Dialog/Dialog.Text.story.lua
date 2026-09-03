local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local DialogSize = require(Foundation.Enums.DialogSize)
local DialogStoryHelpers = require(Foundation.Components.Dialog.DialogStoryHelpers)
local View = require(Foundation.Components.View)

local LabeledDialogTrigger = DialogStoryHelpers.LabeledDialogTrigger
local RootStory = DialogStoryHelpers.RootStory
local Section = DialogStoryHelpers.Section
local makeDialogChildren = DialogStoryHelpers.makeDialogChildren

type DialogSize = DialogSize.DialogSize

local SIZE_ORDER: { DialogSize } = DialogStoryHelpers.SIZE_ORDER
local DEFAULT_SIZE: DialogSize = DialogStoryHelpers.DEFAULT_SIZE
local SHORT_CONTENT = DialogStoryHelpers.SHORT_CONTENT
local LONG_CONTENT = table.concat({
	"This is a longer block of dialog body copy meant to exceed the available content height and trigger vertical scrolling.",
	"Use enough paragraphs that the scroll view shows a scrollbar and applies right padding for the thumb.",
	"Each paragraph adds more line wraps so the behavior is easy to see at Medium and Small sizes.",
	"Scrolling keeps the title and actions fixed while only the body moves inside the scroll view.",
	"Long copy is common for terms, release notes, or detailed confirmations that need full context.",
	"Keep titles short in these examples so overflow is clearly coming from the body text.",
	"The scrollbar appears automatically when canvas height exceeds the scroll window.",
	"Right padding adjusts when a scrollbar is visible so text does not sit under the thumb.",
}, "\n\n")
local RICH_TEXT_CONTENT = table.concat({
	"Please review the following before continuing:",
	"<b>Important:</b> This action cannot be undone once you confirm.",
	"Terms apply to <b>all linked accounts</b>. Contact support if you have <i>questions</i> about your subscription.",
}, "\n\n")

local function Playground(props: {
	controls: {
		text: string?,
		rootSize: DialogSize?,
	},
})
	return React.createElement(RootStory, {
		controls = {
			size = props.controls.rootSize or DEFAULT_SIZE,
			hasBackdrop = true,
		},
		children = makeDialogChildren({
			content = props.controls.text or SHORT_CONTENT,
		}),
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
					children = makeDialogChildren({}),
				})
			end)
		),
	})
end

local function ContentStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		LongText = React.createElement(Section, {
			layoutOrder = 1,
			name = "Long text",
		}, {
			Example = React.createElement(LabeledDialogTrigger, {
				layoutOrder = 1,
				children = makeDialogChildren({
					content = LONG_CONTENT,
				}),
			}),
		}),
		RichText = React.createElement(Section, {
			layoutOrder = 2,
			name = "Rich text",
			note = "Dialog.Text always renders with RichText enabled, so markup in the Text prop is supported.",
		}, {
			Example = React.createElement(LabeledDialogTrigger, {
				layoutOrder = 1,
				children = makeDialogChildren({
					content = RICH_TEXT_CONTENT,
				}),
			}),
		}),
	})
end

return {
	summary = "Renders dialog body copy inside Content. Typography follows the root size via DialogProvider.",
	stories = {
		{
			name = "Playground",
			story = Playground :: unknown,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		text = "Dialog.Text content goes here.",
		rootSize = Dash.values(DialogSize),
	},
}
