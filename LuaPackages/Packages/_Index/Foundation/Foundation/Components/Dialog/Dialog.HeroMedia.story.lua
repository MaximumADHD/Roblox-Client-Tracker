local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local DialogSize = require(Foundation.Enums.DialogSize)
local DialogStoryHelpers = require(Foundation.Components.Dialog.DialogStoryHelpers)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local LabeledDialogTrigger = DialogStoryHelpers.LabeledDialogTrigger
local RootStory = DialogStoryHelpers.RootStory
local Section = DialogStoryHelpers.Section
local heroMediaDialogChildren = DialogStoryHelpers.heroMediaDialogChildren
local makeDialogChildren = DialogStoryHelpers.makeDialogChildren

type ColorStyle = Types.ColorStyle
type DialogHeroMediaOptions = DialogStoryHelpers.DialogHeroMediaOptions
type DialogSize = DialogSize.DialogSize

local DEFAULT_SIZE: DialogSize = DialogStoryHelpers.DEFAULT_SIZE
local SIZE_ORDER: { DialogSize } = DialogStoryHelpers.SIZE_ORDER
local HERO_MEDIA = DialogStoryHelpers.HERO_MEDIA
local HERO_MEDIA_TRANSPARENT = "component_assets/contactFullAvatar_small"
local HERO_MEDIA_FIXED_HEIGHT = UDim.new(0, 160)
local ASPECT_RATIOS: { { label: string, value: number } } = {
	{ label = "16:9", value = 16 / 9 },
	{ label = "4:3", value = 4 / 3 },
	{ label = "1:1", value = 1 },
	{ label = "21:9", value = 21 / 9 },
}
local ASPECT_RATIO_LABELS = Dash.map(ASPECT_RATIOS, function(ratio)
	return ratio.label
end)
table.insert(ASPECT_RATIO_LABELS, "None")

local HERO_MEDIA_DEFAULT_LABEL = `Default hero image ({HERO_MEDIA})`
local HERO_MEDIA_TRANSPARENT_LABEL = `Transparent asset ({HERO_MEDIA_TRANSPARENT})`

local function aspectRatioFromLabel(label: string?): number?
	if label == nil or label == "None" then
		return nil
	end
	for _, ratio in ASPECT_RATIOS do
		if ratio.label == label then
			return ratio.value
		end
	end
	return 16 / 9
end

local function greenFill(tokens): ColorStyle
	return tokens.Color.Extended.Green.Green_500
end

local function blueTint(tokens): ColorStyle
	return {
		Color3 = tokens.Color.Extended.Blue.Blue_500.Color3,
		Transparency = 0.4,
	}
end

local function heroMediaFromControls(
	controls: {
		aspectRatio: string?,
		media: string?,
		backgroundStyle: string?,
		mediaStyle: string?,
		height: string?,
	},
	tokens
): DialogHeroMediaOptions
	return {
		aspectRatio = aspectRatioFromLabel(controls.aspectRatio),
		media = if controls.media == HERO_MEDIA_TRANSPARENT_LABEL then HERO_MEDIA_TRANSPARENT else nil,
		backgroundStyle = if controls.backgroundStyle == "green fill" then greenFill(tokens) else nil,
		mediaStyle = if controls.mediaStyle == "blue tint" then blueTint(tokens) else nil,
		height = if controls.height == "160px" then HERO_MEDIA_FIXED_HEIGHT else nil,
	}
end

local function Playground(props: {
	controls: {
		rootSize: DialogSize?,
		aspectRatio: string?,
		media: string?,
		backgroundStyle: string?,
		mediaStyle: string?,
		height: string?,
	},
})
	local tokens = useTokens()

	return React.createElement(RootStory, {
		controls = {
			size = props.controls.rootSize or DEFAULT_SIZE,
			hasBackdrop = true,
		},
		children = makeDialogChildren({
			hasHeroMedia = true,
			heroMedia = heroMediaFromControls(props.controls, tokens),
		}),
	})
end

local function SizingStory()
	local tokens = useTokens()

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
					children = heroMediaDialogChildren(),
				})
			end)
		),
		AspectRatio = React.createElement(
			Section,
			{
				layoutOrder = 2,
				name = "Aspect ratio",
				note = "aspectRatio accepts any number; values shown are representative examples, not enum values.",
			},
			Dash.map(ASPECT_RATIOS, function(ratio, index)
				return React.createElement(LabeledDialogTrigger, {
					label = ratio.label,
					layoutOrder = index,
					children = heroMediaDialogChildren({
						aspectRatio = ratio.value,
					}),
				})
			end)
		),
		Height = React.createElement(Section, {
			layoutOrder = 3,
			name = "Height",
			note = "height accepts any UDim; 160px is a representative example. Default height scales with aspect ratio.",
		}, {
			Fixed = React.createElement(LabeledDialogTrigger, {
				label = "160px",
				layoutOrder = 1,
				children = heroMediaDialogChildren({
					mediaStyle = blueTint(tokens),
					height = HERO_MEDIA_FIXED_HEIGHT,
				}),
			}),
		}),
	})
end

local function ContentStory()
	local tokens = useTokens()

	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Transparency = React.createElement(Section, {
			layoutOrder = 1,
			name = "Transparency",
			note = "Transparent assets reveal the Image background through alpha. backgroundStyle fills the hero area; without it, only opaque pixels render.",
		}, {
			WithoutBackground = React.createElement(LabeledDialogTrigger, {
				label = "Without backgroundStyle",
				layoutOrder = 1,
				children = heroMediaDialogChildren({
					media = HERO_MEDIA_TRANSPARENT,
				}),
			}),
			WithBackground = React.createElement(LabeledDialogTrigger, {
				label = "With backgroundStyle",
				layoutOrder = 2,
				children = heroMediaDialogChildren({
					media = HERO_MEDIA_TRANSPARENT,
					backgroundStyle = greenFill(tokens),
				}),
			}),
		}),
		Style = React.createElement(Section, {
			layoutOrder = 2,
			name = "Style",
		}, {
			WithoutMediaStyle = React.createElement(LabeledDialogTrigger, {
				label = "Without mediaStyle",
				layoutOrder = 1,
				children = heroMediaDialogChildren(),
			}),
			WithMediaStyle = React.createElement(LabeledDialogTrigger, {
				label = "With mediaStyle",
				layoutOrder = 2,
				children = heroMediaDialogChildren({
					mediaStyle = blueTint(tokens),
				}),
			}),
		}),
	})
end

return {
	summary = "Renders a full-width hero image above the dialog title. Corner radius and horizontal bleed follow root size via DialogProvider. Mounting HeroMedia sets hasHeroMedia on context so title padding adjusts.",
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
		rootSize = Dash.values(DialogSize),
		aspectRatio = ASPECT_RATIO_LABELS,
		media = { HERO_MEDIA_DEFAULT_LABEL, HERO_MEDIA_TRANSPARENT_LABEL },
		backgroundStyle = { "unset", "green fill" },
		mediaStyle = { "unset", "blue tint" },
		height = { "default scale", "160px" },
	},
}
