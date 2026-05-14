--[[
The StyleSheet Registry is a shared registry for StyleSheets outside of React.
Currently it's scoped to the Foundation module, meaning any consumer of this module
will share the same registry. If there are multiple instances of Foundation, they will
not share the same registry, and StyleSheets will not be shared between them.

The API this module returns is not bound to a module level, meaning in the future we are
able to move the registry to a more global scope by using the DataModel as the source of truth.

For now this was avoided to keep the change less disruptive, simpler, and likely much faster.
Reading the DataModel to get state for every operation can be very slow, especially on Android.
]]
local Foundation = script:FindFirstAncestor("Foundation")
local Device = require(Foundation.Enums.Device)
local Theme = require(Foundation.Enums.Theme)
local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(script.Parent.Rules.Types)
type Theme = Theme.Theme
type Device = Device.Device
type TokenOverrides = Tokens.TokenOverrides
type StyleRuleNoTag = Types.StyleRuleNoTag

local Flags = require(Foundation.Utility.Flags)
local getGeneratedRules = require(Foundation.Utility.getGeneratedRules)
local getOverrideAttributes = require(script.Parent.getOverrideAttributes)
local scaleValue = require(Foundation.Utility.scaleValue)
type OverrideAttributes = getOverrideAttributes.OverrideAttributes

local registryFolder = Instance.new("Folder")
registryFolder.Name = "FoundationStyleSheets"
registryFolder.Parent = Foundation

type FoundationStyleSheet = {
	theme: Theme,
	device: Device,
	scale: number,
	tokenOverrides: TokenOverrides?,
	overrideAttributes: OverrideAttributes,
	instance: StyleSheet,
	tags: { [string]: boolean },
	rules: { [string]: StyleRuleNoTag },
	attributes: { [string]: boolean },
}

local styleSheetRegistry: { [StyleSheet]: FoundationStyleSheet } = {}

local function createStyleSheet(
	theme: Theme,
	deviceInput: Device?,
	scaleInput: number?,
	tokenOverrides: TokenOverrides?
): FoundationStyleSheet
	local device: Device = deviceInput or Device.Desktop
	local scale = scaleInput or 1
	local styleSheet = Instance.new("StyleSheet")
	styleSheet.Name = if tokenOverrides ~= nil
		then `{theme}-{device}-{scale}-{tostring(tokenOverrides)}`
		else `{theme}-{device}-{scale}`
	styleSheet.Parent = registryFolder
	return {
		theme = theme,
		device = device,
		scale = scale,
		tokenOverrides = tokenOverrides,
		overrideAttributes = getOverrideAttributes(theme, device, tokenOverrides),
		instance = styleSheet,
		tags = {},
		rules = getGeneratedRules(theme, device),
		attributes = {},
	}
end

local function createStyleRule(rule: StyleRuleNoTag, tag: string): StyleRule
	local tagSelector = "." .. tag
	local modifier = if rule.modifier ~= nil then ":" .. rule.modifier else ""
	local pseudo = if rule.pseudo ~= nil then " ::" .. rule.pseudo else ""
	local selector = tagSelector .. modifier .. pseudo

	if rule.pseudo ~= nil then
		selector = selector .. ", " .. tagSelector .. modifier .. " > " .. rule.pseudo
	end

	local styleRule = Instance.new("StyleRule")
	styleRule.Name = selector
	styleRule.Priority = rule.priority or 1
	styleRule.Selector = selector
	styleRule:SetProperties(rule.properties)
	return styleRule
end

local function applyAttributes(sheet: FoundationStyleSheet, attributes: { Types.StyleAttribute<unknown> }?)
	if not attributes then
		return
	end

	for _, attribute in attributes do
		if sheet.attributes[attribute.name] then
			continue
		end

		local overrideValue = sheet.overrideAttributes[attribute.name]
		local rawValue = if overrideValue ~= nil then overrideValue else attribute.value
		local value = if Flags.FoundationDisableTokenScaling then rawValue else scaleValue(rawValue, sheet.scale)
		sheet.attributes[attribute.name] = true
		sheet.instance:SetAttribute(attribute.name, value)
	end
end

local function addRegisteredStyleSheetTags(sheet: FoundationStyleSheet, tags: { string })
	for _, tag in tags do
		if sheet.tags[tag] then
			continue
		end
		local rule = sheet.rules[tag]
		if not rule then
			continue
		end

		local styleRule = createStyleRule(rule, tag)
		styleRule.Parent = sheet.instance
		applyAttributes(sheet, rule.attributes)
		if rule.children then
			for _, child in rule.children do
				local childRule = createStyleRule(child, child.tag)
				childRule.Parent = sheet.instance
				applyAttributes(sheet, child.attributes)
			end
		end
		sheet.tags[tag] = true
	end
end

--[[
NOTE: `tokenOverrides` is compared by reference. Consumers MUST keep their
overrides table stable across calls (e.g. via React.useMemo or storing it on a
ref) -- passing a fresh table each time will create a new StyleSheet entry
every call and never hit the cache.
]]
local function getStyleSheet(
	theme: Theme,
	deviceInput: Device?,
	scaleInput: number?,
	tokenOverrides: TokenOverrides?
): StyleSheet
	local device: Device = deviceInput or Device.Desktop
	local scale = scaleInput or 1
	for instance, foundationStyleSheet in styleSheetRegistry do
		if
			foundationStyleSheet.theme == theme
			and foundationStyleSheet.device == device
			and foundationStyleSheet.scale == scale
			and foundationStyleSheet.tokenOverrides == tokenOverrides
		then
			return instance
		end
	end
	local foundationStyleSheet = createStyleSheet(theme, device, scale, tokenOverrides)
	styleSheetRegistry[foundationStyleSheet.instance] = foundationStyleSheet
	return foundationStyleSheet.instance
end

local function addStyleTags(sheet: StyleSheet, tags: { string })
	local foundationStyleSheet = styleSheetRegistry[sheet]
	if not foundationStyleSheet then
		error("StyleSheet not found in registry")
	end
	addRegisteredStyleSheetTags(foundationStyleSheet, tags)
end

--[[ Example consumer usage with signals:
local getStyleSheet = createComputed(functione(scope)
	return Foundation.getStyleSheet(theme(scope), device(scope), scale(scope))
end)

local dispose = createEffect(function(scope)
	local sheet = getStyleSheet(scope)
	local tags = getTags(scope) -- some tags signals someone wants

	Foundation.addStyleTags(sheet, tags) -- potentially errors if sheet is not found in the registry/cache
end)

dispose()
]]

return {
	getStyleSheet = getStyleSheet,
	addStyleTags = addStyleTags,
}
