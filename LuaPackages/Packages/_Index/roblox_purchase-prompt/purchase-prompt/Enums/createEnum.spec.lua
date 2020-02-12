return function()
	local createEnum = require(script.Parent.createEnum)

	describe("validation rules", function()
		it("should throw errors if given invalid values", function()
			expect(function()
				createEnum(1, {})
			end).to.throw()

			expect(function()
				createEnum("MyEnum", "not a table")
			end).to.throw()
		end)

		it("should throw errors if provided table contains invalid values", function()
			expect(function()
				createEnum("IllegalShadowing", {
					"isMember",
				})
			end).to.throw()

			expect(function()
				createEnum("MyEnum", {
					"Test",
					12,
				})
			end)
		end)
	end)

	describe("enum properties", function()
		it("should have a reasonable string format for debugging", function()
			local MyEnum = createEnum("MyEnum", {
				"Value",
			})

			expect(tostring(MyEnum.Value)).to.equal("MyEnum.Value")
		end)

		it("should provide an isMember function to check membership", function()
			local MyEnum = createEnum("MyEnum", {
				"Value",
			})

			expect(MyEnum.isMember(MyEnum.Value)).to.equal(true)
			expect(MyEnum.isMember(newproxy(true))).to.equal(false)
			expect(MyEnum.isMember("Value")).to.equal(false)
		end)

		it("should generate objects that are unique even when named the same", function()

			local Enum1 = createEnum("MyEnum", {
				"Value",
			})
			local Enum2 = createEnum("MyEnum", {
				"Value",
			})

			expect(Enum1.isMember(Enum1.Value)).to.equal(true)
			expect(Enum2.isMember(Enum2.Value)).to.equal(true)

			expect(Enum1.isMember(Enum2.Value)).to.equal(false)
			expect(Enum2.isMember(Enum1.Value)).to.equal(false)
		end)
	end)
end