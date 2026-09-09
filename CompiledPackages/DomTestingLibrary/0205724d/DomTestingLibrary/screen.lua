-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/screen.ts
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local console = LuauPolyfill.console
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object

local document = require(script.Parent.jsHelpers.document)
local TypeError = require(script.Parent.jsHelpers.typeError)

local exports = {}

-- ROBLOX deviation START: not required
-- local compressToEncodedURIComponent = require(Packages["lz-string"]).compressToEncodedURIComponent
-- ROBLOX deviation END

local pretty_formatModule = require(Packages.PrettyFormat)
type OptionsReceived = pretty_formatModule.OptionsReceived
local getQueriesForElement = require(script.Parent["get-queries-for-element"]).getQueriesForElement
local getDocument = require(script.Parent.helpers).getDocument
local logDOM = require(script.Parent["pretty-dom"]).logDOM
local queries = require(script.Parent.queries)

-- ROBLOX deviation START: Testing playground not available
-- local function unindent(string_: string)
-- 	-- remove white spaces first, to save a few bytes.
-- 	-- testing-playground will reformat on load any ways.
-- 	return string_:gsub(
-- 		RegExp("[ \t]*[\n][ \t]*")
-- 		"\n"
-- 	)
-- end

-- local function encode(value: string)
-- 	return compressToEncodedURIComponent(unindent(value))
-- end

-- local function getPlaygroundUrl(markup: string)
-- 	return ("https://testing-playground.com/#markup=%s"):format(tostring(encode(markup)))
-- end
-- ROBLOX deviation END

local function debug_(element: (Array<Instance>)?, maxLength: number?, options: OptionsReceived?): ()
	return if Array.isArray(element)
		then Array.forEach(element :: Array<Instance>, function(el)
			return logDOM(el, maxLength, options)
		end)
		else logDOM(element, maxLength, options)
end

local function logTestingPlaygroundURL(element: any?)
	if element == nil then
		-- ROBLOX deviation START: no body in document
		element = getDocument()
		-- ROBLOX deviation END
	end

	-- eslint-disable-next-line @typescript-eslint/no-unnecessary-condition
	if not element or Array.isArray(element) or typeof(element) ~= "Instance" then
		-- ROBLOX deviation START: message adapted to reflect that an Instance is expected
		console.log("The element you're providing isn't a valid Instance.")
		-- ROBLOX deviation END
		return
	end

	-- ROBLOX deviation START: use instance method to check for children
	-- eslint-disable-next-line @typescript-eslint/no-unnecessary-condition
	-- ROBLOX FIXME Luau: should recognize is an Instance at this point
	if #(element :: Instance):GetChildren() == 0 then
		console.log("The provided element doesn't have any children.")
		return
	end
	--ROBLOX deviation END

	-- ROBLOX deviation START: testing playground not available
	-- console.log(("Open this URL in your browser\n\n%s"):format(getPlaygroundUrl(element:GetChildren())))
	-- ROBLOX deviation END
end

local initialValue = { debug = debug_, logTestingPlaygroundURL = logTestingPlaygroundURL }

local screen = if typeof(document)
		~= "nil" -- eslint-disable-line @typescript-eslint/no-unnecessary-condition -- eslint-disable-line @typescript-eslint/no-unnecessary-condition)
	then getQueriesForElement(document, queries, initialValue)
	else Array.reduce(Object.keys(queries), function(helpers, key)
		-- `key` is for all intents and purposes the type of keyof `helpers`, which itself is the type of `initialValue` plus incoming properties from `queries`
		-- if `Object.keys(something)` returned Array<keyof typeof something> this explicit type assertion would not be necessary
		-- see https://stackoverflow.com/questions/55012174/why-doesnt-object-keys-return-a-keyof-type-in-typescript
		helpers[key] = function()
			error(
				TypeError.new(
					"For queries bound to document.body a global document has to be available... Learn more: https://testing-library.com/s/screen-global-error"
				)
			)
		end
		return helpers
	end, initialValue) :: Object
exports.screen = screen
return exports
