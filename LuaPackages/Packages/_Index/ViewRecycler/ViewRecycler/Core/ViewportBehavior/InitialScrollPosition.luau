local Src = script:FindFirstAncestor("ViewRecycler")

local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)

type Alignment = ScrollAlignment.ScrollAlignment
type GetAlignedOffset = (itemIndex: number, alignment: Alignment) -> number

export type InitialScrollPosition = {
	onDataSourceChange: (itemCount: number, alignment: Alignment?, getAlignedOffset: GetAlignedOffset) -> number?,
	onDataSourceReplaced: (itemCount: number, alignment: Alignment?, getAlignedOffset: GetAlignedOffset) -> number,
	onViewportChanged: (itemCount: number, alignment: Alignment?, getAlignedOffset: GetAlignedOffset) -> number?,
}

local function getInitialOffset(itemCount: number, alignment: Alignment?, getAlignedOffset: GetAlignedOffset): number?
	if alignment == nil or alignment == ScrollAlignment.Start or itemCount == 0 then
		return nil
	end
	return getAlignedOffset(itemCount, alignment)
end

local function createInitialScrollPosition(): InitialScrollPosition
	local applied = false

	return {
		onDataSourceChange = function(itemCount, alignment, getAlignedOffset)
			if applied then
				return nil
			end
			local offset = getInitialOffset(itemCount, alignment, getAlignedOffset)
			if offset ~= nil then
				applied = true
			end
			return offset
		end,

		onDataSourceReplaced = function(itemCount, alignment, getAlignedOffset)
			applied = true
			return getInitialOffset(itemCount, alignment, getAlignedOffset) or 0
		end,

		onViewportChanged = function(itemCount, alignment, getAlignedOffset)
			if applied then
				return nil
			end
			local offset = getInitialOffset(itemCount, alignment, getAlignedOffset)
			if offset ~= nil or alignment == nil or alignment == ScrollAlignment.Start then
				applied = true
			end
			return offset
		end,
	}
end

return createInitialScrollPosition
