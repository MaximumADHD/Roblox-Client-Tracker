local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local DataSource = require(Src.Core.DataSource)

local function values(count: number, prefix: string)
	local result = table.create(count)
	for index = 1, count do
		result[index] = { id = `{prefix}-{index}` }
	end
	return result
end

local function benchmark(initialCount: number, pageSize: number, cycleCount: number)
	local keyResolutions = 0
	local source = DataSource.deque(values(initialCount, "seed"), function(value)
		keyResolutions += 1
		return value.id
	end)

	source.pushBack({ id = "capacity-growth" })
	source.popBack()
	keyResolutions = 0

	local pages = table.create(cycleCount)
	for cycle = 1, cycleCount do
		pages[cycle] = values(pageSize, `page-{cycle}`)
	end

	local started = os.clock()
	for cycle = 1, cycleCount do
		source.pushBackMany(pages[cycle])
		for _ = 1, pageSize do
			source.popBack()
		end
	end
	local elapsedMs = (os.clock() - started) * 1000

	return {
		elapsedMs = elapsedMs,
		keyResolutions = keyResolutions,
		finalItemCount = source.getItemCount(),
	}
end

describe("DequeDataSource bulk mutation benchmark", function()
	it("scales no-growth work with page size instead of retained item count", function()
		local cycleCount = 100
		local pageSize = 32
		local small = benchmark(512, pageSize, cycleCount)
		local large = benchmark(32768, pageSize, cycleCount)
		local narrowPage = benchmark(32768, 8, cycleCount)
		local widePage = benchmark(32768, 64, cycleCount)

		print(
			`[BENCH] deque-bulk small={small.elapsedMs}ms large={large.elapsedMs}ms narrow={narrowPage.elapsedMs}ms wide={widePage.elapsedMs}ms`
		)
		expect(small.keyResolutions).toBe(pageSize * cycleCount)
		expect(large.keyResolutions).toBe(pageSize * cycleCount)
		expect(narrowPage.keyResolutions).toBe(8 * cycleCount)
		expect(widePage.keyResolutions).toBe(64 * cycleCount)
		expect(small.finalItemCount).toBe(512)
		expect(large.finalItemCount).toBe(32768)
		expect(large.elapsedMs).toBeLessThan(small.elapsedMs * 12)
	end)
end)
