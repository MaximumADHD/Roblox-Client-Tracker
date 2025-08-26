local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local RulesTypes = require(Foundation.StyleSheet.Rules.Types)

type Tags = Types.Tags
type StyleRuleNoTag = RulesTypes.StyleRuleNoTag
type StyleAttribute<T> = RulesTypes.StyleAttribute<T>
type AttributesCache = { scale: { [string]: number }, values: { [string]: unknown } }

local scaleValue = require(script.Parent.scaleValue)
local styleMappings = require(script.Parent.styleMappings)
local useRules = require(Foundation.Providers.Style.useRules)
local getFormattedTags = require(Foundation.Utility.getFormattedTags)
local Flags = require(Foundation.Utility.Flags)

local function updateRuleAttributes(
	attributes: { StyleAttribute<unknown> }?,
	attributesCache: AttributesCache,
	scale: number?
)
	attributes = attributes or {}
	scale = scale or 1

	for _, attribute in attributes :: { StyleAttribute<unknown> } do
		if attributesCache.scale[attribute.name] ~= scale then
			attributesCache.scale[attribute.name] = scale :: number
			attributesCache.values[attribute.name] = scaleValue(attribute.value, scale)
		end
	end
end

local function applyRule(
	rule: StyleRuleNoTag,
	props,
	objectType: string,
	attributesCache: AttributesCache,
	scale: number?
)
	local instance = rule.pseudo or "GuiObject"

	for key, value in rule.properties do
		local mapping = styleMappings[instance][key]

		if mapping.filter ~= nil and mapping.filter ~= objectType then
			continue
		end

		if Flags.FoundationStyleTagsStyleSheetAttributes and type(value) == "string" then
			local attributeName = value:sub(2, #value)
			updateRuleAttributes(rule.attributes, attributesCache, scale)
			value = attributesCache.values[attributeName]
		end

		if type(mapping.property) == "table" then
			if props[mapping.property.table] == nil then
				props[mapping.property.table] = {}
			end

			props[mapping.property.table][mapping.property.key] = value
		elseif type(mapping.property) == "string" then
			props[mapping.property] = value
		else
			error(`Invalid mapping type {instance} {key}`)
		end
	end

	return props
end

local function applyRules(
	tags: string?,
	rules: { [string]: StyleRuleNoTag },
	props,
	objectType: string,
	attributesCache: AttributesCache,
	scale: number?
)
	if not rules then
		if Flags.FoundationShowErrorAboutFoundationProvider then
			error("applyRules: rules is nil - make sure FoundationProvider is used to wrap your component")
			return
		else
			warn("applyRules: rules is nil - make sure FoundationProvider is used to wrap your component")
			return
		end
	end

	if tags then
		for str in string.gmatch(tags, "%S+") do
			if rules[str] then
				applyRule(rules[str], props, objectType, attributesCache, scale)
			end
		end
	end
end

local function applyDefaults(props, defaults)
	for key, value in defaults do
		if typeof(value) == "table" and typeof(props[key]) == "table" then
			for k, _v in pairs(value) do
				props[key][k] = value[k]
			end
		else
			props[key] = value
		end
	end
end

local function useStyledDefaults<D>(objectType: string, tags: Tags?, defaultTags: string?, defaultProps: D)
	local rulesContext = useRules()
	local rules = rulesContext.rules
	local scale = rulesContext.scale
	local attributesCache = React.useRef({
		scale = {},
		values = {},
	} :: AttributesCache)

	return React.useMemo(function()
		local styledDefaults = {}

		applyRules(defaultTags, rules, styledDefaults, objectType, attributesCache.current, scale)

		local formattedTags = getFormattedTags(tags)
		applyRules(formattedTags, rules, styledDefaults, objectType, attributesCache.current, scale)

		applyDefaults(styledDefaults, defaultProps)

		return (styledDefaults :: unknown) :: D
	end, { tags :: any, defaultTags, defaultProps, objectType, rules, scale })
end

return useStyledDefaults
