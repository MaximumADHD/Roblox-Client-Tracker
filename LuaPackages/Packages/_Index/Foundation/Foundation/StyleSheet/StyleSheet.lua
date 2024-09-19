local StyleSheetRoot = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local StyleRule = require(StyleSheetRoot.StyleRule)
local generateRules = require(StyleSheetRoot.generateRules)
local useGeneratedRules = require(Foundation.Utility.useGeneratedRules)

local Theme = require(Foundation.Enums.Theme)
local Device = require(Foundation.Enums.Device)
type Theme = Theme.Theme
type Device = Device.Device
type StyleRule = generateRules.StyleRule

export type StyleRuleNoTag = {
	modifier: string?,
	properties: { [string]: any },
	pseudo: string?,
	children: { StyleRule }?,
}

local function insertRule(ruleNodes: { React.ReactNode }, rule: StyleRuleNoTag, tag: string)
	local properties = rule.properties

	local tagSelector = "." .. tag
	local modifier = if rule.modifier ~= nil then ":" .. rule.modifier else ""
	local pseudo = if rule.pseudo ~= nil then " ::" .. rule.pseudo else ""
	local selector = tagSelector .. modifier .. pseudo

	table.insert(
		ruleNodes,
		if tag == "gui-object-defaults" or tag == "text-defaults" then 1 else #ruleNodes + 1,
		React.createElement(StyleRule, {
			key = selector, -- Improves readability and improves performance during reconciliaton
			Selector = selector,
			properties = properties,
		})
	)
end

local function createRules(rules: { [string]: StyleRuleNoTag }, tags: { [string]: boolean }): React.ReactNode
	local ruleNodes = {}

	for tag, _ in tags do
		local rule = rules[tag]

		if rule == nil then
			continue
		end

		insertRule(ruleNodes, rule, tag)

		if rule.children then
			for _, child in rule.children do
				insertRule(ruleNodes, child, child.tag)
			end
		end
	end

	return ruleNodes
end

type StyleSheetProps = {
	theme: Theme,
	device: Device,
	tags: { [string]: boolean },
	derives: { StyleSheet }?,
	DONOTUSE_colorUpdate: boolean?,
}

local function StyleSheet(props: StyleSheetProps)
	local sheet = React.useRef(nil)

	local rules = useGeneratedRules(props.theme, props.device, props.DONOTUSE_colorUpdate == true)

	React.useLayoutEffect(function()
		if sheet.current then
			sheet.current:SetDerives(props.derives or {})
		end
		-- There is no removeDerives, a new call overwrites the old one.
	end, { props.derives })

	return React.createElement(React.Fragment, nil, {
		Sheet = React.createElement("StyleSheet", {
			ref = sheet,
		}, createRules(rules, props.tags)),
		Link = React.createElement("StyleLink", {
			StyleSheet = sheet,
		}),
	})
end

return React.memo(StyleSheet)
