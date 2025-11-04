export type work = () -> ()

local isContinuing = false

local continuations: { work } = {}

local function batch(fn: work)
	if not isContinuing then
		isContinuing = true
		fn()
		for _, work in continuations do
			work()
		end
		table.clear(continuations)
		isContinuing = false
	else
		fn()
	end
end

local function flush()
	batch(function() end)
end

local function schedule(work: work)
	table.insert(continuations, work)
end

return {
	batch = batch,
	flush = flush,
	schedule = schedule,
}
