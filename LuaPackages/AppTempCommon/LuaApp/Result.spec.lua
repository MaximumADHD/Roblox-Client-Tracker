return function()
	local Result = require(script.Parent.Result)

	describe("Constructors", function()
		it("should return a success result from Result.new with a success value", function()
			local success, value = Result.new(true, "foo"):unwrap()
			expect(success).to.equal(true)
			expect(value).to.equal("foo")
		end)

		it("should return an error result from Result.new with a failure value", function()
			local success, value = Result.new(false, "foo"):unwrap()
			expect(success).to.equal(false)
			expect(value).to.equal("foo")
		end)

		it("should return a success result from Result.success", function()
			local success, value = Result.success("foo"):unwrap()
			expect(success).to.equal(true)
			expect(value).to.equal("foo")
		end)

		it("should return an error result from Result.error", function()
			local success, value = Result.error("foo"):unwrap()
			expect(success).to.equal(false)
			expect(value).to.equal("foo")
		end)
	end)

	describe("Result:match", function()
		it("should call the first callback with the value if it's a success result", function()
			local called = false
			Result.success("foo"):match(
					function(value)
						called = true
						expect(value).to.equal("foo")
					end,
					function(value)
						assert(false)
					end
			)
			expect(called).to.equal(true)
		end)

		it("should call the second callback with the error if it's an error result", function()
			local called = false
			Result.error("foo"):match(
					function(value)
						assert(false)
					end,
					function(value)
						expect(value).to.equal("foo")
						called = true
					end
			)
			expect(called).to.equal(true)
		end)

		it("should return the result of the first callback if it's a result", function()
			Result.success("foo"):match(
					function()
						return Result.success("bar")
					end,
					nil
			):match(
					function(value)
						expect(value).to.equal("bar")
					end,
					nil
			)
		end)

		it("should return the result of the second callback if it's a result", function()
			Result.error("foo"):match(
					nil,
					function()
						return Result.success("bar")
					end
			):match(
					function(value)
						expect(value).to.equal("bar")
					end,
					nil
			)
		end)

		it("should return self if it's success and the first callback isn't provided", function()
			local result1 = Result.success("foo")
			local result2 = result1:match(nil, nil)
			expect(result1).to.equal(result2)
		end)

		it("should return self if it's error and the second callback isn't provided", function()
			local result1 = Result.error("foo")
			local result2 = result1:match(nil, nil)
			expect(result1).to.equal(result2)
		end)

		it("should return success result wrapping value returned by first callback if not a result", function()
			Result.success("foo"):match(
					function()
						return "bar"
					end,
					nil
			):match(
					function(value)
						expect(value).to.equal("bar")
					end,
					nil
			)
		end)

		it("should return success result wrapping value returned by second callback if not a result", function()
			Result.error("foo"):match(
					nil,
					function()
						return "bar"
					end
			):match(
					function(value)
						expect(value).to.equal("bar")
					end,
					nil
			)
		end)
	end)

	describe("Result:matchSuccess", function()
		it("should call the callback with the value if it's a success result", function()
			local called = false
			Result.success("foo"):matchSuccess(
					function(value)
						expect(value).to.equal("foo")
						called = true
					end
			)
			expect(called).to.equal(true)
		end)

		it("should not call the callback if it's an error result", function()
			Result.error("foo"):matchSuccess(
					function(value)
						assert(false)
					end
			)
		end)

		it("should return the result of the callback if it's a result", function()
			Result.success("foo"):matchSuccess(
					function()
						return Result.success("bar")
					end
			):matchSuccess(
					function(value)
						expect(value).to.equal("bar")
					end
			)
		end)

		it("should return success result wrapping value returned by callback if not a result", function()
			Result.success("foo"):matchSuccess(
					function()
						return "bar"
					end
			):matchSuccess(
					function(value)
						expect(value).to.equal("bar")
					end
			)
		end)
	end)

	describe("Result:matchError", function()
		it("should call the callback with the value if it's an error result", function()
			local called = false
			Result.error("foo"):matchError(
					function(value)
						expect(value).to.equal("foo")
						called = true
					end
			)
			expect(called).to.equal(true)
		end)

		it("should not call the callback if it's a success result", function()
			Result.success("foo"):matchError(
					function(value)
						assert(false)
					end
			)
		end)

		it("should return the result of the callback if it's a result", function()
			Result.error("foo"):matchError(
					function()
						return Result.success("bar")
					end
			):matchSuccess(
					function(value)
						expect(value).to.equal("bar")
					end
			)
		end)

		it("should return success result wrapping value returned by callback if not a result", function()
			Result.error("foo"):matchError(
					function()
						return "bar"
					end
			):matchSuccess(
					function(value)
						expect(value).to.equal("bar")
					end
			)
		end)
	end)
end