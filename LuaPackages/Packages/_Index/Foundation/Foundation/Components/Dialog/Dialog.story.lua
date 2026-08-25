local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local Checkbox = require(Foundation.Components.Checkbox)
local Dialog = require(Foundation.Components.Dialog)
local DialogSize = require(Foundation.Enums.DialogSize)
local InputSize = require(Foundation.Enums.InputSize)
local List = require(Foundation.Components.List)
local Orientation = require(Foundation.Enums.Orientation)
local RadioGroup = require(Foundation.Components.RadioGroup)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local useDialogNavigation = require(Foundation.Components.Dialog.useDialogNavigation)
local useTokens = require(Foundation.Providers.Style.useTokens)

type DialogSize = DialogSize.DialogSize
type Orientation = Orientation.Orientation

type Controls = {
	size: DialogSize,
	title: string,
	content: string,
	hasActions: boolean,
	actionsOrientation: Orientation,
	hasHeroMedia: boolean,
	media: string,
	selectableContent: boolean,
}

local SAMPLE_CONTENT =
	"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus fermentum elit ac nisi ornare, quis blandit est efficitur. Vivamus fringilla sagittis risus at dignissim. Duis hendrerit."

local MEDIA_OPTIONS = {
	"rbxassetid://103403748802347",
	"rbxassetid://88076582911570",
	"pictograms/celebrate",
	"pictograms/gift",
	"pictograms/trusted_connections_2",
	"pictograms/two_people",
	"pictograms/heart",
	"pictograms/badge",
	"pictograms/notifications",
	"pictograms/voice_chat",
	"pictograms/robux",
	"pictograms/protection_shield",
}

local function noop() end

local function isPictogram(media: string?): boolean
	return media ~= nil and string.match(media, "^pictograms/") ~= nil
end

local function confirmDismissActions(): { any }
	return {
		{ text = "Confirm", variant = ButtonVariant.Emphasis, onActivated = noop } :: any,
		{ text = "Dismiss", variant = ButtonVariant.Standard, onActivated = noop } :: any,
	}
end

-- The Dialog is modal and always renders through the overlay portal, so a story only needs a
-- trigger button. Opening portals the dialog above everything with a backdrop.
local function DialogTrigger(props: {
	size: DialogSize?,
	children: React.ReactNode,
})
	local isOpen, setIsOpen = React.useState(false)

	return React.createElement(View, {
		tag = "auto-xy",
	}, {
		Trigger = React.createElement(Button, {
			text = if isOpen then "Close Dialog" else "Open Dialog",
			variant = ButtonVariant.Emphasis,
			onActivated = function()
				setIsOpen(not isOpen)
			end,
		}),
		Dialog = if isOpen
			then React.createElement(Dialog.Root, {
				size = props.size,
				hasBackdrop = true,
				disablePortal = false,
				onClose = function()
					setIsOpen(false)
				end,
			}, props.children)
			else nil,
	})
end

local function CheckboxContentWithNavigation(props: {
	checkboxStates: { [string]: boolean },
	toggleCheckbox: (key: string) -> (checked: boolean) -> (),
})
	local dialogNav = useDialogNavigation()
	local firstCheckboxRef = React.useRef(nil)

	React.useEffect(function()
		dialogNav.setContentStartRef(firstCheckboxRef)
	end, { dialogNav.setContentStartRef })

	return React.createElement(View, {
		tag = "col gap-small size-full-0 auto-y",
	}, {
		Notifications = React.createElement(Checkbox, {
			label = "Enable notifications",
			isChecked = props.checkboxStates.notifications,
			onActivated = props.toggleCheckbox("notifications"),
			ref = firstCheckboxRef,
			NextSelectionUp = dialogNav.closeAffordanceRef,
			LayoutOrder = 1,
		}),
		Analytics = React.createElement(Checkbox, {
			label = "Share usage analytics",
			isChecked = props.checkboxStates.analytics,
			onActivated = props.toggleCheckbox("analytics"),
			LayoutOrder = 2,
		}),
		Marketing = React.createElement(Checkbox, {
			label = "Receive marketing emails",
			isChecked = props.checkboxStates.marketing,
			onActivated = props.toggleCheckbox("marketing"),
			LayoutOrder = 3,
		}),
		ThirdParty = React.createElement(Checkbox, {
			label = "Allow third-party integrations",
			isChecked = props.checkboxStates.thirdParty,
			onActivated = props.toggleCheckbox("thirdParty"),
			LayoutOrder = 4,
		}),
	})
end

local function PlaygroundStory(props: { controls: Controls }): React.ReactNode
	local controls = props.controls
	local tokens = useTokens()

	return React.createElement(DialogTrigger, {
		size = controls.size,
	}, {
		DialogMedia = if controls.hasHeroMedia
			then React.createElement(Dialog.HeroMedia, {
				media = controls.media,
				mediaStyle = if isPictogram(controls.media) then tokens.Color.Content.Emphasis else nil,
				backgroundStyle = if isPictogram(controls.media)
					then tokens.Color.ActionSoftEmphasis.Background
					else nil,
				aspectRatio = 2.5,
			})
			else nil,
		DialogTitle = React.createElement(Dialog.Title, {
			text = controls.title,
		}),
		DialogContent = React.createElement(Dialog.Content, {
			LayoutOrder = 2,
			Selectable = controls.selectableContent,
		}, {
			DialogText = React.createElement(Dialog.Text, {
				Text = controls.content,
			}),
		}),
		DialogActions = if controls.hasActions
			then React.createElement(Dialog.Actions, {
				LayoutOrder = 3,
				orientation = controls.actionsOrientation,
				actions = confirmDismissActions(),
			})
			else nil,
	})
end

local function TitleAndContentStory(): React.ReactNode
	return React.createElement(DialogTrigger, {
		size = DialogSize.Small,
	}, {
		DialogTitle = React.createElement(Dialog.Title, {
			text = "Dialog Heading",
		}),
		DialogContent = React.createElement(Dialog.Content, {
			LayoutOrder = 2,
		}, {
			DialogText = React.createElement(Dialog.Text, {
				Text = SAMPLE_CONTENT,
			}),
		}),
		DialogActions = React.createElement(Dialog.Actions, {
			LayoutOrder = 3,
			actions = confirmDismissActions(),
		}),
	})
end

local function HeroMediaStory(): React.ReactNode
	local tokens = useTokens()

	return React.createElement(DialogTrigger, {
		size = DialogSize.Medium,
	}, {
		DialogMedia = React.createElement(Dialog.HeroMedia, {
			media = "pictograms/celebrate",
			mediaStyle = tokens.Color.Content.Emphasis,
			backgroundStyle = tokens.Color.ActionSoftEmphasis.Background,
			aspectRatio = 2.5,
		}),
		DialogTitle = React.createElement(Dialog.Title, {
			text = "You're all set",
		}),
		DialogContent = React.createElement(Dialog.Content, {
			LayoutOrder = 2,
		}, {
			DialogText = React.createElement(Dialog.Text, {
				Text = SAMPLE_CONTENT,
			}),
		}),
		DialogActions = React.createElement(Dialog.Actions, {
			LayoutOrder = 3,
			actions = confirmDismissActions(),
		}),
	})
end

local function ScrollableContentStory(): React.ReactNode
	local ITEM_COUNT = 15
	local listItems = Dash.map(table.create(ITEM_COUNT, true), function(_: boolean, i: number)
		return React.createElement(List.Item, {
			key = tostring(i),
			title = `Option {i}`,
			description = "Description for this option",
			onActivated = noop,
			LayoutOrder = i,
		})
	end)

	return React.createElement(DialogTrigger, {
		size = DialogSize.Small,
	}, {
		DialogTitle = React.createElement(Dialog.Title, {
			text = "Choose an option",
		}),
		DialogContent = React.createElement(Dialog.Content, {
			LayoutOrder = 2,
		}, {
			ItemList = React.createElement(List.Root, nil, listItems),
		}),
		DialogActions = React.createElement(Dialog.Actions, {
			LayoutOrder = 3,
			actions = confirmDismissActions(),
		}),
	})
end

local function CustomContentStory(): React.ReactNode
	local contentValues = { "A", "B", "C", "D", "E" }
	local contentItems = Dash.map(contentValues, function(value)
		return React.createElement(RadioGroup.Item, {
			value = value,
			label = "Dialog Option " .. value,
			size = InputSize.Medium,
		})
	end)

	local CustomContent = React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y",
	}, {
		Text = React.createElement(Text, {
			tag = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-align-y-top content-default",
			Text = "Pick one of the options below.",
			LayoutOrder = 1,
		}),
		RadioGroup = React.createElement(RadioGroup.Root, {
			onValueChanged = noop,
			LayoutOrder = 2,
		}, contentItems),
	})

	return React.createElement(DialogTrigger, {
		size = DialogSize.Small,
	}, {
		DialogTitle = React.createElement(Dialog.Title, {
			text = "Custom content",
		}),
		DialogContent = React.createElement(Dialog.Content, {
			LayoutOrder = 2,
		}, {
			CustomContent = CustomContent,
		}),
		DialogActions = React.createElement(Dialog.Actions, {
			LayoutOrder = 3,
			actions = confirmDismissActions(),
		}),
	})
end

local function FocusNavigationStory(): React.ReactNode
	local checkboxStates, setCheckboxStates = React.useState({
		notifications = false,
		analytics = false,
		marketing = false,
		thirdParty = false,
	})

	local function toggleCheckbox(key: string)
		return function(checked: boolean)
			setCheckboxStates(function(prev)
				local next = Dash.assign({}, prev)
				next[key] = checked
				return next
			end)
		end
	end

	return React.createElement(DialogTrigger, {
		size = DialogSize.Small,
	}, {
		DialogTitle = React.createElement(Dialog.Title, {
			text = "Preferences",
		}),
		DialogContent = React.createElement(Dialog.Content, {
			LayoutOrder = 2,
		}, {
			CheckboxContent = React.createElement(CheckboxContentWithNavigation, {
				checkboxStates = checkboxStates,
				toggleCheckbox = toggleCheckbox,
			}),
		}),
		DialogActions = React.createElement(Dialog.Actions, {
			LayoutOrder = 3,
			actions = confirmDismissActions(),
		}),
	})
end

return {
	summary = "Dialogs create a temporary, purposeful exchange between a user and our platform, helping surface important information or require user input without disrupting the larger experience.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Title & content",
			story = TitleAndContentStory,
		},
		{
			name = "Hero media",
			story = HeroMediaStory,
		},
		{
			name = "Scrollable content",
			summary = "Content scrolls within the dialog once it overflows the max height.",
			story = ScrollableContentStory,
		},
		{
			name = "Custom content",
			story = CustomContentStory,
		},
		{
			name = "Focus navigation",
			summary = "Content wires its first focusable element to the close affordance via useDialogNavigation.",
			story = FocusNavigationStory,
		},
	},
	controls = {
		size = Dash.values(DialogSize),
		title = "Welcome Dialog",
		content = SAMPLE_CONTENT,
		hasActions = true,
		actionsOrientation = Dash.values(Orientation),
		hasHeroMedia = false,
		media = MEDIA_OPTIONS,
		selectableContent = true,
	},
}
