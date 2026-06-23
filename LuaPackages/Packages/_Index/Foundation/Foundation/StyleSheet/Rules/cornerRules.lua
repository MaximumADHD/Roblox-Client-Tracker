local Foundation = script:FindFirstAncestor("Foundation")

local CornerPropertyModule = require(Foundation.Enums.CornerProperty)
local Types = require(script.Parent.Types)

type Radii = Types.Radii
type StyleRule = Types.StyleRule
type StyleAttribute<T> = Types.StyleAttribute<T>
type CornerProperty = CornerPropertyModule.CornerProperty

export type RadiusFormat = {
	cornerValue: UDim | string,
	attributes: { StyleAttribute<UDim> }?,
}

local BASELINE_PRIORITY = 0
local UNIFORM_PRIORITY = 1
local EDGE_PRIORITY = 2
local CORNER_PRIORITY = 3

local ZERO_RADIUS = UDim.new(0, 0)

local ALL_CORNER_PROPERTIES: { CornerProperty } = {
	CornerPropertyModule.TopLeft,
	CornerPropertyModule.TopRight,
	CornerPropertyModule.BottomRight,
	CornerPropertyModule.BottomLeft,
}

local CORNER_DIRECTIONS: { [string]: CornerProperty } = {
	["top-left"] = CornerPropertyModule.TopLeft,
	["top-right"] = CornerPropertyModule.TopRight,
	["bottom-right"] = CornerPropertyModule.BottomRight,
	["bottom-left"] = CornerPropertyModule.BottomLeft,
}

local EDGE_DIRECTIONS: { [string]: { CornerProperty } } = {
	top = { CornerPropertyModule.TopLeft, CornerPropertyModule.TopRight },
	bottom = { CornerPropertyModule.BottomLeft, CornerPropertyModule.BottomRight },
	left = { CornerPropertyModule.TopLeft, CornerPropertyModule.BottomLeft },
	right = { CornerPropertyModule.TopRight, CornerPropertyModule.BottomRight },
}

local function cornerProperties(cornerValue: UDim | string, properties: { CornerProperty }): { [string]: UDim | string }
	local result: { [string]: UDim | string } = {}
	for _, property in properties do
		result[property] = cornerValue
	end
	return result
end

-- Squares every corner at the lowest priority so untargeted corners on a
-- partial tag resolve to 0 instead of the pseudo-element's fallback radius.
local function zeroedBaseline(tag: string): StyleRule
	return {
		tag = tag,
		pseudo = "UICorner",
		priority = BASELINE_PRIORITY,
		properties = cornerProperties(ZERO_RADIUS, ALL_CORNER_PROPERTIES),
	}
end

local function cornerRules(
	radii: Radii,
	formatRadius: (radius: { name: string, size: UDim }) -> RadiusFormat
): { StyleRule }
	local rules: { StyleRule } = {}

	for _, radius in radii do
		local formatted = formatRadius(radius)
		local cornerValue = formatted.cornerValue
		local attributes = formatted.attributes

		table.insert(rules, {
			tag = `radius-{radius.name}`,
			pseudo = "UICorner",
			priority = UNIFORM_PRIORITY,
			properties = cornerProperties(cornerValue, ALL_CORNER_PROPERTIES),
			attributes = attributes,
		})

		for edge, edgeProperties in EDGE_DIRECTIONS do
			local tag = `radius-{edge}-{radius.name}`
			table.insert(rules, {
				tag = tag,
				pseudo = "UICorner",
				priority = EDGE_PRIORITY,
				properties = cornerProperties(cornerValue, edgeProperties),
				attributes = attributes,
				children = { zeroedBaseline(tag) },
			})
		end

		for direction, property in CORNER_DIRECTIONS do
			local tag = `radius-{direction}-{radius.name}`
			table.insert(rules, {
				tag = tag,
				pseudo = "UICorner",
				priority = CORNER_PRIORITY,
				properties = cornerProperties(cornerValue, { property } :: { property: CornerProperty }),
				attributes = attributes,
				children = { zeroedBaseline(tag) },
			})
		end
	end

	return rules
end

return cornerRules
