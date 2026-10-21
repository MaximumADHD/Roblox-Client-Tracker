local CorePackages = game:GetService("CorePackages")

local Data = require(script.Parent.RequestOrchestratorData)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local it = JestGlobals.it

local ORCH = "ProductInfo"

it("enqueueOperation appends the message and creates the queue on first enqueue", function()
	local model = Data.new()
	Data.enqueueOperation(model, ORCH, { message = "GetProductInfo(1)" })

	local queue = model.queues[ORCH]
	expect(queue).never.toBeNil()
	expect(#queue.ops).toBe(1)
	expect(queue.ops[1]).toBe("GetProductInfo(1)")
end)

it("enqueueOperation falls back to '?' when message is nil", function()
	local model = Data.new()
	Data.enqueueOperation(model, ORCH, {})
	expect(model.queues[ORCH].ops[1]).toBe("?")
end)

it("drainQueueOnSent drains operationCount ops FIFO and records lastBatchSize", function()
	local model = Data.new()
	Data.enqueueOperation(model, ORCH, { message = "a" })
	Data.enqueueOperation(model, ORCH, { message = "b" })
	Data.enqueueOperation(model, ORCH, { message = "c" })

	Data.drainQueueOnSent(model, ORCH, { operationCount = 2 })

	local queue = model.queues[ORCH]
	expect(#queue.ops).toBe(1)
	expect(queue.ops[1]).toBe("c")
	expect(model.lastBatchSizeByType[ORCH]).toBe(2)
end)

it("drainQueueOnSent drains retryOps before normal ops", function()
	local model = Data.new()
	Data.enqueueOperation(model, ORCH, { message = "pending" })
	model.lastBatchSizeByType[ORCH] = 2
	Data.requeueRetryOps(model, ORCH, {})

	-- retryOps = {retry-1, retry-2}, ops = {pending}; a send of 2 consumes
	-- both retries and leaves the pending op.
	Data.drainQueueOnSent(model, ORCH, { operationCount = 2 })

	local queue = model.queues[ORCH]
	expect(#queue.retryOps).toBe(0)
	expect(#queue.ops).toBe(1)
	expect(queue.ops[1]).toBe("pending")
end)

it("drainQueueOnSent nils the queue once fully drained", function()
	local model = Data.new()
	Data.enqueueOperation(model, ORCH, { message = "a" })
	Data.drainQueueOnSent(model, ORCH, { operationCount = 1 })
	expect(model.queues[ORCH]).toBeNil()
end)

it("requeueRetryOps builds lastBatchSize retry squares and leaves ops intact", function()
	local model = Data.new()
	Data.enqueueOperation(model, ORCH, { message = "still-pending" })
	model.lastBatchSizeByType[ORCH] = 3

	Data.requeueRetryOps(model, ORCH, { operationCount = 99 })

	local queue = model.queues[ORCH]
	expect(#queue.retryOps).toBe(3)
	expect(queue.retryOps[1]).toBe("retry-1")
	expect(#queue.ops).toBe(1)
	expect(queue.ops[1]).toBe("still-pending")
end)

it("clearQueueOnExhausted clears retryOps and nils the queue only when ops empty", function()
	local model = Data.new()
	model.lastBatchSizeByType[ORCH] = 1
	Data.requeueRetryOps(model, ORCH, {})
	Data.clearQueueOnExhausted(model, ORCH)
	expect(model.queues[ORCH]).toBeNil()

	local model2 = Data.new()
	Data.enqueueOperation(model2, ORCH, { message = "behind" })
	model2.lastBatchSizeByType[ORCH] = 1
	Data.requeueRetryOps(model2, ORCH, {})
	Data.clearQueueOnExhausted(model2, ORCH)

	local queue = model2.queues[ORCH]
	expect(queue).never.toBeNil()
	expect(#queue.retryOps).toBe(0)
	expect(#queue.ops).toBe(1)
end)

it("trackQueueOnCreated records observedMax and creates the queue", function()
	local model = Data.new()
	Data.trackQueueOnCreated(model, ORCH, { batchId = 7, maxBatchSize = 40 })

	expect(model.observedMaxByType[ORCH]).toBe(40)
	expect(model.queues[ORCH]).never.toBeNil()
	expect(model.queues[ORCH].batchId).toBe(7)
end)

it("recordCacheItemAdded appends a keyed square and creates the grid", function()
	local model = Data.new()
	Data.recordCacheItemAdded(model, ORCH, { message = "GetProductInfo(1)" })

	local items = model.cacheByType[ORCH].items
	expect(#items).toBe(1)
	expect(items[1].key).toBe("GetProductInfo(1)")
	expect(items[1].lastHitTime).toBeNil()
end)

it("recordCacheItemAdded dedupes a re-add of an existing key", function()
	local model = Data.new()
	Data.recordCacheItemAdded(model, ORCH, { message = "same" })
	Data.recordCacheItemAdded(model, ORCH, { message = "same" })
	expect(#model.cacheByType[ORCH].items).toBe(1)
end)

it("recordCacheItemAdded caps the grid at 48 by evicting the oldest", function()
	local model = Data.new()
	for i = 1, 50 do
		Data.recordCacheItemAdded(model, ORCH, { message = "k" .. i })
	end
	local items = model.cacheByType[ORCH].items
	expect(#items).toBe(48)
	-- k1 and k2 were evicted; k3 is now oldest.
	expect(items[1].key).toBe("k3")
	expect(items[48].key).toBe("k50")
end)

it("recordCacheHit reheats the matching square", function()
	local model = Data.new()
	Data.recordCacheItemAdded(model, ORCH, { message = "hot" })
	Data.recordCacheHit(model, ORCH, { message = "hot" })
	expect(model.cacheByType[ORCH].items[1].lastHitTime).never.toBeNil()
end)

it("recordCacheHit seeds a hot square when the grid is absent (warm cache after reopen)", function()
	local model = Data.new()
	Data.recordCacheHit(model, ORCH, { message = "resident" })

	local items = model.cacheByType[ORCH].items
	expect(#items).toBe(1)
	expect(items[1].key).toBe("resident")
	expect(items[1].lastHitTime).never.toBeNil()
end)

it("recordCacheHit seeds an unseen key into an existing grid", function()
	local model = Data.new()
	Data.recordCacheItemAdded(model, ORCH, { message = "present" })
	Data.recordCacheHit(model, ORCH, { message = "other" })

	local items = model.cacheByType[ORCH].items
	expect(#items).toBe(2)
	expect(items[1].lastHitTime).toBeNil()
	expect(items[2].key).toBe("other")
	expect(items[2].lastHitTime).never.toBeNil()
end)

it("recordCacheHit caps the seeded grid at 48 by evicting the oldest", function()
	local model = Data.new()
	for i = 1, 50 do
		Data.recordCacheHit(model, ORCH, { message = "k" .. i })
	end
	local items = model.cacheByType[ORCH].items
	expect(#items).toBe(48)
	expect(items[1].key).toBe("k3")
	expect(items[48].key).toBe("k50")
end)

it("registerBatch creates a pending batch keyed by batchId", function()
	local model = Data.new()
	Data.registerBatch(model, ORCH, { batchId = 1 })

	local batch = model.batchesByType[ORCH]["1"]
	expect(batch).never.toBeNil()
	expect(batch.state).toBe("pending")
	expect(batch.operationCount).toBe(0)
	expect(#batch.attempts).toBe(0)
	expect(batch.sentTime).toBeNil()
	expect(batch.settleTime).toBeNil()
end)

it("openSendAttempt marks inflight and opens attempt #1, auto-creating the batch", function()
	local model = Data.new()
	-- No prior registerBatch: exercises the create-if-missing branch.
	Data.openSendAttempt(model, ORCH, { batchId = 1, operationCount = 5 })

	local batch = model.batchesByType[ORCH]["1"]
	expect(batch.state).toBe("inflight")
	expect(#batch.attempts).toBe(1)
	expect(batch.attempts[1].start).never.toBeNil()
	expect(batch.attempts[1].finish).toBeNil()
	expect(batch.sentTime).never.toBeNil()
	expect(batch.operationCount).toBe(5)
end)

it("openSendAttempt re-send appends an attempt, keeps sentTime, updates operationCount", function()
	local model = Data.new()
	Data.registerBatch(model, ORCH, { batchId = 1 })
	Data.openSendAttempt(model, ORCH, { batchId = 1, operationCount = 5 })
	local firstSent = model.batchesByType[ORCH]["1"].sentTime

	Data.openSendAttempt(model, ORCH, { batchId = 1, operationCount = 3 })

	local batch = model.batchesByType[ORCH]["1"]
	expect(#batch.attempts).toBe(2)
	expect(batch.sentTime).toBe(firstSent)
	expect(batch.operationCount).toBe(3)
end)

it("settleBatch closes the open attempt and sets state from data.success", function()
	local successModel = Data.new()
	Data.registerBatch(successModel, ORCH, { batchId = 1 })
	Data.openSendAttempt(successModel, ORCH, { batchId = 1, operationCount = 1 })
	Data.settleBatch(successModel, ORCH, { batchId = 1, success = true, httpStatus = 200 })

	local ok = successModel.batchesByType[ORCH]["1"]
	expect(ok.state).toBe("success")
	expect(ok.settleTime).never.toBeNil()
	expect(ok.attempts[1].finish).never.toBeNil()
	expect(ok.httpStatus).toBe(200)

	local failModel = Data.new()
	Data.registerBatch(failModel, ORCH, { batchId = 1 })
	Data.openSendAttempt(failModel, ORCH, { batchId = 1, operationCount = 1 })
	Data.settleBatch(failModel, ORCH, { batchId = 1, success = false, httpStatus = 500 })

	local bad = failModel.batchesByType[ORCH]["1"]
	expect(bad.state).toBe("failure")
	expect(bad.httpStatus).toBe(500)
end)

it("settleBatch is a no-op for an unknown type or batch", function()
	local model = Data.new()
	Data.settleBatch(model, ORCH, { batchId = 99, success = true })
	expect(model.batchesByType[ORCH]).toBeNil()
end)

it("reclassifyOnRetry recolors a failed predecessor and marks the batch retrying", function()
	local model = Data.new()
	Data.registerBatch(model, ORCH, { batchId = 1 })
	model.batchesByType[ORCH]["1"].state = "failure"
	Data.registerBatch(model, ORCH, { batchId = 2 })

	Data.reclassifyOnRetry(model, ORCH, { batchId = 2, attemptNumber = 2 })

	expect(model.batchesByType[ORCH]["2"].state).toBe("retrying")
	expect(model.batchesByType[ORCH]["2"].attemptNumber).toBe(2)
	expect(model.batchesByType[ORCH]["1"].state).toBe("retrying")
end)

it("reclassifyOnRetry on a sent batch closes its attempt without touching a predecessor", function()
	local model = Data.new()
	Data.registerBatch(model, ORCH, { batchId = 1 })
	model.batchesByType[ORCH]["1"].state = "failure"
	Data.registerBatch(model, ORCH, { batchId = 2 })
	Data.openSendAttempt(model, ORCH, { batchId = 2, operationCount = 1 })

	Data.reclassifyOnRetry(model, ORCH, { batchId = 2, attemptNumber = 2 })

	expect(model.batchesByType[ORCH]["2"].state).toBe("retrying")
	expect(model.batchesByType[ORCH]["2"].attempts[1].finish).never.toBeNil()
	-- Predecessor untouched: the recolor branch requires pending + no sentTime.
	expect(model.batchesByType[ORCH]["1"].state).toBe("failure")
end)

it("markExhausted sets exhausted, records settleTime, and closes the attempt", function()
	local model = Data.new()
	Data.registerBatch(model, ORCH, { batchId = 1 })
	Data.openSendAttempt(model, ORCH, { batchId = 1, operationCount = 1 })

	Data.markExhausted(model, ORCH, { batchId = 1 })

	local batch = model.batchesByType[ORCH]["1"]
	expect(batch.state).toBe("exhausted")
	expect(batch.settleTime).never.toBeNil()
	expect(batch.attempts[1].finish).never.toBeNil()
end)

it("advanceTime culls settled batches past the window, keeps recent and in-flight", function()
	local model = Data.new()
	local batches = Data.batchesFor(model, ORCH)
	batches["old"] = { settleTime = model.now - 40 }
	batches["recent"] = { settleTime = model.now - 5 }
	batches["inflight"] = { settleTime = nil }

	Data.advanceTime(model)

	expect(model.batchesByType[ORCH]["old"]).toBeNil()
	expect(model.batchesByType[ORCH]["recent"]).never.toBeNil()
	expect(model.batchesByType[ORCH]["inflight"]).never.toBeNil()
	expect(model.now).toBeGreaterThan(0)
end)

it("observeType appends unseen types in order and returns their 1-based index", function()
	local model = Data.new()

	expect(Data.observeType(model, "ProductInfo")).toBe(1)
	expect(Data.observeType(model, "GamePassInfo")).toBe(2)

	expect(model.allTypes[1]).toBe("ProductInfo")
	expect(model.allTypes[2]).toBe("GamePassInfo")
end)

it("observeType returns nil and does not duplicate a type already seen", function()
	local model = Data.new()
	Data.observeType(model, "ProductInfo")

	expect(Data.observeType(model, "ProductInfo")).toBeNil()
	expect(#model.allTypes).toBe(1)
end)

it("observeTypes returns every newly appended index so all seed rows select", function()
	local model = Data.new()
	local indices = Data.observeTypes(model, { "ProductInfo", "GamePassInfo", "TopProducts" })

	expect(#indices).toBe(3)
	expect(indices[1]).toBe(1)
	expect(indices[2]).toBe(2)
	expect(indices[3]).toBe(3)
	expect(model.allTypes[3]).toBe("TopProducts")
end)

it("observeTypes skips already-seen types and returns only the new indices", function()
	local model = Data.new()
	Data.observeType(model, "ProductInfo")

	local indices = Data.observeTypes(model, { "ProductInfo", "GamePassInfo" })

	expect(#indices).toBe(1)
	expect(indices[1]).toBe(2)
	expect(#model.allTypes).toBe(2)
end)
