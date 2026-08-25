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
local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local ThemeName = require(Foundation.Enums.ThemeName)
local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(script.Parent.Rules.Types)
type ColorMode = ColorMode.ColorMode
type Device = Device.Device
type ThemeName = ThemeName.ThemeName
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
	themeName: ThemeName,
	colorMode: ColorMode,
	device: Device,
	scale: number,
	tokenOverrides: TokenOverrides?,
	overrideAttributes: OverrideAttributes,
	instance: StyleSheet,
	tags: { [string]: boolean },
	rules: { [string]: StyleRuleNoTag },
	attributes: { [string]: boolean },
	refCount: number,
}

local styleSheetRegistry: { [StyleSheet]: FoundationStyleSheet } = {}

local CLEANUP_DELAY_SECONDS = 5
local pendingCleanup: { [StyleSheet]: boolean } = {}
local isFlushScheduled = false

local function createStyleSheet(
	colorMode: ColorMode,
	deviceInput: Device?,
	scaleInput: number?,
	tokenOverrides: TokenOverrides?,
	themeNameInput: ThemeName?
): FoundationStyleSheet
	local device: Device = deviceInput or Device.Desktop
	local scale = scaleInput or 1
	local themeName: ThemeName = themeNameInput or ThemeName.Default
	local styleSheet = Instance.new("StyleSheet")
	local themePrefix = if Flags.FoundationThemeName then `{themeName}-` else ""
	styleSheet.Name = if tokenOverrides ~= nil
		then `{themePrefix}{colorMode}-{device}-{scale}-{tostring(tokenOverrides)}`
		else `{themePrefix}{colorMode}-{device}-{scale}`
	styleSheet.Parent = registryFolder
	return {
		themeName = themeName,
		colorMode = colorMode,
		device = device,
		scale = scale,
		tokenOverrides = tokenOverrides,
		overrideAttributes = getOverrideAttributes(
			if Flags.FoundationThemeName then themeName else nil,
			colorMode,
			device,
			tokenOverrides
		),
		instance = styleSheet,
		tags = {},
		rules = getGeneratedRules(if Flags.FoundationThemeName then themeName else nil, colorMode, device),
		attributes = {},
		refCount = 0,
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

		(createStyleRule(rule, tag)).Parent = sheet.instance
		applyAttributes(sheet, rule.attributes)
		if rule.children then
			for _, child in rule.children do
				(createStyleRule(child, child.tag)).Parent = sheet.instance
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
-- TODO(next major): reorder to `themeName` first, adjacent to `colorMode`, to match the rest of
-- the pipeline. `themeName` is the trailing optional param today to preserve positional
-- back-compat of the public `Foundation.getStyleSheet`.
-- Pure resolve: looks up (or creates and registers) the sheet for an appearance
-- WITHOUT acquiring a reference. The React hook uses this at render time; acquiring
-- is deferred to a commit-phase effect so discarded renders can't leak references.
local function resolveStyleSheet(
	colorMode: ColorMode,
	deviceInput: Device?,
	scaleInput: number?,
	tokenOverrides: TokenOverrides?,
	themeNameInput: ThemeName?
): StyleSheet
	local device: Device = deviceInput or Device.Desktop
	local scale = scaleInput or 1
	local themeName: ThemeName = themeNameInput or ThemeName.Default
	for instance, foundationStyleSheet in styleSheetRegistry do
		if
			(not Flags.FoundationThemeName or foundationStyleSheet.themeName == themeName)
			and foundationStyleSheet.colorMode == colorMode
			and foundationStyleSheet.device == device
			and foundationStyleSheet.scale == scale
			and foundationStyleSheet.tokenOverrides == tokenOverrides
		then
			-- A render resolving this sheet cancels any pending teardown so the
			-- deferred sweep can't destroy it in the window before the commit-phase
			-- effect acquires a reference (e.g. interrupted/StrictMode renders).
			if Flags.FoundationStyleSheetRefCounting then
				pendingCleanup[instance] = nil
			end
			return instance
		end
	end
	local foundationStyleSheet = createStyleSheet(colorMode, device, scale, tokenOverrides, themeName)
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

--[[
Reference counting keeps the shared registry from growing without bound as new
`(themeName, colorMode, device, scale, tokenOverrides)` combinations are
resolved (each produces a distinct StyleSheet full of StyleRule instances that
would otherwise live forever). A sheet holds a reference while in use and is
destroyed on a deferred sweep once it reaches 0 references. The public
`getStyleSheet` acquires a reference on the caller's behalf, so callers free it
with `releaseStyleSheet`. The React hook instead resolves without acquiring
(`resolveStyleSheet`) and acquires/releases explicitly around mount/unmount.
]]
local function destroyStyleSheet(instance: StyleSheet)
	local sheet = styleSheetRegistry[instance]
	if sheet == nil or sheet.refCount > 0 then
		return
	end
	styleSheetRegistry[instance] = nil
	instance:Destroy()
end

local function flushPendingCleanup()
	isFlushScheduled = false
	for instance in pendingCleanup do
		pendingCleanup[instance] = nil
		destroyStyleSheet(instance)
	end
end

local function scheduleCleanup(instance: StyleSheet)
	pendingCleanup[instance] = true
	if isFlushScheduled then
		return
	end
	isFlushScheduled = true
	task.delay(CLEANUP_DELAY_SECONDS, flushPendingCleanup)
end

local function acquireStyleSheet(sheet: StyleSheet)
	if not Flags.FoundationStyleSheetRefCounting then
		return
	end
	local foundationStyleSheet = styleSheetRegistry[sheet]
	if foundationStyleSheet == nil then
		return
	end
	foundationStyleSheet.refCount += 1
	-- A fresh consumer cancels any pending teardown for this sheet.
	pendingCleanup[sheet] = nil
end

local function releaseStyleSheet(sheet: StyleSheet)
	if not Flags.FoundationStyleSheetRefCounting then
		return
	end
	local foundationStyleSheet = styleSheetRegistry[sheet]
	if foundationStyleSheet == nil or foundationStyleSheet.refCount == 0 then
		return
	end
	foundationStyleSheet.refCount -= 1
	if foundationStyleSheet.refCount == 0 then
		scheduleCleanup(sheet)
	end
end

--[[
Resolve a sheet for an appearance AND acquire a reference on the caller's behalf.
The returned sheet is ref-counted, so the caller must free it with
`releaseStyleSheet` once done. Acquire is a no-op unless the
FoundationStyleSheetRefCounting flag is enabled, so with the flag off this behaves
as a pure resolve (today's behavior).

Example non-React consumer (e.g. signals):

	local sheet = getStyleSheet(colorMode, device, scale)
	addStyleTags(sheet, tags)
	-- ...later, when the consumer is disposed:
	releaseStyleSheet(sheet)
]]
local function getStyleSheet(
	colorMode: ColorMode,
	deviceInput: Device?,
	scaleInput: number?,
	tokenOverrides: TokenOverrides?,
	themeNameInput: ThemeName?
): StyleSheet
	local sheet = resolveStyleSheet(colorMode, deviceInput, scaleInput, tokenOverrides, themeNameInput)
	acquireStyleSheet(sheet)
	return sheet
end

return {
	resolveStyleSheet = resolveStyleSheet,
	getStyleSheet = getStyleSheet,
	addStyleTags = addStyleTags,
	acquireStyleSheet = acquireStyleSheet,
	releaseStyleSheet = releaseStyleSheet,
	-- Exposed for tests to run the deferred sweep synchronously.
	flushPendingCleanup = flushPendingCleanup,
}
