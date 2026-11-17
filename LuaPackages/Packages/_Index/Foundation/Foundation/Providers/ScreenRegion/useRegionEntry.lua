local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local ScreenRegion = require(script.Parent.ScreenRegion)
local ScreenRegionKind = require(script.Parent.ScreenRegionKind)
local ScreenRegionProvider = require(script.Parent.ScreenRegionProvider)

type ScreenRegion = ScreenRegion.ScreenRegion
type ScreenRegionKind = ScreenRegionKind.ScreenRegionKind
type RegionEntryState = ScreenRegionProvider.RegionEntryState

local ScreenRegionContext = ScreenRegionProvider.ScreenRegionContext

export type RegionEntryOptions = {
	-- Kind the region policy applies to the entry.
	kind: ScreenRegionKind,
} & ScreenRegionProvider.RegionEntryUpdate

local nextEntryId = 0

local HIDDEN: RegionEntryState = { isVisible = false, isDismissed = false }

--[[
	Registers one item with a screen region and returns whether the region lets it show. Without a region or a
	provider, the item shows whenever it is open.
]]
local function useRegionEntry(region: ScreenRegion?, options: RegionEntryOptions): RegionEntryState
	local manager = React.useContext(ScreenRegionContext)
	local id = React.useMemo(function()
		nextEntryId += 1
		return nextEntryId
	end, {})
	local state, setState = React.useState(HIDDEN)

	React.useLayoutEffect(function(): (() -> ())?
		if manager == nil or region == nil then
			return nil
		end
		manager.register(region, id, options.kind, setState)
		return function()
			manager.unregister(region, id)
		end
	end, { manager, region, id, options.kind } :: { unknown })

	-- Layout effects so presence changes reach the region in the same commit, even when they come from an animation
	-- finishing outside a React update.
	React.useLayoutEffect(
		function()
			if manager ~= nil and region ~= nil then
				manager.update(region, id, {
					isOpen = options.isOpen,
					isMounted = options.isMounted,
					claimKey = options.claimKey,
					priority = options.priority,
				})
			end
		end,
		{
			manager,
			region,
			id,
			options.kind,
			options.isOpen,
			options.isMounted,
			options.claimKey,
			options.priority,
		} :: { unknown }
	)

	if manager == nil or region == nil then
		return { isVisible = options.isOpen, isDismissed = false }
	end
	return state
end

return useRegionEntry
