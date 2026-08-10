local StyleSheetRoot = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local StyleRule = require(StyleSheetRoot.StyleRule)
local Types = require(StyleSheetRoot.Rules.Types)

local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local Flags = require(Foundation.Utility.Flags)
local getOverrideAttributes = require(StyleSheetRoot.getOverrideAttributes)
local scaleValue = require(Foundation.Utility.scaleValue)

type ColorMode = ColorMode.ColorMode
type Device = Device.Device
type StyleRule = Types.StyleRule
type StyleAttribute<T> = Types.StyleAttribute<T>
type StyleRuleNoTag = Types.StyleRuleNoTag
type OverrideAttributes = getOverrideAttributes.OverrideAttributes

export type AttributesCache = { [string]: unknown }

local function insertRule(ruleNodes: { React.ReactNode }, rule: StyleRuleNoTag, tag: string)
	local properties = rule.properties

	local tagSelector = "." .. tag
	local modifier = if rule.modifier ~= nil then ":" .. rule.modifier else ""
	local pseudo = if rule.pseudo ~= nil then " ::" .. rule.pseudo else ""
	local selector = tagSelector .. modifier .. pseudo

	if rule.pseudo ~= nil then
		selector = selector .. ", " .. tagSelector .. modifier .. " > " .. rule.pseudo
	end

	table.insert(
		ruleNodes,
		React.createElement(StyleRule, {
			key = selector, -- Improves readability and improves performance during reconciliaton
			Priority = rule.priority,
			Selector = selector,
			properties = properties,
		})
	)
end

local function updateRuleAttributes(
	sheet: StyleSheet,
	attributes: { StyleAttribute<unknown> }?,
	attributesCache: AttributesCache,
	scale: number?,
	overrideAttributes: OverrideAttributes?
)
	attributes = attributes or {}
	scale = if Flags.FoundationDisableTokenScaling then 1 else scale or 1

	for _, attribute in attributes :: { StyleAttribute<unknown> } do
		local overrideValue = if overrideAttributes then overrideAttributes[attribute.name] else nil
		local rawValue = if overrideValue ~= nil then overrideValue else attribute.value
		local scaledValue = scaleValue(rawValue, scale)
		if attributesCache[attribute.name] ~= scaledValue then
			sheet:SetAttribute(attribute.name, scaledValue)
			attributesCache[attribute.name] = scaledValue
		end
	end
end

local function createStyleSheetRules(
	rules: { [string]: StyleRuleNoTag },
	tags: { [string]: boolean },
	sheet: StyleSheet?,
	attributesCache: AttributesCache?,
	scale: number?,
	overrideAttributes: OverrideAttributes?
): React.ReactNode
	local ruleNodes = {}

	for tag, _ in tags do
		local rule = rules[tag]

		if rule == nil then
			continue
		end

		if sheet and attributesCache then
			updateRuleAttributes(
				sheet :: StyleSheet,
				rule.attributes,
				attributesCache :: AttributesCache,
				scale,
				overrideAttributes
			)
		end
		insertRule(ruleNodes, rule, tag)

		if rule.children then
			for _, child in rule.children do
				if sheet and attributesCache then
					updateRuleAttributes(
						sheet :: StyleSheet,
						child.attributes,
						attributesCache :: AttributesCache,
						scale,
						overrideAttributes
					)
				end
				insertRule(ruleNodes, child, child.tag)
			end
		end
	end

	return ruleNodes
end

return createStyleSheetRules
