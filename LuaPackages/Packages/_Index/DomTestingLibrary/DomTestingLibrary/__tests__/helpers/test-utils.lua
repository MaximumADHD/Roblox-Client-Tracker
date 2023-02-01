-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/__tests__/helpers/test-utils.js
local Packages = script.Parent.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object

local afterEach = require(Packages.JestGlobals).afterEach

local document = require(script.Parent.Parent.Parent.jsHelpers.document)

local exports = {}

local getQueriesForElement = require(script.Parent.Parent.Parent["get-queries-for-element"]).getQueriesForElement

local function render(html: Array<Instance>, ref_: Object?)
	local ref = (if ref_ == nil then {} else ref_) :: Object
	-- ROBLOX deviation START: use ROBLOX instances
	-- local container = if ref.container == nil then document:createElement("div") else ref.container
	local container
	if ref.container == nil then
		local div = Instance.new("Frame")
		container = div
		container.Parent = document
	else
		container = ref.container
	end
	container:ClearAllChildren()
	for i = 1, #html do
		html[i].Parent = container
	end
	-- ROBLOX deviation END
	local containerQueries = getQueriesForElement(container)
	local function rerender(newHtml: Array<Instance>)
		return render(newHtml, { container = container })
	end
	return Object.assign({}, { container = container, rerender = rerender }, containerQueries)
end

local function renderIntoDocument(html: Array<Instance>)
	-- ROBLOX START deviation: no document.body
	return render(html, { container = document })
	-- ROBLOX deviation END
end

local function cleanup()
	-- ROBLOX deviation START:
	-- document.body.innerHTML = ""
	document:ClearAllChildren()
	-- ROBLOX deviation END
end

afterEach(cleanup)

exports.render = render
exports.renderIntoDocument = renderIntoDocument
exports.cleanup = cleanup

return exports
