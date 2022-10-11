return function()
	local Promise = require(script.Parent)
	Promise.TEST = true

	local timeEvent = Instance.new("BindableEvent")
	Promise._timeEvent = timeEvent.Event

	local advanceTime
	do
		local injectedPromiseTime = 0

		Promise._getTime = function()
			return injectedPromiseTime
		end

		function advanceTime(delta)
			delta = delta or (1 / 60)

			injectedPromiseTime = injectedPromiseTime + delta
			timeEvent:Fire(delta)
		end
	end

	local function pack(...)
		local len = select("#", ...)

		return len, { ... }
	end

	describe("Promise.Status", function()
		it("should error if indexing nil value", function()
			expect(function()
				local _ = Promise.Status.wrong
			end).to.throw()
		end)
	end)

	describe("Unhandled rejection signal", function()
		it("should call unhandled rejection callbacks", function()
			local badPromise = Promise.new(function(_resolve, reject)
				reject(1, 2)
			end)

			local callCount = 0

			local function callback(promise, rejectionA, rejectionB)
				callCount += 1

				expect(promise).to.equal(badPromise)
				expect(rejectionA).to.equal(1)
				expect(rejectionB).to.equal(2)
			end

			local unregister = Promise.onUnhandledRejection(callback)

			advanceTime()

			expect(callCount).to.equal(1)

			unregister()

			Promise.new(function(_resolve, reject)
				reject(3, 4)
			end)

			advanceTime()

			expect(callCount).to.equal(1)
		end)
	end)

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

			expect(promise).to.be.ok()
			expect(callCount).to.equal(1)
			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(tostring(promise._values[1]):find("hahah")).to.be.ok()

			-- Loosely check for the pieces of the stack trace we expect
			expect(tostring(promise._values[1]):find("init.spec")).to.be.ok()
			expect(tostring(promise._values[1]):find("runExecutor")).to.be.ok()
		end)

		it("should work with C functions", function()
			expect(function()
				Promise.new(tick):andThen(tick)
			end).to.never.throw()
		end)

		it("should have a nice tostring", function()
			expect(tostring(Promise.resolve()):gmatch("Promise(Resolved)")).to.be.ok()
		end)

		it("should allow yielding", function()
			local bindable = Instance.new("BindableEvent")
			local promise = Promise.new(function(resolve)
				bindable.Event:Wait()
				resolve(5)
			end)

			expect(promise:getStatus()).to.equal(Promise.Status.Started)
			bindable:Fire()
			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(promise._values[1]).to.equal(5)
		end)

		it("should preserve stack traces of resolve-chained promises", function()
			local function nestedCall(text)
				error(text)
			end

			local promise = Promise.new(function(resolve)
				resolve(Promise.new(function()
					nestedCall("sample text")
				end))
			end)

			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)

			local trace = tostring(promise._values[1])
			expect(trace:find("sample text")).to.be.ok()
			expect(trace:find("nestedCall")).to.be.ok()
			expect(trace:find("runExecutor")).to.be.ok()
			expect(trace:find("runPlanNode")).to.be.ok()
			expect(
				trace:find("...Rejected because it was chained to the following Promise, which encountered an error:")
			).to.be.ok()
		end)

		it("should report errors from Promises with _error (< v2)", function()
			local oldPromise = Promise.reject()
			oldPromise._error = "Sample error"

			local newPromise = Promise.resolve():andThenReturn(oldPromise)

			expect(newPromise:getStatus()).to.equal(Promise.Status.Rejected)

			local trace = tostring(newPromise._values[1])
			expect(trace:find("Sample error")).to.be.ok()
			expect(
				trace:find("...Rejected because it was chained to the following Promise, which encountered an error:")
			).to.be.ok()
			expect(trace:find("%[No stack trace available")).to.be.ok()
		end)

		it("should allow callable tables", function()
			local promise = Promise.new(setmetatable({}, {
				__call = function(_, resolve)
					resolve(1)
				end,
			}))

			local called = false
			promise:andThen(setmetatable({}, {
				__call = function(_, var)
					expect(var).to.equal(1)
					called = true
				end,
			}))

			expect(called).to.equal(true)
		end)
	end)

	describe("Promise.defer", function()
		it("should execute after the time event", function()
			local callCount = 0
			local promise = Promise.defer(function(resolve, reject, onCancel, nothing)
				expect(type(resolve)).to.equal("function")
				expect(type(reject)).to.equal("function")
				expect(type(onCancel)).to.equal("function")
				expect(type(nothing)).to.equal("nil")

				callCount = callCount + 1

				resolve("foo")
			end)

			expect(callCount).to.equal(0)
			expect(promise:getStatus()).to.equal(Promise.Status.Started)

			advanceTime()
			expect(callCount).to.equal(1)
			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)

			advanceTime()
			expect(callCount).to.equal(1)
		end)
	end)

	describe("Promise.delay", function()
		it("should schedule promise resolution", function()
			local promise = Promise.delay(1)

			expect(promise:getStatus()).to.equal(Promise.Status.Started)

			advanceTime()
			expect(promise:getStatus()).to.equal(Promise.Status.Started)

			advanceTime(1)
			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
		end)

		it("should allow for delays to be cancelled", function()
			local promise = Promise.delay(2)

			Promise.delay(1):andThen(function()
				promise:cancel()
			end)

			expect(promise:getStatus()).to.equal(Promise.Status.Started)
			advanceTime()
			expect(promise:getStatus()).to.equal(Promise.Status.Started)
			advanceTime(1)
			expect(promise:getStatus()).to.equal(Promise.Status.Cancelled)
			advanceTime(1)
		end)
	end)

	describe("Promise.resolve", function()
		it("should immediately resolve with a value", function()
			local promise = Promise.resolve(5, 6)

			expect(promise).to.be.ok()
			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(promise._values[1]).to.equal(5)
			expect(promise._values[2]).to.equal(6)
		end)

		it("should chain onto passed promises", function()
			local promise = Promise.resolve(Promise.new(function(_, reject)
				reject(7)
			end))

			expect(promise).to.be.ok()
			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(promise._values[1]).to.equal(7)
		end)
	end)

	describe("Promise.reject", function()
		it("should immediately reject with a value", function()
			local promise = Promise.reject(6, 7)

			expect(promise).to.be.ok()
			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(promise._values[1]).to.equal(6)
			expect(promise._values[2]).to.equal(7)
		end)

		it("should pass a promise as-is as an error", function()
			local innerPromise = Promise.new(function(resolve)
				resolve(6)
			end)

			local promise = Promise.reject(innerPromise)

			expect(promise).to.be.ok()
			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(promise._values[1]).to.equal(innerPromise)
		end)
	end)

	describe("Promise:andThen", function()
		it("should allow yielding", function()
			local bindable = Instance.new("BindableEvent")
			local promise = Promise.resolve():andThen(function()
				bindable.Event:Wait()
				return 5
			end)

			expect(promise:getStatus()).to.equal(Promise.Status.Started)
			bindable:Fire()
			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(promise._values[1]).to.equal(5)
		end)

		it("should run andThens on a new thread", function()
			local bindable = Instance.new("BindableEvent")

			local resolve
			local parentPromise = Promise.new(function(_resolve)
				resolve = _resolve
			end)

			local deadlockedPromise = parentPromise:andThen(function()
				bindable.Event:Wait()
				return 5
			end)

			local successfulPromise = parentPromise:andThen(function()
				return "foo"
			end)

			expect(parentPromise:getStatus()).to.equal(Promise.Status.Started)
			resolve()
			expect(successfulPromise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(successfulPromise._values[1]).to.equal("foo")
			expect(deadlockedPromise:getStatus()).to.equal(Promise.Status.Started)
		end)

		it("should chain onto resolved promises", function()
			local args
			local argsLength
			local callCount = 0
			local badCallCount = 0

			local promise = Promise.resolve(5)

			local chained = promise:andThen(function(...)
				argsLength, args = pack(...)
				callCount = callCount + 1
			end, function()
				badCallCount = badCallCount + 1
			end)

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

			local chained = promise:andThen(function(...)
				badCallCount = badCallCount + 1
			end, function(...)
				argsLength, args = pack(...)
				callCount = callCount + 1
			end)

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

		it("should reject on error in callback", function()
			local callCount = 0

			local promise = Promise.resolve(1):andThen(function()
				callCount = callCount + 1
				error("hahah")
			end)

			expect(promise).to.be.ok()
			expect(callCount).to.equal(1)
			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(tostring(promise._values[1]):find("hahah")).to.be.ok()

			-- Loosely check for the pieces of the stack trace we expect
			expect(tostring(promise._values[1]):find("init.spec")).to.be.ok()
			expect(tostring(promise._values[1]):find("runExecutor")).to.be.ok()
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

			local chained = promise:andThen(function(...)
				args = { ... }
				argsLength = select("#", ...)
				callCount = callCount + 1
			end, function()
				badCallCount = badCallCount + 1
			end)

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

			local chained = promise:andThen(function()
				badCallCount = badCallCount + 1
			end, function(...)
				args = { ... }
				argsLength = select("#", ...)
				callCount = callCount + 1
			end)

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

		it("should propagate errors through multiple levels", function()
			local x, y, z
			Promise.new(function(resolve, reject)
				reject(1, 2, 3)
			end):andThen(function() end):catch(function(a, b, c)
				x, y, z = a, b, c
			end)

			expect(x).to.equal(1)
			expect(y).to.equal(2)
			expect(z).to.equal(3)
		end)
	end)

	describe("Promise:cancel", function()
		it("should mark promises as cancelled and not resolve or reject them", function()
			local callCount = 0
			local finallyCallCount = 0
			local promise = Promise.new(function() end)
				:andThen(function()
					callCount = callCount + 1
				end)
				:finally(function()
					finallyCallCount = finallyCallCount + 1
				end)

			promise:cancel()
			promise:cancel() -- Twice to check call counts

			expect(callCount).to.equal(0)
			expect(finallyCallCount).to.equal(1)
			expect(promise:getStatus()).to.equal(Promise.Status.Cancelled)
		end)

		it("should call the cancellation hook once", function()
			local callCount = 0

			local promise = Promise.new(function(resolve, reject, onCancel)
				onCancel(function()
					callCount = callCount + 1
				end)
			end)

			promise:cancel()
			promise:cancel() -- Twice to check call count

			expect(callCount).to.equal(1)
		end)

		it("should propagate cancellations", function()
			local promise = Promise.new(function() end)

			local consumer1 = promise:andThen()
			local consumer2 = promise:andThen()

			expect(promise:getStatus()).to.equal(Promise.Status.Started)
			expect(consumer1:getStatus()).to.equal(Promise.Status.Started)
			expect(consumer2:getStatus()).to.equal(Promise.Status.Started)

			consumer1:cancel()

			expect(promise:getStatus()).to.equal(Promise.Status.Started)
			expect(consumer1:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(consumer2:getStatus()).to.equal(Promise.Status.Started)

			consumer2:cancel()

			expect(promise:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(consumer1:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(consumer2:getStatus()).to.equal(Promise.Status.Cancelled)
		end)

		it("should affect downstream promises", function()
			local promise = Promise.new(function() end)
			local consumer = promise:andThen()

			promise:cancel()

			expect(consumer:getStatus()).to.equal(Promise.Status.Cancelled)
		end)

		it("should track consumers", function()
			local pending = Promise.new(function() end)
			local p0 = Promise.resolve()
			local p1 = p0:finally(function()
				return pending
			end)
			local p2 = Promise.new(function(resolve)
				resolve(p1)
			end)
			local p3 = p2:andThen(function() end)

			expect(p1._parent).to.never.equal(p0)
			expect(p2._parent).to.never.equal(p1)
			expect(p2._consumers[p3]).to.be.ok()
			expect(p3._parent).to.equal(p2)
		end)

		it("should cancel resolved pending promises", function()
			local p1 = Promise.new(function() end)

			local p2 = Promise.new(function(resolve)
				resolve(p1)
			end):finally(function() end)

			p2:cancel()

			expect(p1._status).to.equal(Promise.Status.Cancelled)
			expect(p2._status).to.equal(Promise.Status.Cancelled)
		end)
	end)

	describe("Promise:finally", function()
		it("should be called upon resolve, reject, or cancel", function()
			local callCount = 0

			local function finally()
				callCount = callCount + 1
			end

			-- Resolved promise
			Promise.new(function(resolve, reject)
				resolve()
			end):finally(finally)

			-- Chained promise
			Promise.resolve():andThen(function() end):finally(finally):finally(finally)

			-- Rejected promise
			Promise.reject():finally(finally)

			local cancelledPromise = Promise.new(function() end):finally(finally)
			cancelledPromise:cancel()

			expect(callCount).to.equal(5)
		end)

		it("should be a child of the parent Promise", function()
			local p1 = Promise.new(function() end)
			local p2 = p1:finally(function() end)

			expect(p2._parent).to.equal(p1)
			expect(p1._consumers[p2]).to.equal(true)
		end)

		it("should forward return values", function()
			local value

			Promise.resolve()
				:finally(function()
					return 1
				end)
				:andThen(function(v)
					value = v
				end)

			expect(value).to.equal(1)
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
				Promise.all({ {}, {}, {} })
			end).to.throw()
		end)

		it("should wait for all promises to be resolved and return their values", function()
			local resolveFunctions = {}

			local testValuesLength, testValues = pack(1, "A string", nil, false)

			local promises = {}

			for i = 1, testValuesLength do
				promises[i] = Promise.new(function(resolve)
					resolveFunctions[i] = { resolve, testValues[i] }
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

			local combinedPromise = Promise.all({ a, b })

			expect(combinedPromise:getStatus()).to.equal(Promise.Status.Started)

			rejectA("baz", "qux")
			resolveB("foo", "bar")

			local resultLength, result = pack(combinedPromise:_unwrap())
			local success, first, second = unpack(result, 1, resultLength)

			expect(resultLength).to.equal(3)
			expect(success).to.equal(false)
			expect(first).to.equal("baz")
			expect(second).to.equal("qux")
			expect(b:getStatus()).to.equal(Promise.Status.Cancelled)
		end)

		it("should not resolve if resolved after rejecting", function()
			local rejectA
			local resolveB

			local a = Promise.new(function(_, reject)
				rejectA = reject
			end)

			local b = Promise.new(function(resolve)
				resolveB = resolve
			end)

			local combinedPromise = Promise.all({ a, b })

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

			local b = Promise.new(function(_, reject)
				rejectB = reject
			end)

			local combinedPromise = Promise.all({ a, b })

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

		it("should error if a non-array table is passed in", function()
			local ok, err = pcall(function()
				Promise.all(Promise.new(function() end))
			end)

			expect(ok).to.be.ok()
			expect(err:find("Non%-promise")).to.be.ok()
		end)

		it("should cancel pending promises if one rejects", function()
			local p = Promise.new(function() end)
			expect(Promise.all({
				Promise.resolve(),
				Promise.reject(),
				p,
			}):getStatus()).to.equal(Promise.Status.Rejected)
			expect(p:getStatus()).to.equal(Promise.Status.Cancelled)
		end)

		it("should cancel promises if it is cancelled", function()
			local p = Promise.new(function() end)
			p:andThen(function() end)

			local promises = {
				Promise.new(function() end),
				Promise.new(function() end),
				p,
			}

			Promise.all(promises):cancel()

			expect(promises[1]:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(promises[2]:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(promises[3]:getStatus()).to.equal(Promise.Status.Started)
		end)
	end)

	describe("Promise.fold", function()
		it("should return the initial value in a promise when the list is empty", function()
			local initialValue = {}
			local result = Promise.fold({}, function()
				error("should not be called")
			end, initialValue)

			expect(Promise.is(result)).to.equal(true)
			expect(result:getStatus()).to.equal(Promise.Status.Resolved)
			expect(result:expect()).to.equal(initialValue)
		end)

		it("should accept promises in the list", function()
			local resolve

			local sum = Promise.fold({ Promise.new(function(r)
				resolve = r
			end), 2, 3 }, function(sum, element)
				return sum + element
			end, 0)

			resolve(1)

			expect(Promise.is(sum)).to.equal(true)
			expect(sum:getStatus()).to.equal(Promise.Status.Resolved)
			expect(sum:expect()).to.equal(6)
		end)

		it("should always return a promise even if the list or reducer don't use them", function()
			local sum = Promise.fold({ 1, 2, 3 }, function(sum, element, index)
				if index == 2 then
					return Promise.delay(1):andThenReturn(sum + element)
				else
					return sum + element
				end
			end, 0)
			expect(Promise.is(sum)).to.equal(true)
			expect(sum:getStatus()).to.equal(Promise.Status.Started)
			advanceTime(2)
			expect(sum:getStatus()).to.equal(Promise.Status.Resolved)
			expect(sum:expect()).to.equal(6)
		end)

		it("should return the first rejected promise", function()
			local errorMessage = "foo"
			local sum = Promise.fold({ 1, 2, 3 }, function(sum, element, index)
				if index == 2 then
					return Promise.reject(errorMessage)
				else
					return sum + element
				end
			end, 0)
			expect(Promise.is(sum)).to.equal(true)
			local status, rejection = sum:awaitStatus()
			expect(status).to.equal(Promise.Status.Rejected)
			expect(rejection).to.equal(errorMessage)
		end)

		it("should return the first canceled promise", function()
			local secondPromise
			local sum = Promise.fold({ 1, 2, 3 }, function(sum, element, index)
				if index == 1 then
					return sum + element
				elseif index == 2 then
					secondPromise = Promise.delay(1):andThenReturn(sum + element)
					return secondPromise
				else
					error("this should not run if the promise is cancelled")
				end
			end, 0)
			expect(Promise.is(sum)).to.equal(true)
			expect(sum:getStatus()).to.equal(Promise.Status.Started)
			secondPromise:cancel()
			expect(sum:getStatus()).to.equal(Promise.Status.Cancelled)
		end)
	end)

	describe("Promise.race", function()
		it("should resolve with the first settled value", function()
			local promise = Promise.race({
				Promise.resolve(1),
				Promise.resolve(2),
			}):andThen(function(value)
				expect(value).to.equal(1)
			end)

			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
		end)

		it("should cancel other promises", function()
			local promise = Promise.new(function() end)
			promise:andThen(function() end)
			local promises = {
				promise,
				Promise.new(function() end),
				Promise.new(function(resolve)
					resolve(2)
				end),
			}

			local promise = Promise.race(promises)

			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(promise._values[1]).to.equal(2)
			expect(promises[1]:getStatus()).to.equal(Promise.Status.Started)
			expect(promises[2]:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(promises[3]:getStatus()).to.equal(Promise.Status.Resolved)

			local p = Promise.new(function() end)
			expect(Promise.race({
				Promise.reject(),
				Promise.resolve(),
				p,
			}):getStatus()).to.equal(Promise.Status.Rejected)
			expect(p:getStatus()).to.equal(Promise.Status.Cancelled)
		end)

		it("should error if a non-array table is passed in", function()
			local ok, err = pcall(function()
				Promise.race(Promise.new(function() end))
			end)

			expect(ok).to.be.ok()
			expect(err:find("Non%-promise")).to.be.ok()
		end)

		it("should cancel promises if it is cancelled", function()
			local p = Promise.new(function() end)
			p:andThen(function() end)

			local promises = {
				Promise.new(function() end),
				Promise.new(function() end),
				p,
			}

			Promise.race(promises):cancel()

			expect(promises[1]:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(promises[2]:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(promises[3]:getStatus()).to.equal(Promise.Status.Started)
		end)
	end)

	describe("Promise.promisify", function()
		it("should wrap functions", function()
			local function test(n)
				return n + 1
			end

			local promisified = Promise.promisify(test)
			local promise = promisified(1)
			local success, result = promise:_unwrap()

			expect(success).to.equal(true)
			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(result).to.equal(2)
		end)

		it("should catch errors after a yield", function()
			local bindable = Instance.new("BindableEvent")
			local test = Promise.promisify(function()
				bindable.Event:Wait()
				error("errortext")
			end)

			local promise = test()

			expect(promise:getStatus()).to.equal(Promise.Status.Started)
			bindable:Fire()
			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(tostring(promise._values[1]):find("errortext")).to.be.ok()
		end)
	end)

	describe("Promise.tap", function()
		it("should thread through values", function()
			local first, second

			Promise.resolve(1)
				:andThen(function(v)
					return v + 1
				end)
				:tap(function(v)
					first = v
					return v + 1
				end)
				:andThen(function(v)
					second = v
				end)

			expect(first).to.equal(2)
			expect(second).to.equal(2)
		end)

		it("should chain onto promises", function()
			local resolveInner, finalValue

			local promise = Promise.resolve(1)
				:tap(function()
					return Promise.new(function(resolve)
						resolveInner = resolve
					end)
				end)
				:andThen(function(v)
					finalValue = v
				end)

			expect(promise:getStatus()).to.equal(Promise.Status.Started)
			expect(finalValue).to.never.be.ok()

			resolveInner(1)

			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(finalValue).to.equal(1)
		end)
	end)

	describe("Promise.try", function()
		it("should catch synchronous errors", function()
			local errorText
			Promise.try(function()
				error("errortext")
			end):catch(function(e)
				errorText = tostring(e)
			end)

			expect(errorText:find("errortext")).to.be.ok()
		end)

		it("should reject with error objects", function()
			local object = {}
			local success, value = Promise.try(function()
				error(object)
			end):_unwrap()

			expect(success).to.equal(false)
			expect(value).to.equal(object)
		end)

		it("should catch asynchronous errors", function()
			local bindable = Instance.new("BindableEvent")
			local promise = Promise.try(function()
				bindable.Event:Wait()
				error("errortext")
			end)

			expect(promise:getStatus()).to.equal(Promise.Status.Started)
			bindable:Fire()
			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(tostring(promise._values[1]):find("errortext")).to.be.ok()
		end)
	end)

	describe("Promise:andThenReturn", function()
		it("should return the given values", function()
			local value1, value2

			Promise.resolve():andThenReturn(1, 2):andThen(function(one, two)
				value1 = one
				value2 = two
			end)

			expect(value1).to.equal(1)
			expect(value2).to.equal(2)
		end)
	end)

	describe("Promise:doneReturn", function()
		it("should return the given values", function()
			local value1, value2

			Promise.resolve():doneReturn(1, 2):andThen(function(one, two)
				value1 = one
				value2 = two
			end)

			expect(value1).to.equal(1)
			expect(value2).to.equal(2)
		end)
	end)

	describe("Promise:andThenCall", function()
		it("should call the given function with arguments", function()
			local value1, value2
			Promise.resolve():andThenCall(function(a, b)
				value1 = a
				value2 = b
			end, 3, 4)

			expect(value1).to.equal(3)
			expect(value2).to.equal(4)
		end)
	end)

	describe("Promise:doneCall", function()
		it("should call the given function with arguments", function()
			local value1, value2
			Promise.resolve():doneCall(function(a, b)
				value1 = a
				value2 = b
			end, 3, 4)

			expect(value1).to.equal(3)
			expect(value2).to.equal(4)
		end)
	end)

	describe("Promise:done", function()
		it("should trigger on resolve or cancel", function()
			local promise = Promise.new(function() end)
			local value

			local p = promise:done(function()
				value = true
			end)

			expect(value).to.never.be.ok()
			promise:cancel()
			expect(p:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(value).to.equal(true)

			local never, always
			Promise.reject()
				:done(function()
					never = true
				end)
				:finally(function()
					always = true
				end)

			expect(never).to.never.be.ok()
			expect(always).to.be.ok()
		end)
	end)

	describe("Promise.some", function()
		it("should resolve once the goal is reached", function()
			local p = Promise.some({
				Promise.resolve(1),
				Promise.reject(),
				Promise.resolve(2),
			}, 2)
			expect(p:getStatus()).to.equal(Promise.Status.Resolved)
			expect(p._values[1][1]).to.equal(1)
			expect(p._values[1][2]).to.equal(2)
		end)

		it("should error if the goal can't be reached", function()
			expect(Promise.some({
				Promise.resolve(),
				Promise.reject(),
			}, 2):getStatus()).to.equal(Promise.Status.Rejected)

			local reject
			local p = Promise.some({
				Promise.resolve(),
				Promise.new(function(_, r)
					reject = r
				end),
			}, 2)

			expect(p:getStatus()).to.equal(Promise.Status.Started)
			reject("foo")
			expect(p:getStatus()).to.equal(Promise.Status.Rejected)
			expect(p._values[1]).to.equal("foo")
		end)

		it("should cancel pending Promises once the goal is reached", function()
			local resolve
			local pending1 = Promise.new(function() end)
			local pending2 = Promise.new(function(r)
				resolve = r
			end)

			local some = Promise.some({
				pending1,
				pending2,
				Promise.resolve(),
			}, 2)

			expect(some:getStatus()).to.equal(Promise.Status.Started)
			expect(pending1:getStatus()).to.equal(Promise.Status.Started)
			expect(pending2:getStatus()).to.equal(Promise.Status.Started)

			resolve()

			expect(some:getStatus()).to.equal(Promise.Status.Resolved)
			expect(pending1:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(pending2:getStatus()).to.equal(Promise.Status.Resolved)
		end)

		it("should error if passed a non-number", function()
			expect(function()
				Promise.some({}, "non-number")
			end).to.throw()
		end)

		it("should return an empty array if amount is 0", function()
			local p = Promise.some({
				Promise.resolve(2),
			}, 0)

			expect(p:getStatus()).to.equal(Promise.Status.Resolved)
			expect(#p._values[1]).to.equal(0)
		end)

		it("should not return extra values", function()
			local p = Promise.some({
				Promise.resolve(1),
				Promise.resolve(2),
				Promise.resolve(3),
				Promise.resolve(4),
			}, 2)

			expect(p:getStatus()).to.equal(Promise.Status.Resolved)
			expect(#p._values[1]).to.equal(2)
			expect(p._values[1][1]).to.equal(1)
			expect(p._values[1][2]).to.equal(2)
		end)

		it("should cancel promises if it is cancelled", function()
			local p = Promise.new(function() end)
			p:andThen(function() end)

			local promises = {
				Promise.new(function() end),
				Promise.new(function() end),
				p,
			}

			Promise.some(promises, 3):cancel()

			expect(promises[1]:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(promises[2]:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(promises[3]:getStatus()).to.equal(Promise.Status.Started)
		end)

		describe("Promise.any", function()
			it("should return the value directly", function()
				local p = Promise.any({
					Promise.reject(),
					Promise.reject(),
					Promise.resolve(1),
				})

				expect(p:getStatus()).to.equal(Promise.Status.Resolved)
				expect(p._values[1]).to.equal(1)
			end)

			it("should error if all are rejected", function()
				expect(Promise.any({
					Promise.reject(),
					Promise.reject(),
					Promise.reject(),
				}):getStatus()).to.equal(Promise.Status.Rejected)
			end)
		end)
	end)

	describe("Promise.allSettled", function()
		it("should resolve with an array of PromiseStatuses", function()
			local reject
			local p = Promise.allSettled({
				Promise.resolve(),
				Promise.reject(),
				Promise.resolve(),
				Promise.new(function(_, r)
					reject = r
				end),
			})

			expect(p:getStatus()).to.equal(Promise.Status.Started)
			reject()
			expect(p:getStatus()).to.equal(Promise.Status.Resolved)
			expect(p._values[1][1]).to.equal(Promise.Status.Resolved)
			expect(p._values[1][2]).to.equal(Promise.Status.Rejected)
			expect(p._values[1][3]).to.equal(Promise.Status.Resolved)
			expect(p._values[1][4]).to.equal(Promise.Status.Rejected)
		end)

		it("should cancel promises if it is cancelled", function()
			local p = Promise.new(function() end)
			p:andThen(function() end)

			local promises = {
				Promise.new(function() end),
				Promise.new(function() end),
				p,
			}

			Promise.allSettled(promises):cancel()

			expect(promises[1]:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(promises[2]:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(promises[3]:getStatus()).to.equal(Promise.Status.Started)
		end)
	end)

	describe("Promise:await", function()
		it("should return the correct values", function()
			local promise = Promise.resolve(5, 6, nil, 7)

			local a, b, c, d, e = promise:await()

			expect(a).to.equal(true)
			expect(b).to.equal(5)
			expect(c).to.equal(6)
			expect(d).to.equal(nil)
			expect(e).to.equal(7)
		end)
	end)

	describe("Promise:expect", function()
		it("should throw the correct values", function()
			local rejectionValue = {}
			local promise = Promise.reject(rejectionValue)

			local success, value = pcall(function()
				promise:expect()
			end)

			expect(success).to.equal(false)
			expect(value).to.equal(rejectionValue)
		end)
	end)

	describe("Promise:now", function()
		it("should resolve if the Promise is resolved", function()
			local success, value = Promise.resolve("foo"):now():_unwrap()

			expect(success).to.equal(true)
			expect(value).to.equal("foo")
		end)

		it("should reject if the Promise is not resolved", function()
			local success, value = Promise.new(function() end):now():_unwrap()

			expect(success).to.equal(false)
			expect(Promise.Error.isKind(value, "NotResolvedInTime")).to.equal(true)
		end)

		it("should reject with a custom rejection value", function()
			local success, value = Promise.new(function() end):now("foo"):_unwrap()

			expect(success).to.equal(false)
			expect(value).to.equal("foo")
		end)
	end)

	describe("Promise.each", function()
		it("should iterate", function()
			local ok, result = Promise.each({
				"foo",
				"bar",
				"baz",
				"qux",
			}, function(...)
				return { ... }
			end):_unwrap()

			expect(ok).to.equal(true)
			expect(result[1][1]).to.equal("foo")
			expect(result[1][2]).to.equal(1)
			expect(result[2][1]).to.equal("bar")
			expect(result[2][2]).to.equal(2)
			expect(result[3][1]).to.equal("baz")
			expect(result[3][2]).to.equal(3)
			expect(result[4][1]).to.equal("qux")
			expect(result[4][2]).to.equal(4)
		end)

		it("should iterate serially", function()
			local resolves = {}
			local callCounts = {}

			local promise = Promise.each({
				"foo",
				"bar",
				"baz",
			}, function(value, index)
				callCounts[index] = (callCounts[index] or 0) + 1

				return Promise.new(function(resolve)
					table.insert(resolves, function()
						resolve(value:upper())
					end)
				end)
			end)

			expect(promise:getStatus()).to.equal(Promise.Status.Started)
			expect(#resolves).to.equal(1)
			expect(callCounts[1]).to.equal(1)
			expect(callCounts[2]).to.never.be.ok()

			table.remove(resolves, 1)()

			expect(promise:getStatus()).to.equal(Promise.Status.Started)
			expect(#resolves).to.equal(1)
			expect(callCounts[1]).to.equal(1)
			expect(callCounts[2]).to.equal(1)
			expect(callCounts[3]).to.never.be.ok()

			table.remove(resolves, 1)()

			expect(promise:getStatus()).to.equal(Promise.Status.Started)
			expect(callCounts[1]).to.equal(1)
			expect(callCounts[2]).to.equal(1)
			expect(callCounts[3]).to.equal(1)

			table.remove(resolves, 1)()

			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(type(promise._values[1])).to.equal("table")
			expect(type(promise._values[2])).to.equal("nil")

			local result = promise._values[1]

			expect(result[1]).to.equal("FOO")
			expect(result[2]).to.equal("BAR")
			expect(result[3]).to.equal("BAZ")
		end)

		it("should reject with the value if the predicate promise rejects", function()
			local promise = Promise.each({ 1, 2, 3 }, function()
				return Promise.reject("foobar")
			end)

			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(promise._values[1]).to.equal("foobar")
		end)

		it("should allow Promises to be in the list and wait when it gets to them", function()
			local innerResolve
			local innerPromise = Promise.new(function(resolve)
				innerResolve = resolve
			end)

			local promise = Promise.each({
				innerPromise,
			}, function(value)
				return value * 2
			end)

			expect(promise:getStatus()).to.equal(Promise.Status.Started)

			innerResolve(2)

			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(promise._values[1][1]).to.equal(4)
		end)

		it("should reject with the value if a Promise from the list rejects", function()
			local called = false
			local promise = Promise.each({ 1, 2, Promise.reject("foobar") }, function(value)
				called = true
				return "never"
			end)

			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(promise._values[1]).to.equal("foobar")
			expect(called).to.equal(false)
		end)

		it("should reject immediately if there's a cancelled Promise in the list initially", function()
			local cancelled = Promise.new(function() end)
			cancelled:cancel()

			local called = false
			local promise = Promise.each({ 1, 2, cancelled }, function()
				called = true
			end)

			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(called).to.equal(false)
			expect(promise._values[1].kind).to.equal(Promise.Error.Kind.AlreadyCancelled)
		end)

		it("should stop iteration if Promise.each is cancelled", function()
			local callCounts = {}

			local promise = Promise.each({
				"foo",
				"bar",
				"baz",
			}, function(value, index)
				callCounts[index] = (callCounts[index] or 0) + 1

				return Promise.new(function() end)
			end)

			expect(promise:getStatus()).to.equal(Promise.Status.Started)
			expect(callCounts[1]).to.equal(1)
			expect(callCounts[2]).to.never.be.ok()

			promise:cancel()

			expect(promise:getStatus()).to.equal(Promise.Status.Cancelled)
			expect(callCounts[1]).to.equal(1)
			expect(callCounts[2]).to.never.be.ok()
		end)

		it("should cancel the Promise returned from the predicate if Promise.each is cancelled", function()
			local innerPromise

			local promise = Promise.each({
				"foo",
				"bar",
				"baz",
			}, function(value, index)
				innerPromise = Promise.new(function() end)
				return innerPromise
			end)

			promise:cancel()

			expect(innerPromise:getStatus()).to.equal(Promise.Status.Cancelled)
		end)

		it("should cancel Promises in the list if Promise.each is cancelled", function()
			local innerPromise = Promise.new(function() end)

			local promise = Promise.each({ innerPromise }, function() end)

			promise:cancel()

			expect(innerPromise:getStatus()).to.equal(Promise.Status.Cancelled)
		end)
	end)

	describe("Promise.retry", function()
		it("should retry N times", function()
			local counter = 0

			local promise = Promise.retry(function(parameter)
				expect(parameter).to.equal("foo")

				counter = counter + 1

				if counter == 5 then
					return Promise.resolve("ok")
				end

				return Promise.reject("fail")
			end, 5, "foo")

			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(promise._values[1]).to.equal("ok")
		end)

		it("should reject if threshold is exceeded", function()
			local promise = Promise.retry(function()
				return Promise.reject("fail")
			end, 5)

			expect(promise:getStatus()).to.equal(Promise.Status.Rejected)
			expect(promise._values[1]).to.equal("fail")
		end)
	end)

	describe("Promise.retryWithDelay", function()
		it("should retry after a delay", function()
			local counter = 0

			local promise = Promise.retryWithDelay(function(parameter)
				expect(parameter).to.equal("foo")

				counter = counter + 1

				if counter == 3 then
					return Promise.resolve("ok")
				end

				return Promise.reject("fail")
			end, 3, 10, "foo")

			expect(counter).to.equal(1)

			advanceTime(11)

			expect(counter).to.equal(2)

			advanceTime(11)

			expect(counter).to.equal(3)

			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(promise._values[1]).to.equal("ok")
		end)
	end)

	describe("Promise.fromEvent", function()
		it("should convert a Promise into an event", function()
			local event = Instance.new("BindableEvent")

			local promise = Promise.fromEvent(event.Event)

			expect(promise:getStatus()).to.equal(Promise.Status.Started)

			event:Fire("foo")

			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(promise._values[1]).to.equal("foo")
		end)

		it("should convert a Promise into an event with the predicate", function()
			local event = Instance.new("BindableEvent")

			local promise = Promise.fromEvent(event.Event, function(param)
				return param == "foo"
			end)

			expect(promise:getStatus()).to.equal(Promise.Status.Started)

			event:Fire("bar")

			expect(promise:getStatus()).to.equal(Promise.Status.Started)

			event:Fire("foo")

			expect(promise:getStatus()).to.equal(Promise.Status.Resolved)
			expect(promise._values[1]).to.equal("foo")
		end)
	end)

	describe("Promise.is", function()
		it("should work with current version", function()
			local promise = Promise.resolve(1)

			expect(Promise.is(promise)).to.equal(true)
		end)

		it("should work with any object with an andThen", function()
			local obj = {
				andThen = function()
					return 1
				end,
			}

			expect(Promise.is(obj)).to.equal(true)
		end)

		it("should work with older promises", function()
			local OldPromise = {}
			OldPromise.prototype = {}
			OldPromise.__index = OldPromise.prototype

			function OldPromise.prototype:andThen() end

			local oldPromise = setmetatable({}, OldPromise)

			expect(Promise.is(oldPromise)).to.equal(true)
		end)
	end)
end
