local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local useRefCache = ReactUtils.useRefCache

local Types = require(Foundation.Components.Types)
type Selection = Types.Selection
type SelectionProps = Types.SelectionProps

type PaginationSlotBindings = Selection & {
	ref: React.RefObject<GuiObject?>,
}

export type PaginationSelectionChain = {
	firstSlotId: string?,
	getSlotBindings: (slotId: string) -> PaginationSlotBindings,
	getSlotRef: (slotId: string) -> React.Ref<GuiObject?>,
}

local function usePaginationSelectionChain(
	slotOrder: { string },
	selectionProps: SelectionProps?,
	onFirstSlotChanged: ((GuiObject?) -> ())?
): PaginationSelectionChain
	local refs = useRefCache()
	local firstSlotId = slotOrder[1]

	local getSlotRef = React.useCallback(function(slotId: string): React.Ref<GuiObject?>
		local internalRef = refs[slotId]
		if firstSlotId ~= slotId or onFirstSlotChanged == nil then
			return internalRef
		end

		return function(instance: GuiObject?)
			internalRef.current = instance
			onFirstSlotChanged(instance)
		end
	end, { firstSlotId, onFirstSlotChanged, refs } :: { unknown })

	local getSlotBindings = React.useCallback(function(slotId: string): PaginationSlotBindings
		local index = table.find(slotOrder, slotId)
		if index == nil then
			return {
				ref = refs[slotId],
				Selectable = false,
			}
		end

		return {
			ref = refs[slotId],
			Selectable = true,
			NextSelectionLeft = if index > 1 then refs[slotOrder[index - 1]] else nil,
			NextSelectionRight = if index < #slotOrder then refs[slotOrder[index + 1]] else nil,
			NextSelectionUp = selectionProps and selectionProps.NextSelectionUp,
			NextSelectionDown = selectionProps and selectionProps.NextSelectionDown,
		}
	end, { slotOrder, refs, selectionProps } :: { unknown })

	return React.useMemo(function(): PaginationSelectionChain
		return {
			firstSlotId = firstSlotId,
			getSlotBindings = getSlotBindings,
			getSlotRef = getSlotRef,
		}
	end, { firstSlotId, getSlotBindings, getSlotRef } :: { unknown })
end

return usePaginationSelectionChain
