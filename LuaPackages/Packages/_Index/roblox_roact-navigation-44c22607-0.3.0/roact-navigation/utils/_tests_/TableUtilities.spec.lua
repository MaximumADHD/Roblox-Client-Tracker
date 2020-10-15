return function()
	local TableUtilities = require(script.Parent.Parent.TableUtilities)

	describe("DeepEqual", function()
		it("should succeed", function()
			expect(false).to.be.ok()
		end)

		it("should fail with a message when args are not equal", function()
			local success, message = TableUtilities.DeepEqual(1, 2)

			expect(success).to.equal(false)
			expect(message:find("first ~= second")).to.be.ok()

			success, message = TableUtilities.DeepEqual({
				foo = 1,
			}, {
				foo = 2,
			})

			expect(success).to.equal(false)
			expect(message:find("first%[foo%] ~= second%[foo%]")).to.be.ok()
		end)

		it("should compare non-table values using standard '==' equality", function()
			expect(TableUtilities.DeepEqual(1, 1)).to.equal(true)
			expect(TableUtilities.DeepEqual("hello", "hello")).to.equal(true)
			expect(TableUtilities.DeepEqual(nil, nil)).to.equal(true)

			local someFunction = function() end
			local theSameFunction = someFunction

			expect(TableUtilities.DeepEqual(someFunction, theSameFunction)).to.equal(true)

			local A = {
				foo = someFunction
			}
			local B = {
				foo = theSameFunction
			}

			expect(TableUtilities.DeepEqual(A, B)).to.equal(true)
		end)

		it("should fail when types differ", function()
			local success, message = TableUtilities.DeepEqual(1, "1")

			expect(success).to.equal(false)
			expect(message:find("first is of type number, but second is of type string")).to.be.ok()
		end)

		it("should compare (and report about) nested tables", function()
			local A = {
				foo = "bar",
				nested = {
					foo = 1,
					bar = 2,
				}
			}
			local B = {
				foo = "bar",
				nested = {
					foo = 1,
					bar = 2,
				}
			}

			expect(TableUtilities.DeepEqual(A, B)).to.equal(true)

			local C = {
				foo = "bar",
				nested = {
					foo = 1,
					bar = 3,
				}
			}

			local success, message = TableUtilities.DeepEqual(A, C)

			expect(success).to.equal(false)
			expect(message:find("first%[nested%]%[bar%] ~= second%[nested%]%[bar%]")).to.be.ok()
		end)

		it("should be commutative", function()
			local equalArgsA = {
				foo = "bar",
				hello = "world",
			}
			local equalArgsB = {
				foo = "bar",
				hello = "world",
			}

			expect(TableUtilities.DeepEqual(equalArgsA, equalArgsB)).to.equal(true)
			expect(TableUtilities.DeepEqual(equalArgsB, equalArgsA)).to.equal(true)

			local nonEqualArgs = {
				foo = "bar",
			}

			local successA = TableUtilities.DeepEqual(equalArgsA, nonEqualArgs)
			local successB = TableUtilities.DeepEqual(nonEqualArgs, equalArgsA)

			expect(successA).to.equal(false)
			expect(successB).to.equal(false)
		end)

		it("should give the appropriate message if the second table has extra fields", function()
			local success, message = TableUtilities.DeepEqual({}, { foo = 1 })

			expect(success).to.equal(false)
			expect(message).to.equal("first[foo] is of type nil, but second[foo] is of type number")
		end)
	end)
end
