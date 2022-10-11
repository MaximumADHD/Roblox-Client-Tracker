return function()
	local deepContains = require(script.Parent.Parent.deepContains)
	local NULL = require(script.Parent.Parent.null)

	describe("deepContains", function()
		it("contain empty object", function()
			expect(deepContains({}, {})).to.equal(true)
			expect(deepContains({ foo = "bar" }, {})).to.equal(true)
		end)

		it("contain not empty object", function()
			expect(deepContains({ foo = "bar" }, { foo = "bar" })).to.equal(true)
			expect(deepContains({ foo = "bar", fizz = "buzz" }, { foo = "bar" })).to.equal(true)
		end)

		it("contain deep not empty object", function()
			expect(deepContains({
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
			expect(deepContains({
				foo = {
					bar = {
						fizz = "buzz",
					},
				},
				fizz = "buzz",
			}, { fizz = "buzz" })).to.equal(true)
		end)

		it("not contain different object", function()
			expect(deepContains({ foo = "bar" }, { foo = "buzz" })).to.equal(false)
			expect(deepContains({
				foo = "bar",
				fizz = "buzz",
			}, {
				foo = "bar",
				buzz = "fizz",
			})).to.equal(false)
			expect(deepContains({
				foo = {
					bar = {
						fizz = "buzz",
					},
				},
			}, {
				foo = {
					bar = {
						fizz = "fizz buzz",
					},
				},
			})).to.equal(false)
		end)

		it("not contain if different types", function()
			expect(deepContains({ foo = "bar" }, "foo bar")).to.equal(false)
			expect(deepContains({ foo = "bar" }, 123)).to.equal(false)
		end)

		it(
			"should not contain if comparing NULL against another value with the same shape",
			function()
				local ok, message = deepContains(NULL, {})
				expect(ok).to.equal(false)
				expect(message:find("{1} %(null%) ~= {2} %(table: 0x[%da-f]+%)")).to.be.ok()

				ok, message = deepContains({ foo = NULL }, { foo = {} })
				expect(ok).to.equal(false)
				expect(message:find("{1}%[foo%] %(null%) ~= {2}%[foo%] %(table: 0x[%da-f]+%)")).to.be.ok()
			end
		)
	end)
end
