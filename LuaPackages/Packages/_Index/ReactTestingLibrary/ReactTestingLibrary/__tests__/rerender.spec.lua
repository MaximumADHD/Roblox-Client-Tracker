-- ROBLOX upstream: https://github.com/testing-library/react-testing-library/blob/v12.1.5/src/__tests__/rerender.js
local Packages = script.Parent.Parent.Parent

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test

local React = require(Packages.React)
local render = require(script.Parent.Parent).render

test("rerender will re-render the element", function()
	local function Greeting(props)
		return React.createElement("TextLabel", { Text = props.message })
	end
	local ref = render(React.createElement(Greeting, { message = "hi" }))
	local container, rerender = ref.container, ref.rerender
	-- ROBLOX deviation START: replace firstChild with Instance equivalent
	expect(container:GetChildren()[1]).toHaveTextContent("hi")
	rerender(React.createElement(Greeting, { message = "hey" }))
	expect(container:GetChildren()[1]).toHaveTextContent("hey")
	-- ROBLOX deviation END
end)

-- ROBLOX deviation START: hydrate not supported
-- it("hydrate will not update props until next render", function()
-- 	local initialInputElement = document:createElement("input")
-- 	local container = document:createElement("div")
-- 	container:appendChild(initialInputElement)
-- 	document.body:appendChild(container)
-- 	local firstValue = "hello"
-- 	initialInputElement.value = firstValue
-- 	local rerender = render(
-- 		React.createElement("input", {
-- 			value = "",
-- 			onChange = function()
-- 				return nil
-- 			end,
-- 		}),
-- 		{ container = container, hydrate = true }
-- 	).rerender
-- 	expect(initialInputElement).toHaveValue(firstValue)
-- 	local secondValue = "goodbye"
-- 	rerender(React.createElement("input", {
-- 		value = secondValue,
-- 		onChange = function()
-- 			return nil
-- 		end,
-- 	}))
-- 	expect(initialInputElement).toHaveValue(secondValue)
-- end)
-- ROBLOX deviation END
return {}
