local Style = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AlertSeverity = require(Foundation.Enums.AlertSeverity)
local ColorMode = require(Foundation.Enums.ColorMode)
local StyleProvider = require(Style.StyleProvider)
local SystemBanner = require(Foundation.Components.SystemBanner)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Style.useTokens)

type ColorMode = ColorMode.ColorMode
type FontStyle = Types.FontStyle

local UNSET = "Unset"

local SEMANTIC_COLUMNS: { { name: string, paths: { { string } } } } = {
	{
		name = "Surface",
		paths = {
			{ "Color", "Surface", "Surface_0" },
			{ "Color", "Surface", "Surface_100" },
		},
	},
	{
		name = "Content",
		paths = {
			{ "Color", "Content", "Default" },
			{ "Color", "Content", "Emphasis" },
		},
	},
	{
		name = "Stroke",
		paths = {
			{ "Color", "Stroke", "Default" },
			{ "Color", "Stroke", "Emphasis" },
		},
	},
	{
		name = "System",
		paths = {
			{ "Color", "System", "Success" },
			{ "Color", "System", "Alert" },
		},
	},
	{
		name = "Action",
		paths = {
			{ "Color", "ActionEmphasis", "Background" },
			{ "Color", "ActionStandard", "Background" },
		},
	},
}

-- Token typography includes LetterSpacing; Text.fontStyle only accepts FontStyle fields.
local function toFontStyle(typography: any): FontStyle
	return {
		Font = typography.Font,
		FontSize = typography.FontSize,
		LineHeight = typography.LineHeight,
	}
end

local function getTokenStyle(tokens: any, path: { string }): any
	local current = tokens
	for _, key in path do
		current = current[key]
	end
	return current
end

local function Swatch(props: {
	path: { string },
	tokens: any,
	swatchSize: number,
	fallbackStroke: any,
	asStroke: boolean?,
	LayoutOrder: number,
})
	local style = getTokenStyle(props.tokens, props.path)

	return React.createElement(View, {
		Size = UDim2.fromOffset(0, 0),
		AutomaticSize = Enum.AutomaticSize.XY,
		layout = {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Padding = UDim.new(0, props.tokens.Gap.Small),
			SortOrder = Enum.SortOrder.LayoutOrder,
		},
		LayoutOrder = props.LayoutOrder,
	}, {
		Swatch = React.createElement(View, {
			Size = UDim2.fromOffset(props.swatchSize, props.swatchSize),
			-- Color.Stroke is for current surfaces: light stroke in Dark mode, dark stroke in Light.
			backgroundStyle = if props.asStroke then props.tokens.Color.Surface.Surface_0 else style,
			cornerRadius = UDim.new(0, props.tokens.Radius.Small),
			stroke = if props.asStroke
				then {
					Color = style.Color3,
					Transparency = style.Transparency,
					Thickness = 3,
				}
				else {
					Color = props.fallbackStroke.Color3,
					Transparency = props.fallbackStroke.Transparency,
					Thickness = 1,
				},
			LayoutOrder = 1,
		}),
		Label = React.createElement(Text, {
			Text = table.concat(props.path, "."),
			textStyle = props.tokens.Color.Content.Default,
			fontStyle = toFontStyle(props.tokens.Typography.LabelSmall),
			AutomaticSize = Enum.AutomaticSize.XY,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}),
	})
end

local function CategoryRow(props: {
	name: string,
	paths: { { string } },
	tokens: any,
	swatchSize: number,
	fallbackStroke: any,
	gap: number,
	labelWidth: number,
	LayoutOrder: number,
})
	local asStroke = props.name == "Stroke"

	return React.createElement(View, {
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		layout = {
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			Padding = UDim.new(0, props.gap),
			SortOrder = Enum.SortOrder.LayoutOrder,
		},
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			Size = UDim2.fromOffset(props.labelWidth, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			textStyle = props.tokens.Color.Content.Emphasis,
			fontStyle = toFontStyle(props.tokens.Typography.TitleSmall),
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}),
		Swatches = React.createElement(View, {
			Size = UDim2.fromOffset(0, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			layout = {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = UDim.new(0, props.gap),
				SortOrder = Enum.SortOrder.LayoutOrder,
			},
			LayoutOrder = 2,
		}, {
			Swatch1 = React.createElement(Swatch, {
				path = props.paths[1],
				tokens = props.tokens,
				swatchSize = props.swatchSize,
				fallbackStroke = props.fallbackStroke,
				asStroke = asStroke,
				LayoutOrder = 1,
			}),
			Swatch2 = React.createElement(Swatch, {
				path = props.paths[2],
				tokens = props.tokens,
				swatchSize = props.swatchSize,
				fallbackStroke = props.fallbackStroke,
				asStroke = asStroke,
				LayoutOrder = 2,
			}),
		}),
	})
end

local function DemoContent(props: {
	theme: ColorMode?,
	colorMode: ColorMode?,
	LayoutOrder: number?,
})
	local tokens = useTokens()
	local resolvedMode = tokens.Config.ColorMode.Name
	local source = if props.colorMode ~= nil then "colorMode" elseif props.theme ~= nil then "theme" else "default"
	local swatchSize = tokens.Size.Size_1600
	local gap = tokens.Gap.Large
	local stroke = tokens.Color.Stroke.Default
	local labelWidth = tokens.Size.Size_2000

	return React.createElement(View, {
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		backgroundStyle = tokens.Color.Surface.Surface_0,
		padding = tokens.Padding.Large,
		cornerRadius = UDim.new(0, tokens.Radius.Medium),
		layout = {
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, gap),
			SortOrder = Enum.SortOrder.LayoutOrder,
		},
		LayoutOrder = props.LayoutOrder,
	}, {
		Header = React.createElement(View, {
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			layout = {
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, tokens.Gap.Small),
				SortOrder = Enum.SortOrder.LayoutOrder,
			},
			LayoutOrder = 1,
		}, {
			Resolved = React.createElement(Text, {
				Text = `Resolved {resolvedMode} · from {source}`,
				textStyle = tokens.Color.Content.Default,
				fontStyle = toFontStyle(tokens.Typography.BodyMedium),
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}),
			Props = React.createElement(Text, {
				Text = `theme={props.theme or "nil"} · colorMode={props.colorMode or "nil"}`,
				textStyle = tokens.Color.Content.Muted,
				fontStyle = toFontStyle(tokens.Typography.BodySmall),
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}),
		}),
		Grid = React.createElement(
			View,
			{
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				layout = {
					FillDirection = Enum.FillDirection.Vertical,
					Padding = UDim.new(0, gap),
					SortOrder = Enum.SortOrder.LayoutOrder,
				},
				LayoutOrder = 2,
			},
			Dash.map(SEMANTIC_COLUMNS, function(column, index)
				return React.createElement(CategoryRow, {
					name = column.name,
					paths = column.paths,
					tokens = tokens,
					swatchSize = swatchSize,
					fallbackStroke = stroke,
					gap = gap,
					labelWidth = labelWidth,
					LayoutOrder = index,
				})
			end)
		),
	})
end

local function PlaygroundStory(props: {
	controls: {
		theme: string,
		colorMode: string,
	},
})
	local theme: ColorMode? = if props.controls.theme ~= UNSET then props.controls.theme :: ColorMode else nil
	local colorMode: ColorMode? = if props.controls.colorMode ~= UNSET
		then props.controls.colorMode :: ColorMode
		else nil

	-- Banner stays outside the nested StyleProvider. Demo is hosted in its own Frame so the
	-- nested StyleLink only scopes to the demo and does not break SystemBanner style tags.
	return React.createElement(View, {
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		layout = {
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, 16),
			SortOrder = Enum.SortOrder.LayoutOrder,
		},
	}, {
		DeprecationBanner = React.createElement(SystemBanner, {
			severity = AlertSeverity.Warning,
			title = "theme is deprecated",
			description = "Use colorMode for Light/Dark instead. Theme is reserved for app-level themes (e.g. Circuit Rush). theme still works for backward compatibility and is ignored when colorMode is set.",
			LayoutOrder = 1,
		}),
		DemoHost = React.createElement(View, {
			tag = "size-full-0 auto-y",
			LayoutOrder = 2,
		}, {
			Provider = React.createElement(StyleProvider, {
				theme = theme,
				colorMode = colorMode,
			}, {
				Content = React.createElement(DemoContent, {
					theme = theme,
					colorMode = colorMode,
				}),
			}),
		}),
	})
end

return {
	summary = "StyleProvider — theme is deprecated; use colorMode instead",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
	},
	controls = {
		theme = Dash.append({ UNSET }, Dash.values(ColorMode)),
		colorMode = Dash.append({ UNSET }, Dash.values(ColorMode)),
	},
}
