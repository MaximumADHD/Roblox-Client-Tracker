local LongOperationQueue = require(script.Parent.LongOperationQueue)
local LongOperation = require(script.Parent.LongOperation)

return function()
	local function createDummyOperation()
		return LongOperation.new({onStep = function() end})
	end

	describe("its constructor", function()
		it("should be creatable", function()
			local loq = LongOperationQueue.new()
			expect(loq).to.be.ok()
			loq:destroy()
		end)
	end)

	describe("addToQueue", function()
		it("should add the operation to the queue", function()
			local loq = LongOperationQueue.new()
			expect(#loq._queue).to.equal(0)

			loq:addToQueue("foo")
			expect(#loq._queue).to.equal(1)
			expect(loq._queue[1]).to.equal("foo")

			loq:addToQueue("bar")
			expect(#loq._queue).to.equal(2)
			expect(loq._queue[1]).to.equal("foo")
			expect(loq._queue[2]).to.equal("bar")
			loq:destroy()
		end)

		it("should return itself", function()
			local loq = LongOperationQueue.new()
			expect(loq:addToQueue("foo")).to.equal(loq)
			loq:destroy()
		end)
	end)

	describe("start", function()
		it("should throw if the queue is empty", function()
			local loq = LongOperationQueue.new()
			expect(function()
				loq:start()
			end).to.throw()
			loq:destroy()
		end)

		it("should throw if an operation has already started", function()
			local loq = LongOperationQueue.new()
			loq:addToQueue(createDummyOperation())
			loq:addToQueue(createDummyOperation())
			loq:start()
			expect(function()
				loq:start()
			end).to.throw()
			loq:destroy()
		end)

		it("should take nil or table as initial data", function()
			local loq = LongOperationQueue.new()
			loq:addToQueue(createDummyOperation())

			expect(function()
				loq:start(5)
			end).to.throw()

			expect(function()
				loq:start("foo")
			end).to.throw()
			loq:destroy()
		end)

		it("should pass the initial data correctly", function()
			local loq = LongOperationQueue.new()

			loq
				:addToQueue(LongOperation.new({
					onStep = function(data)
						expect(data.foo).to.equal("bar")
						data.foo = "baz"
						return false, 1
					end,
				}))
				:addToQueue(LongOperation.new({
					onStep = function(data)
						expect(data.foo).to.equal("baz")
						data.foo = "end"
						return false, 1
					end,
				}))

			loq:start({
				foo = "bar",
			})
		end)
	end)
end
