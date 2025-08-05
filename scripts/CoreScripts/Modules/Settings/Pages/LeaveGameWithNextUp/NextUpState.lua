--!strict

local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)

local FFlagEnableNextUpImageLatencyTelemetry = require(script.Parent.Flags.FFlagEnableNextUpImageLatencyTelemetry)

local NextUpState = {}
if FFlagEnableNextUpImageLatencyTelemetry then
	local nextUpComponentVisibleAt: number?
	local nextUpComponentSortLoadedAt: number?
	local nextUpComponentSortLatency: number?
	function NextUpState.getNextUpComponentSortLatency(): number?
		return nextUpComponentSortLatency
	end

	function NextUpState.nextUpComponentShown()
		nextUpComponentVisibleAt = time()
	end

	function NextUpState.nextUpComponentSortDataLoaded()
		if nextUpComponentSortLoadedAt then
			return
		end

		local nextUpComponentSortDataLoadedTime = time()
		nextUpComponentSortLoadedAt = nextUpComponentSortDataLoadedTime
		nextUpComponentSortLatency = if nextUpComponentVisibleAt
			then nextUpComponentSortDataLoadedTime - nextUpComponentVisibleAt
			else 0
	end

	local nextUpTileImageTextureLatencies: { [string]: number } = {}
	function NextUpState.getNextUpTileImageTextureLatencies(): { number }
		return Cryo.Dictionary.values(nextUpTileImageTextureLatencies)
	end

	function NextUpState.nextUpTileImageTextureLoaded(sortPos: number)
		local key = tostring(sortPos)
		if nextUpTileImageTextureLatencies[key] then
			return
		end

		nextUpTileImageTextureLatencies[key] = if nextUpComponentSortLoadedAt
			then time() - nextUpComponentSortLoadedAt
			else 0
	end

	function NextUpState.resetNextUpLatencyTelemetry()
		nextUpComponentSortLoadedAt = nil
		nextUpTileImageTextureLatencies = {}
		nextUpComponentVisibleAt = nil
		nextUpComponentSortLatency = nil
	end
else
	local nextUpTilesLoaded = false
	function NextUpState.setNextUpTilesLoaded(loaded: boolean)
		nextUpTilesLoaded = loaded
	end

	function NextUpState.getNextUpTilesLoaded(): boolean
		return nextUpTilesLoaded
	end
end

return NextUpState
