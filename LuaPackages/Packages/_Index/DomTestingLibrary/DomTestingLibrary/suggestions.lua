-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/suggestions.js
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local console = LuauPolyfill.console

local RegExp = require(Packages.LuauRegExp)

-- ROBLOX deviation START: helper fn
local getNodeTestId = require(script.Parent["get-node-test-id"]).getNodeTestId
-- ROBLOX deviation END

local SuggestionTypes = require(script.Parent.types.suggestions)
type Suggestion = SuggestionTypes.Suggestion
type Method = SuggestionTypes.Method

local exports = {}

-- local computeAccessibleName = require(Packages["dom-accessibility-api"]).computeAccessibleName
local getDefaultNormalizer = require(script.Parent.matches).getDefaultNormalizer
local getNodeText = require(script.Parent["get-node-text"]).getNodeText
local getConfig = require(script.Parent.config).getConfig
-- local role_helpersModule = require(script.Parent["role-helpers"])
-- local getImplicitAriaRoles = role_helpersModule.getImplicitAriaRoles
-- local isInaccessible = role_helpersModule.isInaccessible
-- local getLabels = require(script.Parent["label-helpers"]).getLabels

local normalize = getDefaultNormalizer()

local function escapeRegExp(string_: string): string
	local returnValue = string_:gsub("[\\%.%*%+\\%-%?%^%${}%(%)|%[%]]", "\\%1") -- $& means the whole matched string
	return returnValue
end

local function getRegExpMatcher(string_: string)
	return RegExp(escapeRegExp(string_:lower()))
end

local function makeSuggestion(
	queryName: string,
	element,
	content: string,
	ref: { variant: string, name: string? }
): Suggestion
	local variant, name = ref.variant, ref.name
	local warning = ""
	local queryOptions = {}
	local queryArgs = {
		if Array.includes({ "Role", "TestId" }, queryName) then content else getRegExpMatcher(content),
	}
	if Boolean.toJSBoolean(name) then
		queryOptions.name = getRegExpMatcher(name :: string)
	end

	-- ROBLOX deviation START: no Roles handling
	-- if Boolean.toJSBoolean(queryName == "Role" and isInaccessible(element)) then
	-- 	queryOptions.hidden = true
	-- 	warning =
	-- 		[[Element is inaccessible. This means that the element and all its children are invisible to screen readers.
	-- If you are using the aria-hidden prop, make sure this is the right choice for your case.
	-- ]]
	-- end
	-- ROBLOX deviation  END
	if #Object.keys(queryOptions) > 0 then
		table.insert(queryArgs, queryOptions)
	end
	local queryMethod = ("%sBy%s"):format(variant, queryName)
	return {
		queryName = queryName,
		queryMethod = queryMethod,
		queryArgs = queryArgs,
		variant = variant,
		warning = warning,
		toString = function()
			if Boolean.toJSBoolean(warning) then
				console.warn(warning)
			end
			local text, options = table.unpack(queryArgs, 1, 2)
			text = if typeof(text) == "string" then ("'%s'"):format(text) else text
			options = if options ~= nil
				then (", { %s }"):format(Array.join(
					Array.map(Object.entries(options), function(ref)
						local k, v = table.unpack(ref, 1, 2)
						return ("%s: %s"):format(tostring(k), tostring(v))
					end),
					", "
				))
				else ""
			return ("%s(%s%s)"):format(queryMethod, tostring(text), tostring(options))
		end,
	}
end

local function canSuggest(currentMethod: string, requestedMethod: Method?, data)
	return if Boolean.toJSBoolean(data)
		then not Boolean.toJSBoolean(requestedMethod) or (requestedMethod :: Method):lower() == currentMethod:lower()
		else false
end

local function getSuggestedQuery(element: Instance, variant_: string?, method: Method?): Suggestion?
	local variant = (if variant_ == nil then "get" else variant_) :: string
	-- don't create suggestions for script and style elements
	if Array.includes(getConfig().defaultIgnore, element.ClassName) then
		return nil
	end
	--We prefer to suggest something else if the role is generic
	-- ROBLOX deviation START: no support for Role
	-- local ref = element:GetAttribute("role")
	-- local role = if ref ~= nil
	-- 	then ref
	-- 	else if typeof(getImplicitAriaRoles(element)) == "table" then getImplicitAriaRoles(element)[0] else nil
	-- if Boolean.toJSBoolean(role ~= "generic" and canSuggest("Role", method, role)) then
	-- 	return makeSuggestion("Role", element, role, {
	-- 		variant = variant,
	-- 		name = computeAccessibleName(element, {
	-- 			computedStyleSupportsPseudoElements = getConfig().computedStyleSupportsPseudoElements,
	-- 		}),
	-- 	})
	-- end
	-- ROBLOX deviation END
	-- ROBLOX deviation START: no support for labelText
	-- local labelText = Array.join(
	-- 	Array.map(getLabels(document, element), function(label)
	-- 		return label.content
	-- 	end),
	-- 	" "
	-- )
	-- if Boolean.toJSBoolean(canSuggest("LabelText", method, labelText)) then
	-- 	return makeSuggestion("LabelText", element, labelText, { variant = variant })
	-- end
	-- ROBLOX deviation END

	-- ROBLOX deviation START: checking for properties not present in Instances will error, so we check for them safely
	local ok1, placeholderText = pcall(function()
		return (element :: any).PlaceholderText
	end)
	if ok1 and canSuggest("PlaceholderText", method, placeholderText) then
		return makeSuggestion("PlaceholderText", element, placeholderText, { variant = variant })
	end
	local textContent = normalize(getNodeText(element))
	if canSuggest("Text", method, textContent) then
		return makeSuggestion("Text", element, textContent, { variant = variant })
	end
	local ok2, text = pcall(function()
		return (element :: any).Text
	end)
	if ok2 and canSuggest("DisplayValue", method, text) then
		return makeSuggestion("DisplayValue", element, normalize(text), { variant = variant })
	end
	-- ROBLOX deviation END

	-- ROBLOX TODO START: no support for altText, title
	-- local alt = element:getAttribute("alt")
	-- if Boolean.toJSBoolean(canSuggest("AltText", method, alt)) then
	-- 	return makeSuggestion("AltText", element, alt, { variant = variant })
	-- end
	-- local title = element:getAttribute("title")
	-- if Boolean.toJSBoolean(canSuggest("Title", method, title)) then
	-- 	return makeSuggestion("Title", element, title, { variant = variant })
	-- end
	-- ROBLOX TODO END
	-- ROBLOX deviation START: adapt for tags
	local testId = getNodeTestId(element)
	if testId and canSuggest("TestId", method, testId) then
		return makeSuggestion("TestId", element, testId, { variant = variant })
	end
	-- ROBLOX deviation END
	return nil
end
exports.getSuggestedQuery = getSuggestedQuery
return exports
