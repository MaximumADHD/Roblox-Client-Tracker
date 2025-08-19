local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Cryo = require(Packages.Cryo)
local Tokens = require(Foundation.Providers.Style.Tokens)
local staticRules = require(script.Parent.staticRules)
local Types = require(script.Parent.Types)

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
			priority = 0,
			properties = {
				TextSize = "$TextSizeBodyLarge",
				LineHeight = type.LineHeight,
			},
			children = {
				{
					tag = `text-size-defaults`,
					pseudo = "UIPadding",
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

	return Cryo.List.join(gap, gutter)
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
				Font = type.Font,
				TextSize = `$TextSize{pascalName}`,
				LineHeight = type.LineHeight,
			},
			attributes = {
				{
					name = `TextSize{pascalName}`,
					value = type.TextSize,
				},
			},
			children = {
				{
					tag = `text-{name}`,
					pseudo = "UIPadding",
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

local function rulesGenerator(
	tokens: Tokens,
	formattedTokens: FormattedTokens
): ({ StyleRule }, { StyleRule }, { StyleRule })
	local gaps = formattedTokens.gaps
	local gutters = formattedTokens.gutters
	local radii = formattedTokens.radii
	local sizes = formattedTokens.sizes
	local strokes = formattedTokens.strokes
	local typography = formattedTokens.typography
	local paddings = formattedTokens.paddings
	local margins = formattedTokens.margins

	local common, _, theme = staticRules.rulesGenerator(tokens, formattedTokens)

	local size: { StyleRule } = Cryo.List.join(
		DefaultSizeRules(typography["body-large"], tokens.Config.Text.NominalScale),
		staticRules.rules.ListLayoutRules(),
		staticRules.rules.ListLayoutSpacingRules(gaps, gutters),
		CornerRules(radii),
		SizeRules(sizes),
		staticRules.rules.StrokeSizeRules(strokes),
		TypographyRules(typography, tokens.Config.Text.NominalScale),
		PaddingRules(paddings, margins)
	)

	return common, size, theme
end

return {
	rulesGenerator = rulesGenerator,
	rules = {
		DefaultSizeRules = DefaultSizeRules,
		ListLayoutSpacingRules = ListLayoutSpacingRules,
		CornerRules = CornerRules,
		SizeRules = SizeRules,
		TypographyRules = TypographyRules,
		PaddingRules = PaddingRules,
	},
}
