return function()
	local ErrorModule = script.Parent.Parent
	local Error = require(ErrorModule)
	local LuauPolyfill = ErrorModule.Parent
	local RegExp = require(LuauPolyfill).RegExp
	local extends = require(LuauPolyfill).extends
	local instanceof = require(LuauPolyfill).instanceof

	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	local MyError = extends(Error, "MyError", function(self, message)
		self.message = message
		self.name = "MyError"
	end)

	local YourError = extends(MyError, "YourError", function(self, message)
		self.message = message
		self.name = "YourError"
	end)

	it("accepts a message value as an argument", function()
		local err = Error("Some message")

		jestExpect(err.message).toEqual("Some message")
	end)

	it("defaults the `name` field to 'Error'", function()
		local err = Error("")

		jestExpect(err.name).toEqual("Error")
	end)

	it("gets passed through the `error` builtin properly", function()
		local err = Error("Throwing an error")
		local ok, result = pcall(function()
			error(err)
		end)

		jestExpect(ok).toEqual(false)
		jestExpect(result).toEqual(err)
	end)

	it("checks that Error is a class according to our inheritance standard", function()
		local err = Error("Test")
		jestExpect(instanceof(err, Error)).toEqual(true)
	end)

	it("checks the inheritance of Error", function()
		local inst = MyError("my error message")

		jestExpect(inst.message).toEqual("my error message")
		jestExpect(inst.name).toEqual("MyError")

		-- inheritance checks
		jestExpect(instanceof(inst, MyError)).toEqual(true)
		jestExpect(instanceof(inst, Error)).toEqual(true)
	end)

	it("checks the inheritance of a sub error", function()
		local inst = YourError("your error message")

		jestExpect(inst.message).toEqual("your error message")
		jestExpect(inst.name).toEqual("YourError")

		-- inheritance checks
		jestExpect(instanceof(inst, YourError))
		jestExpect(instanceof(inst, MyError)).toEqual(true)
		jestExpect(instanceof(inst, Error)).toEqual(true)
	end)

	it("evaluates both toString methods", function()
		jestExpect(tostring(Error)).toEqual("Error")
		jestExpect(tostring(Error("test"))).toEqual("Error: test")

		jestExpect(tostring(MyError)).toEqual("MyError")
		jestExpect(tostring(MyError("my test"))).toEqual("MyError: my test")

		jestExpect(tostring(YourError)).toEqual("YourError")
		jestExpect(tostring(YourError("your test"))).toEqual("YourError: your test")
	end)

	it("checks Error stack field", function()
		local err = Error("test stack for Error()")
		local err2 = Error.new("test stack for Error.new()")

		local topLineRegExp = RegExp("^.*Error.__tests__\\.Error\\.spec:\\d+")

		jestExpect(topLineRegExp:test(err.stack)).toEqual(true)
		jestExpect(topLineRegExp:test(err2.stack)).toEqual(true)
	end)

	it("checks default Error message field", function()
		jestExpect(Error().message).toEqual("")
	end)
end