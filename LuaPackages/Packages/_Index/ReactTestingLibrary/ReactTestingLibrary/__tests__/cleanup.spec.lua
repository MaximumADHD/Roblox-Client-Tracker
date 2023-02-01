-- ROBLOX upstream: https://github.com/testing-library/react-testing-library/blob/v12.1.5/src/__tests__/cleanup.js
local Packages = script.Parent.Parent.Parent

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local describe = JestGlobals.describe
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local jest = JestGlobals.jest

local LuauPolyfill = require(Packages.LuauPolyfill)
local console = LuauPolyfill.console
local setTimeout = LuauPolyfill.setTimeout

local document = require(Packages.DomTestingLibrary).document

local Promise = require(Packages.Promise)
local getElementByName = require(script.Parent.Parent.jsHelpers.Element).getElementByName

local React = require(Packages.React)

local ParentModule = require(script.Parent.Parent)
local render = ParentModule.render
local cleanup = ParentModule.cleanup

test("cleans up the document", function()
	local spy = jest.fn()
	local divId = "my-div"

	local Test = React.Component:extend("Test")

	function Test:componentWillUnmount()
		expect(getElementByName(document, divId)).toBeInTheDocument()
		spy()
	end

	function Test:render()
		return React.createElement("Frame", { Name = divId })
	end

	render(React.createElement(Test, nil))

	cleanup()

	expect(document).toBeEmptyDOMElement()
	expect(spy).toHaveBeenCalledTimes(1)
end)

test("cleanup does not error when an element is not a child", function()
	render(React.createElement("Frame", nil), { container = Instance.new("Frame") })
	cleanup()
end)

test("cleanup runs effect cleanup functions", function()
	local spy = jest.fn()

	local function Test()
		React.useEffect(function()
			spy()
		end)
		return nil
	end

	render(React.createElement(Test, nil))
	cleanup()
	expect(spy).toHaveBeenCalledTimes(1)
end)

describe("fake timers and missing act warnings", function()
	beforeEach(function()
		jest.resetAllMocks()
		-- ROBLOX deviation START: replace spyOn
		console.error = jest.fn(function()
			-- assert messages explicitly
		end)
		-- ROBLOX deviation END
		jest.useFakeTimers()
	end)

	afterEach(function()
		jest.useRealTimers()
	end)

	test("cleanup does not flush microtasks", function()
		local microTaskSpy = jest.fn()
		local function Test()
			local counter = 1
			local _, setDeferredCounter = React.useState(nil :: number?)
			React.useEffect(function()
				local cancelled = false
				-- ROBLOX deviation START: Lua Promise.resolve is not scheduled. Must use delay(0) for the same behavior
				Promise.delay(0):andThen(function()
					microTaskSpy()
					-- eslint-disable-next-line jest/no-if -- false positive
					if not cancelled then
						setDeferredCounter(counter)
					end
				end)

				return function()
					cancelled = true
				end
			end, { counter })

			return nil
		end
		render(React.createElement(Test, nil))

		cleanup()

		expect(microTaskSpy).toHaveBeenCalledTimes(0)
		-- console.error is mocked
		-- eslint-disable-next-line no-console

		-- ROBLOX deviation START: React.version not available, but will stick to React 17 for now
		expect(console.error).toHaveBeenCalledTimes(
			-- ReactDOM.render is deprecated in React 18
			0
		)
		-- ROBLOX deviation END
	end)

	test("cleanup does not swallow missing act warnings", function()
		local deferredStateUpdateSpy = jest.fn()
		local function Test()
			local counter = 1
			local _, setDeferredCounter = React.useState(nil :: number?)
			React.useEffect(function()
				local cancelled = false
				setTimeout(function()
					deferredStateUpdateSpy()
					if not cancelled then
						setDeferredCounter(counter)
					end
				end, 0)

				return function()
					cancelled = true
				end
			end, { counter })

			return nil
		end
		render(React.createElement(Test, nil))
		task.wait()

		jest.runAllTimers()
		cleanup()

		expect(deferredStateUpdateSpy).toHaveBeenCalledTimes(1)
		-- console.error is mocked
		-- eslint-disable-next-line no-console
		-- ROBLOX deviation START: React.version not available, but will stick to React 17 for now
		-- expect(console.error).toHaveBeenCalledTimes(
		-- 	-- ReactDOM.render is deprecated in React 18
		-- 	1
		-- )
		-- eslint-disable-next-line no-console
		-- expect((console.error :: any).mock.calls[
		-- 	1 -- ReactDOM.render is deprecated in React 18
		-- ][1]).toMatch("a test was not wrapped in act(...)")

		-- ROBLOX deviation END
	end)
end)
return {}
