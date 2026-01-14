local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local Dialog = require(Foundation.Components.Dialog)
local DialogSize = require(Foundation.Enums.DialogSize)
local Flags = require(Foundation.Utility.Flags)
local Image = require(Foundation.Components.Image)
local InputSize = require(Foundation.Enums.InputSize)
local Orientation = require(Foundation.Enums.Orientation)
local OverlayProvider = require(Foundation.Providers.Overlay.OverlayProvider)
local RadioGroup = require(Foundation.Components.RadioGroup)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

type ButtonVariant = ButtonVariant.ButtonVariant
type DialogSize = DialogSize.DialogSize

type StoryProps = {
	controls: {
		title: string,
		hasActions: boolean,
		hasBackdrop: boolean,
		disablePortal: boolean,
		actionsLabel: string,
		actionsOrientation: Orientation.Orientation?,
		content: string?,
		media: string?,
		mediaSizeScaleX: number?,
		mediaSizeOffsetX: number?,
		mediaSizeScaleY: number?,
		mediaSizeOffsetY: number?,
		mediaAspectRatio: number?,
		heroMediaBackgroundStyle: boolean?,
		heroMediaHeightScale: number?,
		heroMediaHeightOffset: number?,
		heroMediaAspectRatio: number?,
		mockScreenYOffset: number?,
		size: DialogSize?,
	},
	children: {
		DialogMedia: React.ReactNode?,
		DialogTitle: React.ReactNode?,
		DialogContent: React.ReactNode?,
	}?,
}

local AvatarBG = "component_assets/avatarBG_dark"
local Pictogram = "pictograms/avatar_setup"

local function Story(props: StoryProps)
	local children = props.children or { DialogMedia = nil, DialogContent = nil, DialogTitle = nil }
	local controls = props.controls
	local ref, setRef = React.useState(nil :: GuiBase2d?)
	local tokens = useTokens()
	local isOpen, setIsOpen = React.useState(true)
	local toggleDialog = function()
		setIsOpen(not isOpen)
	end

	return React.createElement(View, {
		ref = setRef,
		backgroundStyle = {
			Color3 = tokens.Color.Shift.Shift_200.Color3,
			Transparency = tokens.Color.Shift.Shift_200.Transparency,
		},
		tag = "clip",
		Size = UDim2.new(1, 0, 0, controls.mockScreenYOffset or 0),
	}, {
		OverlayProvider = React.createElement(OverlayProvider, { gui = ref }, {
			ToggleButton = React.createElement(Button, {
				text = if isOpen then "Close Dialog" else "Open Dialog",
				onActivated = toggleDialog,
				variant = ButtonVariant.Emphasis,
				Position = UDim2.fromOffset(20, 20),
			}),
			DialogRoot = if isOpen
				then React.createElement(Dialog.Root, {
					size = controls.size,
					onClose = toggleDialog,
					hasBackdrop = controls.hasBackdrop,
					disablePortal = controls.disablePortal,
				}, {
					DialogMedia = children.DialogMedia,
					DialogTitle = children.DialogTitle,
					DialogContent = children.DialogContent,
					DialogActions = if controls.hasActions
						then React.createElement(Dialog.Actions, {
							LayoutOrder = 3,
							orientation = controls.actionsOrientation,
							actions = {
								{
									text = "Join",
									variant = ButtonVariant.Emphasis,
									icon = "icons/common/robux",
									onActivated = function()
										print("Join clicked!")
									end,
									inputDelay = 3,
								} :: any,
								{
									text = "Share",
									variant = ButtonVariant.Standard,
									onActivated = function()
										print("Share clicked!")
									end,
								} :: any,
							},
							label = controls.actionsLabel,
						})
						else nil,
				})
				else nil,
		}),
	})
end

function CustomMedia(props: {
	media: string,
	Size: UDim2,
	aspectRatio: number?,
})
	return React.createElement(View, {
		tag = `auto-y size-full-0 row align-x-center {if Flags.FoundationDialogBodyUpdate
			then "padding-top-large"
			else ""}`,
	}, {
		Image = React.createElement(Image, {
			tag = {
				["content-emphasis"] = props.media == Pictogram,
			},
			aspectRatio = props.aspectRatio,
			Image = props.media,
			Size = props.Size,
		}),
	})
end

return {
	summary = "Dialog",
	stories = {
		{
			name = "Hero Image & Title & Content",
			story = function(props: StoryProps)
				local tokens = useTokens()
				return React.createElement(Story, props, {
					DialogTitle = React.createElement(Dialog.Title, {
						text = props.controls.title,
					}),
					DialogMedia = React.createElement(Dialog.HeroMedia, {
						media = props.controls.media :: string,
						mediaStyle = if props.controls.media == Pictogram then tokens.Color.Content.Emphasis else nil,
						backgroundStyle = if props.controls.heroMediaBackgroundStyle
							then tokens.Color.ActionSoftEmphasis.Background
							else nil,
						height = UDim.new(
							props.controls.heroMediaHeightScale or 0,
							props.controls.heroMediaHeightOffset or 0
						),
						aspectRatio = if props.controls.heroMediaAspectRatio > 0
							then props.controls.heroMediaAspectRatio :: number
							else nil,
					}),
					DialogContent = React.createElement(Dialog.Content, {
						LayoutOrder = 2,
					}, {
						DialogText = React.createElement(Dialog.Text, {
							Text = props.controls.content :: string,
						}),
					}),
				})
			end,
		},
		{
			name = "Title & Content",
			story = function(props: StoryProps)
				return React.createElement(Story, props, {
					DialogTitle = React.createElement(Dialog.Title, {
						text = props.controls.title,
					}),
					DialogContent = React.createElement(Dialog.Content, {
						LayoutOrder = 2,
					}, {
						DialogText = React.createElement(Dialog.Text, {
							Text = props.controls.content :: string,
						}),
					}),
				})
			end,
		},
		{
			name = "Hero Image & Content",
			story = function(props: StoryProps)
				local tokens = useTokens()
				return React.createElement(Story, props, {
					DialogMedia = React.createElement(Dialog.HeroMedia, {
						media = props.controls.media :: string,
						mediaStyle = if props.controls.media == Pictogram then tokens.Color.Content.Emphasis else nil,
						backgroundStyle = if props.controls.heroMediaBackgroundStyle
							then tokens.Color.ActionSoftEmphasis.Background
							else nil,
						height = UDim.new(
							props.controls.heroMediaHeightScale or 0,
							props.controls.heroMediaHeightOffset or 0
						),
						aspectRatio = if props.controls.heroMediaAspectRatio > 0
							then props.controls.heroMediaAspectRatio :: number
							else nil,
					}),
					DialogContent = React.createElement(Dialog.Content, {
						LayoutOrder = 2,
					}, {
						DialogText = React.createElement(Dialog.Text, {
							Text = props.controls.content :: string,
						}),
					}),
				})
			end,
		},
		{
			name = "Hero Image only",
			story = function(props: StoryProps)
				local tokens = useTokens()
				return React.createElement(Story, props, {
					DialogMedia = React.createElement(Dialog.HeroMedia, {
						media = props.controls.media :: string,
						mediaStyle = if props.controls.media == Pictogram then tokens.Color.Content.Emphasis else nil,
						backgroundStyle = if props.controls.heroMediaBackgroundStyle
							then tokens.Color.ActionSoftEmphasis.Background
							else nil,
						height = UDim.new(
							props.controls.heroMediaHeightScale or 0,
							props.controls.heroMediaHeightOffset or 0
						),
						aspectRatio = if props.controls.heroMediaAspectRatio > 0
							then props.controls.heroMediaAspectRatio :: number
							else nil,
					}),
				})
			end,
		},
		{
			name = "Custom Content",
			story = function(props: StoryProps)
				local mediaSize = UDim2.new(
					props.controls.mediaSizeScaleX or 0,
					props.controls.mediaSizeOffsetX or 0,
					props.controls.mediaSizeScaleY or 0,
					props.controls.mediaSizeOffsetY or 0
				)
				local contentValues = { "A", "B", "C", "D", "E" }
				local contentItems = Dash.map(contentValues, function(value)
					return React.createElement(RadioGroup.Item, {
						value = value,
						label = "Dialog Option " .. value,
						size = InputSize.Medium,
					})
				end)

				local CustomContent = React.createElement(View, {
					tag = "auto-y size-full-0 col gap-xxlarge",
				}, {
					Text = React.createElement(Text, {
						tag = "text-body-large text-wrap text-align-x-left text-align-y-top auto-y size-full-0",
						Text = "Some text",
						LayoutOrder = 2,
					}),
					RadioGroup = React.createElement(RadioGroup.Root, {
						onValueChanged = function() end,
						LayoutOrder = 3,
					}, contentItems),
					DialogText = React.createElement(Dialog.Text, {
						Text = props.controls.content :: string,
						LayoutOrder = 4,
					}),
				})

				return React.createElement(Story, props, {
					DialogTitle = React.createElement(Dialog.Title, {
						text = props.controls.title,
					}),
					DialogMedia = React.createElement(CustomMedia, {
						media = props.controls.media :: string,
						Size = mediaSize,
						aspectRatio = if props.controls.mediaAspectRatio > 0
							then props.controls.mediaAspectRatio :: number
							else nil,
					}),
					DialogContent = React.createElement(Dialog.Content, {
						LayoutOrder = 2,
					}, {
						CustomContent = CustomContent,
					}),
				})
			end,
		},
		{
			name = "Embedded Media",
			story = function(props: StoryProps)
				local mediaSize = UDim2.new(
					props.controls.mediaSizeScaleX or 0,
					props.controls.mediaSizeOffsetX or 0,
					props.controls.mediaSizeScaleY or 0,
					props.controls.mediaSizeOffsetY or 0
				)

				local CustomContent = React.createElement(View, {
					tag = "auto-y size-full-0 col gap-xlarge",
				}, {
					DialogMedia = React.createElement(CustomMedia, {
						media = props.controls.media :: string,
						Size = mediaSize,
						aspectRatio = if props.controls.mediaAspectRatio > 0
							then props.controls.mediaAspectRatio :: number
							else nil,
						LayoutOrder = 1,
					}),
					DialogText = React.createElement(Dialog.Text, {
						Text = props.controls.content :: string,
						LayoutOrder = 4,
					}),
				})

				return React.createElement(Story, props, {
					DialogTitle = React.createElement(Dialog.Title, {
						text = props.controls.title,
					}),
					DialogContent = React.createElement(Dialog.Content, {
						LayoutOrder = 2,
					}, {
						CustomContent = CustomContent,
					}),
				})
			end,
		},
	},
	controls = {
		title = "Welcome Dialog",
		content = "This is a dialog with a very, very long description that spans multiple lines. Now, I'm not joking when I say that it has a lot to say. Really, a lot of things have a lot to say if you're willing to listen.",
		actionsLabel = "By selecting Primary, I consent to Roblox's collection, use, and storage of my data to enable services and for moderation, safety, and improvement of our services and tools.",
		actionsOrientation = Dash.values(Orientation),
		hasActions = true,
		disablePortal = false,
		hasBackdrop = true,
		media = { Pictogram, AvatarBG },
		mediaSizeScaleX = 1,
		mediaSizeScaleY = 0,
		mediaSizeOffsetX = 0,
		mediaSizeOffsetY = 100,
		mediaAspectRatio = 0,
		heroMediaBackgroundStyle = false,
		heroMediaAspectRatio = 2.5,
		heroMediaHeightScale = 1,
		heroMediaHeightOffset = 0,
		size = Dash.values(DialogSize),
		mockScreenYOffset = 800,
	},
}
