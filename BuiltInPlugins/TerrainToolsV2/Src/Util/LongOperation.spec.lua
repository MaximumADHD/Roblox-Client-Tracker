local LongOperation = require(script.Parent.LongOperation)

return function()
	local dummyOperationDetails = {
		onStep = function()
		end,
	}

	describe("its constructor", function()
		it("should be creatable", function()
			local lo = LongOperation.new(dummyOperationDetails)
			expect(lo).to.be.ok()
			lo:destroy()
		end)

		it("should require an options table", function()
			expect(function() LongOperation.new() end).to.throw()
		end)

		it("should require an onStep callback", function()
			expect(function() LongOperation.new({}) end).to.throw()
			expect(function() LongOperation.new({onStep = 5}) end).to.throw()
		end)
	end)

	describe("start", function()
		it("should take nil or table as initial data", function()
			local lo = LongOperation.new(dummyOperationDetails)
			expect(function()
				lo:start(5)
			end).to.throw()

			expect(function()
				lo:start("foo")
			end).to.throw()
			lo:destroy()
		end)

		it("should pass the initial data correctly", function()
			local lo = LongOperation.new({
				onStep = function(data)
					expect(data.foo).to.equal("bar")
					return false, 1
				end,
			})

			lo:start({
				foo = "bar",
			})
		end)
	end)
end
