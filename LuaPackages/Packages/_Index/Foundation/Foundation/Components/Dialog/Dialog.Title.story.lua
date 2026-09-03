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
local minimalDialogChildren = DialogStoryHelpers.minimalDialogChildren

type DialogSize = DialogSize.DialogSize

local SIZE_ORDER: { DialogSize } = DialogStoryHelpers.SIZE_ORDER
local DEFAULT_SIZE: DialogSize = DialogStoryHelpers.DEFAULT_SIZE
local LONG_TITLE =
	"This is a dialog title that spans multiple lines and should wrap within the dialog header while leaving room for the close affordance."

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
		children = minimalDialogChildren(props.controls.text or "Dialog title"),
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
					children = minimalDialogChildren("Dialog title"),
				})
			end)
		),
	})
end

local function ContentStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		LongTitle = React.createElement(
			Section,
			{
				layoutOrder = 1,
				name = "Long title",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledDialogTrigger, {
					label = size,
					layoutOrder = index,
					size = size,
					children = makeDialogChildren({
						title = LONG_TITLE,
						content = "Body text stays short so wrapping is visible on the title.",
					}),
				})
			end)
		),
	})
end

return {
	summary = "Renders the dialog heading. Typography and padding follow the root size via DialogProvider.",
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
		text = "Dialog title",
		rootSize = Dash.values(DialogSize),
	},
}
