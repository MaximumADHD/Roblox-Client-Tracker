local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local ScreenRegion = require(script.Parent.ScreenRegion)
local ScreenRegionKind = require(script.Parent.ScreenRegionKind)
local regionPolicies = require(script.Parent.regionPolicies)
local resolveRegion = require(script.Parent.resolveRegion)

type ScreenRegion = ScreenRegion.ScreenRegion
type ScreenRegionKind = ScreenRegionKind.ScreenRegionKind
type RegionPolicy = regionPolicies.RegionPolicy
type RegionEntry = resolveRegion.RegionEntry

export type RegionEntryState = {
	-- The entry may be shown now.
	isVisible: boolean,
	-- The entry was displaced with the `Dismiss` behavior and should ask its owner to close it.
	isDismissed: boolean,
}

export type RegionEntryUpdate = {
	-- Whether the owner wants the entry shown.
	isOpen: boolean,
	-- Whether the entry is on screen, including while it plays its exit transition.
	isMounted: boolean,
	-- Changing the key of an open entry refreshes its claim, making it the most recent one.
	claimKey: unknown?,
	-- Rank under the `Priority` order; higher shows first.
	priority: number?,
}

export type ScreenRegionManager = {
	register: (
		region: ScreenRegion,
		id: number,
		kind: ScreenRegionKind,
		onChange: (state: RegionEntryState) -> ()
	) -> (),
	update: (region: ScreenRegion, id: number, update: RegionEntryUpdate) -> (),
	unregister: (region: ScreenRegion, id: number) -> (),
}

type Record = RegionEntry & {
	claimKey: unknown?,
	onChange: (state: RegionEntryState) -> (),
	state: RegionEntryState,
}

local ScreenRegionContext = React.createContext(nil :: ScreenRegionManager?)

local function createManager(policies: { [ScreenRegion]: RegionPolicy }): ScreenRegionManager
	local records: { [ScreenRegion]: { [number]: Record } } = {}
	local nextClaim = 0

	local function recompute(region: ScreenRegion)
		local regionRecords = records[region]
		local policy = policies[region]
		if regionRecords == nil or policy == nil then
			return
		end

		local entries: { RegionEntry } = {}
		for _, record in regionRecords do
			table.insert(entries, record)
		end
		local resolution = resolveRegion(entries, policy)
		for id in resolution.dismissed do
			regionRecords[id].isDismissed = true
		end

		for id, record in regionRecords do
			local nextState = {
				isVisible = resolution.visible[id] == true,
				isDismissed = record.isDismissed,
			}
			if nextState.isVisible ~= record.state.isVisible or nextState.isDismissed ~= record.state.isDismissed then
				record.state = nextState
				record.onChange(nextState)
			end
		end
	end

	local function register(
		region: ScreenRegion,
		id: number,
		kind: ScreenRegionKind,
		onChange: (RegionEntryState) -> ()
	)
		local regionRecords = records[region] or {}
		records[region] = regionRecords
		regionRecords[id] = {
			id = id,
			kind = kind,
			isOpen = false,
			isMounted = false,
			isDismissed = false,
			onChange = onChange,
			state = { isVisible = false, isDismissed = false },
		}
	end

	local function update(region: ScreenRegion, id: number, entryUpdate: RegionEntryUpdate)
		local regionRecords = records[region]
		local record = if regionRecords then regionRecords[id] else nil
		if record == nil then
			return
		end

		if entryUpdate.isOpen then
			if not record.isOpen or record.claimKey ~= entryUpdate.claimKey then
				nextClaim += 1
				record.claimedAt = nextClaim
			end
		else
			record.claimedAt = nil
			record.isDismissed = false
		end
		record.isOpen = entryUpdate.isOpen
		record.isMounted = entryUpdate.isMounted
		record.claimKey = entryUpdate.claimKey
		record.priority = entryUpdate.priority
		recompute(region)
	end

	local function unregister(region: ScreenRegion, id: number)
		local regionRecords = records[region]
		if regionRecords and regionRecords[id] then
			regionRecords[id] = nil
			recompute(region)
		end
	end

	return {
		register = register,
		update = update,
		unregister = unregister,
	}
end

local function ScreenRegionProvider(props: { children: React.ReactNode })
	local manager = React.useMemo(function()
		return createManager(regionPolicies)
	end, {})

	return React.createElement(ScreenRegionContext.Provider, {
		value = manager,
	}, props.children)
end

return {
	ScreenRegionProvider = ScreenRegionProvider,
	ScreenRegionContext = ScreenRegionContext,
	createManager = createManager,
}
