export type Options = {
	sampleCount: number?,
	minSampleCount: number?,
	maxSampleCount: number?,
	warmupCount: number?,
	iterationsPerSample: number?,
	targetSampleMs: number?,
	maxIterationsPerSample: number?,
	targetRelativeHalfWidth: number?,
	convergenceCheckInterval: number?,
	timeBudgetSeconds: number?,
	bootstrapResamples: number?,
	randomSeed: number?,
	clock: (() -> number)?,
	itemCounts: { number }?,
	queryCount: number?,
	measurementBatchSize: number?,
}

type Dependencies = {
	Layout: any,
	CollapsedEstimatedTree: any,
	OrderStatisticTree: any,
}

type BenchmarkStatsApi = {
	measure: (operation: () -> (), options: Options?) -> { [string]: any },
}

type BenchmarkContractApi = {
	create: (options: any) -> any,
}

local ResponsibilityCatalog = require(script.Parent.ResponsibilityCatalog)

local DEFAULT_ITEM_COUNTS = { 1000, 100000 }
local DEFAULT_QUERY_COUNT = 1000
local DEFAULT_MEASUREMENT_BATCH_SIZE = 20
local ITEM_LENGTH = 40

local function createTree(OrderStatisticTree, itemCount: number)
	local sizes = table.create(itemCount, ITEM_LENGTH)
	local tree = OrderStatisticTree.new(ITEM_LENGTH)
	tree.buildFromArray(sizes)
	return tree
end

local function measureOffsetQueries(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	queryCount: number,
	options: Options
)
	local tree = createTree(dependencies.OrderStatisticTree, itemCount)
	local contentLength = tree.totalSum()
	local checksum = 0
	local summary = benchmarkStats.measure(function()
		for queryIndex = 1, queryCount do
			local itemIndex = ((queryIndex * 7919) % itemCount) + 1
			checksum += tree.prefixSum(itemIndex)
			local offset = ((queryIndex * 104729) % contentLength)
			checksum += tree.indexAtPrefixSum(offset)
		end
	end, options)
	assert(checksum > 0, "offset query benchmark did not complete")
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "primitive",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.ViewportRange,
		timingClass = "isolated",
		workload = "size-tree-offset-queries",
		description = "Resolves item offsets and indices against the measured-layout size tree.",
		scale = {
			items = itemCount,
			queries = queryCount * 2,
		},
		timing = {
			unit = "ms",
			basis = "offsetQueryBatch",
			operationsPerSample = queryCount * 2,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			treeItems = itemCount,
		},
	})
end

local function measureCollapsedEstimateQueries(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	queryCount: number,
	options: Options
)
	local tree = dependencies.CollapsedEstimatedTree.new(ITEM_LENGTH)
	tree.buildFromMeasurements(itemCount, function()
		return nil
	end)
	local contentLength = tree.totalSum()
	local checksum = 0
	local summary = benchmarkStats.measure(function()
		for queryIndex = 1, queryCount do
			local itemIndex = ((queryIndex * 7919) % itemCount) + 1
			checksum += tree.prefixSum(itemIndex)
			local offset = ((queryIndex * 104729) % contentLength)
			checksum += tree.indexAtPrefixSum(offset)
		end
	end, options)
	assert(checksum > 0 and tree.getNodeCount() == 1, "collapsed estimate query benchmark did not complete")
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "primitive",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.ViewportRange,
		timingClass = "isolated",
		workload = "collapsed-estimate-offset-queries",
		description = "Resolves offsets against one collapsed run of estimated items.",
		scale = {
			items = itemCount,
			queries = queryCount * 2,
			treeNodes = tree.getNodeCount(),
		},
		timing = {
			unit = "ms",
			basis = "offsetQueryBatch",
			operationsPerSample = queryCount * 2,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			treeItems = itemCount,
			treeNodes = tree.getNodeCount(),
		},
	})
end

local function measureTreeUpdates(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	measurementBatchSize: number,
	options: Options
)
	local tree = createTree(dependencies.OrderStatisticTree, itemCount)
	local phase = 0
	local checksum = 0
	local summary = benchmarkStats.measure(function()
		phase = (phase + 1) % 5
		for updateIndex = 1, measurementBatchSize do
			local itemIndex = ((updateIndex * 7919) % itemCount) + 1
			local length = 36 + ((itemIndex + phase) % 5) * 2
			tree.update(itemIndex, length)
			checksum += tree.getSize(itemIndex)
		end
	end, options)
	assert(checksum > 0, "size-tree update benchmark did not complete")
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "primitive",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.Measurement,
		timingClass = "isolated",
		workload = "size-tree-measured-updates",
		description = "Updates measured sizes and refreshes aggregate offsets along each tree path.",
		scale = {
			items = itemCount,
			measurements = measurementBatchSize,
		},
		timing = {
			unit = "ms",
			basis = "sizeUpdateBatch",
			operationsPerSample = measurementBatchSize,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			treeItems = itemCount,
		},
	})
end

local function measureLayoutBatch(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	measurementBatchSize: number,
	options: Options
)
	local keys = table.create(itemCount)
	for index = 1, itemCount do
		keys[index] = `item{index}`
	end
	local layout = dependencies.Layout.measured({ estimatedItemLength = ITEM_LENGTH })
	layout.applyDataSourceChange({
		type = "reset",
		keys = keys,
	})
	local phase = 0
	local accepted = 0
	local summary = benchmarkStats.measure(function()
		phase = (phase + 1) % 5
		for measurementIndex = 1, measurementBatchSize do
			local itemIndex = ((measurementIndex * 7919) % itemCount) + 1
			if
				layout.updateItemMeasurement({
					itemIndex = itemIndex,
					itemKey = keys[itemIndex],
					itemRevision = 0,
					length = 36 + ((itemIndex + phase) % 5) * 2,
				}).accepted
			then
				accepted += 1
			end
		end
	end, options)
	layout.destroy()
	assert(accepted > 0, "measured-layout benchmark did not accept measurements")
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "subsystem",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.Measurement,
		timingClass = "integrated",
		workload = "measured-layout-batch",
		description = "Validates item identities, updates measured-size state, and propagates the running estimate.",
		scale = {
			items = itemCount,
			measurements = measurementBatchSize,
		},
		timing = {
			unit = "ms",
			basis = "measurementBatch",
			operationsPerSample = measurementBatchSize,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			measurementsPerBatch = measurementBatchSize,
		},
	})
end

local function run(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	options: Options?
): { any }
	local resolved: Options = options or {}
	local itemCounts: { number } = resolved.itemCounts or DEFAULT_ITEM_COUNTS
	local queryCount = resolved.queryCount or DEFAULT_QUERY_COUNT
	local measurementBatchSize = resolved.measurementBatchSize or DEFAULT_MEASUREMENT_BATCH_SIZE
	assert(queryCount >= 1 and queryCount % 1 == 0, "queryCount must be a positive integer")
	assert(
		measurementBatchSize >= 1 and measurementBatchSize % 1 == 0,
		"measurementBatchSize must be a positive integer"
	)

	local records = {}
	for _, itemCount in itemCounts do
		assert(itemCount >= measurementBatchSize, "item count must cover the measurement batch")
		table.insert(
			records,
			measureOffsetQueries(dependencies, benchmarkStats, benchmarkContract, itemCount, queryCount, resolved)
		)
		table.insert(
			records,
			measureCollapsedEstimateQueries(
				dependencies,
				benchmarkStats,
				benchmarkContract,
				itemCount,
				queryCount,
				resolved
			)
		)
		table.insert(
			records,
			measureTreeUpdates(
				dependencies,
				benchmarkStats,
				benchmarkContract,
				itemCount,
				measurementBatchSize,
				resolved
			)
		)
		table.insert(
			records,
			measureLayoutBatch(
				dependencies,
				benchmarkStats,
				benchmarkContract,
				itemCount,
				measurementBatchSize,
				resolved
			)
		)
	end
	return records
end

return {
	run = run,
}
