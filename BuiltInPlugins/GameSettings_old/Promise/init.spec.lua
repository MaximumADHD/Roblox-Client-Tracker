return function()
	local Promise = require(script.Parent)

	local function pack(...)
		local len = select("#", ...)

		return len, { ... }
	end

	describe("Promise.new", function()
		it("should instantiate with a callback", function()
			local promise = Promise.new(function() end)

			expect(promise).to.be.ok()
		end)

		it("should invoke the given callback with resolve and reject", function()
			local callCount = 0
			local resolveArg
			local rejectArg

			local promise = Promise.new(function(resolve, reject)
				callCount = callCount + 1
				resolveArg = resolve
				rejectArg = reject
			end)

			expect(promise).to.be.ok()

			expect(callCount).to.equal(1)
			expect(resolveArg).to.be.a("function")
			expect(rejectArg).to.be.a("function")
			expect(promise:getStatus()).to.equal(Promise.Status.Started)
		end)

		it("should resolve promises on resolve()", function()
			local callCount = 0

			local promise = Promise.new(function(resolve)
				callCount = callCount + 1
				resolve()
			end)

			expect(promise).to.be.ok()
			expect(callCount).to.equal(1)
			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
		end)

		it("should reject promises on reject()", function()
			local callCount = 0

			local promise = Promise.new(function(resolve, reject)
				callCount = callCount + 1
				reject()
			end)
			promise:catch(function() end) -- prevent noisy warnings

			expect(promise).to.be.ok()
			expect(callCount).to.equal(1)
			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
		end)

		it("should reject on error in callback", function()
			local callCount = 0

			local promise = Promise.new(function()
				callCount = callCount + 1
				error("hahah")
			end)
			promise:catch(function() end) -- prevent noisy warnings

			expect(promise).to.be.ok()
			expect(callCount).to.equal(1)
			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(promise._values[1]:find("hahah")).to.be.ok()
		end)
	end)

	describe("Promise.resolve", function()
		it("should immediately resolve with a value", function()
			local promise = Promise.resolve(5)

			expect(promise).to.be.ok()
			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(promise._values[1]).to.equal(5)
		end)

		it("should chain onto passed promises", function()
			local promise = Promise.resolve(Promise.new(function(_, reject)
				reject(7)
			end))
			promise:catch(function() end) -- prevent noisy warnings

			expect(promise).to.be.ok()
			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(promise._values[1]).to.equal(7)
		end)
	end)

	describe("Promise.reject", function()
		it("should immediately reject with a value", function()
			local promise = Promise.reject(6)
			promise:catch(function() end) -- prevent noisy warnings

			expect(promise).to.be.ok()
			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(promise._values[1]).to.equal(6)
		end)

		it("should pass a promise as-is as an error", function()
			local innerPromise = Promise.new(function(resolve)
				resolve(6)
			end)

			local promise = Promise.reject(innerPromise)
			promise:catch(function() end) -- prevent noisy warnings

			expect(promise).to.be.ok()
			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(promise._values[1]).to.equal(innerPromise)
		end)
	end)

	describe("Promise:andThen", function()
		it("should chain onto resolved promises", function()
			local args
			local argsLength
			local callCount = 0
			local badCallCount = 0

			local promise = Promise.resolve(5)

			local chained = promise:andThen(
				function(...)
					argsLength, args = pack(...)
					callCount = callCount + 1
				end,
				function()
					badCallCount = badCallCount + 1
				end
			)

			expect(badCallCount).to.equal(0)

			expect(callCount).to.equal(1)
			expect(argsLength).to.equal(1)
			expect(args[1]).to.equal(5)

			expect(promise).to.be.ok()
			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(promise._values[1]).to.equal(5)

			expect(chained).to.be.ok()
			expect(chained).never.to.equal(promise)
			expect(chained:getStatus()).to.equal(Promise.Status.Resolved)
			expect(#chained._values).to.equal(0)
		end)

		it("should chain onto rejected promises", function()
			local args
			local argsLength
			local callCount = 0
			local badCallCount = 0

			local promise = Promise.reject(5)

			local chained = promise:andThen(
				function(...)
					badCallCount = badCallCount + 1
				end,
				function(...)
					argsLength, args = pack(...)
					callCount = callCount + 1
				end
			)

			expect(badCallCount).to.equal(0)

			expect(callCount).to.equal(1)
			expect(argsLength).to.equal(1)
			expect(args[1]).to.equal(5)

			expect(promise).to.be.ok()
			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(promise._values[1]).to.equal(5)

			expect(chained).to.be.ok()
			expect(chained).never.to.equal(promise)
			expect(chained:getStatus()).to.equal(Promise.Status.Resolved)
			expect(#chained._values).to.equal(0)
		end)

		it("should chain onto asynchronously resolved promises", function()
			local args
			local argsLength
			local callCount = 0
			local badCallCount = 0

			local startResolution
			local promise = Promise.new(function(resolve)
				startResolution = resolve
			end)

			local chained = promise:andThen(
				function(...)
					args = {...}
					argsLength = select("#", ...)
					callCount = callCount + 1
				end,
				function()
					badCallCount = badCallCount + 1
				end
			)

			expect(callCount).to.equal(0)
			expect(badCallCount).to.equal(0)

			startResolution(6)

			expect(badCallCount).to.equal(0)

			expect(callCount).to.equal(1)
			expect(argsLength).to.equal(1)
			expect(args[1]).to.equal(6)

			expect(promise).to.be.ok()
			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(promise._values[1]).to.equal(6)

			expect(chained).to.be.ok()
			expect(chained).never.to.equal(promise)
			expect(chained:getStatus()).to.equal(Promise.Status.Resolved)
			expect(#chained._values).to.equal(0)
		end)

		it("should chain onto asynchronously rejected promises", function()
			local args
			local argsLength
			local callCount = 0
			local badCallCount = 0

			local startResolution
			local promise = Promise.new(function(_, reject)
				startResolution = reject
			end)

			local chained = promise:andThen(
				function()
					badCallCount = badCallCount + 1
				end,
				function(...)
					args = {...}
					argsLength = select("#", ...)
					callCount = callCount + 1
				end
			)

			expect(callCount).to.equal(0)
			expect(badCallCount).to.equal(0)

			startResolution(6)

			expect(badCallCount).to.equal(0)

			expect(callCount).to.equal(1)
			expect(argsLength).to.equal(1)
			expect(args[1]).to.equal(6)

			expect(promise).to.be.ok()
			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(promise._values[1]).to.equal(6)

			expect(chained).to.be.ok()
			expect(chained).never.to.equal(promise)
			expect(chained:getStatus()).to.equal(Promise.Status.Resolved)
			expect(#chained._values).to.equal(0)
		end)
	end)

	describe("Promise.all", function()
		it("should error if given something other than a table", function()
			expect(function()
				Promise.all(1)
			end).to.throw()
		end)

		it("should resolve instantly with an empty table if given no promises", function()
			local promise = Promise.all({})
			local success, value = promise:_unwrap()

			expect(success).to.equal(true)
			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(value).to.be.a("table")
			expect(next(value)).to.equal(nil)
		end)

		it("should error if given non-promise values", function()
			expect(function()
				Promise.all({{}, {}, {}})
			end).to.throw()
		end)

		it("should wait for all promises to be resolved and return their values", function()
			local resolveFunctions = {}

			local testValuesLength, testValues = pack(1, "A string", nil, false)

			local promises = {}

			for i = 1, testValuesLength do
				promises[i] = Promise.new(function(resolve)
					resolveFunctions[i] = {resolve, testValues[i]}
				end)
			end

			local combinedPromise = Promise.all(promises)

			for _, resolve in ipairs(resolveFunctions) do
				expect(combinedPromise:getStatus()).to.equal(Promise.Status.Started)
				resolve[1](resolve[2])
			end

			local resultLength, result = pack(combinedPromise:_unwrap())
			local success, resolved = unpack(result, 1, resultLength)

			expect(resultLength).to.equal(2)
			expect(success).to.equal(true)
			expect(resolved).to.be.a("table")
			expect(#resolved).to.equal(#promises)

			for i = 1, testValuesLength do
				expect(resolved[i]).to.equal(testValues[i])
			end
		end)

		it("should reject if any individual promise rejected", function()
			local rejectA
			local resolveB

			local a = Promise.new(function(_, reject)
				rejectA = reject
			end)

			local b = Promise.new(function(resolve)
				resolveB = resolve
			end)

			local combinedPromise = Promise.all({a, b})
			combinedPromise:catch(function() end) -- prevent noisy warnings

			expect(combinedPromise:getStatus()).to.equal(Promise.Status.Started)

			resolveB("foo", "bar")
			rejectA("baz", "qux")

			local resultLength, result = pack(combinedPromise:_unwrap())
			local success, first, second = unpack(result, 1, resultLength)

			expect(resultLength).to.equal(3)
			expect(success).to.equal(false)
			expect(first).to.equal("baz")
			expect(second).to.equal("qux")
		end)

		it("should not resolve if resolved after rejecting", function()
			local rejectA
			local resolveB

			local a = Promise.new(function(_, reject)
				rejectA = reject
			end)
			a:catch(function() end) -- prevent noisy warnings

			local b = Promise.new(function(resolve)
				resolveB = resolve
			end)

			local combinedPromise = Promise.all({a, b})
			combinedPromise:catch(function() end) -- prevent noisy warnings

			expect(combinedPromise:getStatus()).to.equal(Promise.Status.Started)

			rejectA("baz", "qux")
			resolveB("foo", "bar")

			local resultLength, result = pack(combinedPromise:_unwrap())
			local success, first, second = unpack(result, 1, resultLength)

			expect(resultLength).to.equal(3)
			expect(success).to.equal(false)
			expect(first).to.equal("baz")
			expect(second).to.equal("qux")
		end)

		it("should only reject once", function()
			local rejectA
			local rejectB

			local a = Promise.new(function(_, reject)
				rejectA = reject
			end)
			a:catch(function() end) -- prevent noisy warnings

			local b = Promise.new(function(_, reject)
				rejectB = reject
			end)
			b:catch(function() end) -- prevent noisy warnings

			local combinedPromise = Promise.all({a, b})
			combinedPromise:catch(function() end) -- prevent noisy warnings

			expect(combinedPromise:getStatus()).to.equal(Promise.Status.Started)

			rejectA("foo", "bar")

			expect(combinedPromise:getStatus()).to.equal(Promise.Status.Rejected)

			rejectB("baz", "qux")

			local resultLength, result = pack(combinedPromise:_unwrap())
			local success, first, second = unpack(result, 1, resultLength)

			expect(resultLength).to.equal(3)
			expect(success).to.equal(false)
			expect(first).to.equal("foo")
			expect(second).to.equal("bar")
		end)
	end)
end