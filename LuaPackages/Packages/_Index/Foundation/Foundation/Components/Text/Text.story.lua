local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local ControlState = require(Foundation.Enums.ControlState)
local Dash = require(Packages.Dash)
local React = require(Packages.React)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

type ControlState = ControlState.ControlState

local RbxDesignFoundations = require(Packages.RbxDesignFoundations)
local DesignTokens = RbxDesignFoundations.themes[RbxDesignFoundations.Theme.Default]().Dark(1)
local NominalScale = DesignTokens.Config.Text.NominalScale

type TypographyEntry = {
	tokenName: string,
	tag: string,
}

type TypographySection = {
	name: string,
	entries: { TypographyEntry },
}

local SAMPLE_TEXT = "The quick brown fox."

local TYPOGRAPHY_SECTIONS: { TypographySection } = {
	{
		name = "Body",
		entries = {
			{ tokenName = "BodySmall", tag = "text-body-small" },
			{ tokenName = "BodyMedium", tag = "text-body-medium" },
			{ tokenName = "BodyLarge", tag = "text-body-large" },
		},
	},
	{
		name = "Caption",
		entries = {
			{ tokenName = "CaptionSmall", tag = "text-caption-small" },
			{ tokenName = "CaptionMedium", tag = "text-caption-medium" },
			{ tokenName = "CaptionLarge", tag = "text-caption-large" },
		},
	},
	{
		name = "Display",
		entries = {
			{ tokenName = "DisplaySmall", tag = "text-display-small" },
			{ tokenName = "DisplayMedium", tag = "text-display-medium" },
			{ tokenName = "DisplayLarge", tag = "text-display-large" },
		},
	},
	{
		name = "Heading",
		entries = {
			{ tokenName = "HeadingSmall", tag = "text-heading-small" },
			{ tokenName = "HeadingMedium", tag = "text-heading-medium" },
			{ tokenName = "HeadingLarge", tag = "text-heading-large" },
		},
	},
	{
		name = "Label",
		entries = {
			{ tokenName = "LabelSmall", tag = "text-label-small" },
			{ tokenName = "LabelMedium", tag = "text-label-medium" },
			{ tokenName = "LabelLarge", tag = "text-label-large" },
		},
	},
	{
		name = "Title",
		entries = {
			{ tokenName = "TitleSmall", tag = "text-title-small" },
			{ tokenName = "TitleMedium", tag = "text-title-medium" },
			{ tokenName = "TitleLarge", tag = "text-title-large" },
		},
	},
}

local function formatTypographySpecs(typography: typeof(DesignTokens.Typography.CaptionSmall)): string
	local trueTextSize = typography.FontSize / NominalScale
	local trueLineHeight = typography.LineHeight * NominalScale
	local desiredLineSize = trueTextSize * trueLineHeight
	return string.format(
		"%dpx / %.1f (%dpx line)",
		math.round(trueTextSize),
		trueLineHeight,
		math.round(desiredLineSize)
	)
end

local function typographyLabel(size: string, tag: string): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xsmall size-full-0 auto-y",
	}, {
		Size = React.createElement(Text, {
			Text = size,
			tag = "size-full-0 auto-y text-caption-small text-wrap text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Tag = React.createElement(Text, {
			Text = tag,
			tag = "size-full-0 auto-y text-caption-small text-wrap text-align-x-left content-muted",
			LayoutOrder = 2,
		}),
	})
end

local function TypographyRow(props: {
	LayoutOrder: number,
	size: string,
	tag: string,
	specs: string,
})
	return React.createElement(View, {
		tag = "row gap-large size-full-0 auto-y padding-y-small",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(View, {
			tag = "col size-full-0 auto-y",
			Size = UDim2.fromOffset(140, 0),
			LayoutOrder = 1,
		}, {
			Content = typographyLabel(props.size, props.tag),
		}),
		Preview = React.createElement(Text, {
			Text = SAMPLE_TEXT,
			tag = `size-full-0 auto-y text-wrap text-align-x-left content-default {props.tag}`,
			LayoutOrder = 2,
		}),
		Specs = React.createElement(Text, {
			Text = props.specs,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			Size = UDim2.fromOffset(140, 0),
			LayoutOrder = 3,
		}),
	})
end

type SectionProps = {
	LayoutOrder: number,
	name: string,
	children: React.ReactNode,
}

local function Section(props: SectionProps)
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "auto-xy text-label-medium content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = "col size-full-0 auto-y",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function PlaygroundStory(props)
	return React.createElement(Text, {
		Text = props.controls.text,
		RichText = props.controls.richText,
		fontStyle = {
			FontSize = props.controls.textSize,
		},
		tag = "auto-xy content-default",
	})
end

local function InteractableStory()
	local guiState, setGuiState = React.useBinding(ControlState.Initialize :: ControlState)
	local tokens = useTokens()

	local function onStateChanged(new: ControlState)
		setGuiState(new)
	end

	return React.createElement(Text, {
		Text = guiState:map(function(state)
			return "State: " .. state :: string
		end) :: any,
		fontStyle = {
			FontSize = 20,
		},
		backgroundStyle = tokens.Color.Extended.Purple.Purple_500,
		tag = "col align-x-center align-y-center size-2800 content-default",
		onStateChanged = onStateChanged,
	})
end

local function TypographyStory(): React.ReactNode
	local tokens = useTokens()

	return React.createElement(View, {
		tag = "col gap-xlarge size-full-0 auto-y padding-y-large",
	}, {
		Header = React.createElement(View, {
			tag = "row align-y-center gap-large size-full-0 auto-y padding-y-small",
			LayoutOrder = 1,
		}, {
			LabelHeader = React.createElement(View, {
				Size = UDim2.fromOffset(140, 0),
				LayoutOrder = 1,
			}),
			PreviewHeader = React.createElement(Text, {
				Text = "Preview",
				tag = "size-full-0 auto-y text-caption-small text-align-x-left content-muted",
				LayoutOrder = 2,
			}),
			SpecsHeader = React.createElement(Text, {
				Text = "Token specs",
				tag = "auto-xy text-caption-small text-align-x-left content-muted",
				Size = UDim2.fromOffset(140, 0),
				LayoutOrder = 3,
			}),
		}),
		Sections = React.createElement(
			View,
			{
				tag = "col gap-xlarge size-full-0 auto-y",
				LayoutOrder = 2,
			},
			Dash.map(TYPOGRAPHY_SECTIONS, function(section, sectionIndex)
				local rows = Dash.map(section.entries, function(entry, rowIndex)
					local size = entry.tokenName:match("(%a+)$") :: string
					local typography = tokens.Typography[entry.tokenName] :: typeof(tokens.Typography.CaptionSmall)

					return React.createElement(TypographyRow, {
						key = entry.tokenName,
						LayoutOrder = rowIndex,
						size = size,
						tag = entry.tag,
						specs = formatTypographySpecs(typography),
					})
				end)

				return React.createElement(Section, {
					key = section.name,
					LayoutOrder = sectionIndex,
					name = section.name,
				}, rows)
			end)
		),
	})
end

return {
	base = true,
	summary = "Text",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Typography",
			summary = "Matrix of every Typography token with its hard-coded style tag.",
			story = TypographyStory,
		},
		{
			name = "Interactable",
			story = InteractableStory,
		},
	},
	controls = {
		text = "Hello, world!",
		textSize = 24,
		richText = false,
	},
}
