local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Cryo = require(Packages.Cryo)
local Tokens = require(Foundation.Providers.Style.Tokens)

type Tokens = Tokens.Tokens

export type StyleRule = {
	tag: string,
	modifier: string?,
	pseudo: string?,
	properties: {
		[string]: any,
	},
}

type Colors = {
	[string]: {
		Color3: Color3,
		Transparency: number,
	},
}

type ColorScopes = {
	[string]: Colors,
}

type Variants = {
	[string]: Colors,
}

type Strokes = { { name: string, size: number } }

type Gaps = { { name: string, size: UDim } }

type Radii = { { name: string, size: UDim } }

type Sizes = { { name: string, size: UDim } }

type Typography = {
	[string]: {
		Font: Enum.Font,
		TextSize: number,
		LineHeight: number,
	},
}

type Paddings = { { name: string, size: UDim } }

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

function pascalToKebab(str)
	-- Replace underscores with hyphens
	str = str:gsub("_", "-")

	-- Convert PascalCase to kebab-case
	local result = string.gsub(str, "(%u)", function(c)
		return "-" .. c:lower()
	end)

	-- Remove the leading hyphen if it exists
	if result:sub(1, 1) == "-" then
		result = result:sub(2, #result)
	end

	return result
end

local function createTokens(tokens: Tokens): (ColorScopes, Variants, Strokes, Gaps, Radii, Sizes, Typography, Paddings)
	local colors = {}
	local variants = {}
	local strokes = {}
	local gaps = {}
	local radii = {}
	local sizes = {}
	local typography = {}
	local paddings = {}

	if tokens == nil then
		return colors, variants, strokes, gaps, radii, sizes, typography, paddings
	end

	for name, value in tokens.Color :: any do
		if value.Background then
			-- ActionX color
			variants[pascalToKebab(name)] = value
		else
			-- General colors
			colors[name] = {}
			for innerName, innerValue in value do
				colors[name][pascalToKebab(innerName)] = innerValue
			end
		end
	end

	for name, value in tokens.Stroke do
		table.insert(strokes, { name = pascalToKebab(name), size = value })
	end

	table.insert(strokes, { name = "none", size = 0 })

	table.sort(strokes, function(a, b)
		return a.size < b.size
	end)

	for name, value in tokens.Gap do
		table.insert(gaps, { name = string.lower(name), size = UDim.new(0, value) })
	end

	table.sort(gaps, function(a, b)
		return a.size.Offset < b.size.Offset
	end)

	for name, value in tokens.Radius do
		table.insert(radii, { name = string.lower(name), size = UDim.new(0, value) })
	end

	table.sort(radii, function(a, b)
		return a.size.Offset < b.size.Offset
	end)

	for name, value in tokens.Size do
		local number = string.split(name, "_")[2]
		table.insert(sizes, { name = pascalToKebab(number), size = UDim.new(0, value) })
	end

	-- Add full size
	table.insert(sizes, { name = "full", size = UDim.new(1, 0) })

	table.sort(sizes, function(a, b)
		return a.size.Offset < b.size.Offset
	end)

	for name, value in tokens.Typography do
		typography[pascalToKebab(name)] = {
			Font = value.Font,
			TextSize = value.FontSize,
			LineHeight = value.LineHeight,
		}
	end

	for name, value in tokens.Padding do
		table.insert(paddings, { name = string.lower(name), size = UDim.new(0, value) })
	end

	table.sort(paddings, function(a, b)
		return a.size.Offset < b.size.Offset
	end)

	return colors, variants, strokes, gaps, radii, sizes, typography, paddings
end

local function DefaultRules(tokens: Tokens): { StyleRule }
	return {
		{
			tag = "gui-object-defaults",
			properties = {
				BackgroundTransparency = 1,
			},
		},
		{
			tag = "text-defaults",
			properties = {
				TextColor3 = tokens.Color.Content.Default.Color3,
				TextTransparency = tokens.Color.Content.Default.Transparency,
				Font = tokens.Typography.BodyLarge.Font,
				TextSize = tokens.Typography.BodyLarge.FontSize,
				LineHeight = tokens.Typography.BodyLarge.LineHeight,
			},
		},
	}
end

local function ListLayoutRules(gaps: Gaps)
	local direction = {
		{
			tag = "row",
			pseudo = "UIListLayout",
			properties = {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			},
		},
		{
			tag = "col",
			pseudo = "UIListLayout",
			properties = {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			},
		},
	}

	local align: { StyleRule } = {
		{
			tag = "align-x-left",
			pseudo = "UIListLayout",
			properties = {
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
			},
		},
		{
			tag = "align-x-center",
			pseudo = "UIListLayout",
			properties = {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			},
		},
		{
			tag = "align-x-right",
			pseudo = "UIListLayout",
			properties = {
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
			},
		},
		{
			tag = "align-y-top",
			pseudo = "UIListLayout",
			properties = {
				VerticalAlignment = Enum.VerticalAlignment.Top,
			},
		},
		{
			tag = "align-y-center",
			pseudo = "UIListLayout",
			properties = {
				VerticalAlignment = Enum.VerticalAlignment.Center,
			},
		},
		{
			tag = "align-y-bottom",
			pseudo = "UIListLayout",
			properties = {
				VerticalAlignment = Enum.VerticalAlignment.Bottom,
			},
		},
	}

	local gap = {}

	for _, gapItem in gaps do
		table.insert(gap, {
			tag = `gap-{gapItem.name}`,
			pseudo = "UIListLayout",
			properties = {
				Padding = gapItem.size,
			},
		})
	end

	-- Flex

	local wraps = {
		{
			tag = "wrap",
			pseudo = "UIListLayout",
			properties = {
				Wraps = true,
			},
		},
		{
			tag = "no-wrap",
			pseudo = "UIListLayout",
			properties = {
				Wraps = false,
			},
		},
	}

	local flexAlignments = {}

	local alignments = {
		none = Enum.UIFlexAlignment.None,
		fill = Enum.UIFlexAlignment.Fill,
		around = Enum.UIFlexAlignment.SpaceAround,
		between = Enum.UIFlexAlignment.SpaceBetween,
		evenly = Enum.UIFlexAlignment.SpaceEvenly,
	}

	for name, alignment in alignments do
		table.insert(flexAlignments, {
			tag = `flex-{name}`,
			pseudo = "UIListLayout",
			properties = {
				HorizontalFlex = alignment,
				VerticalFlex = alignment,
			},
		})
	end

	local itemAlignments = {
		["auto"] = Enum.ItemLineAlignment.Automatic,
		["start"] = Enum.ItemLineAlignment.Start,
		["center"] = Enum.ItemLineAlignment.Center,
		["end"] = Enum.ItemLineAlignment.End,
		["stretch"] = Enum.ItemLineAlignment.Stretch,
	}

	local items = {}

	for name, alignment in itemAlignments do
		table.insert(items, {
			tag = `items-{name}`,
			pseudo = "UIListLayout",
			properties = {
				ItemLineAlignment = alignment,
			},
		})
	end

	return Cryo.List.join(direction, align, gap, wraps, flexAlignments, items)
end

local function FlexItemRules()
	local flexMode = {
		{
			tag = "grow",
			pseudo = "UIFlexItem",
			properties = {
				FlexMode = Enum.UIFlexMode.Grow,
			},
		},
		{
			tag = "shrink",
			pseudo = "UIFlexItem",
			properties = {
				FlexMode = Enum.UIFlexMode.Shrink,
			},
		},
		{
			tag = "fill",
			pseudo = "UIFlexItem",
			properties = {
				FlexMode = Enum.UIFlexMode.Fill,
			},
		},
	}

	local ratios = { 1, 2, 3, 4, 5 }

	local grows = {}
	local shrinks = {}

	for ratio in ratios do
		table.insert(grows, {
			tag = `grow-{ratio}`,
			pseudo = "UIFlexItem",
			properties = {
				FlexMode = Enum.UIFlexMode.Custom,
				GrowRatio = ratio,
			},
		})
		table.insert(shrinks, {
			tag = `shrink-{ratio}`,
			pseudo = "UIFlexItem",
			properties = {
				FlexMode = Enum.UIFlexMode.Custom,
				ShrinkRatio = ratio,
			},
		})
	end

	local selfAlignments = {
		["auto"] = Enum.ItemLineAlignment.Automatic,
		["start"] = Enum.ItemLineAlignment.Start,
		["center"] = Enum.ItemLineAlignment.Center,
		["end"] = Enum.ItemLineAlignment.End,
		["stretch"] = Enum.ItemLineAlignment.Stretch,
	}

	local selfs = {}

	for name, alignment in selfAlignments do
		table.insert(selfs, {
			tag = `self-{name}`,
			pseudo = "UIFlexItem",
			properties = {
				ItemLineAlignment = alignment,
			},
		})
	end

	return Cryo.List.join(flexMode, grows, shrinks, selfs)
end

local function CornerRules(radii: Radii)
	local rules = {}

	for _, radius in radii do
		table.insert(rules, {
			tag = `radius-{radius.name}`,
			pseudo = "UICorner",
			properties = {
				CornerRadius = radius.size,
			},
		})
	end

	return rules
end

local function SizeRules(sizes: Sizes)
	local rules = {}

	for _, size in sizes do
		table.insert(rules, {
			tag = `size-{size.name}`,
			properties = {
				Size = UDim2.new(size.size, size.size),
			},
		})
		for _, sizeY in sizes do
			table.insert(rules, {
				tag = `size-{size.name}-{sizeY.name}`,
				properties = {
					Size = UDim2.new(size.size, sizeY.size),
				},
			})
		end
	end

	return rules
end

local function BackgroundRules(colors: ColorScopes, variants: Variants)
	local rules = {}

	for name, scope in colors do
		if table.find(ColorPurpose[name], BACKGROUND) then
			for shortName, color in scope do
				table.insert(rules, {
					tag = `bg-{shortName}`,
					properties = {
						BackgroundColor3 = color.Color3,
						BackgroundTransparency = color.Transparency,
					},
				})
			end
		end
	end

	for name, scope in variants do
		table.insert(rules, {
			tag = `bg-{name}`,
			properties = {
				BackgroundColor3 = scope.Background.Color3,
				BackgroundTransparency = scope.Background.Transparency,
			},
		})
	end

	return rules
end

local function StrokeRules(strokes: Strokes, colors: ColorScopes, variants: Variants)
	local rules: { StyleRule } = {}

	for _, stroke in strokes do
		table.insert(rules, {
			tag = `stroke-{stroke.name}`,
			pseudo = "UIStroke",
			properties = {
				Thickness = stroke.size,
			},
		})
	end

	for name, scope in colors do
		if table.find(ColorPurpose[name], STROKE) then
			for shortName, color in scope do
				table.insert(rules, {
					tag = `stroke-{shortName}`,
					pseudo = "UIStroke",
					properties = {
						Color = color.Color3,
						Transparency = color.Transparency,
					},
				})
			end
		end
	end

	for name, scope in variants do
		table.insert(rules, {
			tag = `stroke-{name}`,
			pseudo = "UIStroke",
			properties = {
				Color = scope.Border.Color3,
				Transparency = scope.Border.Transparency,
			},
		})
	end

	return rules
end

local function ContentRules(colors: ColorScopes, variants: Variants)
	local rules = {}

	for name, scope in colors do
		if table.find(ColorPurpose[name], CONTENT) then
			for shortName, color in scope do
				table.insert(rules, {
					tag = `content-{shortName}`,
					properties = {
						ImageColor3 = color.Color3,
						ImageTransparency = color.Transparency,
						TextColor3 = color.Color3,
						TextTransparency = color.Transparency,
					},
				})
			end
		end
	end

	for name, scope in variants do
		table.insert(rules, {
			tag = `content-{name}`,
			properties = {
				ImageColor3 = scope.Foreground.Color3,
				ImageTransparency = scope.Foreground.Transparency,
				TextColor3 = scope.Foreground.Color3,
				TextTransparency = scope.Foreground.Transparency,
			},
		})
	end

	return rules
end

local function TypographyRules(typography: Typography)
	local rules = {}

	for name, type in typography do
		table.insert(rules, {
			tag = `text-{name}`,
			properties = type,
		})
	end

	return rules
end

local function TextRules()
	local rules = {}

	local alignmentsX = {
		["left"] = Enum.TextXAlignment.Left,
		["center"] = Enum.TextXAlignment.Center,
		["right"] = Enum.TextXAlignment.Right,
	}

	for name, alignment in alignmentsX do
		table.insert(rules, {
			tag = `text-align-x-{name}`,
			properties = {
				TextXAlignment = alignment,
			},
		})
	end

	local alignmentsY = {
		["top"] = Enum.TextYAlignment.Top,
		["center"] = Enum.TextYAlignment.Center,
		["bottom"] = Enum.TextYAlignment.Bottom,
	}

	for name, alignment in alignmentsY do
		table.insert(rules, {
			tag = `text-align-y-{name}`,
			properties = {
				TextYAlignment = alignment,
			},
		})
	end

	local truncations = {
		["none"] = Enum.TextTruncate.None,
		["end"] = Enum.TextTruncate.AtEnd,
		["split"] = Enum.TextTruncate.SplitWord,
	}

	for name, truncate in truncations do
		table.insert(rules, {
			tag = `text-truncate-{name}`,
			properties = {
				TextTruncate = truncate,
			},
		})
	end

	table.insert(rules, {
		tag = "text-wrap",
		properties = {
			TextWrapped = true,
		},
	})

	table.insert(rules, {
		tag = "text-no-wrap",
		properties = {
			TextWrapped = false,
		},
	})

	return rules
end

local function PaddingRules(paddings: Paddings)
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
		table.insert(rules, {
			tag = `padding-{padding.name}`,
			pseudo = "UIPadding",
			properties = {
				PaddingTop = padding.size,
				PaddingBottom = padding.size,
				PaddingLeft = padding.size,
				PaddingRight = padding.size,
			},
		})
	end

	for direction, properties in paddingProperties do
		for _, padding in paddings do
			local props = {}
			for _, property in properties do
				props[property] = padding.size
			end
			table.insert(rules, {
				tag = `padding-{direction}-{padding.name}`,
				pseudo = "UIPadding",
				properties = props,
			})
		end
	end

	return rules
end

local function AutomaticSizeRules()
	local autoSizeDirections = {
		none = Enum.AutomaticSize.None,
		x = Enum.AutomaticSize.X,
		y = Enum.AutomaticSize.Y,
		xy = Enum.AutomaticSize.XY,
	}

	local automaticSize = {}

	for name, direction in autoSizeDirections do
		table.insert(automaticSize, {
			tag = `auto-{name}`,
			properties = {
				AutomaticSize = direction,
			},
		})
	end

	return automaticSize
end

local function PositionRules()
	local rules: { StyleRule } = {}
	local xPositions: { [string]: number } = { left = 0, center = 0.5, right = 1 }
	local yPositions: { [string]: number } = { top = 0, center = 0.5, bottom = 1 }

	for xName, xValue in xPositions do
		for yName, yValue in yPositions do
			table.insert(rules, {
				tag = `position-{yName}-{xName}`,
				properties = {
					Position = UDim2.fromScale(xValue, yValue),
				},
			})
		end
	end
	return rules
end

local function AnchorPointRules()
	local rules: { StyleRule } = {}
	local xPositions: { [string]: number } = { left = 0, center = 0.5, right = 1 }
	local yPositions: { [string]: number } = { top = 0, center = 0.5, bottom = 1 }

	for xName, xValue in xPositions do
		for yName, yValue in yPositions do
			table.insert(rules, {
				tag = `anchor-{yName}-{xName}`,
				properties = {
					AnchorPoint = Vector2.new(xValue, yValue),
				},
			})
		end
	end
	return rules
end

local function ClipsDescendantRules()
	return {
		{
			tag = "clip",
			properties = {
				ClipsDescendants = true,
			},
		},
		{
			tag = "no-clip",
			properties = {
				ClipsDescendants = false,
			},
		},
	}
end

local function _addModifiers(rules: { StyleRule })
	local modifierRules = {}

	for _, rule in rules do
		local hover = table.clone(rule)
		--local active = table.clone(rule)

		hover.tag = `hover-{rule.tag}`
		hover.modifier = "hover"
		-- active.tag = `active-{rule.tag}`
		-- active.modifier = "active"

		table.insert(modifierRules, rule)
		table.insert(modifierRules, hover)
		-- table.insert(modifierRules, active)
	end

	return modifierRules
end

local function generateRules(tokens: Tokens)
	local colors, variants, strokes, gaps, radii, sizes, typography, paddings = createTokens(tokens)

	local rules = Cryo.List.join(
		DefaultRules(tokens),
		ListLayoutRules(gaps),
		FlexItemRules(),
		CornerRules(radii),
		SizeRules(sizes),
		BackgroundRules(colors, variants),
		StrokeRules(strokes, colors, variants),
		ContentRules(colors, variants),
		TypographyRules(typography),
		TextRules(),
		PaddingRules(paddings),
		AutomaticSizeRules(),
		PositionRules(),
		AnchorPointRules(),
		ClipsDescendantRules()
	)

	return rules
end

return generateRules
