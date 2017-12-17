return function()
	local Expectation = require(script.Parent.Expectation)

	-- Assert that a function throws
	local function throws(method)
		local ok = pcall(method)

		assert(not ok, "Expected function to throw")
	end

	it("should construct from any value", function()
		local a = Expectation.new(5)
		assert(a, "Expected expectation to be ok")

		local b = Expectation.new(nil)
		assert(b, "Expected nil-expectation to be ok")
	end)

	it("should have self-aliases", function()
		local a = Expectation.new(nil)

		assert(a.to == a, "Expected 'to' to be an alias")
		assert(a.be == a, "Expected 'be' to be an alias")
		assert(a.been == a, "Expected 'been' to be an alias")
		assert(a.have == a, "Expected 'have' to be an alias")
		assert(a.was == a, "Expected 'was' to be an alias")
		assert(a.at == a, "Expected 'at' to be an alias")
	end)

	describe("chaining mechanics", function()
		it("should correctly chain with inversions", function()
			Expectation.new(5)
				.to.never.equal(6)
				.to.equal(5)

			throws(function()
				Expectation.new(5)
					.to.never.equal(6)
					.to.never.equal(5)
			end)
		end)
	end)

	describe("a", function()
		it("should check types with 'type'", function()
			Expectation.new("hello"):a("string")
			Expectation.new(5):a("number")
			Expectation.new(nil):a("nil")

			throws(function()
				Expectation.new("hello"):a("number")
			end)
		end)

		it("should work with negation", function()
			Expectation.new("hello").never:a("number")
			Expectation.new(5).never:a("table")
		end)

		it("should work with either : or . syntax", function()
			Expectation.new("hello"):a("string")
			Expectation.new(5):a("number")

			Expectation.new("hello").a("string")
			Expectation.new(5).a("number")
		end)

		it("should have the alias 'an'", function()
			local expect = Expectation.new("hello")

			assert(expect.a == expect.an, "Expected 'a' to equal 'an'")
		end)
	end)

	describe("ok", function()
		it("should check against nil", function()
			Expectation.new("another happy landing"):ok()
			Expectation.new(0):ok()
			Expectation.new({}):ok()
			Expectation.new(true):ok()
			Expectation.new(false):ok()

			throws(function()
				Expectation.new(nil):ok()
			end)
		end)

		it("should work with negation", function()
			Expectation.new(nil).never:ok()

			throws(function()
				Expectation.new("the jedi").never:ok()
			end)
		end)

		it("should work with either : or . syntax", function()
			Expectation.new("well whaddya know"):ok()
			Expectation.new("well whaddya know").ok()
		end)
	end)

	describe("equal", function()
		it("should compare values", function()
			Expectation.new("hello"):equal("hello")
			Expectation.new(5):equal(5)

			throws(function()
				Expectation.new("foo"):equal("bar")
				Expectation.new(5):equal(6)
			end)
		end)

		it("should work with negation", function()
			Expectation.new("arresting the senate").never:equal("treason, then")

			throws(function()
				Expectation.new("hello").never:equal("hello")
			end)
		end)

		it("should work with either : or . syntax", function()
			Expectation.new("foo"):equal("foo")
			Expectation.new("foo").equal("foo")
		end)
	end)

	describe("throw", function()
		it("should check function throwing", function()
			local callCount = 0

			Expectation.new(function()
				callCount = callCount + 1
				error("yup yup")
			end):throw()

			assert(callCount == 1, "Expected callCount to equal 1")

			throws(function()
				Expectation.new(function()
					callCount = callCount + 1
				end):throw()
			end)

			assert(callCount == 2, "Expected callCount to equal 2")
		end)

		it("should work with negation", function()
			local callCount = 0

			Expectation.new(function()
				callCount = callCount + 1
			end).never:throw()

			assert(callCount == 1, "Expected callCount to equal 1")

			throws(function()
				Expectation.new(function()
					callCount = callCount + 1
					error("well whaddya know")
				end).never:throw()
			end)

			assert(callCount == 2, "Expected callCount to equal 2")
		end)

		it("should work with either : or . syntax", function()
			local callCount = 0

			Expectation.new(function()
				callCount = callCount + 1
				error("high ground")
			end):throw()

			Expectation.new(function()
				callCount = callCount + 1
				error("high ground")
			end).throw()

			assert(callCount == 2, "Expected callCount to equal 2")
		end)
	end)
end