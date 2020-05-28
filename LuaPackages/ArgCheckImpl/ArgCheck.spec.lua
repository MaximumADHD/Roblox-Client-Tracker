return function()
	local ArgCheck = require(script.Parent.ArgCheck)

	describe("isNonNegativeNumber", function()
		it("should assert if given non-number, or negative number", function()
			expect(function()
				ArgCheck.isNonNegativeNumber(nil, "")
			end).to.throw()
			expect(function()
				ArgCheck.isNonNegativeNumber({}, "")
			end).to.throw()
			expect(function()
				ArgCheck.isNonNegativeNumber("string", "")
			end).to.throw()
			expect(function()
				ArgCheck.isNonNegativeNumber(-1, "")
			end).to.throw()
		end)

		it("should return the value if it is a non-negative number", function()
			expect(ArgCheck.isNonNegativeNumber(0, "")).to.equal(0)
			expect(ArgCheck.isNonNegativeNumber(1, "")).to.equal(1)
		end)
	end)

	describe("isType", function()
		it("should assert if type is wrong", function()
			expect(function()
				ArgCheck.isType(nil, "number", "")
			end).to.throw()
			expect(function()
				ArgCheck.isType("test", "number", "")
			end).to.throw()
			expect(function()
				ArgCheck.isType(5, "string", "")
			end).to.throw()
			expect(function()
				ArgCheck.isType(5, "table", "")
			end).to.throw()
		end)

		it("should return the value if the type is correct", function()
			expect(ArgCheck.isType(0, "number", "")).to.equal(0)
			expect(ArgCheck.isType("test", "string", "")).to.equal("test")
		end)
	end)

	describe("isInTypes", function()
		it("should assert if type is not expected", function()
			expect(function()
				ArgCheck.isInTypes(nil, {"number", "string", "table"}, "")
			end).to.throw()
			expect(function()
				ArgCheck.isInTypes("test", {"number", "table"}, "")
			end).to.throw()
			expect(function()
				ArgCheck.isInTypes(5, {"string", "table"}, "")
			end).to.throw()
			expect(function()
				ArgCheck.isInTypes({}, {"number", "string"}, "")
			end).to.throw()
		end)

		it("should return the value if the type is expected", function()
			expect(ArgCheck.isInTypes(0, {"number", "string"}, "")).to.equal(0)
			expect(ArgCheck.isInTypes("test", {"table", "string"}, "")).to.equal("test")
			local testTable = {}
			expect(ArgCheck.isInTypes(testTable, {"table", "string"}, "")).to.equal(testTable)
			local testFunction = function() end
			expect(ArgCheck.isInTypes(testFunction, {"function", "string"}, "")).to.equal(testFunction)
		end)
	end)

	describe("isTypeOrNil", function()
		it("should assert if type is wrong", function()
			expect(function()
				ArgCheck.isTypeOrNil("test", "number", "")
			end).to.throw()
			expect(function()
				ArgCheck.isTypeOrNil(5, "string", "")
			end).to.throw()
			expect(function()
				ArgCheck.isTypeOrNil(5, "table", "")
			end).to.throw()
		end)

		it("should return the value if the type is correct", function()
			expect(ArgCheck.isTypeOrNil(nil, "number", "")).to.equal(nil)
			expect(ArgCheck.isTypeOrNil(0, "number", "")).to.equal(0)
			expect(ArgCheck.isTypeOrNil("test", "string", "")).to.equal("test")
		end)
	end)

	describe("isNotNil", function()
		it("should assert if type is nil", function()
			expect(function()
				ArgCheck.isNotNil(nil, "")
			end).to.throw()
		end)

		it("should return the value if it's not nil", function()
			expect(ArgCheck.isNotNil(0, "")).to.equal(0)
			expect(ArgCheck.isNotNil("test", "")).to.equal("test")
			local testTable = {}
			expect(ArgCheck.isNotNil(testTable, "")).to.equal(testTable)
			local testFunction = function() end
			expect(ArgCheck.isNotNil(testFunction, "")).to.equal(testFunction)
		end)
	end)

	describe("isEqual", function()
		it("should assert if not equal", function()
			expect(function()
				ArgCheck.isEqual(0, nil, "")
			end).to.throw()
			expect(function()
				ArgCheck.isEqual(2, 1, "")
			end).to.throw()
			expect(function()
				ArgCheck.isEqual("", "test", "")
			end).to.throw()
			expect(function()
				ArgCheck.isEqual({}, {}, "")
			end).to.throw()
			expect(function()
				ArgCheck.isEqual(function() end, function() end, "")
			end).to.throw()
		end)

		it("should return the value if value is equal to expected value", function()
			expect(ArgCheck.isEqual(nil, nil, "")).to.equal(nil)
			expect(ArgCheck.isEqual(0, 0, "")).to.equal(0)
			expect(ArgCheck.isEqual(true, true, "")).to.equal(true)
			expect(ArgCheck.isEqual("test", "test", "")).to.equal("test")
			local testTable = {}
			expect(ArgCheck.isEqual(testTable, testTable, "")).to.equal(testTable)
			local testFunction = function() end
			expect(ArgCheck.isEqual(testFunction, testFunction, "")).to.equal(testFunction)
		end)
	end)

	describe("representsInteger", function()
		it("should fail if not a number", function()
			expect(function()
				ArgCheck.representsInteger(nil, "")
			end).to.throw()
			expect(function()
				ArgCheck.representsInteger({}, "")
			end).to.throw()
			expect(function()
				ArgCheck.representsInteger(function()end, "")
			end).to.throw()
			expect(function()
				ArgCheck.representsInteger(true, "")
			end).to.throw()
			expect(function()
				ArgCheck.representsInteger("NaN", "")
			end).to.throw()
			expect(function()
				ArgCheck.representsInteger("1test", "")
			end).to.throw()
		end)

		it("should fail if not an integer", function()
			expect(function()
				ArgCheck.representsInteger(1.5, "")
			end).to.throw()
			expect(function()
				ArgCheck.representsInteger("1.5", "")
			end).to.throw()
			expect(function()
				ArgCheck.representsInteger("1e-1", "")
			end).to.throw()
		end)

		it("should return the same value on success", function()
			expect(ArgCheck.representsInteger(5, "")).to.equal(5)
			expect(ArgCheck.representsInteger("-5", "")).to.equal("-5")
			expect(ArgCheck.representsInteger("1e1", "")).to.equal("1e1")
			expect(ArgCheck.representsInteger("0xa", "")).to.equal("0xa")
		end)
	end)

	describe("matchesInterface", function()
		it("should match a simple interface", function()
			local interface = {
				num = "number",
				str = "string",
				bool = "boolean",
				func = "function",
				tab = "table",
				list = {"number"},
				-- only num is required, rest is optional
				_required = {
					num = true,
				}
			}
			local obj1 = {
				num = 5,
				str = "5",
				bool = true,
				func = function()end,
				tab = {},
				list = {1, 2, 3}
			}
			local obj2 = {
				num = "5",
			}
			local obj3 = {
				num = 5,
				list = {"NaN"},
			}
			local obj4 = {
				str = "5",
			}
			expect(function()
				ArgCheck.matchesInterface(obj1, interface, "")
			end).to.never.throw()
			expect(function()
				ArgCheck.matchesInterface(obj2, interface, "")
			end).to.throw()
			expect(function()
				ArgCheck.matchesInterface(obj3, interface, "")
			end).to.throw()
			expect(function()
				ArgCheck.matchesInterface(obj4, interface, "")
			end).to.throw()
		end)

		it("should match ArgCheck functions", function()
			expect(function()
				ArgCheck.matchesInterface("5", "nonEmptyString", "")
			end).to.never.throw()
			expect(function()
				ArgCheck.matchesInterface(5, "nonEmptyString", "")
			end).to.throw()
			expect(function()
				ArgCheck.matchesInterface("", "nonEmptyString", "")
			end).to.throw()
			expect(function()
				ArgCheck.matchesInterface({str = "5"}, {str = "nonEmptyString"}, "")
			end).to.never.throw()
		end)

		it("should match dependent types", function()
			local types = {
				child = {
					name = "string",
				},
				parent = {
					name = "string",
					children = {"child"},
				}
			}
			local child1 = {
				name = "child1",
			}
			local child2 = {
				name = "child2",
			}
			local parent1 = {
				name = "parent1",
				children = {child1, child2},
			}
			local parent2 = {
				name = "parent2",
				children = {"child1", "child2"},
			}
			expect(function()
				ArgCheck.matchesInterface(child1, types.child, "", types)
			end).to.never.throw()
			expect(function()
				ArgCheck.matchesInterface(parent1, types.parent, "", types)
			end).to.never.throw()
			expect(function()
				ArgCheck.matchesInterface(parent2, types.parent, "", types)
			end).to.throw()
		end)

		it("should return the same value on success", function()
			expect(ArgCheck.matchesInterface(5, "number", "")).to.equal(5)
			expect(ArgCheck.matchesInterface("5", "nonEmptyString", "")).to.equal("5")
			local list = {1, 2, 3}
			expect(ArgCheck.matchesInterface(list, {"number"}, "")).to.equal(list)
		end)
	end)
end
