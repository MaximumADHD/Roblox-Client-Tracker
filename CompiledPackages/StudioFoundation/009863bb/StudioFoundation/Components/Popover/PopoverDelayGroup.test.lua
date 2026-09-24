local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)
local JestGlobals = require(Packages.Dev.JestGlobals)
local jest = JestGlobals.jest
local expect = JestGlobals.expect
local it = JestGlobals.it
local describe = JestGlobals.describe

local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local PopoverDelayGroupModule = require(script.Parent.PopoverDelayGroup)
local PopoverDelayGroup = PopoverDelayGroupModule.PopoverDelayGroup
local useDelayGroup = PopoverDelayGroupModule.useDelayGroup
local useDelayGroupContext = PopoverDelayGroupModule.useDelayGroupContext

--[[
	1. Fake timers seem to not work with React render cycle nicely. Unmount for a React component is run before the task.delay has a chance to run. Feel free to improve.
	2. Tests for currentId are for semi-internal state. It's available through context but doesn't mean anything to the outside world.
]]
describe("PopoverDelayGroup", function()
	local function TestComponent(props)
		useDelayGroup({
			floatingId = props.id,
			isOpen = props.isOpen,
			enabled = props.enabled,
			flush = props.flush,
		})
		return nil
	end

	local function ContextReader(props)
		local context = useDelayGroupContext()
		props.setContext(context)
		return nil
	end

	it("should set currentId when a popover opens", function()
		local contextValue
		local function setContext(c)
			contextValue = c
		end

		render(React.createElement(
			PopoverDelayGroup,
			{ timeout = 0.2 },
			React.createElement(TestComponent, {
				id = "A",
				isOpen = true,
				enabled = true,
				flush = jest.fn(),
			}),
			React.createElement(ContextReader, { setContext = setContext })
		))
		expect(contextValue.currentIdRef.current).toBe("A")
	end)

	it("should unset currentId after timeout when it closes", function()
		local contextValue
		local function setContext(c)
			contextValue = c
		end
		local timeout = 0.2
		local props = {
			id = "A",
			isOpen = true,
			enabled = true,
			flush = jest.fn(),
		}

		local root = render(
			React.createElement(
				PopoverDelayGroup,
				{ timeout = timeout },
				React.createElement(TestComponent, props),
				React.createElement(ContextReader, { setContext = setContext })
			)
		)
		expect(contextValue.currentIdRef.current).toBe("A")

		local newProps = Dash.join(props, { isOpen = false })

		root.rerender(
			React.createElement(
				PopoverDelayGroup,
				{ timeout = timeout },
				React.createElement(TestComponent, newProps),
				React.createElement(ContextReader, { setContext = setContext })
			)
		)

		task.wait(timeout / 2)
		expect(contextValue.currentIdRef.current).toBe("A")
		task.wait(timeout)
		expect(contextValue.currentIdRef.current).toBe(nil)
	end)

	it("should unset currentId immediately if timeout is 0", function()
		local contextValue
		local function setContext(c)
			contextValue = c
		end
		local props = {
			id = "A",
			isOpen = true,
			enabled = true,
			flush = jest.fn(),
		}

		local root = render(
			React.createElement(
				PopoverDelayGroup,
				{ timeout = 0 },
				React.createElement(TestComponent, props),
				React.createElement(ContextReader, { setContext = setContext })
			)
		)
		expect(contextValue.currentIdRef.current).toBe("A")

		local newProps = Dash.join(props, { isOpen = false })

		root.rerender(
			React.createElement(
				PopoverDelayGroup,
				{ timeout = 0 },
				React.createElement(TestComponent, newProps),
				React.createElement(ContextReader, { setContext = setContext })
			)
		)
		task.wait() -- for react render
		expect(contextValue.currentIdRef.current).toBe(nil)
	end)

	it("should flush previous popover when a new one opens", function()
		local flushA = jest.fn()
		local propsA = {
			id = "A",
			isOpen = true,
			enabled = true,
			flush = flushA,
		}

		local flushB = jest.fn()
		local propsB = {
			id = "B",
			isOpen = false,
			enabled = true,
			flush = flushB,
		}

		local function MultiComponent(p)
			return React.createElement(
				PopoverDelayGroup,
				{ timeout = 0.2 },
				React.createElement(TestComponent, p.propsA),
				React.createElement(TestComponent, p.propsB)
			)
		end

		local root = render(React.createElement(MultiComponent, { propsA = propsA, propsB = propsB }))

		local newPropsB = Dash.join(propsB, { isOpen = true })

		root.rerender(React.createElement(MultiComponent, { propsA = propsA, propsB = newPropsB }))

		expect(flushA).toHaveBeenCalledTimes(1)
		expect(flushB).toHaveBeenCalledTimes(1)
	end)

	it("should ignore unset if another popover from the group opens", function()
		local contextValue
		local function setContext(c)
			contextValue = c
		end
		local timeout = 0.2
		local propsA = {
			id = "A",
			isOpen = true,
			enabled = true,
			flush = jest.fn(),
		}
		local propsB = {
			id = "B",
			isOpen = false,
			enabled = true,
			flush = jest.fn(),
		}

		local function MultiComponent(props)
			return React.createElement(
				PopoverDelayGroup,
				{ timeout = timeout },
				React.createElement(TestComponent, props.propsA),
				React.createElement(TestComponent, props.propsB),
				React.createElement(ContextReader, { setContext = setContext })
			)
		end

		local root = render(React.createElement(MultiComponent, { propsA = propsA, propsB = propsB }))
		expect(contextValue.currentIdRef.current).toBe("A")

		-- Close A
		local newPropsA = Dash.join({ isOpen = false })
		root.rerender(React.createElement(MultiComponent, { propsA = newPropsA, propsB = propsB }))

		-- A's delayed unset is scheduled. Now, before it fires, open B.
		task.wait(timeout / 2)
		expect(contextValue.currentIdRef.current).toBe("A")

		local newPropsB = Dash.join(propsB, { isOpen = true })
		root.rerender(React.createElement(MultiComponent, { propsA = newPropsA, propsB = newPropsB }))

		expect(contextValue.currentIdRef.current).toBe("B")

		-- Now wait past A's original timeout.
		task.wait(timeout)

		-- The check `currentIdRef.current` should still be "B"
		expect(contextValue.currentIdRef.current).toBe("B")
	end)

	it("should not do anything if not enabled", function()
		local timeout = 0.2
		local propsA = {
			id = "A",
			isOpen = true,
			enabled = false,
			flush = jest.fn(),
		}
		local propsB = {
			id = "B",
			isOpen = false,
			enabled = false,
			flush = jest.fn(),
		}

		local function MultiComponent(props)
			return React.createElement(
				PopoverDelayGroup,
				{ timeout = timeout },
				React.createElement(TestComponent, props.propsA),
				React.createElement(TestComponent, props.propsB)
			)
		end

		local root = render(React.createElement(MultiComponent, { propsA = propsA, propsB = propsB }))

		-- Close A, open B
		local newPropsA = Dash.join(propsA, { isOpen = false })
		local newPropsB = Dash.join(propsB, { isOpen = true })
		root.rerender(React.createElement(MultiComponent, { propsA = newPropsA, propsB = newPropsB }))

		expect(propsA.flush).never.toHaveBeenCalled()
		expect(propsB.flush).never.toHaveBeenCalled()
	end)
end)
