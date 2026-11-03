-- Reports once per data set that every Item in the Visible range is
-- Presented. Rearms when the DataSource is replaced or has no Items.
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

export type Presentation = {
	visibleRange: Core.IndexRange,
}

export type VisibleItemsPresentation<ItemView, T> = {
	rearm: () -> (),
	-- Runs `presentChanges`, which presents the record's changed ItemViews,
	-- and reports once the pass is complete rather than during it.
	present: (record: Core.VirtualizerRecord<ItemView, T>, itemCount: number, presentChanges: () -> ()) -> (),
	presentationChanged: (itemView: ItemView, assignment: Core.Assignment<T>?) -> (),
}

local VisibleItemsPresentation = {}

function VisibleItemsPresentation.new<ItemView, T>(
	getCallback: () -> ((presentation: Presentation) -> ())?
): VisibleItemsPresentation<ItemView, T>
	local armed = true
	local presenting = false
	local record: Core.VirtualizerRecord<ItemView, T>? = nil
	local presented: { [ItemView]: Core.Assignment<T> } = setmetatable({}, { __mode = "k" }) :: any

	local function check()
		local current = record
		if not armed or presenting or current == nil then
			return
		end
		local range = current.visibleRange
		if range.lastIndex < range.firstIndex then
			return
		end
		local covered = 0
		for _, mounted in current.mountedViews do
			local index = mounted.state.index
			if index ~= nil and index >= range.firstIndex and index <= range.lastIndex then
				if presented[mounted.itemView] ~= mounted.state.assignment then
					return
				end
				covered += 1
			end
		end
		if covered <= range.lastIndex - range.firstIndex then
			return
		end
		armed = false
		local callback = getCallback()
		if callback ~= nil then
			callback(table.freeze({ visibleRange = range }))
		end
	end

	return {
		rearm = function()
			armed = true
		end,
		present = function(nextRecord, itemCount, presentChanges)
			presenting = true
			presentChanges()
			presenting = false
			record = nextRecord
			if itemCount == 0 then
				armed = true
			else
				check()
			end
		end,
		presentationChanged = function(itemView, assignment)
			presented[itemView] = assignment
			check()
		end,
	}
end

return VisibleItemsPresentation
