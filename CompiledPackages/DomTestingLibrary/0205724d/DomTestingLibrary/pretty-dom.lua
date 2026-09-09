-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/pretty-dom.js
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local console = LuauPolyfill.console
type Object = LuauPolyfill.Object

local TypeError = require(script.Parent.jsHelpers.typeError)

local exports = {}

local prettyFormat = require(Packages.PrettyFormat)
local createDOMElementFilter = require(script.Parent.DOMElementFilter).default
local getUCFModule = require(script.Parent["get-user-code-frame"])
local getDocument = require(script.Parent.helpers).getDocument
-- ROBLOX deviation START: avoid circular dependency
local defaultIgnore = require(script.Parent["config-default-ignore"])
-- ROBLOX deviation END

local function inNode()
	return true
	-- return typeof(process) ~= "undefined" and process.versions ~= nil and process.versions.node ~= nil
end

-- ROBLOX deviation START: not used
-- local DOMCollection = prettyFormat.plugins.DOMCollection

-- https://developer.mozilla.org/en-US/docs/Web/API/Node/nodeType#node_type_constants
-- local ELEMENT_NODE = 1
-- local COMMENT_NODE = 8
-- ROBLOX deviation END

-- https://github.com/facebook/jest/blob/615084195ae1ae61ddd56162c62bbdda17587569/packages/pretty-format/src/plugins/DOMElement.ts#L50
local function filterCommentsAndDefaultIgnoreTagsTags(value: Instance)
	-- ROBLOX deviation: no comment filtering, we are just dealing with instances
	-- return value.nodeType ~= COMMENT_NODE
	-- 	and (value.nodeType ~= ELEMENT_NODE or not Boolean.toJSBoolean(value:matches(defaultIgnore.getIgnore())))
	local ignored = defaultIgnore.getIgnore()
	return not Array.includes(ignored, value.ClassName)
end

local function prettyDOM(dom: Instance?, maxLength: number?, options_: Object?): string
	local options = (if options_ == nil then {} else options_) :: Object
	if not dom then
		-- ROBLOX deviation START: there's no body in default document
		dom = getDocument()
		-- ROBLOX deviation END: there's no body in default document
	end
	if typeof(maxLength) ~= "number" then
		-- ROBLOX deviation START: don't check for process
		local ref = _G.DEBUG_PRINT_LIMIT
		-- ROBLOX deviation END: don't check for process
		maxLength = Boolean.toJSBoolean(ref) and ref or 7000
	end

	if maxLength == 0 then
		return ""
	end

	-- ROBLOX deviation START: doesn't exist in instance
	-- if Boolean.toJSBoolean(dom.documentElement) then
	-- 	dom = dom.documentElement
	-- end
	-- ROBLOX deviation END

	local domTypeName = typeof(dom)
	-- ROBLOX deviation START: using typeof. Expect always a string
	-- if domTypeName == "object" then
	-- 	domTypeName = dom.constructor.name
	-- else
	-- 	-- To don't fall with `in` operator
	-- 	dom = {}
	-- end
	-- ROBLOX deviation END

	-- ROBLOX deviation START: check if dom is Instance
	if domTypeName ~= "Instance" then
		error(TypeError.new(("Expected an Instance but got %s"):format(domTypeName)))
	end
	-- ROBLOX deviation END

	local filterNode, prettyFormatOptions =
		if options.filterNode == nil then filterCommentsAndDefaultIgnoreTagsTags else options.filterNode,
		Object.assign({}, options, { filterNode = Object.None })

	local debugContent = prettyFormat.format(
		dom,
		Object.assign({}, {
			plugins = {
				createDOMElementFilter(filterNode),
				-- ROBLOX deviation START: not required
				-- DOMCollection
				-- ROBLOX deviation END
			},
			printFunctionName = false,
			highlight = inNode(),
		}, prettyFormatOptions)
	)

	return if maxLength ~= nil and #debugContent > maxLength
		then ("%s..."):format(string.sub(debugContent, 1, maxLength))
		else debugContent
end

local function logDOM(...: any)
	local userCodeFrame = getUCFModule.getUserCodeFrame()
	if Boolean.toJSBoolean(userCodeFrame) then
		console.log(("%s\n\n%s"):format(prettyDOM(...), userCodeFrame))
	else
		console.log(prettyDOM(...))
	end
end

exports.prettyDOM = prettyDOM
exports.logDOM = logDOM
exports.prettyFormat = prettyFormat

return exports
