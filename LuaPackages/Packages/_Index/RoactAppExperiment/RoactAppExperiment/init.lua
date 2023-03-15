--!strict

--[=[
	This class is a complete wrapper for the [IXPService]. As such, [IXPService]
	itself should not need to be called directly.

	Its responsibilities include registering user layers, fetching/clearing
	layer data, and mapping layer data to connected components' props, and
	re-rendering when layer data changes.

	@class RoactAppExperiment
]=]

local RunService = game:GetService("RunService")
local IXPService = game:GetService("IXPService")

local Roact = require(script.Parent.Roact)
local t = require(script.Parent.t)
local Cryo = require(script.Parent.Cryo)
local Symbol = require(script.Symbol)

local ExperimentContext = require(script.ExperimentContext)
local IxpServiceProp = Symbol.named("IxpServiceProp")

--[=[
	Only user layers can be registered from lua; browser-tracker layers need to
	be set in native code, as the fetch happens before lua is ready.

	@within RoactAppExperiment
]=]
local function registerUserLayers(userLayers: { [string]: string })
	assert(t.table(userLayers))
	if IXPService ~= nil then
		if RunService:IsStudio() then
			IXPService:ClearUserLayers()
		end

		local layerList = {}
		for _, layerName in pairs(userLayers) do
			table.insert(layerList, layerName)
		end

		IXPService:RegisterUserLayers(layerList)
	end
end

--[=[
	Starts an HTTP fetch of registered user layers for this user.  Should be
	called after user is known. Layers should be registered before this is
	called.

	@within RoactAppExperiment
]=]
local function initializeUserLayers(userId: number)
	if IXPService ~= nil then
		IXPService:InitializeUserLayers(userId)
	end
end

--[=[
	Clear user layer data and reset any status. Should be called when a
	user logs out.

	@within RoactAppExperiment
]=]
local function clearUserLayers()
	if IXPService ~= nil then
		IXPService:ClearUserLayers()
	end
end

--[[
	Takes in the actual names of the functions to be called on the IXPService.

	Since browser-tracker layers and user layers have very similar
	functionality, we can just pass the service call names as input and have the
	same logic work with both.
]]
local function connect(
	onLayerLoadingStatusChanged: string,
	getLayerLoadingStatus: string,
	getLayerVariables: string,
	logLayerExposure: string,
	getStatusForLayer: string
)
	assert(t.string(onLayerLoadingStatusChanged))
	assert(t.string(getLayerLoadingStatus))
	assert(t.string(getLayerVariables))
	assert(t.string(logLayerExposure))
	assert(t.string(getStatusForLayer))

	-- Takes in a list of layers to fetch data for. mapLayersToProps is a function that returns
	-- a prop -> layer.variable mapping.
	-- recordExposureOnMount defaults to true
	return function(layerNames, mapLayersToProps, recordExposureOnMount: boolean?)
		if recordExposureOnMount == nil then
			recordExposureOnMount = true
		end

		local connectTrace = debug.traceback()
		assert(type(layerNames) == "table", "connect expects layerNames to be a list of layers")
		assert(type(mapLayersToProps) == "function", "connect expects mapLayersToProps to be a function")

		return function(innerComponent)
			if innerComponent == nil then
				local message = string.format(
					"connect returns a function that must be passed a component.\n " .. "Check the connection at:\n %s",
					connectTrace
				)

				error(message, 2)
			end

			local componentName = ("AppExperiment(%s)"):format(tostring(innerComponent))
			local Connection = Roact.PureComponent:extend(componentName)

			function Connection:init()
				self.onLoadingStatusChangeConnection = nil
				self.state = {
					layerToVariables = {},
					layerLoadingStatus = Enum.IXPLoadingStatus.None,
				}

				self.updateStateLayerData = function(status)
					local ixpService = self.props[IxpServiceProp]

					if ixpService ~= nil then
						local layerToVariables = {}
						for _, layerName in ipairs(layerNames) do
							layerToVariables[layerName] = ixpService[getLayerVariables](ixpService, layerName)
						end

						self:setState({
							layerToVariables = layerToVariables,
							layerLoadingStatus = status,
						})
					end
				end

				self.logAllLayersExposure = function(status)
					local ixpService = self.props[IxpServiceProp]

					if ixpService ~= nil and status == Enum.IXPLoadingStatus.Initialized and recordExposureOnMount then
						for _, layerName in ipairs(layerNames) do
							local layerStatus = ixpService[getStatusForLayer](ixpService, layerName)
							if layerStatus == Enum.IXPLoadingStatus.Initialized then
								ixpService[logLayerExposure](ixpService, layerName)
							end
						end
					end
				end

				do
					local ixpService = self.props[IxpServiceProp]

					if ixpService ~= nil then
						local loadingStatus = ixpService[getLayerLoadingStatus](ixpService)
						self.updateStateLayerData(loadingStatus)
					end
				end
			end

			function Connection:render()
				local componentProps = Cryo.Dictionary.join(self.props, {
					[IxpServiceProp] = Cryo.None,
				})
				local layerProps = mapLayersToProps(self.state.layerToVariables, componentProps)
				local newProps = Cryo.Dictionary.join(componentProps, layerProps)
				return Roact.createElement(innerComponent, newProps)
			end

			function Connection:didMount()
				local ixpService = self.props[IxpServiceProp]

				if ixpService ~= nil then
					self.onLoadingStatusChangeConnection = ixpService[onLayerLoadingStatusChanged]:Connect(
						function(_status)
							-- Always retrieve the latest status and update with it; the status parameter passed in
							-- is the status it was changing to when the changed signal was raised, which is not always
							-- the latest status, since multiple changes could be queued before this callback is run.
							-- Since we only really care if the state is Initialized or not, we can bypass any other state
							-- changes, and that keeps the status consistent with the actual layer variable data.
							local currentStatus = ixpService[getLayerLoadingStatus](ixpService)
							if self.state.layerLoadingStatus ~= currentStatus then
								self.updateStateLayerData(currentStatus, getLayerVariables)
								self.logAllLayersExposure(currentStatus)
							end
						end
					)

					local loadingStatus = ixpService[getLayerLoadingStatus](ixpService)
					if self.state.layerLoadingStatus ~= loadingStatus then
						self.updateStateLayerData(loadingStatus, getLayerVariables)
					end

					self.logAllLayersExposure(loadingStatus)
				end
			end

			function Connection:willUnmount()
				if self.onLoadingStatusChangeConnection ~= nil then
					self.onLoadingStatusChangeConnection:Disconnect()
				end
			end

			return function(props)
				return Roact.createElement(ExperimentContext.Consumer, {
					render = function(ixpService)
						assert(
							props[IxpServiceProp] == nil,
							"Symbol 'IxpServiceProp' should never exist in the incoming props."
						)
						local newProps = Cryo.Dictionary.join(props, {
							[IxpServiceProp] = ixpService,
						})
						return Roact.createElement(Connection, newProps)
					end,
				})
			end
		end
	end
end

--[=[
	Connect a component to browser-tracker layers.

	@within RoactAppExperiment
	@function connectBrowserTrackerLayer
]=]
local connectBrowserTrackerLayer = connect(
	"OnBrowserTrackerLayerLoadingStatusChanged",
	"GetBrowserTrackerLayerLoadingStatus",
	"GetBrowserTrackerLayerVariables",
	"LogBrowserTrackerLayerExposure",
	"GetBrowserTrackerStatusForLayer"
)

--[=[
	Connect a component to user layers.

	@within RoactAppExperiment
	@function connectUserLayer
]=]
local connectUserLayer = connect(
	"OnUserLayerLoadingStatusChanged",
	"GetUserLayerLoadingStatus",
	"GetUserLayerVariables",
	"LogUserLayerExposure",
	"GetUserStatusForLayer"
)

return {
	Provider = ExperimentContext.Provider,
	Consumer = ExperimentContext.Consumer,
	Context = ExperimentContext,

	registerUserLayers = registerUserLayers,
	initializeUserLayers = initializeUserLayers,
	clearUserLayers = clearUserLayers,

	useBrowserTrackerExperiment = require(script.useBrowserTrackerExperiment),
	useUserExperiment = require(script.useUserExperiment),
	useIXPService = require(script.useIXPService),

	connectBrowserTrackerLayer = connectBrowserTrackerLayer,
	connectUserLayer = connectUserLayer,

	-- Mocks
	MockIXPService = require(script.MockIXPService),
}
