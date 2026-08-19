local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local useBindable = require(script.Parent.useBindable)

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local render = ReactTestingLibrary.render

describe("useBindable", function()
	it("should return a binding when given a non-binding value", function()
		local binding
		local function TestComponent()
			binding = useBindable(5)
			return nil
		end

		render(React.createElement(TestComponent))

		expect(ReactIs.isBinding(binding)).toBe(true)
		expect(binding:getValue()).toBe(5)
	end)

	it("should return the same binding when given a binding", function()
		local originalBinding = React.createBinding(10)
		local resultBinding
		local function TestComponent()
			resultBinding = useBindable(originalBinding)
			return nil
		end

		render(React.createElement(TestComponent))

		expect(resultBinding).toBe(originalBinding)
		expect(ReactIs.isBinding(resultBinding)).toBe(true)
		expect(resultBinding:getValue()).toBe(10)
	end)

	it("should update the binding when value changes", function()
		local bindings = {}
		local function TestComponent(props)
			local binding = useBindable(props.value)
			table.insert(bindings, binding)
			return nil
		end

		local root = render(React.createElement(TestComponent, { value = "first" }))
		expect(bindings[1]:getValue()).toBe("first")

		root.rerender(React.createElement(TestComponent, { value = "second" }))

		expect(bindings[1]).toBe(bindings[2])
		expect(bindings[1]:getValue()).toBe("second")
	end)

	it("should work with nil values", function()
		local binding
		local function TestComponent()
			binding = useBindable(nil)
			return nil
		end

		render(React.createElement(TestComponent))

		expect(ReactIs.isBinding(binding)).toBe(true)
		expect(binding:getValue()).toBe(nil)
	end)

	it("should work with table values", function()
		local tableValue = { key = "value" }
		local binding
		local function TestComponent()
			binding = useBindable(tableValue)
			return nil
		end

		render(React.createElement(TestComponent))

		expect(ReactIs.isBinding(binding)).toBe(true)
		expect(binding:getValue()).toBe(tableValue)
	end)
end)
