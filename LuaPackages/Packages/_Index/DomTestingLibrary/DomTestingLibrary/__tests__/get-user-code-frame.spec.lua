-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/__tests__/get-user-code-frame.js
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error

local stripAnsi = require(script.Parent.Parent.jsHelpers["strip-ansi"])

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local jest = JestGlobals.jest

local fs = require(script.Parent.Parent.jsHelpers.fs)
local codeFrame = require(script.Parent.Parent["get-user-code-frame"])

-- ROBLOX deviation START: different error format, doesn't contain column info
-- local userStackFrame = "at somethingWrong (/sample-error/error-example.js:7:14)"
local userStackFrame = "sample-error.error-example:7"
local userStackFrameWithColumn = "sample-error.error-example:7:14"
-- ROBLOX deviation END

-- ROBLOX deviation START: use jest.fn instead of mock and spyOn (not available)
local originalReadFile
local originalError
beforeEach(function()
	originalError = LuauPolyfill.Error.new
	originalReadFile = fs.readFileSync
	fs.readFileSync = jest.fn().mockImplementation(function()
		return [[

    import {screen} from '@testing-library/dom'
    it('renders', () => {
      document.body.appendChild(
        document.createTextNode('Hello world')
      )
      screen.debug()
      expect(screen.getByText('Hello world')).toBeInTheDocument()
    })
]]
	end)
	-- Mock global.Error so we can setup our own stack messages
	LuauPolyfill.Error.new = jest.fn(originalError)
end)

afterEach(function()
	LuauPolyfill.Error.new = originalError
	fs.readFileSync = originalReadFile
end)
-- ROBLOX deviation END
test("it returns only user code frame when code frames from node_modules are first", function()
	local stack = ([[Error: Kaboom
      ReplicatedStorage.Packages._Index.LuauPolyfill.LuauPolyfill.AssertionError.AssertionError:376
      %s
  ]]):format(userStackFrame);
	(LuauPolyfill.Error.new :: any).mockImplementationOnce(function()
		return { stack = stack }
	end)

	-- ROBLOX deviation START: getUserCodeFrame does not accept any argument
	local userTrace = codeFrame.getUserCodeFrame()
	-- ROBLOX deviation END

	-- ROBLOX deviation START: using toBe instead of inline snapshot, needs stripAnsi
	expect(stripAnsi(userTrace)).toBe([[
sample-error.error-example:7
  5 |         document.createTextNode('Hello world')
  6 |       )
> 7 |       screen.debug()
]])
	-- ROBLOX deviation END
end)
test("it returns only user code frame when node code frames are present afterwards", function()
	local stack = ([[Error: Kaboom
	  ReplicatedStorage.Packages._Index.LuauPolyfill.LuauPolyfill.AssertionError.AssertionError:376
      %s
      sample-error.error-example:14
      internal.main.run_main_module:17
  ]]):format(userStackFrame);
	(LuauPolyfill.Error.new :: any).mockImplementationOnce(function()
		return { stack = stack }
	end)
	local userTrace = codeFrame.getUserCodeFrame()

	-- ROBLOX deviation START: using toBe instead of inline snapshot, needs stripAnsi
	expect(stripAnsi(userTrace)).toBe([[
sample-error.error-example:7
  5 |         document.createTextNode('Hello world')
  6 |       )
> 7 |       screen.debug()
]])
	-- ROBLOX deviation END
end)
test("it returns empty string if file from code frame can't be read", function()
	-- Make fire read purposely fail
	(fs.readFileSync :: any).mockImplementationOnce(function()
		error(Error())
	end)
	local stack = ([[Error: Kaboom
		%s
		]]):format(userStackFrame);
	(LuauPolyfill.Error.new :: any).mockImplementationOnce(function()
		return { stack = stack }
	end)
	-- ROBLOX deviation START: getUserCodeFrame does not accept any argument
	expect(codeFrame.getUserCodeFrame()).toEqual("")
	-- ROBLOX deviation END
end)

-- ROBLOX deviation START: no upstream. Lua does not return column number, but we support it anyway
test("with column: it returns only user code frame when code frames from node_modules are first", function()
	local stack = ([[Error: Kaboom
      ReplicatedStorage.Packages._Index.LuauPolyfill.LuauPolyfill.AssertionError.AssertionError:376:1
      %s
  ]]):format(userStackFrameWithColumn);
	(LuauPolyfill.Error.new :: any).mockImplementationOnce(function()
		return { stack = stack }
	end)

	-- ROBLOX deviation START: getUserCodeFrame does not accept any argument
	local userTrace = codeFrame.getUserCodeFrame()
	-- ROBLOX deviation END

	-- ROBLOX deviation START: using toBe instead of inline snapshot, needs stripAnsi
	expect(stripAnsi(userTrace)).toBe([[
sample-error.error-example:7:14
  5 |         document.createTextNode('Hello world')
  6 |       )
> 7 |       screen.debug()
    |              ^
]])
	-- ROBLOX deviation END
end)
test("with column: it returns only user code frame when node code frames are present afterwards", function()
	local stack = ([[Error: Kaboom
	  ReplicatedStorage.Packages._Index.LuauPolyfill.LuauPolyfill.AssertionError.AssertionError:376:1
      %s
      sample-error.error-example:14:1
      internal.main.run_main_module:17:1
  ]]):format(userStackFrameWithColumn);
	(LuauPolyfill.Error.new :: any).mockImplementationOnce(function()
		return { stack = stack }
	end)
	local userTrace = codeFrame.getUserCodeFrame()

	-- ROBLOX deviation START: using toBe instead of inline snapshot, needs stripAnsi
	expect(stripAnsi(userTrace)).toBe([[
sample-error.error-example:7:14
  5 |         document.createTextNode('Hello world')
  6 |       )
> 7 |       screen.debug()
    |              ^
]])
	-- ROBLOX deviation END
end)
return {}
