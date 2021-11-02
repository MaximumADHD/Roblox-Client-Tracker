--!nocheck
return function()
	local LuauPolyfillModule = script.Parent.Parent
	local instanceof = require(LuauPolyfillModule).instanceof

	local Packages = LuauPolyfillModule.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	-- https://roblox.github.io/lua-style-guide/#prototype-based-classes
	it("tests the example from the Lua style guide", function()
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

		local myClassObj = MyClass.new()

		jestExpect(instanceof(myClassObj, MyClass)).toEqual(true)

		local MyClass2 = {}
		MyClass2.__index = MyClass2

		jestExpect(instanceof(myClassObj, MyClass2)).toEqual(false)
	end)

	it("tests inheritance from a grandparent class", function()
		local Foo = {}
		Foo.__index = Foo
		function Foo.new()
			local self = {}
			setmetatable(self, Foo)
			return self
		end

		local Foo2 = {}
		Foo2.__index = Foo2
		setmetatable(Foo2, Foo)
		function Foo2.new()
			local self = Foo.new()
			setmetatable(self, Foo2)
			return self
		end

		local foo2Object = Foo2.new()

		jestExpect(instanceof(foo2Object, Foo)).toEqual(true)
	end)

	it("tests inheritance of a __call metatable class", function()
		--[[
			this test tries to test inheritance of a class similar to how Error
			and RegExp are implemented

			Specifically, these classes follow a pattern where we can do
				myObj = MyClass()
			as opposed to our usual
				myObj = MyClass.new()
		]]

		local Class = {}
		Class.__index = Class
		Class.classField = 10

		function Class.new()
			local self = {}
			setmetatable(self, Class)
			return self
		end

		setmetatable(Class, {
			__call = Class.new
		})


		local SubClass = {}
		SubClass.__index = SubClass
		function SubClass.new()
			local self = {}
			setmetatable(self, SubClass)
			return self
		end

		setmetatable(SubClass, {
			__call = SubClass.new,
			__index = Class
		})

		local subClassObj = SubClass()

		-- expect call as a sanity check that we actually inherit classField
		jestExpect(subClassObj.classField).toEqual(10)

		jestExpect(instanceof(subClassObj, SubClass)).toEqual(true)
		jestExpect(instanceof(subClassObj, Class)).toEqual(true)
	end)

	it("does not consider metatable relationships without __index to be inheritance", function()
		-- This "class" will not work like inheritance.
		-- Without setting the __index metatable field, behavior won't be inherited.
		local PseudoClass = {}
		function PseudoClass.new()
			local self = {}
			setmetatable(self, PseudoClass)
			return self
		end

		local pseudoClassObj = PseudoClass.new()

		jestExpect(instanceof(pseudoClassObj, PseudoClass)).toEqual(false)
	end)

	it("returns false when checking instanceof primitive argument", function()
		local Class = {}

		function Class.new()
		end

		jestExpect(instanceof(nil, Class)).toEqual(false)

		jestExpect(instanceof(function() end, Class)).toEqual(false)
	end)

	it("keeps track of seen metatables to prevent infinite loops", function()
		local breakingTable = {}
		breakingTable.__index = breakingTable
		setmetatable(breakingTable, breakingTable)
		instanceof(breakingTable, {})
	end)
end
