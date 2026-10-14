local Src = script:FindFirstAncestor("ViewRecycler")

local Types = require(Src.Core.Types)
local createEvent = require(Src.Internal.createEvent)

type ChangeBatch = Types.DataSourceChangeBatch

export type Controller = {
	subscribe: (callback: (ChangeBatch) -> ()) -> () -> (),
	emit: (change: Types.DataSourceChange, previousItemCount: number) -> (),
	emitMany: (changes: { Types.DataSourceChange }, previousItemCount: number) -> (),
	transaction: (callback: () -> ()) -> (),
}

local function createMutationController(
	getItemCount: () -> number,
	snapshot: () -> any,
	restore: (any) -> ()
): Controller
	local changed: createEvent.Event<ChangeBatch> = createEvent()
	local depth = 0
	local pending: { Types.DataSourceChange } = {}
	local pendingPreviousItemCount: number? = nil

	local function flush()
		local previousItemCount = pendingPreviousItemCount :: number
		local changes = pending
		pending = {}
		pendingPreviousItemCount = nil
		changed.fire({
			changes = changes,
			previousItemCount = previousItemCount,
			itemCount = getItemCount(),
		})
	end

	local function queueChanges(changes: { Types.DataSourceChange }, previousItemCount: number)
		if #pending == 0 then
			pendingPreviousItemCount = previousItemCount
		end
		for _, change in changes do
			table.insert(pending, change)
		end
	end

	local function emitMany(changes: { Types.DataSourceChange }, previousItemCount: number)
		queueChanges(changes, previousItemCount)
		if depth == 0 then
			flush()
		end
	end

	local function emit(change: Types.DataSourceChange, previousItemCount: number)
		queueChanges({ change }, previousItemCount)
		if depth == 0 then
			flush()
		end
	end

	local function transaction(callback: () -> ())
		local stateBefore = snapshot()
		local pendingBefore = table.clone(pending)
		local transactionPreviousItemCount = pendingPreviousItemCount
		depth += 1
		local result = table.pack(pcall(function()
			callback()
			return true
		end))
		depth -= 1
		if not result[1] then
			restore(stateBefore)
			pending = pendingBefore
			pendingPreviousItemCount = transactionPreviousItemCount
			error(result[2], 0)
		end
		if depth == 0 and #pending > 0 then
			flush()
		end
	end

	return {
		subscribe = changed.connect,
		emit = emit,
		emitMany = emitMany,
		transaction = transaction,
	}
end

return createMutationController
