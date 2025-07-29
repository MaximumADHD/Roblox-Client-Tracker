local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local React = require(CorePackages.Packages.React)
local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)
local Signals = require(CorePackages.Packages.Signals)
local useSelector = RoactUtils.Hooks.RoactRodux.useSelector
local Constants = require(Root.Unibar.Constants)

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeKeepOutAreas = CoreGuiCommon.Flags.FFlagTopBarSignalizeKeepOutAreas

local FIntLuaUIOcclusionMetricsReportingPeriodSeconds =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFIntLuaUIOcclusionMetricsReportingPeriodSeconds()
local EngineFeatureGuiServiceSendUIOcclusionMetricsForQueryRegion =
	game:GetEngineFeature("GuiServiceSendUIOcclusionMetricsForQueryRegion")
local kUnibarCurrentSizeRegionName = "currentSizeTR"

type KeepOutArea = {
	id: string,
	position: Vector2,
	size: Vector2,
}

type KeepOutAreas = { KeepOutArea }

local function convertCoreUIPointToHardwareSafeAreaPoint(pos: Vector2): Vector2
	local tlInset: Vector2 = GuiService:GetGuiInset()
	return pos + tlInset
end

local function vector2ToUDim2(vector2: Vector2): UDim2
	return UDim2.fromOffset(vector2.X, vector2.Y)
end

local function reportOcclusionMetrics(unibarState: KeepOutArea)
	local hardwareSAPos = convertCoreUIPointToHardwareSafeAreaPoint(unibarState.position)
	GuiService:SendUIOcclusionMetricsForQueryRegion(
		vector2ToUDim2(hardwareSAPos),
		vector2ToUDim2(unibarState.size),
		kUnibarCurrentSizeRegionName
	)
end

local function OcclusionMetricsManager()
	if not EngineFeatureGuiServiceSendUIOcclusionMetricsForQueryRegion then
		-- The engine feature must be turned on to report metrics.
		return
	end

	local disposeEffect

	local unibarAreaRef = React.useRef({
		id = Constants.UNIBAR_KEEP_OUT_AREA_ID,
		position = Vector2.new(),
		size = Vector2.new(),
	} :: KeepOutArea?)

	if FFlagTopBarSignalizeKeepOutAreas and CoreGuiCommon.Stores.GetKeepOutAreasStore then
		local keepOutAreasStore = CoreGuiCommon.Stores.GetKeepOutAreasStore(false)

		disposeEffect = Signals.createEffect(function(scope)
			unibarAreaRef.current = keepOutAreasStore.getKeepOutAreas(false)[Constants.UNIBAR_KEEP_OUT_AREA_ID]
		end)
	else
		local unibarArea: KeepOutArea? = useSelector(function(state)
			return state.displayOptions.keepOutAreas[Constants.UNIBAR_KEEP_OUT_AREA_ID]
		end)

		React.useEffect(function()
			unibarAreaRef.current = unibarArea
		end, { unibarArea })
	end

	React.useEffect(function()
		-- Start reporting task on mount
		local reportingTask: thread = task.spawn(function()
			while true do
				if unibarAreaRef.current then
					reportOcclusionMetrics(unibarAreaRef.current)
				end
				task.wait(FIntLuaUIOcclusionMetricsReportingPeriodSeconds)
			end
		end)

		return function()
			-- On unmount, stop task
			task.cancel(reportingTask)

			if FFlagTopBarSignalizeKeepOutAreas then
				disposeEffect()
			end
		end
	end, {})
end

return OcclusionMetricsManager
