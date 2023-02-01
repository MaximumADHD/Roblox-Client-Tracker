-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/__tests__/suggestions.js
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local console = LuauPolyfill.console

local RegExp = require(Packages.LuauRegExp)

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local afterEach = JestGlobals.afterEach

local typesModule = require(script.Parent.Parent.types)
type Suggestion = typesModule.Suggestion

local querySelector = require(script.Parent.Parent.jsHelpers.querySelectors).querySelector
local querySelectorAll = require(script.Parent.Parent.jsHelpers.querySelectors).querySelectorAll
local CollectionService = game:GetService("CollectionService")

local configure = require(script.Parent.Parent.config).configure
local screen = require(script.Parent.Parent.screen).screen
local getSuggestedQuery = require(script.Parent.Parent.suggestions).getSuggestedQuery
local test_utilsModule = require(script.Parent.helpers["test-utils"])
local renderIntoDocument = test_utilsModule.renderIntoDocument
local render = test_utilsModule.render

beforeAll(function()
	configure({ throwSuggestions = true })
end)

afterEach(function()
	configure({ testIdAttribute = "data-testid" });
	(console.warn :: any):mockClear()
end)

afterAll(function()
	configure({ throwSuggestions = false })
end)

-- ROBLOX deviation START: not applicable
-- it("does not suggest for nested inline style", function()
-- 	renderIntoDocument(
-- 		'<div data-testid="style"><style>.hsuHs{margin:auto}.wFncld{margin-top:3px;color:#9AA0A6;height:20px;width:20px}</style></div>'
-- 	)
-- 	expect(function()
-- 		return screen.getByTestId("style")
-- 	end).never.toThrow()
-- end)
-- it("does not suggest for inline script, style", function()
-- 	renderIntoDocument(
-- 		'<script data-testid="script">alert(\'hello\')</script><style data-testid="style">.hsuHs{margin:auto}.wFncld{margin-top:3px;color:#9AA0A6;height:20px;width:20px}</style>'
-- 	)
-- 	expect(function()
-- 		return screen.getByTestId("script")
-- 	end).never.toThrow()
-- 	expect(function()
-- 		return screen.getByTestId("style")
-- 	end).never.toThrow()
-- end)
-- ROBLOX deviation END
test("respects ignores", function()
	local text = Instance.new("TextLabel")
	text.Text = "foo"
	renderIntoDocument({ text })
	expect(function()
		return screen.queryByText("foo", { ignore = { "TextLabel" } })
	end).never.toThrowError()
end)
test("does not suggest query that would give a different element", function()
	local div1 = Instance.new("Frame")
	CollectionService:AddTag(div1, "data-testid=foo")
	local img1 = Instance.new("ImageLabel")
	img1.Parent = div1
	local div2 = Instance.new("Frame")
	CollectionService:AddTag(div2, "data-testid=bar")
	local a1 = Instance.new("TextLabel")
	a1.Text = ""
	local div3 = Instance.new("Frame")
	local img2 = Instance.new("ImageLabel")
	img2.Parent = div3
	div3.Parent = a1
	local a2 = Instance.new("TextLabel")
	CollectionService:AddTag(a2, "data-testid=baz")
	a2.Text = ""
	local h1 = Instance.new("TextLabel")
	h1.Text = "link text"
	h1.Parent = a2

	renderIntoDocument({ div1, div2, a2 })
	expect(function()
		return screen.getByTestId("foo")
	end).never.toThrowError()
	expect(function()
		return screen.getByTestId("bar")
	end).never.toThrowError()
	expect(function()
		return screen.getByTestId("baz")
	end).never.toThrowError()
end)

-- ROBLOX deviation START: ByRole not available
-- it("does not suggest when using getByRole", function()
-- 	renderIntoDocument('<button data-testid="foo">submit</button>')
-- 	expect(function()
-- 		return screen.getByRole("button", {
-- 			name = error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /submit/i ]]
-- 		})
-- 	end).never.toThrowError()
-- end)
-- ROBLOX deviation END
test("should not suggest when nothing available", function()
	local span = Instance.new("TextLabel")
	CollectionService:AddTag(span, "data-testid=foo")
	span.Text = ""
	renderIntoDocument({ span })
	expect(function()
		return screen.queryByTestId("foo")
	end).never.toThrowError()
end)

test("should not suggest if the suggestion would give different results", function()
	local input = Instance.new("TextBox")
	CollectionService:AddTag(input, "data-testid=foo")
	local span = Instance.new("TextLabel")
	CollectionService:AddTag(span, "data-testid=foo")
	span.Text = ""
	renderIntoDocument({ input, span })
	expect(function()
		return screen.getAllByTestId("foo", { suggest = false })
	end).never.toThrowError()
end)

-- ROBLOX deviation START: queries not available
-- it("should suggest by label over title", function()
-- 	renderIntoDocument('<label><span>bar</span><input type="password" title="foo" /></label>')
-- 	expect(function()
-- 		return screen.getByTitle("foo")
-- 	end).toThrowError(
-- 		error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getByLabelText\(\/bar\/i\)/ ]]
-- 	)
-- end)
-- ROBLOX deviation END
test("should not suggest if there would be mixed suggestions", function()
	local button = Instance.new("TextButton")
	CollectionService:AddTag(button, "data-testid=foo")
	button.Text = "submit"
	local input = Instance.new("TextBox")
	CollectionService:AddTag(input, "data-testid=foo")
	input:SetAttribute("id", "foo")
	input.Text = "submit"
	local label = Instance.new("TextLabel")
	label:SetAttribute("for", "foo")
	label.Text = "Username"
	renderIntoDocument({ button, label, input })
	expect(function()
		return screen.getAllByTestId("foo")
	end).never.toThrowError()
end)
test("should not suggest when suggest is turned off for a query", function()
	local button1 = Instance.new("TextButton")
	CollectionService:AddTag(button1, "data-testid=foo")
	button1.Text = "submit"
	local button2 = Instance.new("TextButton")
	CollectionService:AddTag(button2, "data-testid=foot")
	button2.Text = "another"
	renderIntoDocument({ button1, button2 })
	expect(function()
		return screen.getByTestId("foo", { suggest = false })
	end).never.toThrowError()
	expect(function()
		return screen.getAllByTestId(RegExp("foo"), { suggest = false })
	end).never.toThrowError()
end)

-- ROBLOX deviation START: ByRole, ByAltText not available
-- 	it("should suggest getByRole when used with getBy", function()
-- 		renderIntoDocument('<button data-testid="foo">submit</button>')
-- 		expect(function()
-- 			return screen.getByTestId("foo")
-- 		end).toThrowErrorMatchingInlineSnapshot([[

--     A better query is available, try this:
--     getByRole('button', { name: /submit/i })

--     Ignored nodes: comments, <script />, <style />
--     <body>
--       <button
--         data-testid="foo"
--       >
--         submit
--       </button>
--     </body>
--   ]])
-- 	end)
-- 	it("should suggest getAllByRole when used with getAllByTestId", function()
-- 		renderIntoDocument([[

--     <button data-testid="foo">submit</button>
--     <button data-testid="foo">submit</button>]])
-- 		expect(function()
-- 			return screen.getAllByTestId("foo")
-- 		end).toThrowErrorMatchingInlineSnapshot([[

--     A better query is available, try this:
--     getAllByRole('button', { name: /submit/i })

--     Ignored nodes: comments, <script />, <style />
--     <body>

--       <button
--         data-testid="foo"
--       >
--         submit
--       </button>

--       <button
--         data-testid="foo"
--       >
--         submit
--       </button>
--     </body>
--   ]])
-- 	end)

-- 	it("should suggest findByRole when used with findByTestId", function()
-- 		return Promise.resolve():andThen(function()
-- 			renderIntoDocument([[

--   <button data-testid="foo">submit</button>
--   <button data-testid="foot">submit</button>
--   ]])
-- 			expect(screen.findByTestId("foo")).rejects
-- 				.toThrowError(
-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /findByRole\('button', \{ name: \/submit\/i \}\)/ ]]
-- 				)
-- 				:expect()
-- 			expect(screen.findAllByTestId(
-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /foo/ ]]
-- 				)).rejects
-- 				.toThrowError(
-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /findAllByRole\('button', \{ name: \/submit\/i \}\)/ ]]
-- 				)
-- 				:expect()
-- 		end)
-- 	end)

-- it("should suggest img role w/ alt text", function()
-- 	renderIntoDocument('<img data-testid="img" alt="Incredibles 2 Poster"  />')
-- 	expect(function()
-- 		return screen.getByAltText("Incredibles 2 Poster")
-- 	end).toThrowError(
-- 		error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getByRole\('img', \{ name: \/incredibles 2 poster\/i \}\)/ ]]
-- 	)
-- end)
-- ROBLOX deviation END
test("escapes regular expressions in suggestion", function()
	local label = Instance.new("TextLabel")
	label.Text = "inp-t lab^l w{th c+ars to esc\\pe"
	local input = Instance.new("TextBox")
	input.Text = "my super string +-('{}^$)"
	input.PlaceholderText = "should escape +-'(/"
	local p = Instance.new("TextLabel")
	p.Text = "Loading ... (1)"
	local img = Instance.new("ImageLabel")
	CollectionService:AddTag(img, "data-testid=foo")

	local container = renderIntoDocument({ label, input, p, img }).container
	-- ROBLOX deviation START: ByRole, ByAltText not available
	-- expect(function()
	-- 	return screen.getByTestId("foo")
	-- end).toThrowError(
	-- 	error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getByRole\('img', \{ name: \/the problem \\\(picture of a question mark\\\)\/i \}\)/ ]]
	-- )
	-- expect(tostring(getSuggestedQuery(container:querySelector("img"), "get", "altText"))).toEqual(
	-- 	"getByAltText(/the problem \\(picture of a question mark\\)/i)"
	-- )
	-- ROBLOX deviation END
	-- ROBLOX deviation: label and p are of the same ClassName in lua, changed to querySelectorAll
	expect((getSuggestedQuery(querySelectorAll(container, { "TextLabel" })[2]) :: Suggestion).toString()).toEqual(
		"getByText(/loading \\.\\.\\. \\(1\\)/)"
	)
	-- ROBLOX deviation END

	-- expect(
	-- 	(getSuggestedQuery(querySelector(container, { "TextBox" }) :: Instance, "get", "PlaceholderText")).toString()
	-- ).toEqual("getByPlaceholderText(/should escape \\+\\-'\\(\\/)")

	expect(
		(getSuggestedQuery(querySelector(container, { "TextBox" }) :: Instance, "get", "DisplayValue") :: Suggestion).toString()
	).toEqual("getByDisplayValue(/my super string \\+\\-\\('\\{\\}\\^\\$\\)/)")

	-- ROBLOX deviation START: ByLabelText not available
	-- expect(tostring(getSuggestedQuery(container:querySelector("input"), "get", "labelText"))).toEqual(
	-- 	"getByLabelText(/inp\\-t lab\\^l w\\{th c\\+ars to esc\\\\pe/i)"
	-- )
	-- ROBLOX deviation END
end)

-- ROBLOX deviation START: ByLabel not available
-- 	it("should suggest getByLabelText when no role available", function()
-- 		renderIntoDocument('<label for="foo">Username</label><input type="password" data-testid="foo" id="foo" />')
-- 		expect(function()
-- 			return screen.getByTestId("foo")
-- 		end).toThrowError(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getByLabelText\(\/username\/i\)/ ]]
-- 		)
-- 	end)

-- 	it("should not suggest by label when using by label", function()
-- 		return Promise.resolve():andThen(function()
-- 			renderIntoDocument('<label><span>bar</span><input type="password" title="foo" /></label>') -- if a suggestion is made, this call will throw, thus failing the test.
-- 			local password = screen
-- 				:findByLabelText(
-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /bar/i ]]
-- 				)
-- 				:expect()
-- 			expect(password).toHaveAttribute("type", "password")
-- 		end)
-- 	end)

-- 	it("should suggest getByLabel on non form elements", function()
-- 		renderIntoDocument([[

--   <div data-testid="foo" aria-labelledby="section-one-header">
--     <span id="section-one-header">Section One</span>
--     <p>some content</p>
--   </div>
--   ]])
-- 		expect(function()
-- 			return screen.getByTestId("foo")
-- 		end).toThrowError(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getByLabelText\(\/section one\/i\)/ ]]
-- 		)
-- 	end)

-- 	Array.forEach({
-- 		'<label id="username-label">Username</label><input aria-labelledby="username-label" type="text" />',
-- 		'<label><span>Username</span><input type="text" /></label>',
-- 		'<label for="foo">Username</label><input id="foo" type="text" />',
-- 	}, function(name)
-- 		-- ROBLOX deviation END
-- 		it(("%s\nshould suggest getByRole over"):format(name), function(html)
-- 			return Promise.resolve():andThen(function()
-- 				renderIntoDocument(html)
-- 				expect(function()
-- 					return screen.getByLabelText("Username")
-- 				end).toThrowError(
-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getByRole\('textbox', \{ name: \/username\/i \}\)/ ]]
-- 				)
-- 				expect(function()
-- 					return screen.getAllByLabelText("Username")
-- 				end).toThrowError(
-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getAllByRole\('textbox', \{ name: \/username\/i \}\)/ ]]
-- 				)
-- 				expect(function()
-- 					return screen.queryByLabelText("Username")
-- 				end).toThrowError(
-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /queryByRole\('textbox', \{ name: \/username\/i \}\)/ ]]
-- 				)
-- 				expect(function()
-- 					return screen.queryAllByLabelText("Username")
-- 				end).toThrowError(
-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /queryAllByRole\('textbox', \{ name: \/username\/i \}\)/ ]]
-- 				)
-- 				expect(screen.findByLabelText("Username")).rejects
-- 					.toThrowError(
-- 						error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /findByRole\('textbox', \{ name: \/username\/i \}\)/ ]]
-- 					)
-- 					:expect()
-- 				expect(screen.findAllByLabelText(
-- 						error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /Username/ ]]
-- 					)).rejects
-- 					.toThrowError(
-- 						error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /findAllByRole\('textbox', \{ name: \/username\/i \}\)/ ]]
-- 					)
-- 					:expect()
-- 			end)
-- 		end)
-- 	end)

-- 	it("should suggest label over placeholder text", function()
-- 		renderIntoDocument(
-- 			'<label for="foo">Password</label><input type="password" id="foo" data-testid="foo" placeholder="Password" />'
-- 		)
-- 		expect(function()
-- 			return screen.getByPlaceholderText("Password")
-- 		end).toThrowError(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getByLabelText\(\/password\/i\)/ ]]
-- 		)
-- 	end)
-- ROBLOX deviation END
test("should suggest getByPlaceholderText", function()
	local input = Instance.new("TextBox")
	input:SetAttribute("type", "password")
	CollectionService:AddTag(input, "data-testid=foo")
	input.PlaceholderText = "Password"
	renderIntoDocument({ input })
	expect(function()
		return screen.getByTestId("foo")
	end).toThrowError(RegExp("getByPlaceholderText\\(\\/password\\/\\)"))
end)
test("should suggest getByText for simple elements", function()
	local div = Instance.new("TextLabel")
	div.Text = "hello there"
	CollectionService:AddTag(div, "data-testid=foo")
	renderIntoDocument({ div })
	expect(function()
		return screen.getByTestId("foo")
	end).toThrowError(RegExp("getByText\\(\\/hello there\\/\\)"))
end)
test("should suggest getByDisplayValue", function()
	local input = Instance.new("TextBox")
	input:SetAttribute("id", "password")
	CollectionService:AddTag(input, "data-testid=password")
	renderIntoDocument({ input })
	input.Text = "Prine" -- RIP John Prine
	expect(function()
		return screen.getByTestId("password")
	end).toThrowError(RegExp("getByDisplayValue\\(\\/prine\\/\\)"))
end)

-- ROBLOX deviation START: ByAltText, ByTitle, ByRole not available
-- 	it("should suggest getByAltText", function()
-- 		renderIntoDocument([[

--     <input type="password" data-testid="input" alt="password" />
--     <map name="workmap">
--       <area data-testid="area" shape="rect" coords="34,44,270,350" alt="Computer">
--     </map>
--     ]])
-- 		expect(function()
-- 			return screen.getByTestId("input")
-- 		end).toThrowError(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getByAltText\(\/password\/i\)/ ]]
-- 		)
-- 		expect(function()
-- 			return screen.getByTestId("area")
-- 		end).toThrowError(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getByAltText\(\/computer\/i\)/ ]]
-- 		)
-- 	end)
-- 	it("should suggest getByTitle", function()
-- 		renderIntoDocument([[

--   <span title="Delete" data-testid="delete"></span>
--   <svg>
--     <title data-testid="svg">Close</title>
--     <g><path /></g>
--   </svg>]])
-- 		expect(function()
-- 			return screen.getByTestId("delete")
-- 		end).toThrowError(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getByTitle\(\/delete\/i\)/ ]]
-- 		)
-- 		expect(function()
-- 			return screen.getAllByTestId("delete")
-- 		end).toThrowError(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getAllByTitle\(\/delete\/i\)/ ]]
-- 		)
-- 		expect(function()
-- 			return screen.queryByTestId("delete")
-- 		end).toThrowError(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /queryByTitle\(\/delete\/i\)/ ]]
-- 		)
-- 		expect(function()
-- 			return screen.queryAllByTestId("delete")
-- 		end).toThrowError(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /queryAllByTitle\(\/delete\/i\)/ ]]
-- 		)
-- 		expect(function()
-- 			return screen.queryAllByTestId("delete")
-- 		end).toThrowError(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /queryAllByTitle\(\/delete\/i\)/ ]]
-- 		)
-- 		expect(function()
-- 			return screen.queryAllByTestId("delete")
-- 		end).toThrowError(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /queryAllByTitle\(\/delete\/i\)/ ]]
-- 		)
-- 		-- Since `ByTitle` and `ByText` will both return the <title> element
-- 		-- `getByText` will always be the suggested query as it is higher up the list.
-- 		expect(function()
-- 			return screen.getByTestId("svg")
-- 		end).toThrowError(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getByText\(\/close\/i\)/ ]]
-- 		)
-- 	end)
-- it("getSuggestedQuery handles `variant` and defaults to `get`", function()
-- 	local button_ = Instance.new("TextButton")
-- 	button_.Text = "submit"
-- 	local button = render({button_}).container.GetChildren()[1]
-- 	expect(tostring(getSuggestedQuery(button))).toMatch(
-- 		error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getByRole/ ]]
-- 	)
-- 	expect(tostring(getSuggestedQuery(button, "get"))).toMatch(
-- 		error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getByRole/ ]]
-- 	)
-- 	expect(tostring(getSuggestedQuery(button, "getAll"))).toMatch(
-- 		error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getAllByRole/ ]]
-- 	)
-- 	expect(tostring(getSuggestedQuery(button, "query"))).toMatch(
-- 		error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /queryByRole/ ]]
-- 	)
-- 	expect(tostring(getSuggestedQuery(button, "queryAll"))).toMatch(
-- 		error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /queryAllByRole/ ]]
-- 	)
-- 	expect(tostring(getSuggestedQuery(button, "find"))).toMatch(
-- 		error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /findByRole/ ]]
-- 	)
-- 	expect(tostring(getSuggestedQuery(button, "findAll"))).toMatch(
-- 		error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /findAllByRole/ ]]
-- 	)
-- end)
-- ROBLOX deviation END
test("getSuggestedQuery returns rich data for tooling", function()
	-- ROBLOX deviation START: ByRole not supported
	-- local buttonInstance = Instance.new("TextButton")
	-- buttonInstance.Text = "submit"
	-- local button = render({ buttonInstance }).container:GetChildren()[1]
	-- expect(getSuggestedQuery(button)).toMatchObject({
	-- 	queryName = "Role",
	-- 	queryMethod = "getByRole",
	-- 	queryArgs = {
	-- 		"button",
	-- 		{
	-- 			name = "wi",
	-- 			-- name = RegExp.new("submit", "i")
	-- 		},
	-- 	},
	-- 	variant = "get",
	-- })
	-- expect(tostring(getSuggestedQuery(button))).toEqual("getByRole('button', { name: /submit/i })")
	-- ROBLOX deviation END
	local a = Instance.new("TextLabel")
	a.Text = "cancel"
	local div = render({ a }).container:GetChildren()[1]

	-- ROBLOX deviation START: splitted the tests. Possible bug in toMatchObject with regex
	local suggestedQuery = getSuggestedQuery(div) :: Suggestion
	expect(suggestedQuery).toMatchObject({
		queryName = "Text",
		queryMethod = "getByText",
		variant = "get",
	})

	expect(suggestedQuery.queryArgs).toEqual({
		RegExp("cancel"),
	})
	-- ROBLOX deviation END

	local suggested = getSuggestedQuery(div)
	expect(if suggested then suggested.toString() else suggested).toEqual("getByText(/cancel/)")
end)
test("getSuggestedQuery can return specified methods in addition to the best", function()
	local label = Instance.new("TextLabel")
	label.Text = "label"
	local input_ = Instance.new("TextBox")
	input_.PlaceholderText = "placeholder"
	input_.Text = "value"
	CollectionService:AddTag(input_, "data-testid=testid")
	local button_ = Instance.new("TextButton")
	button_.Text = "button"
	local container = render({ label, input_, button_ }).container
	local input = querySelector(container, { "TextBox" }) :: Instance
	local button = querySelector(container, { "TextButton" }) :: Instance

	-- this function should be insensitive for the method param.
	-- Role and role should work the same
	-- ROBLOX deviation START: ByRole, ByLabelText not supported
	-- expect(getSuggestedQuery(input, "get", "role")).toMatchObject({
	-- 	queryName = "Role",
	-- 	queryMethod = "getByRole",
	-- 	queryArgs = {
	-- 		"textbox",
	-- 		{
	-- 			name = error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /label/i ]]
	-- 		},
	-- 	},
	-- 	variant = "get",
	-- })
	-- expect(getSuggestedQuery(input, "get", "LabelText")).toMatchObject({
	-- 	queryName = "LabelText",
	-- 	queryMethod = "getByLabelText",
	-- 	queryArgs = {
	-- 		error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /label/i ]]
	-- 	},
	-- 	variant = "get",
	-- })
	-- ROBLOX deviation END

	-- ROBLOX deviation START: splitted the tests. Possible bug in toMatchObject with regex
	local placeholderSuggestion = getSuggestedQuery(input, "get", "PlaceholderText") :: Suggestion
	expect(placeholderSuggestion).toMatchObject({
		queryName = "PlaceholderText",
		queryMethod = "getByPlaceholderText",
		variant = "get",
	})
	expect(placeholderSuggestion.queryArgs).toEqual({
		RegExp("placeholder"),
	})

	local buttonSuggestion = getSuggestedQuery(button, "get", "Text") :: Suggestion
	expect(buttonSuggestion).toMatchObject({
		queryName = "Text",
		queryMethod = "getByText",
		variant = "get",
	})
	expect(buttonSuggestion.queryArgs).toEqual({
		RegExp("button"),
	})

	local displaySuggestion = getSuggestedQuery(input, "get", "DisplayValue") :: Suggestion
	expect(displaySuggestion).toMatchObject({
		queryName = "DisplayValue",
		queryMethod = "getByDisplayValue",
		variant = "get",
	})
	expect(displaySuggestion.queryArgs).toEqual({
		RegExp("value"),
	})
	-- ROBLOX deviation END

	-- ROBLOX deviation START: ByAltText, ByRole not supported
	-- expect(getSuggestedQuery(input, "get", "AltText")).toMatchObject({
	-- 	queryName = "AltText",
	-- 	queryMethod = "getByAltText",
	-- 	queryArgs = {
	-- 		error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /alt/ ]]
	-- 	},
	-- 	variant = "get",
	-- })
	-- expect(getSuggestedQuery(input, "get", "Title")).toMatchObject({
	-- 	queryName = "Title",
	-- 	queryMethod = "getByTitle",
	-- 	queryArgs = {
	-- 		error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /title/i ]]
	-- 	},
	-- 	variant = "get",
	-- })
	-- ROBLOX deviation END
	expect(getSuggestedQuery(input, "get", "TestId")).toMatchObject({
		queryName = "TestId",
		queryMethod = "getByTestId",
		queryArgs = { "testid" },
		variant = "get",
	})

	-- return undefined if requested query can't be made
	expect(getSuggestedQuery(button, "get", "TestId")).toBeUndefined()
end)
test("getSuggestedQuery works with custom testIdAttribute", function()
	configure({ testIdAttribute = "data-test" })
	local label = Instance.new("TextLabel")
	label.Text = "label"
	local input_ = Instance.new("TextBox")
	input_.PlaceholderText = "placeholder"
	input_.Text = "value"
	CollectionService:AddTag(input_, "data-test=testid")
	local button = Instance.new("TextButton")
	button.Text = "button"
	local container = render({ label, input_, button }).container
	local input = querySelector(container, { "TextBox" }) :: Instance
	expect(getSuggestedQuery(input, "get", "TestId")).toMatchObject({
		queryName = "TestId",
		queryMethod = "getByTestId",
		queryArgs = { "testid" },
		variant = "get",
	})
end)

-- ROBLOX deviation START: not applicable
-- 	it("getSuggestedQuery does not create suggestions for script and style elements", function()
-- 		local container = render([[

--     <script data-testid="script"></script>
--     <style data-testid="style"></style>
--   ]]).container
-- 		local script_ = container:querySelector("script")
-- 		local style = container:querySelector("style")
-- 		expect(getSuggestedQuery(script_, "get", "TestId")).toBeUndefined()
-- 		expect(getSuggestedQuery(style, "get", "TestId")).toBeUndefined()
-- 	end)
-- ROBLOX deviation END

-- this is only a temporary fix. The problem is that at the moment @testing-library/dom
-- not support label concatenation
-- see https://github.com/testing-library/dom-testing-library/issues/545
-- ROBLOX deviation START: ARIA not supported
-- 	it("should get the first label with aria-labelledby contains multiple ids", function()
-- 		local container = renderIntoDocument([[

--     <div id="one">One</div>
--     <div id="two">One</div>
--     <input
--       type="text"
--       aria-labelledby="one two"
--     />
--   ]]).container
-- 		expect(getSuggestedQuery(container:querySelector("input"), "get", "labelText")).toMatchObject({
-- 			queryName = "LabelText",
-- 			queryMethod = "getByLabelText",
-- 			queryArgs = {
-- 				error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /one/i ]]
-- 			},
-- 			variant = "get",
-- 		})
-- 	end)
-- 	it("should not suggest or warn about hidden element when suggested query is already used.", function()
-- 		console.warn:mockImplementation(function() end)
-- 		renderIntoDocument([[

--     <input type="text" aria-hidden=true />
--   ]])
-- 		expect(function()
-- 			return screen.getByRole("textbox", { hidden = true })
-- 		end).never.toThrowError()
-- 		expect(console.warn).never.toHaveBeenCalled()
-- 	end)
-- 	it("should suggest and warn about if element is not in the accessibility tree", function()
-- 		console.warn:mockImplementation(function() end)
-- 		renderIntoDocument([[

--     <input type="text" data-testid="foo" aria-hidden=true />
--   ]])
-- 		expect(function()
-- 			return screen.getByTestId("foo", { hidden = true })
-- 		end).toThrowError(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /getByRole\('textbox', \{ hidden: true \}\)/ ]]
-- 		)
-- 		expect(console.warn).toHaveBeenCalledWith(expect(:stringContaining("Element is inaccessible."))
-- 	end)

-- 	it("should suggest hidden option if element is not in the accessibility tree", function()
-- 		console.warn:mockImplementation(function() end)
-- 		local container = renderIntoDocument([[

--     <input type="text" data-testid="foo" aria-hidden=true />
--   ]]).container
-- 		local suggestion = getSuggestedQuery(container:querySelector("input"), "get", "role")
-- 		expect(suggestion).toMatchObject({
-- 			queryName = "Role",
-- 			queryMethod = "getByRole",
-- 			queryArgs = { "textbox", { hidden = true } },
-- 			variant = "get",
-- 			warning = [[Element is inaccessible. This means that the element and all its children are invisible to screen readers.
--     If you are using the aria-hidden prop, make sure this is the right choice for your case.
--     ]],
-- 		})
-- 		tostring(suggestion)
-- 		expect(console.warn.mock.calls).toMatchInlineSnapshot([[

--     Array [
--       Array [
--         Element is inaccessible. This means that the element and all its children are invisible to screen readers.
--         If you are using the aria-hidden prop, make sure this is the right choice for your case.
--         ,
--       ],
--     ]
--   ]])
-- 	end)
-- 	it("should find label text using the aria-labelledby", function()
-- 		local container = renderIntoDocument([[

--   <div>
--       <div>
--         <input id="sixth-label-one" value="6th one"/>
--         <input id="sixth-label-two" value="6th two"/>
--         <label id="sixth-label-three">6th three</label>
--         <input aria-labelledby="sixth-label-one sixth-label-two sixth-label-three" id="sixth-id" />
--       </div>
--     </div>
--   ]]).container
-- 		expect(getSuggestedQuery(container:querySelector('[id="sixth-id"]'), "get", "labelText")).toMatchInlineSnapshot(
-- 			{
-- 				queryArgs = {
-- 					error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /6th one 6th two 6th three/i ]]
-- 				},
-- 				queryMethod = "getByLabelText",
-- 				queryName = "LabelText",
-- 				variant = "get",
-- 				warning = "",
-- 			},
-- 			[[

--     Object {
--       queryArgs: Array [
--         Object {},
--       ],
--       queryMethod: getByLabelText,
--       queryName: LabelText,
--       toString: [Function],
--       variant: get,
--       warning: ,
--     }
--   ]]
-- 		)
-- 	end)
-- ROBLOX deviation END
return {}
