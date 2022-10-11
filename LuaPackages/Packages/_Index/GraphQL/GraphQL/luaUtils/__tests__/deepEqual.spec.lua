return function()
	local deepEqual = require(script.Parent.Parent.deepEqual)
	local NULL = require(script.Parent.Parent.null)

	describe("deepEqual", function()
		it("should deep equal if objects have same shape and values", function()
			expect(deepEqual({}, {})).to.equal(true)
			expect(deepEqual({ foo = "bar" }, { foo = "bar" })).to.equal(true)
			expect(deepEqual({
				foo = {
					bar = {
						fizz = "buzz",
					},
				},
			}, {
				foo = {
					bar = {
						fizz = "buzz",
					},
				},
			})).to.equal(true)
		end)

		it("should not deep equal if object has additional properties", function()
			expect(deepEqual({ foo = "bar" }, {})).to.equal(false)
			expect(deepEqual({ foo = "bar", fizz = "buzz" }, { foo = "bar" })).to.equal(false)
			expect(deepEqual({
				foo = {
					bar = {
						fizz = "buzz",
					},
				},
				fizz = "buzz",
			}, { fizz = "buzz" })).to.equal(false)
		end)

		it("should not deep equal if different types", function()
			expect(deepEqual({ foo = "bar" }, "foo bar")).to.equal(false)
			expect(deepEqual({ foo = "bar" }, 123)).to.equal(false)
		end)

		it(
			"should not deep equal if comparing NULL against another value with the same shape",
			function()
				local ok, message = deepEqual(NULL, {})
				expect(ok).to.equal(false)
				expect(message:find("{1} %(null%) ~= {2} %(table: 0x[%da-f]+%)")).to.be.ok()

				ok, message = deepEqual({ foo = NULL }, { foo = {} })
				expect(ok).to.equal(false)
				expect(message:find("{1}%[foo%] %(null%) ~= {2}%[foo%] %(table: 0x[%da-f]+%)")).to.be.ok()
			end
		)
	end)
end
