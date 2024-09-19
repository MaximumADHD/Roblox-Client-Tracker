local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
type Tags = Types.Tags
local StyleSheet = require(Foundation.StyleSheet.StyleSheet)
type StyleRuleNoTag = StyleSheet.StyleRuleNoTag

local styleMappings = require(script.Parent.styleMappings)
local useRules = require(Foundation.Providers.Style.useRules)
local getFormattedTags = require(Foundation.Utility.getFormattedTags)

local function applyRule(rule: StyleRuleNoTag, props, objectType: string)
	local instance = rule.pseudo or "GuiObject"

	for key, value in rule.properties do
		local mapping = styleMappings[instance][key]

		if mapping.filter ~= nil and mapping.filter ~= objectType then
			continue
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

local function applyRules(tags: string?, rules: { [string]: StyleRuleNoTag }, props, objectType: string)
	if tags then
		for str in string.gmatch(tags, "%S+") do
			if rules[str] then
				applyRule(rules[str], props, objectType)
			end
		end
	end
end

local function applyDefaults(props, defaults)
	for key, value in defaults do
		if typeof(value) == "table" and typeof(props[key]) == "table" then
			for k, v in pairs(value) do
				props[key][k] = value[k]
			end
		else
			props[key] = value
		end
	end
end

local function useStyledDefaults<D>(objectType: string, tags: Tags?, defaultTags: string?, defaultProps: D)
	local rules = useRules()

	return React.useMemo(function()
		local styledDefaults = {}

		applyRules(defaultTags, rules, styledDefaults, objectType)

		local formattedTags = getFormattedTags(tags)
		applyRules(formattedTags, rules, styledDefaults, objectType)

		applyDefaults(styledDefaults, defaultProps)

		return (styledDefaults :: unknown) :: D
	end, { tags :: any, defaultTags, defaultProps, objectType })
end

return useStyledDefaults
