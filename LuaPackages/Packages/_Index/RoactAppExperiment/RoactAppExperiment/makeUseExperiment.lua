--!nonstrict
--[[
	Function used to create the useUserExperiment and
	useBrowserTrackerExperiment hooks.
]]

local RoactAppExperiment = script:FindFirstAncestor("RoactAppExperiment")

local React = require(RoactAppExperiment.Parent.React)
local usePrevious = require(script.Parent.usePrevious)
local useIXPService = require(RoactAppExperiment.useIXPService)

export type MapLayers<T...> = ({ [string]: any }) -> T...

export type UseExperimentHook = <T...>(
	layerNames: { string },
	mapLayers: ({ [string]: any }) -> T...,
	recordExposureOnMount: boolean?
) -> T...

local function getLayerNamesKey(layerNames)
	local key = ""
	for i, layerName in ipairs(layerNames) do
		if i > 1 then
			key ..= ","
		end
		key ..= layerName
	end
	return key
end

-- Takes in the actual names of the functions to be called on the IXPService.
-- Since browser-tracker layers and user layers have very similar functionality,
-- we can just pass the service call names as input and have the same logic work with both.
local function makeUseExperiment(
	onLayerLoadingStatusChanged,
	getLayerLoadingStatus,
	getLayerVariables,
	logLayerExposure,
	getStatusForLayer
): UseExperimentHook
	-- Takes in a list of layers to fetch data for.
	-- mapLayers is a function that takes the layerVariables and returns one or more values.
	-- recordExposureOnMount defaults to true
	local useExperiment = function<T...>(
		layerNames: { string },
		mapLayers: MapLayers<T...>,
		recordExposureOnMount: boolean?
	): T...
		if recordExposureOnMount == nil then
			recordExposureOnMount = true
		end

		local ixpService = useIXPService()

		assert(type(layerNames) == "table", "useExperiment expects layerNames to be a list of layers")
		assert(type(mapLayers) == "function", "useExperiment expects mapLayers to be a function")

		local function getNewLayerToVariables()
			local newLayerToVariables = {}
			for _, layerName in ipairs(layerNames) do
				newLayerToVariables[layerName] = ixpService[getLayerVariables](ixpService, layerName)
				if newLayerToVariables[layerName] then
					-- if the layer data is empty, clear the entry out completely,
					-- so the layerToVariables empty check is correct.
					local hasEntry = next(newLayerToVariables[layerName])
					if not hasEntry then
						newLayerToVariables[layerName] = nil
					end
				end
			end
			return newLayerToVariables
		end

		local function getLoadingStatus()
			return ixpService[getLayerLoadingStatus](ixpService)
		end

		-- Initialize layerToVariables by invoking IXPService
		local layerToVariables, setLayerToVariables = React.useState(getNewLayerToVariables)
		local layerLoadingStatus, setLayerLoadingStatus = React.useState(getLoadingStatus)

		local layerNamesKey = getLayerNamesKey(layerNames)

		-- Effect that subscribes to IXP loading status changes and updates layer variable state
		React.useEffect(function()
			if ixpService == nil then
				return function() end
			end

			local function updateStateLayerData()
				local status = getLoadingStatus()
				local newLayerToVariables = getNewLayerToVariables()

				setLayerToVariables(function(oldLayerToVariables)
					local wasEmpty = not next(oldLayerToVariables)
					local isEmpty = not next(newLayerToVariables)

					-- Only update if layerToVariables was not already set or it is being cleared
					return if isEmpty ~= wasEmpty then newLayerToVariables else oldLayerToVariables
				end)

				setLayerLoadingStatus(status)
			end

			local onLoadingStatusChangeConnection = ixpService[onLayerLoadingStatusChanged]:Connect(function(_status)
				-- Always retrieve the latest status and update with it; the status parameter passed in
				-- is the status it was changing to when the changed signal was raised, which is not always
				-- the latest status, since multiple changes could be queued before this callback is run.
				-- Since we only really care if the state is Initialized or not, we can bypass any other state
				-- changes, and that keeps the status consistent with the actual layer variable data.
				updateStateLayerData()
			end)

			updateStateLayerData()

			return function()
				if onLoadingStatusChangeConnection ~= nil then
					onLoadingStatusChangeConnection:Disconnect()
				end
			end
		end, { ixpService, layerNamesKey })

		local prevLayerLoadingStatus = usePrevious(layerLoadingStatus) or Enum.IXPLoadingStatus.None

		-- Effect for logging layer exposure whenever layer loading status transitions to Initialized
		React.useEffect(function()
			if
				recordExposureOnMount
				and ixpService ~= nil
				and layerLoadingStatus == Enum.IXPLoadingStatus.Initialized
				and prevLayerLoadingStatus ~= Enum.IXPLoadingStatus.Initialized
			then
				for _, layerName in ipairs(layerNames) do
					local layerStatus = ixpService[getStatusForLayer](ixpService, layerName)
					if layerStatus == Enum.IXPLoadingStatus.Initialized then
						ixpService[logLayerExposure](ixpService, layerName)
					end
				end
			end
		end, {
			ixpService,
			layerNamesKey,
			recordExposureOnMount,
			layerLoadingStatus,
			prevLayerLoadingStatus,
		})

		return mapLayers(layerToVariables)
	end

	return useExperiment
end

return makeUseExperiment
