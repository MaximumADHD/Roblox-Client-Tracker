return function()
	local toHaveSameMembers = require(script.Parent.Parent.toHaveSameMembers)

	describe("toHaveSameMembers", function()
		describe("strict comparison", function()
			it("should fail if different length", function()
				local arrA = { { name = "a" } }
				local arrB = { { name = "a" }, { name = "b" } }
				local result = toHaveSameMembers(arrA, arrB)

				expect(result.pass).to.equal(false)
				expect(result.message).to.equal("Received array length 1 / expected length 2")
			end)

			it("should fail if items are different", function()
				local arrA = { { name = "a" } }
				local arrB = { { name = "b" } }
				local result = toHaveSameMembers(arrA, arrB)

				expect(result.pass).to.equal(false)
				expect(result.message).to.equal(
					'Expected item { name: "b" } to be in Array [{ name: "a" }]'
				)
			end)

			it("should pass if same items in different order", function()
				local arrA = { { name = "b" }, { name = "a" } }
				local arrB = { { name = "a" }, { name = "b" } }
				local result = toHaveSameMembers(arrA, arrB)

				expect(result.pass).to.equal(true)
			end)
		end)

		describe("loose comparison", function()
			it("should fail if different length", function()
				local arrA = { { name = "a" } }
				local arrB = { { name = "a" }, { name = "b" } }
				local result = toHaveSameMembers(arrA, arrB, true)

				expect(result.pass).to.equal(false)
				expect(result.message).to.equal("Received array length 1 / expected length 2")
			end)

			it("should fail if items are different", function()
				local arrA = { { name = "a" } }
				local arrB = { { name = "b" } }
				local result = toHaveSameMembers(arrA, arrB, true)

				expect(result.pass).to.equal(false)
				expect(result.message).to.equal(
					'Expected item { name: "b" } to be in Array [{ name: "a" }]'
				)
			end)

			it("should pass if same items in different order", function()
				local arrA = { { name = "b" }, { name = "a" } }
				local arrB = { { name = "a" }, { name = "b" } }
				local result = toHaveSameMembers(arrA, arrB, true)

				expect(result.pass).to.equal(true)
			end)

			it("should pass origin array has additional properties", function()
				local arrA = { { name = "a", foo = "bar" }, { name = "b", fizz = "buzz" } }
				local arrB = { { name = "a" }, { name = "b" } }
				local result = toHaveSameMembers(arrA, arrB, true)

				expect(result.pass).to.equal(true)
			end)

			it("should not pass expected array has additional properties", function()
				local arrA = { { name = "a" } }
				local arrB = { { name = "a", foo = "bar" } }
				local result = toHaveSameMembers(arrA, arrB, true)

				expect(result.pass).to.equal(false)
				expect(result.message).to.equal(
					'Expected item { foo: "bar", name: "a" } to be in Array [{ name: "a" }]'
				)
			end)
		end)
	end)
end
