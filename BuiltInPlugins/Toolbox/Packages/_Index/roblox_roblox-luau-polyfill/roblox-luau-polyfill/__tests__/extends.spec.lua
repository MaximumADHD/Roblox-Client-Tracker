--!nocheck
return function()
	local LuauPolyfillModule = script.Parent.Parent
	local LuauPolyfill = require(LuauPolyfillModule)
	local extends = LuauPolyfill.extends
	local instanceof = LuauPolyfill.instanceof
	local Error = LuauPolyfill.Error

	local Packages = LuauPolyfillModule.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	-- https://roblox.github.io/lua-style-guide/#prototype-based-classes
	it("extends the example from the Lua style guide", function()
		local MyClass = {}
		MyClass.__index = MyClass
		function MyClass.new()
			local self = {
				-- Define members of the instance here, even if they're `nil` by default.
				phrase = "bark",
			}

			-- Tell Lua to fall back to looking in MyClass.__index for missing fields.
			setmetatable(self, MyClass)
			return self
		end

		local MySubClass = extends(MyClass, "MySubClass", function(self, phrase)
			self.phrase = phrase
		end)

		local inst = MySubClass.new("meow")
		jestExpect(inst.phrase).toEqual("meow")
		jestExpect(instanceof(inst, MySubClass)).toEqual(true)
		jestExpect(instanceof(inst, MyClass)).toEqual(true)
	end)

	-- More generally, this test checks inheritance for a class with a __call method defined
	it("extending the Error class", function()
		local SubError = extends(Error, "SubError", function(self, message)
			self.message = message
			self.name = "SubError"
		end)

		local inst = SubError("test2")
		jestExpect(inst.message).toEqual("test2")
		jestExpect(inst.name).toEqual("SubError")
		jestExpect(instanceof(inst, SubError))
		jestExpect(instanceof(inst, Error))
	end)

	it("tests multiple extensions of error and their tostring methods", function()
		local SubError = extends(Error, "SubError", function(self)
		end)

		local inst = SubError()
		jestExpect(tostring(SubError)).toEqual("SubError")
		-- since there is no message or name, it defaults to just Error
		jestExpect(tostring(inst)).toEqual("Error")

		local SubSubError = extends(SubError, "SubSubError", function(self, message)
			self.message = message
			self.name = "SubSubError"
		end)

		inst = SubSubError()
		jestExpect(tostring(inst)).toEqual("SubSubError")

		inst = SubSubError("msg")
		jestExpect(tostring(inst)).toEqual("SubSubError: msg")
	end)
end
