return function()
	local CorePackages = game:GetService("CorePackages")
	local PromiseUtilities = require(CorePackages.AppTempCommon.LuaApp.PromiseUtilities)
	local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
	local Result = require(CorePackages.AppTempCommon.LuaApp.Result)
	local TableUtilities = require(CorePackages.AppTempCommon.LuaApp.TableUtilities)

	describe("PromiseUtilities.Batch", function()
		it("should assert if input is not a list of Promises", function()
			expect(function()
				PromiseUtilities.Batch()
			end).to.throw()

			expect(function()
				PromiseUtilities.Batch(Promise.resolve(), Promise.resolve())
			end).to.throw()

			expect(function()
				PromiseUtilities.Batch({
					Promise.resolve(),
					"something else"
				})
			end).to.throw()
		end)

		it("should invoke the given resolve callback when all promises are finished", function()
			local promises = {
				[1] = Promise.resolve(),
				["Home"] = Promise.resolve()
			}
			local callCount = 0

			local batchedPromise = PromiseUtilities.Batch(promises):andThen(
				function()
					callCount = callCount + 1
				end
			)

			expect(batchedPromise).to.be.ok()
			expect(callCount).to.equal(1)
			expect(batchedPromise._status).to.equal(Promise.Status.Resolved)
		end)

		it("should not invoke any callbacks when one of the promises are not finished", function()
			local promises = {
				[1] = Promise.resolve(),
				["Home"] = Promise.new(function() end)
			}
			local callCount = 0

			local batchedPromise = PromiseUtilities.Batch(promises):andThen(
				function()
					callCount = callCount + 1
				end,

				function()
					callCount = callCount + 1
				end
			)

			expect(batchedPromise).to.be.ok()
			expect(callCount).to.equal(0)
			expect(batchedPromise._status).to.equal(Promise.Status.Started)
		end)

		it("should return the correct results of each individual promise", function()
			local promises = {
				[1] = Promise.resolve(5),
				["Home"] = Promise.reject("failed")
			}
			local promiseResults = nil

			local batchedPromise = PromiseUtilities.Batch(promises):andThen(
				function(results)
					promiseResults = results
				end
			)

			expect(batchedPromise).to.be.ok()
			expect(batchedPromise._status).to.equal(Promise.Status.Resolved)
			expect(TableUtilities.FieldCount(promiseResults)).to.equal(2)

			expect(Result.is(promiseResults[1])).to.equal(true)
			local success1, value1 = promiseResults[1]:unwrap()
			expect(success1).to.equal(true)
			expect(value1).to.equal(5)
			local isMatchCalled1 = false
			promiseResults[1]:match(function(result)
				expect(result).to.equal(5)
				isMatchCalled1 = true
			end,
			function()
				error("should not be called")
			end)
			expect(isMatchCalled1).to.equal(true)


			expect(Result.is(promiseResults["Home"])).to.equal(true)
			local success2, value2 = promiseResults["Home"]:unwrap()
			expect(success2).to.equal(false)
			expect(value2).to.equal("failed")
			local isMatchCalled2 = false
			promiseResults["Home"]:match(function()
				error("should not be called")
			end,
			function(err)
				expect(err).to.equal("failed")
				isMatchCalled2 = true
			end)
			expect(isMatchCalled2).to.equal(true)
		end)

		it("should return the correct results of each individual promise that resolved later", function()
			local resolveLater
			local rejectLater

			local promises = {
				[1] = Promise.new(function(resolve)
					resolveLater = resolve
				end),
				["Home"] = Promise.new(function(_, reject)
					rejectLater = reject
				end)
			}
			local promiseResults = nil

			local batchedPromise = PromiseUtilities.Batch(promises):andThen(
				function(results)
					promiseResults = results
				end
			)

			resolveLater(5)
			rejectLater("failed")

			expect(batchedPromise).to.be.ok()
			expect(batchedPromise._status).to.equal(Promise.Status.Resolved)
			expect(TableUtilities.FieldCount(promiseResults)).to.equal(2)

			expect(Result.is(promiseResults[1])).to.equal(true)
			local success1, value1 = promiseResults[1]:unwrap()
			expect(success1).to.equal(true)
			expect(value1).to.equal(5)

			expect(Result.is(promiseResults["Home"])).to.equal(true)
			local success2, value2 = promiseResults["Home"]:unwrap()
			expect(success2).to.equal(false)
			expect(value2).to.equal("failed")
		end)

		it("should resolve if given an empty list of promises", function()
			local emptyPromises = {}
			local callCount = 0

			local batchedPromise = PromiseUtilities.Batch(emptyPromises):andThen(
				function(results)
					callCount = callCount + 1
				end
			)

			expect(batchedPromise).to.be.ok()
			expect(callCount).to.equal(1)
			expect(batchedPromise._status).to.equal(Promise.Status.Resolved)
		end)
	end)

	describe("PromiseUtilities.CountResults", function()
		it("should count the results correctly", function()
			local emptyResults = {}

			local countResult = PromiseUtilities.CountResults(emptyResults)

			expect(countResult).to.be.ok()
			expect(countResult.successCount).to.equal(0)
			expect(countResult.failureCount).to.equal(0)
			expect(countResult.totalCount).to.equal(0)

			local promiseResults = { Result.success(0), Result.success(0), Result.error(1) }

			countResult = PromiseUtilities.CountResults(promiseResults)

			expect(countResult).to.be.ok()
			expect(countResult.successCount).to.equal(2)
			expect(countResult.failureCount).to.equal(1)
			expect(countResult.totalCount).to.equal(3)
		end)
	end)
end
