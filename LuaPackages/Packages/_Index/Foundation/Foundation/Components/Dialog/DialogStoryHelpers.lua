local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local Dialog = require(Foundation.Components.Dialog)
local DialogActions = require(Foundation.Components.Dialog.Actions)
local DialogSize = require(Foundation.Enums.DialogSize)
local InputSize = require(Foundation.Enums.InputSize)
local List = require(Foundation.Components.List)
local OnCloseCallbackReason = require(Foundation.Enums.OnCloseCallbackReason)
local Orientation = require(Foundation.Enums.Orientation)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

type ColorStyle = Types.ColorStyle
type DialogAction = DialogActions.DialogAction
type DialogSize = DialogSize.DialogSize
type OnCloseCallbackReason = OnCloseCallbackReason.OnCloseCallbackReason
type Orientation = Orientation.Orientation

export type DialogRootControls = {
	size: DialogSize?,
	disablePortal: boolean?,
	hasBackdrop: boolean?,
}

export type DialogRootStoryChildren = {
	DialogMedia: React.ReactNode?,
	DialogTitle: React.ReactNode?,
	DialogContent: React.ReactNode?,
	DialogActions: React.ReactNode?,
}

export type DialogRootStoryProps = {
	controls: DialogRootControls,
	children: DialogRootStoryChildren?,
}

export type DialogHeroMediaOptions = {
	media: string?,
	aspectRatio: number?,
	mediaStyle: ColorStyle?,
	backgroundStyle: ColorStyle?,
	height: UDim?,
}

export type DialogChildrenOptions = {
	title: string?,
	hasTitle: boolean?,
	content: string?,
	contentSelectable: boolean?,
	contentChildren: { [string]: React.ReactNode }?,
	hasHeroMedia: boolean?,
	heroMedia: DialogHeroMediaOptions?,
	hasActions: boolean?,
	actions: { DialogAction }?,
	actionsOrientation: Orientation?,
	actionsLabel: string?,
}

local SIZE_ORDER: { DialogSize } = {
	DialogSize.Small,
	DialogSize.Medium,
	DialogSize.Large,
}

local DEFAULT_SIZE: DialogSize = DialogSize.Medium
local HERO_MEDIA = "rbxassetid://103403748802347"
local DEFAULT_HERO_MEDIA_ASPECT_RATIO = 16 / 9
local SHORT_CONTENT = "Dialog.Text content goes here."

local DEFAULT_ACTIONS: { DialogAction } = {
	{
		text = "Cancel",
		variant = ButtonVariant.Standard,
		onActivated = function() end,
	},
	{
		text = "Confirm",
		variant = ButtonVariant.Emphasis,
		onActivated = function() end,
	},
}

local function makeScrollableListItems(itemCount: number): { [string]: React.ReactNode }
	local items: { [string]: React.ReactNode } = {}
	for index = 1, itemCount do
		items[`Item{index}`] = React.createElement(List.Item, {
			title = `Item {index}`,
			onActivated = function() end,
			LayoutOrder = index,
		})
	end
	return items
end

local function dialogStoryList(itemCount: number, layoutOrder: number?)
	return React.createElement(List.Root, {
		LayoutOrder = layoutOrder,
		isContained = {
			isContained = false :: false,
			hasMargin = false,
		},
		hasDivider = {
			hasDivider = true :: true,
			isInset = false,
		},
		size = InputSize.Small,
	}, makeScrollableListItems(itemCount))
end

local function makeDialogChildren(options: DialogChildrenOptions?): DialogRootStoryChildren
	local config: DialogChildrenOptions = options or {}
	local heroMedia = config.heroMedia

	return {
		DialogMedia = if config.hasHeroMedia
			then React.createElement(Dialog.HeroMedia, {
				media = (heroMedia and heroMedia.media) or HERO_MEDIA,
				aspectRatio = if heroMedia then heroMedia.aspectRatio else DEFAULT_HERO_MEDIA_ASPECT_RATIO,
				mediaStyle = if heroMedia then heroMedia.mediaStyle else nil,
				backgroundStyle = if heroMedia then heroMedia.backgroundStyle else nil,
				height = if heroMedia then heroMedia.height else nil,
			})
			else nil,
		DialogTitle = if config.hasTitle ~= false
			then React.createElement(Dialog.Title, {
				text = config.title or "Dialog title",
			})
			else nil,
		DialogContent = React.createElement(
			Dialog.Content,
			{
				LayoutOrder = 2,
				Selectable = config.contentSelectable,
			},
			if config.contentChildren
				then config.contentChildren
				else {
					DialogText = React.createElement(Dialog.Text, {
						Text = config.content or SHORT_CONTENT,
						LayoutOrder = 1,
					}),
				}
		),
		DialogActions = if config.hasActions
			then React.createElement(Dialog.Actions, {
				LayoutOrder = 3,
				orientation = config.actionsOrientation,
				label = config.actionsLabel,
				actions = config.actions or DEFAULT_ACTIONS,
			})
			else nil,
	}
end

local function minimalDialogChildren(title: string?, content: string?): DialogRootStoryChildren
	return makeDialogChildren({
		title = title,
		content = content,
	})
end

local function listDialogChildren(itemCount: number, contentSelectable: boolean?): DialogRootStoryChildren
	return makeDialogChildren({
		contentSelectable = contentSelectable,
		contentChildren = {
			List = dialogStoryList(itemCount),
		} :: { [string]: React.ReactNode },
	})
end

local function heroMediaDialogChildren(heroMedia: DialogHeroMediaOptions?): DialogRootStoryChildren
	local options: DialogHeroMediaOptions = heroMedia or {}
	if options.aspectRatio == nil then
		options = Dash.join(options, { aspectRatio = DEFAULT_HERO_MEDIA_ASPECT_RATIO })
	end

	return makeDialogChildren({
		hasHeroMedia = true,
		heroMedia = options,
	})
end

local function Section(props: {
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
				tag = "col gap-xsmall auto-xy",
				LayoutOrder = 1,
			}, {
				Name = React.createElement(Text, {
					Text = props.name,
					tag = "auto-xy text-label-medium content-default",
					LayoutOrder = 1,
				}),
				Note = React.createElement(Text, {
					Text = props.note,
					tag = "auto-xy text-body-small content-muted",
					LayoutOrder = 2,
				}),
			})
			else React.createElement(Text, {
				Text = props.name,
				tag = "auto-xy text-label-medium content-default",
				LayoutOrder = 1,
			}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large align-y-start auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function DialogExample(props: {
	size: DialogSize?,
	hasBackdrop: boolean?,
	disablePortal: boolean?,
	onClose: ((reason: OnCloseCallbackReason?) -> ())?,
	children: DialogRootStoryChildren,
})
	return React.createElement(Dialog.Root, {
		size = (props.size or DEFAULT_SIZE) :: DialogSize,
		hasBackdrop = if props.hasBackdrop ~= nil then props.hasBackdrop else true,
		disablePortal = if props.disablePortal ~= nil then props.disablePortal else false,
		onClose = props.onClose,
	}, {
		DialogMedia = props.children.DialogMedia,
		DialogTitle = props.children.DialogTitle,
		DialogContent = props.children.DialogContent,
		DialogActions = props.children.DialogActions,
	})
end

local function LabeledDialogTrigger(props: {
	label: string?,
	layoutOrder: number,
	buttonText: string?,
	size: DialogSize?,
	hasBackdrop: boolean?,
	children: DialogRootStoryChildren,
})
	local isOpen, setIsOpen = React.useState(false)

	return React.createElement(View, {
		tag = "col gap-small auto-xy",
		LayoutOrder = props.layoutOrder,
	}, {
		Label = if props.label
			then React.createElement(Text, {
				Text = props.label,
				tag = "auto-xy text-caption-small text-align-x-left content-default",
				LayoutOrder = 1,
			})
			else nil,
		OpenButton = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 2,
		}, {
			Button = React.createElement(Button, {
				text = if isOpen then "Close" else (props.buttonText or "Open"),
				onActivated = function()
					setIsOpen(not isOpen)
				end,
				variant = if isOpen then ButtonVariant.Standard else ButtonVariant.Emphasis,
			}),
		}),
		DialogRoot = if isOpen
			then React.createElement(DialogExample, {
				size = props.size,
				hasBackdrop = props.hasBackdrop,
				onClose = function()
					setIsOpen(false)
				end,
				children = props.children,
			})
			else nil,
	})
end

local function RootStory(props: DialogRootStoryProps)
	local isOpen, setIsOpen = React.useState(false)

	return React.createElement(View, {
		tag = "auto-xy",
	}, {
		ToggleButton = React.createElement(Button, {
			text = if isOpen then "Close Dialog" else "Open Dialog",
			onActivated = function()
				setIsOpen(not isOpen)
			end,
			variant = ButtonVariant.Emphasis,
		}),
		DialogRoot = if isOpen
			then React.createElement(DialogExample, {
				size = props.controls.size,
				hasBackdrop = props.controls.hasBackdrop,
				disablePortal = props.controls.disablePortal,
				onClose = function()
					setIsOpen(false)
				end,
				children = props.children or minimalDialogChildren(),
			})
			else nil,
	})
end

return {
	DEFAULT_SIZE = DEFAULT_SIZE,
	DEFAULT_ACTIONS = DEFAULT_ACTIONS,
	SIZE_ORDER = SIZE_ORDER,
	SHORT_CONTENT = SHORT_CONTENT,
	HERO_MEDIA = HERO_MEDIA,
	Section = Section,
	makeDialogChildren = makeDialogChildren,
	minimalDialogChildren = minimalDialogChildren,
	listDialogChildren = listDialogChildren,
	heroMediaDialogChildren = heroMediaDialogChildren,
	dialogStoryList = dialogStoryList,
	DialogExample = DialogExample,
	LabeledDialogTrigger = LabeledDialogTrigger,
	RootStory = RootStory,
}
