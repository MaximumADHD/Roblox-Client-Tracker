local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(script.Parent.Types)
local staticRules = require(script.Parent.staticRules)
local tokenAttributePascalName = require(script.Parent.Parent.tokenAttributePascalName)

type Tokens = Tokens.Tokens
type StyleRule = Types.StyleRule
type StyleAttribute<T> = Types.StyleAttribute<T>
type Colors = Types.Colors
type ColorScopes = Types.ColorScopes
type Variants = Types.Variants
type Strokes = Types.Strokes
type Gaps = Types.Gaps
type Radii = Types.Radii
type Sizes = Types.Sizes
type TextStyle = Types.TextStyle
type Typography = Types.Typography
type Paddings = Types.Paddings
type Margins = Types.Margins
type Gutters = Types.Gutters
type FormattedTokens = Types.FormattedTokens

local function kebabToPascal(str: string)
	-- First, capitalize the first letter and remove any leading hyphen
	local result = str:gsub("^%-?(.)", function(c)
		return c:upper()
	end)

	-- Then, replace hyphen + letter with just the capitalized letter
	result = result:gsub("%-(.)", function(c)
		return c:upper()
	end)

	return result
end

local function getTextPadding(textStyle: TextStyle, nominalScale: number): UDim
	local rawTextSize = textStyle.TextSize / nominalScale
	local rawLineHeight = textStyle.LineHeight * nominalScale
	local heightOffset = rawTextSize * rawLineHeight - textStyle.TextSize -- The difference between the desired line height and the Roblox text size
	local padding = UDim.new(0, heightOffset / 2)

	return padding
end

local function DefaultSizeRules(type: TextStyle, nominalScale: number): { StyleRule }
	local padding = getTextPadding(type, nominalScale)

	return {
		{
			tag = "text-size-defaults",
			priority = -1,
			properties = {
				TextSize = "$TextSizeBodyLarge",
				LineHeight = type.LineHeight,
			},
			children = {
				{
					tag = "text-size-defaults",
					pseudo = "UIPadding",
					priority = -1,
					properties = {
						PaddingTop = `$TextPaddingBodyLarge`,
						PaddingBottom = `$TextPaddingBodyLarge`,
					},
					attributes = {
						{
							name = `TextPaddingBodyLarge`,
							value = padding,
						},
					},
				},
			},
			attributes = {
				{
					name = `TextSizeBodyLarge`,
					value = type.TextSize,
				},
			},
		},
	}
end

local function ListLayoutSpacingRules(gaps: Gaps, gutters: Gutters): { StyleRule }
	local gap = {}

	for _, gapItem in gaps do
		local pascalName = kebabToPascal(gapItem.name)
		table.insert(gap, {
			tag = `gap-{gapItem.name}`,
			pseudo = "UIListLayout",
			properties = {
				Padding = `$Gap{pascalName}`,
			},
			attributes = {
				{
					name = `Gap{pascalName}`,
					value = gapItem.size,
				},
			},
		})
	end

	local gutter = {}

	for _, gutterItem in gutters do
		local pascalName = kebabToPascal(gutterItem.name)
		table.insert(gutter, {
			tag = `gutter-{gutterItem.name}`,
			pseudo = "UIListLayout",
			properties = {
				Padding = `$Gutter{pascalName}`,
			},
			attributes = {
				{
					name = `Gutter{pascalName}`,
					value = gutterItem.size,
				},
			},
		})
	end

	return Dash.joinArrays(gap, gutter)
end

local function CornerRules(radii: Radii): { StyleRule }
	local rules: { StyleRule } = {}

	for _, radius in radii do
		local pascalName = kebabToPascal(radius.name)
		table.insert(rules, {
			tag = `radius-{radius.name}`,
			pseudo = "UICorner",
			properties = {
				CornerRadius = `$Radius{pascalName}`,
			},
			attributes = {
				{
					name = `Radius{pascalName}`,
					value = radius.size,
				},
			},
		})
	end

	return rules
end

local function SizeRules(sizes: Sizes): { StyleRule }
	local rules: { StyleRule } = {}

	for _, size in sizes do
		local pascalName = kebabToPascal(size.name)
		table.insert(rules, {
			tag = `size-{size.name}`,
			properties = {
				Size = `$Size{pascalName}`,
			},
			attributes = {
				{
					name = `Size{pascalName}`,
					value = UDim2.new(size.size, size.size),
				},
			},
		})

		for _, sizeY in sizes do
			local pascalNameY = kebabToPascal(sizeY.name)
			table.insert(rules, {
				tag = `size-{size.name}-{sizeY.name}`,
				properties = {
					Size = `$Size{pascalName}_{pascalNameY}`,
				},
				attributes = {
					{
						name = `Size{pascalName}_{pascalNameY}`,
						value = UDim2.new(size.size, sizeY.size),
					},
				},
			})
		end
	end

	return rules
end

local function TypographyRules(typography: Typography, nominalScale: number): { StyleRule }
	local rules: { StyleRule } = {}

	for name, type in typography do
		local pascalName = kebabToPascal(name)
		local padding = getTextPadding(type, nominalScale)

		table.insert(rules, {
			tag = `text-{name}`,
			properties = {
				Font = `$Font{pascalName}`,
				TextSize = `$TextSize{pascalName}`,
				LineHeight = type.LineHeight,
			},
			attributes = {
				{
					name = `Font{pascalName}`,
					value = type.Font :: unknown,
				},
				{
					name = `TextSize{pascalName}`,
					value = type.TextSize,
				},
			},
			children = {
				{
					tag = `text-{name}`,
					pseudo = "UIPadding",
					priority = 0,
					properties = {
						PaddingTop = `$TextPadding{pascalName}`,
						PaddingBottom = `$TextPadding{pascalName}`,
					},
					attributes = {
						{
							name = `TextPadding{pascalName}`,
							value = padding,
						},
					},
				},
			},
		})
	end

	return rules
end

local function PaddingRules(paddings: Paddings, margins: Margins): { StyleRule }
	local rules: { StyleRule } = {}

	local paddingProperties: { [string]: { string } } = {
		x = { "PaddingLeft", "PaddingRight" },
		y = { "PaddingTop", "PaddingBottom" },
		top = { "PaddingTop" },
		bottom = { "PaddingBottom" },
		left = { "PaddingLeft" },
		right = { "PaddingRight" },
	}

	for _, padding in paddings do
		local pascalName = kebabToPascal(padding.name)
		table.insert(rules, {
			tag = `padding-{padding.name}`,
			pseudo = "UIPadding",
			properties = {
				PaddingTop = `$Padding{pascalName}`,
				PaddingBottom = `$Padding{pascalName}`,
				PaddingLeft = `$Padding{pascalName}`,
				PaddingRight = `$Padding{pascalName}`,
			},
			attributes = {
				{
					name = `Padding{pascalName}`,
					value = padding.size,
				},
			},
		})
	end

	for _, margin in margins do
		local pascalName = kebabToPascal(margin.name)
		table.insert(rules, {
			tag = `margin-{margin.name}`,
			pseudo = "UIPadding",
			properties = {
				PaddingTop = `$Margin{pascalName}`,
				PaddingBottom = `$Margin{pascalName}`,
				PaddingLeft = `$Margin{pascalName}`,
				PaddingRight = `$Margin{pascalName}`,
			},
			attributes = {
				{
					name = `Margin{pascalName}`,
					value = margin.size,
				},
			},
		})
	end

	for direction, properties in paddingProperties do
		for _, padding in paddings do
			local pascalName = kebabToPascal(padding.name)
			local props = {}
			for _, property in properties do
				props[property] = `$Padding{pascalName}`
			end
			table.insert(rules, {
				tag = `padding-{direction}-{padding.name}`,
				pseudo = "UIPadding",
				properties = props,
				attributes = {
					{
						name = `Padding{pascalName}`,
						value = padding.size,
					},
				},
			})
		end

		for _, margin in margins do
			local pascalName = kebabToPascal(margin.name)
			local props = {}
			for _, property in properties do
				props[property] = `$Margin{pascalName}`
			end
			table.insert(rules, {
				tag = `margin-{direction}-{margin.name}`,
				pseudo = "UIPadding",
				properties = props,
				attributes = {
					{
						name = `Margin{pascalName}`,
						value = margin.size,
					},
				},
			})
		end
	end

	return rules
end

local BACKGROUND = "bg"
local CONTENT = "content"
local STROKE = "stroke"

local ColorPurpose = {
	Content = { CONTENT },
	Stroke = { STROKE },
	Shift = { BACKGROUND },
	Surface = { BACKGROUND },
	OverMedia = { BACKGROUND },
	System = { BACKGROUND, CONTENT, STROKE },
	Extended = {},
	Common = {},
	Selection = {},
	State = {},
	None = {},
}

local function DefaultRules(tokens: Tokens): { StyleRule }
	local fontValue = tokens.Typography.BodyLarge.Font
	return {
		{
			tag = "gui-object-defaults",
			priority = -1,
			properties = {
				BackgroundTransparency = 1,
			},
		},
		{
			tag = "text-defaults",
			priority = -1,
			properties = {
				Font = "$FontBodyLarge",
			},
			attributes = {
				{
					name = "FontBodyLarge",
					value = fontValue,
				},
			},
		},
	}
end

local function DefaultColorRules(tokens: Tokens): { StyleRule }
	local color3Value = tokens.Color.Content.Default.Color3
	local transparencyValue = tokens.Color.Content.Default.Transparency
	return {
		{
			tag = "text-color-defaults",
			priority = -1,
			properties = {
				TextColor3 = "$ColorContentDefaultColor3",
				TextTransparency = "$ColorContentDefaultTransparency",
			},
			attributes = {
				{
					name = "ColorContentDefaultColor3",
					value = color3Value,
				} :: any,
				{
					name = "ColorContentDefaultTransparency",
					value = transparencyValue,
				},
			},
		},
	}
end

local function BackgroundRules(colors: ColorScopes, variants: Variants): { StyleRule }
	local rules: { StyleRule } = {}

	for scopeName, scope in colors do
		if table.find(ColorPurpose[scopeName], BACKGROUND) then
			for shortName, color in scope do
				local attrName = tokenAttributePascalName(scopeName, shortName)
				table.insert(rules, {
					tag = `bg-{shortName}`,
					properties = {
						BackgroundColor3 = `$Color{scopeName}{attrName}Color3`,
						BackgroundTransparency = `$Color{scopeName}{attrName}Transparency`,
					},
					attributes = {
						{
							name = `Color{scopeName}{attrName}Color3`,
							value = color.Color3,
						} :: any,
						{
							name = `Color{scopeName}{attrName}Transparency`,
							value = color.Transparency,
						},
					},
				})
			end
		end
	end

	for name, scope in variants do
		local pascalName = kebabToPascal(name)
		table.insert(rules, {
			tag = `bg-{name}`,
			properties = {
				BackgroundColor3 = `$Color{pascalName}BackgroundColor3`,
				BackgroundTransparency = `$Color{pascalName}BackgroundTransparency`,
			},
			attributes = {
				{
					name = `Color{pascalName}BackgroundColor3`,
					value = scope.Background.Color3,
				} :: any,
				{
					name = `Color{pascalName}BackgroundTransparency`,
					value = scope.Background.Transparency,
				},
			},
		})
	end

	return rules
end

local function StrokeSizeRules(strokes: Strokes): { StyleRule }
	local rules: { StyleRule } = {}

	for _, stroke in strokes do
		if stroke.name == "none" then
			continue
		end

		local pascalName = kebabToPascal(stroke.name)
		table.insert(rules, {
			tag = `stroke-{stroke.name}`,
			pseudo = "UIStroke",
			properties = {
				Thickness = `$StrokeThickness{pascalName}`,
			},
			attributes = {
				{
					name = `StrokeThickness{pascalName}`,
					value = stroke.size,
				},
			},
		})
	end

	return rules
end

local function StrokeRules(colors: ColorScopes, variants: Variants): { StyleRule }
	local rules: { StyleRule } = {}

	for scopeName, scope in colors do
		if table.find(ColorPurpose[scopeName], STROKE) then
			for shortName, color in scope do
				local attrName = tokenAttributePascalName(scopeName, shortName)
				table.insert(rules, {
					tag = `stroke-{shortName}`,
					pseudo = "UIStroke",
					properties = {
						Color = `$Color{scopeName}{attrName}Color3`,
						Transparency = `$Color{scopeName}{attrName}Transparency`,
					},
					attributes = {
						{
							name = `Color{scopeName}{attrName}Color3`,
							value = color.Color3,
						} :: any,
						{
							name = `Color{scopeName}{attrName}Transparency`,
							value = color.Transparency,
						},
					},
				})
			end
		end
	end

	for name, scope in variants do
		local pascalName = kebabToPascal(name)
		table.insert(rules, {
			tag = `stroke-{name}`,
			pseudo = "UIStroke",
			properties = {
				Color = `$Color{pascalName}BorderColor3`,
				Transparency = `$Color{pascalName}BorderTransparency`,
			},
			attributes = {
				{
					name = `Color{pascalName}BorderColor3`,
					value = scope.Border.Color3,
				} :: any,
				{
					name = `Color{pascalName}BorderTransparency`,
					value = scope.Border.Transparency,
				},
			},
		})
	end

	local strokePositions = {
		["center"] = Enum.BorderStrokePosition.Center,
		["inner"] = Enum.BorderStrokePosition.Inner,
		["outer"] = Enum.BorderStrokePosition.Outer,
	}

	for posName, strokePosition in strokePositions do
		table.insert(rules, {
			tag = `stroke-position-{posName}`,
			pseudo = "UIStroke",
			properties = {
				BorderStrokePosition = strokePosition,
			},
		})
	end

	return rules
end

local function ContentRules(colors: ColorScopes, variants: Variants): { StyleRule }
	local rules: { StyleRule } = {}

	for scopeName, scope in colors do
		if table.find(ColorPurpose[scopeName], CONTENT) then
			for shortName, color in scope do
				local attrName = tokenAttributePascalName(scopeName, shortName)
				table.insert(rules, {
					tag = `content-{shortName}`,
					properties = {
						ImageColor3 = `$Color{scopeName}{attrName}Color3`,
						ImageTransparency = `$Color{scopeName}{attrName}Transparency`,
						TextColor3 = `$Color{scopeName}{attrName}Color3`,
						TextTransparency = `$Color{scopeName}{attrName}Transparency`,
					},
					attributes = {
						{
							name = `Color{scopeName}{attrName}Color3`,
							value = color.Color3,
						} :: any,
						{
							name = `Color{scopeName}{attrName}Transparency`,
							value = color.Transparency,
						},
					},
				})
			end
		end
	end

	for name, scope in variants do
		local pascalName = kebabToPascal(name)
		table.insert(rules, {
			tag = `content-{name}`,
			properties = {
				ImageColor3 = `$Color{pascalName}ForegroundColor3`,
				ImageTransparency = `$Color{pascalName}ForegroundTransparency`,
				TextColor3 = `$Color{pascalName}ForegroundColor3`,
				TextTransparency = `$Color{pascalName}ForegroundTransparency`,
			},
			attributes = {
				{
					name = `Color{pascalName}ForegroundColor3`,
					value = scope.Foreground.Color3,
				} :: any,
				{
					name = `Color{pascalName}ForegroundTransparency`,
					value = scope.Foreground.Transparency,
				},
			},
		})
	end

	return rules
end

local function DeprecatedColorRules(colors: ColorScopes): { StyleRule }
	local rules: { StyleRule } = {}

	local scopeName = "System"
	local scope = colors[scopeName]

	for name, color in scope do
		local oldName = name:sub(8)
		local attrName = tokenAttributePascalName(scopeName, name)

		table.insert(rules, {
			tag = `bg-{oldName}`,
			properties = {
				BackgroundColor3 = `$Color{scopeName}{attrName}Color3`,
				BackgroundTransparency = `$Color{scopeName}{attrName}Transparency`,
			},
			attributes = {
				{
					name = `Color{scopeName}{attrName}Color3`,
					value = color.Color3,
				} :: any,
				{
					name = `Color{scopeName}{attrName}Transparency`,
					value = color.Transparency,
				},
			},
			deprecatedFor = `bg-{name}`,
		})

		if oldName ~= "emphasis" then
			table.insert(rules, {
				tag = `content-{oldName}`,
				properties = {
					ImageColor3 = `$Color{scopeName}{attrName}Color3`,
					ImageTransparency = `$Color{scopeName}{attrName}Transparency`,
					TextColor3 = `$Color{scopeName}{attrName}Color3`,
					TextTransparency = `$Color{scopeName}{attrName}Transparency`,
				},
				attributes = {
					{
						name = `Color{scopeName}{attrName}Color3`,
						value = color.Color3,
					} :: any,
					{
						name = `Color{scopeName}{attrName}Transparency`,
						value = color.Transparency,
					},
				},
				deprecatedFor = `content-{name}`,
			})

			table.insert(rules, {
				tag = `stroke-{oldName}`,
				pseudo = "UIStroke",
				properties = {
					Color = `$Color{scopeName}{attrName}Color3`,
					Transparency = `$Color{scopeName}{attrName}Transparency`,
				},
				attributes = {
					{
						name = `Color{scopeName}{attrName}Color3`,
						value = color.Color3,
					} :: any,
					{
						name = `Color{scopeName}{attrName}Transparency`,
						value = color.Transparency,
					},
				},
				deprecatedFor = `stroke-{name}`,
			})
		end
	end

	return rules
end

local function rulesGenerator(
	tokens: Tokens,
	formattedTokens: FormattedTokens
): ({ StyleRule }, { StyleRule }, { StyleRule })
	local colors = formattedTokens.colors
	local variants = formattedTokens.variants
	local gaps = formattedTokens.gaps
	local gutters = formattedTokens.gutters
	local radii = formattedTokens.radii
	local sizes = formattedTokens.sizes
	local strokes = formattedTokens.strokes
	local typography = formattedTokens.typography
	local paddings = formattedTokens.paddings
	local margins = formattedTokens.margins

	local common: { StyleRule } = Dash.joinArrays(
		DefaultRules(tokens),
		staticRules.rules.EngineDefaultBypassRules(),
		staticRules.rules.FlexItemRules(),
		staticRules.rules.TextRules(),
		staticRules.rules.AutomaticSizeRules(),
		staticRules.rules.PositionRules(),
		staticRules.rules.AnchorPointRules(),
		staticRules.rules.ClipsDescendantRules(),
		staticRules.rules.AspectRatioRules()
	)

	local size: { StyleRule } = Dash.joinArrays(
		DefaultSizeRules(typography["body-large"], tokens.Config.Text.NominalScale),
		staticRules.rules.ListLayoutRules(),
		ListLayoutSpacingRules(gaps, gutters),
		CornerRules(radii),
		SizeRules(sizes),
		StrokeSizeRules(strokes),
		TypographyRules(typography, tokens.Config.Text.NominalScale),
		PaddingRules(paddings, margins)
	)

	local theme: { StyleRule } = Dash.joinArrays(
		DefaultColorRules(tokens),
		DeprecatedColorRules(colors),
		BackgroundRules(colors, variants),
		StrokeRules(colors, variants),
		ContentRules(colors, variants)
	)

	return common, size, theme
end

return {
	rulesGenerator = rulesGenerator,
	rules = {
		DefaultRules = DefaultRules,
		DefaultSizeRules = DefaultSizeRules,
		DefaultColorRules = DefaultColorRules,
		ListLayoutSpacingRules = ListLayoutSpacingRules,
		CornerRules = CornerRules,
		SizeRules = SizeRules,
		StrokeSizeRules = StrokeSizeRules,
		TypographyRules = TypographyRules,
		PaddingRules = PaddingRules,
		BackgroundRules = BackgroundRules,
		StrokeRules = StrokeRules,
		ContentRules = ContentRules,
		DeprecatedColorRules = DeprecatedColorRules,
	},
}
