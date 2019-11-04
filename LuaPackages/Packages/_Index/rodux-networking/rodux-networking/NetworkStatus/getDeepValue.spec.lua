return function()
	local getDeepValue = require(script.Parent.getDeepValue)

	describe("GIVEN an empty array", function()
		local tab = {}
		it("SHOULD return nil", function()
			expect(getDeepValue(tab, "")).to.equal(nil)
			expect(getDeepValue(tab, "hello.world")).to.equal(nil)
		end)
	end)

	describe("GIVEN a dictionary with hello.world", function()
		local tab = {
			hello = {
				world = 100,
			},
		}
		describe("GIVEN an empty string as the second argument", function()
			it("SHOULD return nil", function()
				expect(getDeepValue(tab, "")).to.equal(nil)
			end)
		end)

		describe("GIVEN `goodbye.world` as the second argument", function()
			it("SHOULD return nil", function()
				expect(getDeepValue(tab, "goodbye.world")).to.equal(nil)
			end)
		end)

		describe("GIVEN `hello.there` as the second argument", function()
			it("SHOULD return nil", function()
				expect(getDeepValue(tab, "hello.there")).to.equal(nil)
			end)
		end)

		describe("GIVEN `hello.there` as the second argument", function()
			it("SHOULD return nil", function()
				expect(getDeepValue(tab, "hello.there")).to.equal(nil)
			end)
		end)

		describe("GIVEN `hello` as the second argument", function()
			it("SHOULD return the hello table", function()
				expect(getDeepValue(tab, "hello")).to.equal(tab.hello)
			end)
		end)

		describe("GIVEN `hello.world` as the second argument", function()
			it("SHOULD return the 100 (the value mapped to hello.world)", function()
				expect(getDeepValue(tab, "hello.world")).to.equal(100)
			end)
		end)
	end)
end
