local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local ButtonGroup = require(Foundation.Components.ButtonGroup)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local InputSize = require(Foundation.Enums.InputSize)
local Orientation = require(Foundation.Enums.Orientation)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type ButtonVariant = ButtonVariant.ButtonVariant
type SupportedButtonVariant = ButtonVariant.SupportedButtonVariant
type FillBehavior = FillBehavior.FillBehavior
type ButtonGroupSize = ButtonGroup.ButtonGroupSize
type Orientation = Orientation.Orientation
type ButtonGroupItem = ButtonGroup.ButtonGroupItem

type Controls = {
	orientation: Orientation,
	fillBehavior: FillBehavior,
	size: ButtonGroupSize,
	-- Button 1
	button1Text: string,
	button1Variant: SupportedButtonVariant,
	button1Icon: string,
	button1IsDisabled: boolean,
	button1IsLoading: boolean,
	button1InputDelay: number,
	-- Button 2
	button2Text: string,
	button2Variant: SupportedButtonVariant,
	button2Icon: string,
	button2IsDisabled: boolean,
	button2IsLoading: boolean,
	button2InputDelay: number,
	-- Button 3
	button3Text: string,
	button3Variant: SupportedButtonVariant,
	button3Icon: string,
	button3IsDisabled: boolean,
	button3IsLoading: boolean,
	button3InputDelay: number,
}

local function activated(label: string)
	return function()
		print(`ButtonGroup: "{label}" activated`)
	end
end

local function Label(text: string, layoutOrder: number)
	return React.createElement(Text, {
		Text = text,
		tag = "auto-xy text-label-medium content-muted",
		LayoutOrder = layoutOrder,
	})
end

local function Section(
	label: string,
	layoutOrder: number,
	containerTag: string,
	children: { [string]: React.ReactNode }
)
	return React.createElement(View, {
		tag = "col gap-xsmall " .. containerTag,
		LayoutOrder = layoutOrder,
	}, {
		Label = Label(label, 1),
		Content = React.createElement(View, {
			tag = containerTag,
			LayoutOrder = 2,
		}, children),
	})
end

local function PlaygroundStory(props: { controls: Controls }): React.ReactNode
	local controls = props.controls
	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y",
	}, {
		Group = React.createElement(ButtonGroup, {
			orientation = controls.orientation,
			fillBehavior = if controls.fillBehavior == React.None then nil else controls.fillBehavior,
			size = controls.size,
			buttons = {
				{
					text = controls.button1Text,
					variant = controls.button1Variant,
					icon = if controls.button1Icon == "" then nil else controls.button1Icon,
					isDisabled = controls.button1IsDisabled,
					isLoading = controls.button1IsLoading,
					inputDelay = controls.button1InputDelay,
					onActivated = function()
						print(`ButtonGroup button 1 "{controls.button1Text}" activated`)
					end,
				},
				{
					text = controls.button2Text,
					variant = controls.button2Variant,
					icon = if controls.button2Icon == "" then nil else controls.button2Icon,
					isDisabled = controls.button2IsDisabled,
					isLoading = controls.button2IsLoading,
					inputDelay = controls.button2InputDelay,
					onActivated = function()
						print(`ButtonGroup button 2 "{controls.button2Text}" activated`)
					end,
				},
				{
					text = controls.button3Text,
					variant = controls.button3Variant,
					icon = if controls.button3Icon == "" then nil else controls.button3Icon,
					isDisabled = controls.button3IsDisabled,
					isLoading = controls.button3IsLoading,
					inputDelay = controls.button3InputDelay,
					onActivated = function()
						print(`ButtonGroup button 3 "{controls.button3Text}" activated`)
					end,
				},
			} :: { ButtonGroupItem },
		}),
	})
end

local function VerticalStory(props: { controls: Controls }): React.ReactNode
	local size: ButtonGroupSize = props.controls.size
	return React.createElement(View, {
		tag = "col gap-xlarge size-full-0 auto-y",
	}, {

		Basic = Section("Basic", 1, "size-full-0 auto-y", {
			Group = React.createElement(ButtonGroup, {
				orientation = Orientation.Vertical,
				size = size,
				buttons = {
					{
						text = "Accept and continue",
						variant = ButtonVariant.Emphasis,
						onActivated = activated("Accept and continue"),
					},
					{
						text = "Cancel",
						variant = ButtonVariant.Standard,
						onActivated = activated("Cancel"),
					},
				} :: { ButtonGroupItem },
			}),
		}),

		LongText = Section("Long text", 2, "size-full-0 auto-y", {
			Group = React.createElement(ButtonGroup, {
				orientation = Orientation.Vertical,
				size = size,
				buttons = {
					{
						text = "Confirm and continue to the next step",
						variant = ButtonVariant.Emphasis,
						onActivated = activated("Confirm and continue to the next step"),
					},
					{
						text = "Discard all changes and go back",
						variant = ButtonVariant.Standard,
						onActivated = activated("Discard all changes and go back"),
					},
				} :: { ButtonGroupItem },
			}),
		}),

		Icons = Section("With icons", 3, "size-full-0 auto-y", {
			Group = React.createElement(ButtonGroup, {
				orientation = Orientation.Vertical,
				size = size,
				buttons = {
					{
						text = "Join experience",
						icon = "play-small",
						variant = ButtonVariant.Emphasis,
						onActivated = activated("Join experience"),
					},
					{
						text = "Add to favorites",
						icon = "heart",
						variant = ButtonVariant.Standard,
						onActivated = activated("Add to favorites"),
					},
				} :: { ButtonGroupItem },
			}),
		}),

		InputDelay = Section("Input delay (0.5 s on primary)", 4, "size-full-0 auto-y", {
			Group = React.createElement(ButtonGroup, {
				orientation = Orientation.Vertical,
				size = size,
				buttons = {
					{
						text = "Confirm purchase",
						variant = ButtonVariant.Emphasis,
						onActivated = activated("Confirm purchase"),
						inputDelay = 0.5,
					},
					{
						text = "Cancel",
						variant = ButtonVariant.Standard,
						onActivated = activated("Cancel"),
					},
				} :: { ButtonGroupItem },
			}),
		}),

		States = Section("Disabled & loading", 5, "size-full-0 auto-y", {
			Group = React.createElement(ButtonGroup, {
				orientation = Orientation.Vertical,
				size = size,
				buttons = {
					{
						text = "Loading",
						variant = ButtonVariant.Emphasis,
						onActivated = activated("Loading"),
						isLoading = true,
					},
					{
						text = "Disabled",
						variant = ButtonVariant.Standard,
						onActivated = activated("Disabled"),
						isDisabled = true,
					},
				} :: { ButtonGroupItem },
			}),
		}),
	})
end

local function HorizontalStory(props: { controls: Controls }): React.ReactNode
	local size: ButtonGroupSize = props.controls.size
	return React.createElement(View, {
		tag = "col gap-xlarge size-full-0 auto-y",
	}, {
		Hug = Section("Hug (default) — 2 buttons", 1, "auto-xy", {
			Group = React.createElement(ButtonGroup, {
				orientation = Orientation.Horizontal,
				size = size,
				buttons = {
					{
						text = "Cancel",
						variant = ButtonVariant.Standard,
						onActivated = activated("Cancel"),
					},
					{
						text = "Accept",
						variant = ButtonVariant.Emphasis,
						onActivated = activated("Accept"),
					},
				} :: { ButtonGroupItem },
			}),
		}),

		Fill2 = Section("Fill — 2 buttons", 2, "size-full-0 auto-y", {
			Group = React.createElement(ButtonGroup, {
				orientation = Orientation.Horizontal,
				fillBehavior = FillBehavior.Fill,
				size = size,
				buttons = {
					{
						text = "Cancel",
						variant = ButtonVariant.Standard,
						onActivated = activated("Cancel"),
					},
					{
						text = "Accept",
						variant = ButtonVariant.Emphasis,
						onActivated = activated("Accept"),
					},
				} :: { ButtonGroupItem },
			}),
		}),

		Fill3 = Section("Fill — 3 buttons", 3, "size-full-0 auto-y", {
			Group = React.createElement(ButtonGroup, {
				orientation = Orientation.Horizontal,
				fillBehavior = FillBehavior.Fill,
				size = size,
				buttons = {
					{
						text = "Cancel",
						variant = ButtonVariant.Standard,
						onActivated = activated("Cancel"),
					},
					{
						text = "Continue",
						variant = ButtonVariant.SoftEmphasis,
						onActivated = activated("Continue"),
					},
					{
						text = "Accept",
						variant = ButtonVariant.Emphasis,
						onActivated = activated("Accept"),
					},
				} :: { ButtonGroupItem },
			}),
		}),

		Icons = Section("With icons (fill)", 4, "size-full-0 auto-y", {
			Group = React.createElement(ButtonGroup, {
				orientation = Orientation.Horizontal,
				fillBehavior = FillBehavior.Fill,
				size = size,
				buttons = {
					{
						text = "Join",
						icon = "play-small",
						variant = ButtonVariant.Emphasis,
						onActivated = activated("Join"),
					},
					{
						text = "Favorite",
						icon = "heart",
						variant = ButtonVariant.Standard,
						onActivated = activated("Favorite"),
					},
				} :: { ButtonGroupItem },
			}),
		}),

		InputDelay = Section("Input delay (0.5 s on primary, fill)", 5, "size-full-0 auto-y", {
			Group = React.createElement(ButtonGroup, {
				orientation = Orientation.Horizontal,
				fillBehavior = FillBehavior.Fill,
				size = size,
				buttons = {
					{
						text = "Confirm",
						variant = ButtonVariant.Emphasis,
						onActivated = activated("Confirm"),
						inputDelay = 0.5,
					},
					{
						text = "Cancel",
						variant = ButtonVariant.Standard,
						onActivated = activated("Cancel"),
					},
				} :: { ButtonGroupItem },
			}),
		}),

		-- One loading, one disabled — to verify each state renders in a row.
		States = Section("Disabled & loading (fill)", 6, "size-full-0 auto-y", {
			Group = React.createElement(ButtonGroup, {
				orientation = Orientation.Horizontal,
				fillBehavior = FillBehavior.Fill,
				size = size,
				buttons = {
					{
						text = "Loading",
						variant = ButtonVariant.Emphasis,
						onActivated = activated("Loading"),
						isLoading = true,
					},
					{
						text = "Disabled",
						variant = ButtonVariant.Standard,
						onActivated = activated("Disabled"),
						isDisabled = true,
					},
				} :: { ButtonGroupItem },
			}),
		}),
	})
end

return {
	summary = "ButtonGroup",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory,
		},
		{
			name = "Vertical",
			story = VerticalStory,
		},
		{
			name = "Horizontal",
			story = HorizontalStory,
		},
	},
	controls = {
		-- Group
		orientation = {
			Orientation.Horizontal,
			Orientation.Vertical,
		} :: { Orientation },
		fillBehavior = {
			React.None,
			FillBehavior.Fit,
			FillBehavior.Fill,
		} :: { FillBehavior },
		size = {
			InputSize.Medium,
			InputSize.Small,
			InputSize.XSmall,
		} :: { ButtonGroupSize },
		-- Button 1
		button1Text = "Cancel",
		button1Variant = {
			ButtonVariant.Standard,
			ButtonVariant.Emphasis,
			ButtonVariant.SoftEmphasis,
			ButtonVariant.Alert,
			ButtonVariant.Utility,
			ButtonVariant.Link,
		} :: { SupportedButtonVariant },
		button1Icon = {
			"",
			BuilderIcons.Icon.PlaySmall,
			BuilderIcons.Icon.Heart,
			BuilderIcons.Icon.Robux,
			BuilderIcons.Icon.Glasses,
		},
		button1IsDisabled = false,
		button1IsLoading = false,
		button1InputDelay = 0,
		-- Button 2
		button2Text = "Continue",
		button2Variant = {
			ButtonVariant.SoftEmphasis,
			ButtonVariant.Standard,
			ButtonVariant.Emphasis,
			ButtonVariant.Alert,
			ButtonVariant.Utility,
			ButtonVariant.Link,
		} :: { SupportedButtonVariant },
		button2Icon = {
			"",
			BuilderIcons.Icon.PlaySmall,
			BuilderIcons.Icon.Heart,
			BuilderIcons.Icon.Robux,
			BuilderIcons.Icon.Glasses,
		},
		button2IsDisabled = false,
		button2IsLoading = false,
		button2InputDelay = 0,
		-- Button 3
		button3Text = "Accept",
		button3Variant = {
			ButtonVariant.Emphasis,
			ButtonVariant.Standard,
			ButtonVariant.SoftEmphasis,
			ButtonVariant.Alert,
			ButtonVariant.Utility,
			ButtonVariant.Link,
		} :: { SupportedButtonVariant },
		button3Icon = {
			"",
			BuilderIcons.Icon.PlaySmall,
			BuilderIcons.Icon.Heart,
			BuilderIcons.Icon.Robux,
			BuilderIcons.Icon.Glasses,
		},
		button3IsDisabled = false,
		button3IsLoading = false,
		button3InputDelay = 0,
	},
}
