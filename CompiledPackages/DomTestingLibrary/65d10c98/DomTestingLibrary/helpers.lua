-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/helpers.js
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
type Object = LuauPolyfill.Object

local TypeError = require(script.Parent.jsHelpers.typeError)
local document = require(script.Parent.jsHelpers.document)

local exports = {}

-- Constant node.nodeType for text nodes, see:
-- https://developer.mozilla.org/en-US/docs/Web/API/Node/nodeType#Node_type_constants
local TEXT_NODE = 3

--[[ ROBLOX TODO: come back to this function when implementing waitFor
  Lua implentation may be different, and require a different check
]]
local function jestFakeTimersAreEnabled()
	local jest = require(Packages.JestGlobals).jest
	-- ROBLOX deviation START: workaround to determine if fake timers are running
	-- local setTimeout = require(Packages.LuauPolyfill).setTimeout :: any
	--[[ istanbul ignore else ]]
	if jest ~= nil then
			-- stylua: ignore
			-- return (
			-- 	typeof(setTimeout) == "table" and
			-- 	-- legacy timers
			-- 	(setTimeout._isMockFunction == true
			-- 	-- modern timers
			-- 	or setTimeout["clock"] ~= nil)
			-- )
		local ok = pcall(jest.getTimerCount)
		return ok
		-- ROBLOX deviation END
	end
	-- istanbul ignore next
	return false
end

local function getDocument()
	--[[ istanbul ignore if ]]
	--ROBLOX deviation START: set custom document
	-- if window == nil then
	-- 	error(Error.new("Could not find default container"))
	-- end
	-- return window.document
	return document
	--ROBLOX deviation END
end

local function getWindowFromNode(node)
	if Boolean.toJSBoolean(node.defaultView) then
		-- node is document
		return node.defaultView
	elseif Boolean.toJSBoolean(node.ownerDocument) and Boolean.toJSBoolean(node.ownerDocument.defaultView) then
		-- node is a DOM node
		return node.ownerDocument.defaultView
	elseif Boolean.toJSBoolean(node.window) then
		-- node is window
		return node.window
	elseif Boolean.toJSBoolean(node.ownerDocument) and Boolean.toJSBoolean(node.ownerDocument.defaultView == nil) then
		error(Error.new("It looks like the window object is not available for the provided node."))
	elseif
		-- ROBLOX deviation START: instanceof Function
		typeof(node.andThen) == "function"
		-- ROBLOX deviation END
	then
		error(
			Error.new(
				"It looks like you passed a Promise object instead of a DOM node. Did you do something like `fireEvent.click(screen.findBy...` when you meant to use a `getBy` query `fireEvent.click(screen.getBy...`, or await the findBy query `fireEvent.click(await screen.findBy...`?"
			)
		)
	elseif Array.isArray(node) then
		error(
			Error.new(
				"It looks like you passed an Array instead of a DOM node. Did you do something like `fireEvent.click(screen.getAllBy...` when you meant to use a `getBy` query `fireEvent.click(screen.getBy...`?"
			)
		)
	elseif typeof(node.debug) == "function" and typeof(node.logTestingPlaygroundURL) == "function" then
		error(
			Error.new(
				"It looks like you passed a `screen` object. Did you do something like `fireEvent.click(screen, ...` when you meant to use a query, e.g. `fireEvent.click(screen.getBy..., `?"
			)
		)
	else
		-- The user passed something unusual to a calling function
		error(Error.new(("The given node is not an Element, the node type is: %s."):format(typeof(node))))
	end
end

local function checkContainerType(container: any): ()
	-- ROBLOX deviation START: hoist function
	local function getTypeName(object): string
		-- ROBLOX deviation START: in Lua nil is not an object. we can skip this check
		-- if typeof(object) == "table" then
		-- 	return if object == nil then "null" else object.constructor.name
		-- end
		-- ROBLOX deviation END
		return typeof(object)
	end
	-- ROBLOX deviation END

	if
		not container
		-- or not (typeof(container.querySelector) == "function")
		or not (typeof(container.GetChildren) == "function")
	then
		error(
			TypeError.new(
				("Expected container to be an Element, a Document or a DocumentFragment but got %s."):format(
					getTypeName(container)
				)
			)
		)
	end
end

exports.getWindowFromNode = getWindowFromNode
exports.getDocument = getDocument
exports.checkContainerType = checkContainerType
exports.jestFakeTimersAreEnabled = jestFakeTimersAreEnabled
exports.TEXT_NODE = TEXT_NODE

return exports
