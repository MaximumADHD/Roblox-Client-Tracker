return function()
	local createEnum = require(script.Parent.createEnum)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	describe("validation rules", function()
		it("should throw errors if given invalid values", function()
			expect(function()
				createEnum(1 :: any, {} :: {string})
			end).toThrow()

			expect(function()
				(createEnum :: any)("MyEnum", "not a table")
			end).toThrow()
		end)

		it("should throw errors if provided table contains invalid values", function()
			expect(function()
				createEnum("IllegalShadowing", {
					"isMember",
				})
			end).toThrow()

			expect(function()
				createEnum("MyEnum", {
					"Test",
					(12::any),
				})
			end)
		end)
	end)

	describe("enum properties", function()
		it("should have a reasonable string format for debugging", function()
			local MyEnum = createEnum("MyEnum", {
				"Value",
			})

			expect(tostring(MyEnum.Value)).toBe("MyEnum.Value")
		end)

		it("should provide an isMember function to check membership", function()
			local MyEnum = createEnum("MyEnum", {
				"Value",
			})

			expect(MyEnum.isMember(MyEnum.Value)).toBe(true)
			expect(MyEnum.isMember(newproxy(true))).toBe(false)
			expect(MyEnum.isMember("Value")).toBe(false)
		end)

		it("should generate objects that are unique even when named the same", function()

			local Enum1 = createEnum("MyEnum", {
				"Value",
			})
			local Enum2 = createEnum("MyEnum", {
				"Value",
			})

			expect(Enum1.isMember(Enum1.Value)).toBe(true)
			expect(Enum2.isMember(Enum2.Value)).toBe(true)

			expect(Enum1.isMember(Enum2.Value)).toBe(false)
			expect(Enum2.isMember(Enum1.Value)).toBe(false)
		end)
	end)
end
