local Foundation = script:FindFirstAncestor("Foundation")

local DisplacedBehavior = require(Foundation.Providers.ScreenRegion.DisplacedBehavior)
local RegionOrder = require(Foundation.Providers.ScreenRegion.RegionOrder)
local ScreenRegionKind = require(Foundation.Providers.ScreenRegion.ScreenRegionKind)
local regionPolicies = require(Foundation.Providers.ScreenRegion.regionPolicies)
type RegionPolicy = regionPolicies.RegionPolicy
type ScreenRegionKind = ScreenRegionKind.ScreenRegionKind

export type RegionEntry = {
	id: number,
	kind: ScreenRegionKind,
	isOpen: boolean,
	-- Order of the most recent claim; higher is newer. Nil while the entry is closed.
	claimedAt: number?,
	priority: number?,
	-- Whether the entry is still on screen, including while it plays its exit transition.
	isMounted: boolean,
	-- Set once the entry has been displaced with the `Dismiss` behavior; cleared when it closes.
	isDismissed: boolean,
}

export type Resolution = {
	-- Entries that may be shown now.
	visible: { [number]: boolean },
	-- Entries newly displaced with the `Dismiss` behavior.
	dismissed: { [number]: boolean },
}

local function ranksAbove(a: RegionEntry, b: RegionEntry, policy: RegionPolicy): boolean
	if policy.order == RegionOrder.Priority then
		local aPriority, bPriority = a.priority or 0, b.priority or 0
		if aPriority ~= bPriority then
			return aPriority > bPriority
		end
	end
	local aClaimed, bClaimed = a.claimedAt or 0, b.claimedAt or 0
	if aClaimed ~= bClaimed then
		return aClaimed > bClaimed
	end
	return a.id > b.id
end

--[[
	Decides which entries of a region are shown. Pure, so every policy combination can be tested without rendering.
]]
local function resolveRegion(entries: { RegionEntry }, policy: RegionPolicy): Resolution
	local candidates: { RegionEntry } = {}
	for _, entry in entries do
		if entry.isOpen and not entry.isDismissed then
			table.insert(candidates, entry)
		end
	end
	table.sort(candidates, function(a, b)
		return ranksAbove(a, b, policy)
	end)

	local selected: { [number]: RegionEntry } = {}
	local dismissed: { [number]: boolean } = {}
	local selectedCount = 0
	local countByKind: { [ScreenRegionKind]: number } = {}
	for _, entry in candidates do
		local kindCap = if policy.capacityPerKind then policy.capacityPerKind[entry.kind] else nil
		local kindCount = countByKind[entry.kind] or 0
		if selectedCount < policy.capacity and (kindCap == nil or kindCount < kindCap) then
			selected[entry.id] = entry
			selectedCount += 1
			countByKind[entry.kind] = kindCount + 1
		elseif policy.displaced[entry.kind] == DisplacedBehavior.Dismiss then
			dismissed[entry.id] = true
		end
	end

	local visible: { [number]: boolean } = {}
	for id, entry in selected do
		local isWaiting = false
		-- An entry already on screen keeps showing; only newcomers wait for displaced entries to leave.
		if policy.sequential and not entry.isMounted then
			for _, other in entries do
				if other.isMounted and selected[other.id] == nil then
					isWaiting = true
					break
				end
			end
		end
		visible[id] = not isWaiting
	end

	return {
		visible = visible,
		dismissed = dismissed,
	}
end

return resolveRegion
