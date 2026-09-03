local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local DialogSize = require(Foundation.Enums.DialogSize)
local DialogStoryHelpers = require(Foundation.Components.Dialog.DialogStoryHelpers)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local LabeledDialogTrigger = DialogStoryHelpers.LabeledDialogTrigger
local RootStory = DialogStoryHelpers.RootStory
local Section = DialogStoryHelpers.Section
local listDialogChildren = DialogStoryHelpers.listDialogChildren
local makeDialogChildren = DialogStoryHelpers.makeDialogChildren

type DialogSize = DialogSize.DialogSize

local SIZE_ORDER: { DialogSize } = DialogStoryHelpers.SIZE_ORDER
local DEFAULT_SIZE: DialogSize = DialogStoryHelpers.DEFAULT_SIZE

local function contentBoundsChildren()
	return makeDialogChildren({
		contentChildren = {
			ContentBounds = React.createElement(View, {
				tag = "col size-full-1200 padding-medium bg-shift-400",
				LayoutOrder = 1,
			}, {
				Description = React.createElement(Text, {
					Text = "Dialog.Content — scrollable body region.",
					tag = "size-full-0 auto-y text-body-medium content-default",
					LayoutOrder = 1,
				}),
			}),
		} :: { [string]: React.ReactNode },
	})
end

local function Playground(props: {
	controls: {
		rootSize: DialogSize?,
	},
})
	return React.createElement(RootStory, {
		controls = {
			size = props.controls.rootSize or DEFAULT_SIZE,
			hasBackdrop = true,
		},
		children = contentBoundsChildren(),
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
					children = contentBoundsChildren(),
				})
			end)
		),
	})
end

local function OverflowStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Scroll = React.createElement(Section, {
			layoutOrder = 1,
			name = "Scroll",
			note = "Content scrolls when it exceeds the available body height. A scrollbar and right padding appear automatically.",
		}, {
			LongList = React.createElement(LabeledDialogTrigger, {
				label = "Long list",
				layoutOrder = 1,
				children = listDialogChildren(12),
			}),
		}),
		Selectable = React.createElement(Section, {
			layoutOrder = 2,
			name = "Selectable",
			note = "When content overflows, the scroll view becomes selectable for gamepad navigation unless Selectable is false.",
		}, {
			Default = React.createElement(LabeledDialogTrigger, {
				label = "Default",
				layoutOrder = 1,
				children = listDialogChildren(12),
			}),
			Disabled = React.createElement(LabeledDialogTrigger, {
				label = "Selectable = false",
				layoutOrder = 2,
				children = listDialogChildren(12, false),
			}),
		}),
	})
end

return {
	summary = "Scrollable body region for dialog copy. Typography follows root size via DialogProvider. Scrollbar, padding, and selectability activate when content overflows.",
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
			story = OverflowStory,
		},
	},
	controls = {
		rootSize = Dash.values(DialogSize),
	},
}
