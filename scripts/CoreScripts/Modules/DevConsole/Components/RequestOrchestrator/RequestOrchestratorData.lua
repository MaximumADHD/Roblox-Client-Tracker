--!nonstrict
-- Event-sourcing reducers over one model (Data.new()); MainView calls one per
-- signal then setState({}). New features add reducers here, not in the view.
local Data = {}

local WINDOW_DURATION = 30

-- Ends the open attempt; the gap to the next send reads as retry backoff.
local function closeAttempt(batch)
	local attempts = batch.attempts
	local last = attempts and attempts[#attempts]
	if last and not last.finish then
		last.finish = tick()
	end
end

function Data.new()
	return {
		now = tick(),
		allTypes = {},
		typeSeen = {},
		batchesByType = {},
		-- [orchType] = { batchId, ops = {msg,...}, retryOps = {"retry-N",...}, createdTime } | nil
		queues = {},
		-- These two persist per type so they survive a queue being nil-ed on full drain.
		observedMaxByType = {},
		lastBatchSizeByType = {},
		-- [orchType] = { items = { { key = message, lastHitTime } , ... } }
		cacheByType = {},
	}
end

-- Grid capacity; must equal OrchestratorRow's CACHE_COLUMNS * CACHE_ROWS.
local CACHE_MAX_ITEMS = 48

-- Appends orchType on first sight; returns its index, or nil if already seen.
function Data.observeType(model, orchType)
	if model.typeSeen[orchType] then
		return nil
	end
	model.typeSeen[orchType] = true
	table.insert(model.allTypes, orchType)
	return #model.allTypes
end

-- New indices only (seen types skipped), so the caller selects all seeds in one setState.
function Data.observeTypes(model, orchTypes)
	local newIndices = {}
	for _, orchType in ipairs(orchTypes) do
		local newIndex = Data.observeType(model, orchType)
		if newIndex then
			table.insert(newIndices, newIndex)
		end
	end
	return newIndices
end

function Data.batchesFor(model, orchType)
	if not model.batchesByType[orchType] then
		model.batchesByType[orchType] = {}
	end
	return model.batchesByType[orchType]
end

function Data.registerBatch(model, orchType, data)
	local batches = Data.batchesFor(model, orchType)
	batches[tostring(data.batchId)] = {
		state = "pending",
		sentTime = nil,
		settleTime = nil,
		operationCount = 0,
		attempts = {},
	}
end

-- Each send opens a new attempt interval; a 429 re-send appends, never overwrites.
function Data.openSendAttempt(model, orchType, data)
	local batches = Data.batchesFor(model, orchType)
	local key = tostring(data.batchId)
	local batch = batches[key]
	if not batch then
		batch = { attempts = {} }
		batches[key] = batch
	end
	batch.state = "inflight"
	local now = tick()
	batch.attempts = batch.attempts or {}
	table.insert(batch.attempts, { start = now, finish = nil })
	batch.sentTime = batch.sentTime or now
	batch.operationCount = data.operationCount or 0
end

function Data.settleBatch(model, orchType, data)
	local typeBatches = model.batchesByType[orchType]
	if not typeBatches then
		return
	end
	local batch = typeBatches[tostring(data.batchId)]
	if not batch then
		return
	end
	closeAttempt(batch)
	batch.settleTime = tick()
	batch.state = if data.success then "success" else "failure"
	batch.httpStatus = data.httpStatus
end

function Data.reclassifyOnRetry(model, orchType, data)
	local typeBatches = model.batchesByType[orchType]
	if not typeBatches then
		return
	end
	local batch = typeBatches[tostring(data.batchId)]
	if not batch then
		return
	end
	closeAttempt(batch)
	-- A simulated-failure retry lands the failure as batch id-1 and this as a
	-- fresh one; recolor that predecessor retrying so only a terminal failure stays red.
	if batch.state == "pending" and not batch.sentTime then
		local prev = typeBatches[tostring(data.batchId - 1)]
		if prev and prev.state == "failure" then
			prev.state = "retrying"
		end
	end
	batch.state = "retrying"
	batch.attemptNumber = data.attemptNumber
end

function Data.markExhausted(model, orchType, data)
	local typeBatches = model.batchesByType[orchType]
	if not typeBatches then
		return
	end
	local batch = typeBatches[tostring(data.batchId)]
	if batch then
		closeAttempt(batch)
		batch.state = "exhausted"
		batch.settleTime = tick()
	end
end

function Data.trackQueueOnCreated(model, orchType, data)
	if data.maxBatchSize then
		model.observedMaxByType[orchType] = data.maxBatchSize
	end
	local existing = model.queues[orchType]
	if existing then
		existing.batchId = data.batchId
	else
		model.queues[orchType] = {
			batchId = data.batchId,
			ops = {},
			createdTime = tick(),
			retryOps = {},
		}
	end
end

-- Drains sent ops FIFO, retries before pending. Records the size because
-- BatchRetrying carries no operationCount.
function Data.drainQueueOnSent(model, orchType, data)
	local queue = model.queues[orchType]
	local sent = data.operationCount or (queue and (#queue.retryOps + #queue.ops)) or 0
	model.lastBatchSizeByType[orchType] = sent
	if queue then
		for _ = 1, sent do
			if #queue.retryOps > 0 then
				table.remove(queue.retryOps, 1)
			elseif #queue.ops > 0 then
				table.remove(queue.ops, 1)
			else
				break
			end
		end
		if #queue.ops == 0 and #queue.retryOps == 0 then
			model.queues[orchType] = nil
		end
	end
end

-- Requeues only the failed batch's ops (last sent size) as retries; ops queued
-- behind it stay pending.
function Data.requeueRetryOps(model, orchType, data)
	local queue = model.queues[orchType]
	if not queue then
		queue = {
			batchId = data.batchId,
			ops = {},
			createdTime = tick(),
			retryOps = {},
		}
		model.queues[orchType] = queue
	end
	local retryCount = model.lastBatchSizeByType[orchType] or data.operationCount or 0
	queue.retryOps = {}
	for i = 1, retryCount do
		table.insert(queue.retryOps, "retry-" .. i)
	end
end

-- Clears retries on exhaustion; pending ops behind them stay.
function Data.clearQueueOnExhausted(model, orchType)
	local queue = model.queues[orchType]
	if queue then
		queue.retryOps = {}
		if #queue.ops == 0 then
			model.queues[orchType] = nil
		end
	end
end

-- `message` is free-text, not a stable id.
function Data.enqueueOperation(model, orchType, data)
	local queue = model.queues[orchType]
	if not queue then
		queue = { batchId = data.batchId, ops = {}, createdTime = tick(), retryOps = {} }
		model.queues[orchType] = queue
	end
	table.insert(queue.ops, data.message or "?")
end

-- Keyed by `message` (a heuristic key), deduped; FIFO-evicts the oldest past capacity.
function Data.recordCacheItemAdded(model, orchType, data)
	local grid = model.cacheByType[orchType]
	if not grid then
		grid = { items = {} }
		model.cacheByType[orchType] = grid
	end
	local key = data.message or ""
	for _, item in ipairs(grid.items) do
		if item.key == key then
			return
		end
	end
	table.insert(grid.items, { key = key, lastHitTime = nil })
	if #grid.items > CACHE_MAX_ITEMS then
		table.remove(grid.items, 1)
	end
end

function Data.recordCacheHit(model, orchType, data)
	local grid = model.cacheByType[orchType]
	if not grid then
		grid = { items = {} }
		model.cacheByType[orchType] = grid
	end
	local key = data.message or ""
	for i = #grid.items, 1, -1 do
		if grid.items[i].key == key then
			grid.items[i].lastHitTime = tick()
			return
		end
	end
	table.insert(grid.items, { key = key, lastHitTime = tick() })
	if #grid.items > CACHE_MAX_ITEMS then
		table.remove(grid.items, 1)
	end
end

-- Advances now (tick(), matching the tick()-stamped attempt times) and culls
-- batches that scrolled off-window.
function Data.advanceTime(model)
	model.now = tick()
	local windowStart = model.now - WINDOW_DURATION
	for _, typeBatches in pairs(model.batchesByType) do
		for id, batch in pairs(typeBatches) do
			if batch.settleTime and batch.settleTime < windowStart then
				typeBatches[id] = nil
			end
		end
	end
end

return Data
