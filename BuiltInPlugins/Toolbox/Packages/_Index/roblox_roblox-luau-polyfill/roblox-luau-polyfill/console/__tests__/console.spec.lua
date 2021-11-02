return function()
	local consoleModule = script.Parent.Parent
	local makeConsoleImpl = require(consoleModule.makeConsoleImpl)

	local LuauPolyfill = consoleModule.Parent
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	local console, capturedPrints, capturedWarns

	local function capturePrint(...)
		-- mimic `print`'s concatenation of var-args
		table.insert(capturedPrints, table.concat({...}, " "))
	end

	local function overridePrint(fn, ...)
		local originalPrint = getfenv(fn).print
		getfenv(fn).print = capturePrint
		fn(...)
		getfenv(fn).print = originalPrint
	end

	local function captureWarn(...)
		-- mimic `print`'s concatenation of var-args
		table.insert(capturedWarns, table.concat({...}, " "))
	end

	local function overrideWarn(fn, ...)
		local originalWarn = getfenv(fn).warn
		getfenv(fn).warn = captureWarn
		fn(...)
		getfenv(fn).warn = originalWarn
	end

	beforeEach(function()
		capturedPrints = {}
		capturedWarns = {}
		console = makeConsoleImpl()
	end)

	describe("log", function()
		it("should print a given message", function()
			overridePrint(console.log, "This is a message")

			jestExpect(#capturedPrints).toEqual(1)
			jestExpect(capturedPrints[1]).toEqual("This is a message")
		end)

		it("should print a message with formatting", function()
			overridePrint(console.log, "%d bottles", 99)
			overridePrint(console.log, "of %s on the wall", "soda")

			jestExpect(#capturedPrints).toEqual(2)
			jestExpect(capturedPrints[1]).toEqual("99 bottles")
			jestExpect(capturedPrints[2]).toEqual("of soda on the wall")
		end)
	end)

	-- `info` works exactly like `log` for now
	describe("info", function()
		it("should print a given message", function()
			overridePrint(console.info, "This is a message")

			jestExpect(#capturedPrints).toEqual(1)
			jestExpect(capturedPrints[1]).toEqual("This is a message")
		end)

		it("should print a message with formatting", function()
			overridePrint(console.info, "%d bottles", 99)
			overridePrint(console.info, "of %s on the wall", "soda")

			jestExpect(#capturedPrints).toEqual(2)
			jestExpect(capturedPrints[1]).toEqual("99 bottles")
			jestExpect(capturedPrints[2]).toEqual("of soda on the wall")
		end)
	end)

	describe("warn", function()
		it("should use the 'warn' builtin", function()
			overrideWarn(console.warn, "This is a warning")

			jestExpect(#capturedWarns).toEqual(1)
			jestExpect(capturedWarns[1]).toEqual("This is a warning")
		end)

		it("should print a warning with formatting", function()
			overrideWarn(console.warn, "%d bottles", 99)
			overrideWarn(console.warn, "of %s on the wall", "soda")

			jestExpect(#capturedWarns).toEqual(2)
			jestExpect(capturedWarns[1]).toEqual("99 bottles")
			jestExpect(capturedWarns[2]).toEqual("of soda on the wall")
		end)
	end)

	-- `error` works exactly like `warn` for now
	describe("error", function()
		it("should use the 'warn' builtin", function()
			overrideWarn(console.error, "This is an error")

			jestExpect(#capturedWarns).toEqual(1)
			jestExpect(capturedWarns[1]).toEqual("This is an error")
		end)

		it("should print an error with formatting", function()
			overrideWarn(console.error, "%d bottles", 99)
			overrideWarn(console.error, "of %s on the wall", "soda")

			jestExpect(#capturedWarns).toEqual(2)
			jestExpect(capturedWarns[1]).toEqual("99 bottles")
			jestExpect(capturedWarns[2]).toEqual("of soda on the wall")
		end)
	end)

	describe("groups", function()
		it("adds indentation to subsequent logs", function()
			overridePrint(console.group, "begin group")
			overridePrint(console.log, "some log")
			console.groupEnd()
			overridePrint(console.log, "no more group")

			jestExpect(#capturedPrints).toEqual(3)
			jestExpect(capturedPrints[1]).toEqual("begin group")
			jestExpect(capturedPrints[2]).toEqual("  some log")
			jestExpect(capturedPrints[3]).toEqual("no more group")
		end)

		it("nests several layers deep", function()
			overridePrint(console.group, "begin group 1")
			overridePrint(console.log, "once indented")
			overridePrint(console.group, "begin group 2")
			overridePrint(console.log, "twice indented")
			console.groupEnd()
			overridePrint(console.log, "once indented")
			console.groupEnd()
			overridePrint(console.log, "not indented")

			jestExpect(#capturedPrints).toEqual(6)
			jestExpect(capturedPrints[1]).toEqual("begin group 1")
			jestExpect(capturedPrints[2]).toEqual("  once indented")
			jestExpect(capturedPrints[3]).toEqual("  begin group 2")
			jestExpect(capturedPrints[4]).toEqual("    twice indented")
			jestExpect(capturedPrints[5]).toEqual("  once indented")
			jestExpect(capturedPrints[6]).toEqual("not indented")
		end)

		it("does not print anything when ending a group", function()
			overridePrint(console.group, "begin group")
			overridePrint(console.groupEnd)

			jestExpect(#capturedPrints).toEqual(1)
			jestExpect(capturedPrints[1]).toEqual("begin group")
		end)

		it("does nothing when 'ending' a non-existent group", function()
			jestExpect(function()
				console.groupEnd()
			end).never.toThrow()
		end)

		it("works correctly after 'ending' a non-existent group", function()
			console.groupEnd()
			overridePrint(console.log, "top-level message")
			overridePrint(console.group, "begin group")
			overridePrint(console.log, "group 1 message")
			console.groupEnd()
			overridePrint(console.log, "top-level message")

			jestExpect(#capturedPrints).toEqual(4)
			jestExpect(capturedPrints[1]).toEqual("top-level message")
			jestExpect(capturedPrints[2]).toEqual("begin group")
			jestExpect(capturedPrints[3]).toEqual("  group 1 message")
			jestExpect(capturedPrints[4]).toEqual("top-level message")
		end)
	end)
end