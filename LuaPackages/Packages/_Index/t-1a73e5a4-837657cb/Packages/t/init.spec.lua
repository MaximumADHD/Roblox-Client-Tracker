return function()
	local t = require(script.Parent)

	it("should support basic types", function()
		expect(t.any("")).to.equal(true)
		expect(t.boolean(true)).to.equal(true)
		expect(t.none(nil)).to.equal(true)
		expect(t.number(1)).to.equal(true)
		expect(t.string("foo")).to.equal(true)
		expect(t.table({})).to.equal(true)

		expect(t.any(nil)).to.equal(false)
		expect(t.boolean("true")).to.equal(false)
		expect(t.none(1)).to.equal(false)
		expect(t.number(true)).to.equal(false)
		expect(t.string(true)).to.equal(false)
		expect(t.table(82)).to.equal(false)
	end)

	it("should support special number types", function()
		local maxTen = t.numberMax(10)
		local minTwo = t.numberMin(2)
		local maxTenEx = t.numberMaxExclusive(10)
		local minTwoEx = t.numberMinExclusive(2)
		local constrainedEightToEleven = t.numberConstrained(8, 11)
		local constrainedEightToElevenEx = t.numberConstrainedExclusive(8, 11)

		expect(maxTen(5)).to.equal(true)
		expect(maxTen(10)).to.equal(true)
		expect(maxTen(11)).to.equal(false)
		expect(maxTen()).to.equal(false)

		expect(minTwo(5)).to.equal(true)
		expect(minTwo(2)).to.equal(true)
		expect(minTwo(1)).to.equal(false)
		expect(minTwo()).to.equal(false)

		expect(maxTenEx(5)).to.equal(true)
		expect(maxTenEx(9)).to.equal(true)
		expect(maxTenEx(10)).to.equal(false)
		expect(maxTenEx()).to.equal(false)

		expect(minTwoEx(5)).to.equal(true)
		expect(minTwoEx(3)).to.equal(true)
		expect(minTwoEx(2)).to.equal(false)
		expect(minTwoEx()).to.equal(false)

		expect(constrainedEightToEleven(7)).to.equal(false)
		expect(constrainedEightToEleven(8)).to.equal(true)
		expect(constrainedEightToEleven(9)).to.equal(true)
		expect(constrainedEightToEleven(11)).to.equal(true)
		expect(constrainedEightToEleven(12)).to.equal(false)
		expect(constrainedEightToEleven()).to.equal(false)

		expect(constrainedEightToElevenEx(7)).to.equal(false)
		expect(constrainedEightToElevenEx(8)).to.equal(false)
		expect(constrainedEightToElevenEx(9)).to.equal(true)
		expect(constrainedEightToElevenEx(11)).to.equal(false)
		expect(constrainedEightToElevenEx(12)).to.equal(false)
		expect(constrainedEightToElevenEx()).to.equal(false)
	end)

	it("should support optional types", function()
		local check = t.optional(t.string)
		expect(check("")).to.equal(true)
		expect(check()).to.equal(true)
		expect(check(1)).to.equal(false)
	end)

	it("should support tuple  types", function()
		local myTupleCheck = t.tuple(t.number, t.string, t.optional(t.number))
		expect(myTupleCheck(1, "2", 3)).to.equal(true)
		expect(myTupleCheck(1, "2")).to.equal(true)
		expect(myTupleCheck(1, "2", "3")).to.equal(false)
	end)

	it("should support union  types", function()
		local numberOrString = t.union(t.number, t.string)
		expect(numberOrString(1)).to.equal(true)
		expect(numberOrString("1")).to.equal(true)
		expect(numberOrString(nil)).to.equal(false)
	end)

	it("should support exact types", function()
		local checkSingle = t.exactly("foo")
		local checkUnion = t.union(t.exactly("foo"), t.exactly("bar"), t.exactly("oof"))

		expect(checkSingle("foo")).to.equal(true)
		expect(checkUnion("foo")).to.equal(true)
		expect(checkUnion("bar")).to.equal(true)
		expect(checkUnion("oof")).to.equal(true)

		expect(checkSingle("FOO")).to.equal(false)
		expect(checkUnion("FOO")).to.equal(false)
		expect(checkUnion("BAR")).to.equal(false)
		expect(checkUnion("OOF")).to.equal(false)
	end)

	it("should support intersection  types", function()
		local integerMax5000 = t.intersection(t.integer, t.numberMax(5000))
		expect(integerMax5000(1)).to.equal(true)
		expect(integerMax5000(5001)).to.equal(false)
		expect(integerMax5000(1.1)).to.equal(false)
		expect(integerMax5000("1")).to.equal(false)
	end)

	describe("array", function()
		it("should support array  types", function()
			local stringArray = t.array(t.string)
			local anyArray = t.array(t.any)
			local stringValues = t.values(t.string)
			expect(anyArray("foo")).to.equal(false)
			expect(anyArray({1, "2", 3})).to.equal(true)
			expect(stringArray({1, "2", 3})).to.equal(false)
			expect(stringArray()).to.equal(false)
			expect(stringValues()).to.equal(false)
			expect(anyArray({"1", "2", "3"}, t.string)).to.equal(true)
			expect(anyArray({
				foo = "bar"
			})).to.equal(false)
			expect(anyArray({
				[1] = "non",
				[5] = "sequential"
			})).to.equal(false)
		end)

		it("should not be fooled by sparse arrays", function()
			local anyArray = t.array(t.any)

			expect(anyArray({
				[1] = 1,
				[2] = 2,
				[4] = 4,
			})).to.equal(false)
		end)
	end)

	it("should support map types", function()
		local stringNumberMap = t.map(t.string, t.number)
		expect(stringNumberMap({})).to.equal(true)
		expect(stringNumberMap({a = 1})).to.equal(true)
		expect(stringNumberMap({[1] = "a"})).to.equal(false)
		expect(stringNumberMap({a = "a"})).to.equal(false)
		expect(stringNumberMap()).to.equal(false)
	end)

	it("should support interface types", function()
		local IVector3 = t.interface({
			x = t.number,
			y = t.number,
			z = t.number,
		})

		expect(IVector3({
			w = 0,
			x = 1,
			y = 2,
			z = 3,
		})).to.equal(true)

		expect(IVector3({
			w = 0,
			x = 1,
			y = 2,
		})).to.equal(false)
	end)

	it("should support strict interface types", function()
		local IVector3 = t.strictInterface({
			x = t.number,
			y = t.number,
			z = t.number,
		})

		expect(IVector3({
			w = 0,
			x = 1,
			y = 2,
			z = 3,
		})).to.equal(false)

		expect(IVector3({
			w = 0,
			x = 1,
			y = 2,
		})).to.equal(false)

		expect(IVector3({
			x = 1,
			y = 2,
			z = 3,
		})).to.equal(true)
	end)

	it("should support deep interface types", function()
		local IPlayer = t.interface({
			name = t.string,
			inventory = t.interface({
				size = t.number
			})
		})

		expect(IPlayer({
			name = "TestPlayer",
			inventory = {
				size = 1
			}
		})).to.equal(true)

		expect(IPlayer({
			inventory = {
				size = 1
			}
		})).to.equal(false)

		expect(IPlayer({
			name = "TestPlayer",
			inventory = {
			}
		})).to.equal(false)

		expect(IPlayer({
			name = "TestPlayer",
		})).to.equal(false)
	end)

	it("should support deep optional interface types", function()
		local IPlayer = t.interface({
			name = t.string,
			inventory = t.optional(t.interface({
				size = t.number
			}))
		})

		expect(IPlayer({
			name = "TestPlayer"
		})).to.equal(true)

		expect(IPlayer({
			name = "TestPlayer",
			inventory = {
			}
		})).to.equal(false)

		expect(IPlayer({
			name = "TestPlayer",
			inventory = {
				size = 1
			}
		})).to.equal(true)
	end)

	it("should support Roblox Instance types", function()
		local stringValueCheck = t.instance("StringValue")
		local stringValue = Instance.new("StringValue")
		local boolValue = Instance.new("BoolValue")

		expect(stringValueCheck(stringValue)).to.equal(true)
		expect(stringValueCheck(boolValue)).to.equal(false)
		expect(stringValueCheck()).to.equal(false)
	end)

	it("should support Roblox Instance types inheritance", function()
		local guiObjectCheck = t.instanceIsA("GuiObject")
		local frame = Instance.new("Frame")
		local textLabel = Instance.new("TextLabel")
		local stringValue = Instance.new("StringValue")

		expect(guiObjectCheck(frame)).to.equal(true)
		expect(guiObjectCheck(textLabel)).to.equal(true)
		expect(guiObjectCheck(stringValue)).to.equal(false)
		expect(guiObjectCheck()).to.equal(false)
	end)

	it("should support Roblox Enum types", function()
		local sortOrderEnumCheck = t.enum(Enum.SortOrder)
		expect(t.Enum(Enum.SortOrder)).to.equal(true)
		expect(t.Enum("Enum.SortOrder")).to.equal(false)

		expect(t.EnumItem(Enum.SortOrder.Name)).to.equal(true)
		expect(t.EnumItem("Enum.SortOrder.Name")).to.equal(false)

		expect(sortOrderEnumCheck(Enum.SortOrder.Name)).to.equal(true)
		expect(sortOrderEnumCheck(Enum.SortOrder.Custom)).to.equal(true)
		expect(sortOrderEnumCheck(Enum.EasingStyle.Linear)).to.equal(false)
		expect(sortOrderEnumCheck()).to.equal(false)
	end)

	it("should support wrapping function types", function()
		local checkFoo = t.tuple(t.string, t.number, t.optional(t.string))
		local foo = t.wrap(function(a, b, c)
			local result = string.format("%s %d", a, b)
			if c then
				result = result .. " " .. c
			end
			return result
		end, checkFoo)

		expect(pcall(foo)).to.equal(false)
		expect(pcall(foo, "a")).to.equal(false)
		expect(pcall(foo, 2)).to.equal(false)
		expect(pcall(foo, "a", 1)).to.equal(true)
		expect(pcall(foo, "a", 1, "b")).to.equal(true)
	end)

	it("should support strict types", function()
		local myType = t.strict(t.tuple(t.string, t.number))
		expect(pcall(function()
			myType("a", "b")
		end)).to.equal(false)
		expect(pcall(function()
			myType("a", 1)
		end)).to.equal(true)
	end)

	it("should support common OOP types", function()
		local MyClass = {}
		MyClass.__index = MyClass

		function MyClass.new()
			local self = setmetatable({}, MyClass)
			return self
		end

		local function instanceOfClass(class)
			return function(value)
				local tableSuccess, tableErrMsg = t.table(value)
				if not tableSuccess then
					return false, tableErrMsg or ""
				end

				local mt = getmetatable(value)
				if not mt or mt.__index ~= class then
					return false, "bad member of class"
				end

				return true
			end
		end

		local instanceOfMyClass = instanceOfClass(MyClass)

		local myObject = MyClass.new()
		expect(instanceOfMyClass(myObject)).to.equal(true)
		expect(instanceOfMyClass({})).to.equal(false)
		expect(instanceOfMyClass()).to.equal(false)
	end)

	it("should not treat NaN as numbers", function()
		expect(t.number(1)).to.equal(true)
		expect(t.number(0/0)).to.equal(false)
		expect(t.number("1")).to.equal(false)
	end)

	it("should not treat numbers as NaN", function()
		expect(t.nan(1)).to.equal(false)
		expect(t.nan(0/0)).to.equal(true)
		expect(t.nan("1")).to.equal(false)
	end)

	it("should allow union of number and NaN", function()
		local numberOrNaN = t.union(t.number, t.nan)
		expect(numberOrNaN(1)).to.equal(true)
		expect(numberOrNaN(0/0)).to.equal(true)
		expect(numberOrNaN("1")).to.equal(false)
	end)

	it("should support non-string keys for interfaces", function()
		local key = {}
		local myInterface = t.interface({ [key] = t.number })
		expect(myInterface({ [key] = 1 })).to.equal(true)
		expect(myInterface({ [key] = "1" })).to.equal(false)
	end)

	it("should support failing on non-string keys for strict interfaces", function()
		local myInterface = t.strictInterface({ a = t.number })
		expect(myInterface({ a = 1, [{}] = 2 })).to.equal(false)
	end)
end