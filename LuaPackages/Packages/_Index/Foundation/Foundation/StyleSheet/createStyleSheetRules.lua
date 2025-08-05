local StyleSheetRoot = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local StyleRule = require(StyleSheetRoot.StyleRule)
local Types = require(StyleSheetRoot.Rules.Types)

local scaleValue = require(Foundation.Utility.scaleValue)
local Theme = require(Foundation.Enums.Theme)
local Device = require(Foundation.Enums.Device)

type Theme = Theme.Theme
type Device = Device.Device
type StyleRule = Types.StyleRule
type StyleAttribute<T> = Types.StyleAttribute<T>
type StyleRuleNoTag = Types.StyleRuleNoTag

export type AttributesCache = { [string]: number }

local function insertRule(ruleNodes: { React.ReactNode }, rule: StyleRuleNoTag, tag: string)
	local properties = rule.properties

	local tagSelector = "." .. tag
	local modifier = if rule.modifier ~= nil then ":" .. rule.modifier else ""
	local pseudo = if rule.pseudo ~= nil then " ::" .. rule.pseudo else ""
	local selector = tagSelector .. modifier .. pseudo

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
	scale: number?
)
	attributes = attributes or {}
	scale = scale or 1

	for _, attribute in attributes :: { StyleAttribute<unknown> } do
		-- print("updateRuleAttributes", attribute.name, scale)
		if attributesCache[attribute.name] ~= scale then
			local scaledValue = scaleValue(attribute.value, scale)
			sheet:SetAttribute(attribute.name, scaledValue)
			attributesCache[attribute.name] = scale :: number
		end
	end
end

local function createStyleSheetRules(
	rules: { [string]: StyleRuleNoTag },
	tags: { [string]: boolean },
	sheet: StyleSheet?,
	attributesCache: AttributesCache?,
	scale: number?
): React.ReactNode
	local ruleNodes = {}

	for tag, _ in tags do
		local rule = rules[tag]

		if rule == nil then
			continue
		end

		if sheet and attributesCache then
			updateRuleAttributes(sheet :: StyleSheet, rule.attributes, attributesCache :: AttributesCache, scale)
		end
		insertRule(ruleNodes, rule, tag)

		if rule.children then
			for _, child in rule.children do
				if sheet and attributesCache then
					updateRuleAttributes(
						sheet :: StyleSheet,
						child.attributes,
						attributesCache :: AttributesCache,
						scale
					)
				end
				insertRule(ruleNodes, child, child.tag)
			end
		end
	end

	return ruleNodes
end

return createStyleSheetRules
