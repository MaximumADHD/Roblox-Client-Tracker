local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ScriptContext = game:GetService("ScriptContext")
local HttpService = game:GetService("HttpService")

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local UtilAndTab = require(Components.UtilAndTab)
local BoxButton = require(Components.BoxButton)
local DropDown = require(Components.DropDown)
local ProfilerView = require(script.Parent.ProfilerView)
local ProfilerFunctionsView = require(script.Parent.ProfilerFunctionsView)
local ProfilerData = require(script.Parent.ProfilerDataFormatV2)
local ProfilerExportView = require(script.Parent.ProfilerExportView)

local ProfilerUtil = require(script.Parent.ProfilerUtil)
local getPluginFlag = ProfilerUtil.getPluginFlag
local getDurations = ProfilerUtil.getDurations

local Actions = script.Parent.Parent.Parent.Actions
local SetScriptProfilerState = require(Actions.SetScriptProfilerState)

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding
local SMALL_FRAME_HEIGHT = Constants.UtilityBarFormatting.SmallFrameHeight

local FONT = Constants.Font.MainWindowHeader
local TEXT_SIZE = Constants.DefaultFontSize.MainWindowHeader
local TEXT_COLOR = Constants.Color.Text
local BACKGROUND_COLOR = Constants.Color.UnselectedGray

local TESTING_DATA = nil -- Assign this to override the data for testing

local LIVE_UPDATE_TEXT = "Live"
local SHOW_PLUGINS_TEXT = "Plugins"
local SHOW_GC_TEXT = "GC"

local MainViewScriptProfiler = Roact.PureComponent:extend("MainViewScriptProfiler")

local getClientReplicator = require(script.Parent.Parent.Parent.Util.getClientReplicator)

local FFlagScriptProfilerFrequencyControl = game:DefineFastFlag("ScriptProfilerFrequencyControl", false)
local FFlagScriptProfilerHideGCOverhead = game:DefineFastFlag("ScriptProfilerHideGCOverhead", false)
local FFlagScriptProfilerTimedProfiling = game:DefineFastFlag("ScriptProfilerTimedProfiling", false)
local FFlagScriptProfilerFunctionsView = game:DefineFastFlag("ScriptProfilerFunctionsView", false)
local FFlagScriptProfilerShowPlugins = game:DefineFastFlag("ScriptProfilerShowPlugins2", false)
local FFlagScriptProfilerSimpleUI = game:DefineFastFlag("ScriptProfilerSimpleUI", false)
local FFlagScriptProfilerAverages = game:DefineFastFlag("ScriptProfilerAverages", false)
local FFlagScriptProfilerExport = game:DefineFastFlag("ScriptProfilerExport", false)
local FFlagScriptProfilerSearch = game:DefineFastFlag("ScriptProfilerSearch", false)

local FFlagScriptProfilerLiveUpdate = game:DefineFastFlag("ScriptProfilerLiveUpdate", false)
local FIntScriptProfilerLiveUpdateIntervalMS = game:DefineFastInt("ScriptProfilerLiveUpdateIntervalMS", 1000)

local DATA_VIEW_DROPDOWN_NAMES = { "Callgraph", "Functions", }
local SMALL_DV_BUTTON_WIDTH = 100

type SearchFilterType = {[number]: boolean}

local function annotateSearchFilterNodes(data: ProfilerData.RootDataFormat, searchFilterFuncs: SearchFilterType, searchFilterNodes: SearchFilterType, funcId: number, nodeId: number, parentIsMatch: boolean):  boolean
	local node = data.Nodes[nodeId]

	if not node.Children then
		searchFilterNodes[nodeId] = (funcId > 0 and searchFilterFuncs[funcId]) or parentIsMatch
		return funcId > 0 and searchFilterFuncs[funcId]
	end

	local children = node.Children :: {[ProfilerData.FunctionId]: ProfilerData.NodeId}

	local hasMatch = false

	if funcId > 0 and searchFilterFuncs[funcId] then
		hasMatch = true

		searchFilterNodes[nodeId] = true

		for functionId, nodeId in pairs(children) do
			searchFilterNodes[nodeId] = true

			annotateSearchFilterNodes(data, searchFilterFuncs, searchFilterNodes, functionId, nodeId, true)
		end
	else
		for functionId, nodeId in pairs(children) do
			local match = annotateSearchFilterNodes(data, searchFilterFuncs, searchFilterNodes, functionId, nodeId, parentIsMatch)

			hasMatch = hasMatch or match
		end

		if hasMatch or parentIsMatch then
			searchFilterNodes[nodeId] = true
		end
	end

	return hasMatch
end

local function generateSearchFilters(state, searchTerm: string): (SearchFilterType?, SearchFilterType?)
	if searchTerm == "" then
		return nil, nil
	end

	local data = state.data :: ProfilerData.RootDataFormat
	if not data then
		return nil, nil
	end

	local searchFilterFuncs = table.create(#data.Functions, false)

	for i, func in data.Functions do
		if func.Name and string.find(func.Name, searchTerm, 1, true) then
			searchFilterFuncs[i] = true
		end
	end

	local searchFilterNodes = table.create(#data.Nodes, false)

	for i, cat in data.Categories do
		annotateSearchFilterNodes(data, searchFilterFuncs, searchFilterNodes, 0, cat.NodeId, false)
	end

	return searchFilterFuncs, searchFilterNodes
end

local function generatePluginDurationOffsets(gcNodeOffsets: {[number]: number, Total: number?}, data: ProfilerData.RootDataFormat?): ({[number]: number, Total: number?}, {[number]: number, Total: number?})
	if data then
		assert(data.Version == 2)

		local offsets = table.create(#data.Categories, 0) :: {[number]: number, Total: number}
		local gcOffsets = table.create(#data.Categories, 0) :: {[number]: number, Total: number}

		local total = 0
		local gcTotal = 0
		for index, category in data.Categories do
			local node = data.Nodes[category.NodeId]

			local offset = 0
			local gcOffset = 0

			local childData = node.Children
			if childData then
				for functionId, nodeId in pairs(childData) do
					local func = data.Functions[functionId]

					if getPluginFlag(data, data.Functions[functionId]) then
						offset -= getDurations(data, nodeId)

						if FFlagScriptProfilerHideGCOverhead and #gcNodeOffsets > 0 then
							gcOffset += gcNodeOffsets[nodeId]
						end
					end
				end
			end

			offsets[index] = offset
			gcOffsets[index] = gcOffset
			total += offset
			gcTotal += gcOffset
		end

		offsets.Total = total
		gcOffsets.Total = total
		return offsets, gcOffsets
	end

	return {}, {}
end

local function getGCOverhead(funcOffsets: {number}, nodeOffsets: {number}, data: ProfilerData.RootDataFormat, nodeId: ProfilerData.NodeId, gcFuncId: ProfilerData.FunctionId): number
	local node = data.Nodes[nodeId]
	local total = 0

	if node.Children then
		for funcId, nodeId in pairs(node.Children) do

			local gc
			if funcId == gcFuncId then
				gc = data.Nodes[nodeId].TotalDuration
			else
				gc = getGCOverhead(funcOffsets, nodeOffsets, data, nodeId, gcFuncId)
			end

			funcOffsets[funcId] += gc
			nodeOffsets[nodeId] = gc
			total += gc
		end
	end

	return total
end

local function generateGCOverheadOffsets(data: ProfilerData.RootDataFormat?): ({number}, {[number]: number, Total: number?})
	if data and data.GCFuncId then

		local gcFuncId = data.GCFuncId


		local funcOffsets = table.create(#data.Functions, 0)
		local nodeOffsets = table.create(#data.Nodes, 0) :: {[number]: number, Total: number?}

		local total = 0

		for index, category in data.Categories do

			local nodeId = category.NodeId

			local gc = getGCOverhead(funcOffsets, nodeOffsets, data, nodeId, gcFuncId)
			total += gc

			nodeOffsets[nodeId] = gc
		end

		nodeOffsets.Total = total

		return funcOffsets, nodeOffsets
	end

	return {}, {}
end

function MainViewScriptProfiler:getActiveState()
	return self.props.isClientView, if self.props.isClientView then self.props.client else self.props.server
end

function MainViewScriptProfiler:getState(isClient)
	return if isClient then self.props.client else self.props.server
end

function MainViewScriptProfiler:UpdateState(isClient, newState)
	if isClient then
		self.props.dispatchSetScriptProfilerState(nil, nil, newState, nil)
	else
		self.props.dispatchSetScriptProfilerState(nil, nil, nil, newState)
	end
end

local function OnNewProfilingData(state, jsonString: string?)
	state.serializedData = jsonString
	state.data = ScriptContext:DeserializeScriptProfilerString(jsonString :: string) -- Temporary type cast to work around type-checker until RIDL defintion is updated.

	if FFlagScriptProfilerHideGCOverhead then
		state.gcFunctionOffsets, state.gcNodeOffsets = generateGCOverheadOffsets(state.data)
	end

	if FFlagScriptProfilerShowPlugins then
		state.pluginOffsets, state.pluginGCOffsets = generatePluginDurationOffsets(state.gcNodeOffsets, state.data)
	end
end

function MainViewScriptProfiler:init()
	local function StartScriptProfiling(isClient, state)
		if FFlagScriptProfilerFrequencyControl then
			if isClient then
				ScriptContext:StartScriptProfiling(state.frequency)
			else
				local clientReplicator = getClientReplicator()
				if clientReplicator then
					clientReplicator:RequestServerScriptProfiling(true, state.frequency)
				end
			end
		else
			if isClient then
				ScriptContext:StartScriptProfiling()
			else
				local clientReplicator = getClientReplicator()
				if clientReplicator then
					clientReplicator:RequestServerScriptProfiling(true)
				end
			end
		end
	end

	local function StopScriptProfiling(isClient): string?
		if isClient then
			local data = ScriptContext:StopScriptProfiling()
			return data
		else
			local clientReplicator = getClientReplicator()
			if clientReplicator then
				clientReplicator:RequestServerScriptProfiling(false)
			end
			return nil
		end
	end

	local function StopTimedProfiling(isClient)
		local state = self:getState(isClient)

		if state.isProfiling then
			local jsonString = StopScriptProfiling(isClient)

			local newState = table.clone(state)

			newState.isProfiling = false

			OnNewProfilingData(newState, jsonString)

			self:UpdateState(isClient, newState)
		end
	end

	self.onUtilTabHeightChanged = function(utilTabHeight)
		self:setState({
			utilTabHeight = utilTabHeight
		})
	end

	local function UpdateTimedProfilingTimer(isClient)
		local DELTA = 1 / 2

		while task.wait(DELTA) do
			local state = self:getState(isClient)
			local countdown = state.timedProfilingCountdown

			if countdown <= 0 then
				break
			end

			local newState = table.clone(state)
			newState.timedProfilingCountdown = countdown - DELTA
			self:UpdateState(isClient, newState)
		end
	end

	local function LiveUpdate(isClient)
		while task.wait(FIntScriptProfilerLiveUpdateIntervalMS / 1000) do
			local state = self:getState(isClient)

			if state.liveUpdate then
				if isClient then
					local newState = table.clone(state)
					local jsonString = ScriptContext:GetScriptProfilingData()

					OnNewProfilingData(newState, jsonString)

					self:UpdateState(isClient, newState)
				else
					local clientReplicator = getClientReplicator()
					if clientReplicator then
						clientReplicator:RequestServerScriptProfilingData()
					end
				end
			end
		end
	end

	self.onBeginProfile = function ()
		local isClientView, state = self:getActiveState()

		StartScriptProfiling(isClientView, state)

		local newState = table.clone(state)
		newState.isProfiling = true
		newState.rootNode = 0
		newState.rootNodeName = nil
		newState.searchFilter = {}

		if FFlagScriptProfilerTimedProfiling and state.timedProfilingDuration > 0 then
			newState.timedProfilingCountdown = state.timedProfilingDuration

			newState.timedProfilingThread = task.delay(state.timedProfilingDuration, function()
				StopTimedProfiling(isClientView)
			end)

			newState.timedProfilingTimerThread = task.spawn(function()
				UpdateTimedProfilingTimer(isClientView)
			end)
		end

		if FFlagScriptProfilerLiveUpdate then
			newState.liveUpdateThread = task.spawn(LiveUpdate, isClientView)
		end

		self:UpdateState(isClientView, newState)
	end

	self.onEndProfile = function ()
		local isClientView, state = self:getActiveState()

		local jsonString = StopScriptProfiling(isClientView)

		local newState = table.clone(state)
		newState.isProfiling = false

		OnNewProfilingData(newState, jsonString)

		if FFlagScriptProfilerTimedProfiling then
			if state.timedProfilingThread then
				task.cancel(state.timedProfilingThread)
				newState.timedProfilingThread = nil
			end

			if state.timedProfilingTimerThread then
				task.cancel(state.timedProfilingTimerThread)
				newState.timedProfilingTimerThread = nil
			end
		end

		if FFlagScriptProfilerLiveUpdate then
			if state.liveUpdateThread then
				task.cancel(state.liveUpdateThread)
				newState.liveUpdateThread = nil
			end
		end

		self:UpdateState(isClientView, newState)
	end

	self.toggleTimedProfiling = function ()
		local isClientView, state = self:getActiveState()

		local duration = state.timedProfilingDuration

		if duration == 0 then
			duration = 60
		elseif duration == 60 then
			duration = 60 * 5
		elseif duration == 60 * 5 then
			duration = 60 * 10
		else
			duration = 0
		end

		local newState = table.clone(state)
		newState.timedProfilingDuration = duration
		self:UpdateState(isClientView, newState)
	end

	self.toggleAverage = function ()
		local isClientView, state = self:getActiveState()

		local average = state.average

		if average == 0 then
			average = 1
		elseif average == 1 then
			average = 60
		elseif average == 60 then
			average = 60 * 5
		elseif average == 60 * 5 then
			average = 60 * 10
		else
			average = 0
		end

		local newState = table.clone(state)
		newState.average = average
		self:UpdateState(isClientView, newState)
	end

	self.toggleUnits = function ()
		self.props.dispatchSetScriptProfilerState(nil, not self.props.usePercentages, nil, nil)
	end

	self.toggleFrequency = function()
		local isClientView, state = self:getActiveState()

		local freq = state.frequency

		if freq == 1000 then
			freq = 10000
		else
			freq = 1000
		end

		local newState = table.clone(state)
		newState.frequency = freq
		self:UpdateState(isClientView, newState)
	end

	self.onClientButton = function()
		self.props.dispatchSetScriptProfilerState(true)
	end

	self.onServerButton = function()
		self.props.dispatchSetScriptProfilerState(false)
	end

	self.dataViewDropDownCallback = function(index)
		local isClientView, state = self:getActiveState()

		local newState = table.clone(state)

		if index == 1 then
			newState.isFunctionsView = false
		elseif index == 2 then
			newState.isFunctionsView = true
		end

		self:UpdateState(isClientView, newState)
	end

	self.onCheckBoxChanged = function(boxName, newValue)
		local isClientView, state = self:getActiveState()

		local newState = table.clone(state)

		if boxName == LIVE_UPDATE_TEXT then
			newState.liveUpdate = newValue
		elseif boxName == SHOW_PLUGINS_TEXT then
			newState.showPlugins = newValue
		elseif boxName == SHOW_GC_TEXT then
			newState.showGC = newValue
		end

		self:UpdateState(isClientView, newState)
	end

	self.onSearchTermChanged = function(newSearchTerm)
		if not FFlagScriptProfilerSearch then
			return
		end

		local isClientView, state = self:getActiveState()

		local newState = table.clone(state)
		newState.searchTerm = newSearchTerm
		local flat, graph = generateSearchFilters(state, newSearchTerm)
		newState.searchFilterFlat = flat or {}
		newState.searchFilterGraph = graph or {}
		self:UpdateState(isClientView, newState)
	end

	self.utilRef = Roact.createRef()

	self.state = {
		utilTabHeight = 0,
		showSimpleUI = true,
	}
end

function MainViewScriptProfiler:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset
	})

	self.statsConnector = self.props.ServerProfilingData:Signal():Connect(function(jsonString)
		local newState = table.clone(self.props.server)

		OnNewProfilingData(newState, jsonString)

		self:UpdateState(false, newState)
	end)
end

function MainViewScriptProfiler:willUnmount()
	self.statsConnector:Disconnect()
	self.statsConnector = nil
end

function MainViewScriptProfiler:didUpdate()
	local utilSize = self.utilRef.current.Size
	if utilSize.Y.Offset ~= self.state.utilTabHeight then
		self:setState({
			utilTabHeight = utilSize.Y.Offset
		})
	end
end

local function formatFreq(freq)
	if freq < 1000 then
		return tostring(freq) .. " Hz"
	else
		return tostring(freq / 1000) .. " KHz"
	end
end

local function formatTimer(secs: number?): string
	if secs ~= nil then
		if secs == 0 then
			return ""
		elseif secs >= 60 then
			return string.format(": %dm", secs / 60)
		else
			return string.format(": %ds", secs)
		end
	end

	return ""
end

function MainViewScriptProfiler:renderUtilButtons(state, simpleUIformFactor, showSimpleUI)
	local isProfiling = state.isProfiling

	local elements = {} :: {}

	-- Start/Stop Profiling
	table.insert(
		elements,
		Roact.createElement(BoxButton, {
			text = isProfiling and "Stop" or "Start",
			onClicked = isProfiling and self.onEndProfile or self.onBeginProfile,
		})
	)

	-- Switch Units Button
	if not showSimpleUI then
		table.insert(
			elements,
			Roact.createElement(BoxButton, {
				text = if self.props.usePercentages then "Unit: %" else "Unit: ms",
				onClicked = self.toggleUnits,
			})
		)
	end

	-- Change Sampling Frequency Button
	-- Since frequency is specified only when starting a new profiling session,
	-- this button is inactive while profiling.
	if FFlagScriptProfilerFrequencyControl and not showSimpleUI then
		table.insert(
			elements,
			Roact.createElement("TextButton", {
				Text = "Freq: " .. formatFreq(state.frequency),
				TextSize = TEXT_SIZE,
				TextColor3 = TEXT_COLOR,
				Font = FONT,

				AutoButtonColor = true,
				BackgroundColor3 = if isProfiling then Constants.Color.InactiveBox else BACKGROUND_COLOR,
				BackgroundTransparency = 0,

				[Roact.Event.Activated] = function()
					if not isProfiling then
						self.toggleFrequency()
					end
				end,
			})
		)
	end

	if FFlagScriptProfilerTimedProfiling and not showSimpleUI then
		table.insert(
			elements,
			Roact.createElement("TextButton", {
				Text = "Time"
					.. formatTimer(if isProfiling then state.timedProfilingCountdown else state.timedProfilingDuration),
				TextSize = TEXT_SIZE,
				TextColor3 = TEXT_COLOR,
				Font = FONT,

				AutoButtonColor = true,
				BackgroundColor3 = if isProfiling then Constants.Color.InactiveBox else BACKGROUND_COLOR,
				BackgroundTransparency = 0,

				[Roact.Event.Activated] = function()
					if not isProfiling then
						self.toggleTimedProfiling()
					end
				end,
			})
		)
	end

	if FFlagScriptProfilerAverages and not showSimpleUI then
		table.insert(
			elements,
			Roact.createElement("TextButton", {
				Text = "Average" .. formatTimer(state.average),
				TextSize = TEXT_SIZE,
				TextColor3 = TEXT_COLOR,
				Font = FONT,

				AutoButtonColor = true,
				BackgroundColor3 = BACKGROUND_COLOR,
				BackgroundTransparency = 0,

				[Roact.Event.Activated] = function()
					if not isProfiling then
						self.toggleAverage()
					end
				end,
			})
		)
	end

	if FFlagScriptProfilerExport and not showSimpleUI then
		table.insert(
			elements,
			Roact.createElement(BoxButton, {
				text = "Export",
				onClicked = self.props.dispatchStartExport,
			})
		)
	end

	if FFlagScriptProfilerFunctionsView and not showSimpleUI then
		table.insert(
			elements,
			Roact.createElement(DropDown, {
				buttonSize = UDim2.new(0, SMALL_DV_BUTTON_WIDTH, 0, SMALL_FRAME_HEIGHT),
				dropDownList = DATA_VIEW_DROPDOWN_NAMES,
				selectedIndex = state.isFunctionsView and 2 or 1,
				onSelection = self.dataViewDropDownCallback,
			})
		)
	end

	if simpleUIformFactor then
		table.insert(
			elements,
			Roact.createElement(BoxButton, {
				text = if showSimpleUI then "More..." else "Less...",
				onClicked = function()
					self:setState({ showSimpleUI = not self.state.showSimpleUI })
				end,
			})
		)
	end

	return elements
end

function MainViewScriptProfiler:render()
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList

	local isClientView, state = self:getActiveState()

	local isProfiling = state.isProfiling
	local profilingData = state.data
	local usePercentages = self.props.usePercentages
	local isFunctionsView = state.isFunctionsView
	local rootNode = state.rootNode
	local rootNodeName = state.rootNodeName

	local utilTabHeight = self.state.utilTabHeight

	local sessionLength = nil
	if profilingData and profilingData.SessionStartTime and profilingData.SessionEndTime then
		sessionLength = profilingData.SessionEndTime - profilingData.SessionStartTime
	end

	local checkBoxStates = {}
	local tmpCheckboxIndex = 1 -- Temporary, remove with each flag that uses checkboxes; ensures that each flagged entry does not depend on the others being enabled
	if FFlagScriptProfilerLiveUpdate then
		checkBoxStates[tmpCheckboxIndex] = { name = LIVE_UPDATE_TEXT, state = state.liveUpdate, }
	end

	if FFlagScriptProfilerShowPlugins then
		tmpCheckboxIndex += 1
		checkBoxStates[tmpCheckboxIndex] = { name = SHOW_PLUGINS_TEXT, state = state.showPlugins, }
	end

	if FFlagScriptProfilerHideGCOverhead then
		tmpCheckboxIndex += 1
		checkBoxStates[tmpCheckboxIndex] = { name = SHOW_GC_TEXT, state = state.showGC, }
	end

	if self.props.isExporting then
		return Roact.createElement("Frame", {
			Size = size,
			BackgroundColor3 = Constants.Color.BaseGray,
			BackgroundTransparency = 1,
			LayoutOrder = 3,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			UtilAndTab = Roact.createElement(UtilAndTab, {
				windowWidth = size.X.Offset,
				formFactor = formFactor,
				tabList = tabList,
				layoutOrder = 1,

				refForParent = self.utilRef,
				onHeightChanged = self.onUtilTabHeightChanged,

				onClientButton = self.onClientButton,
				onServerButton = self.onServerButton,
			}, {
				-- Exit export and return to profiler
				Roact.createElement(BoxButton, {
					text = "Exit",
					onClicked = self.props.dispatchFinishedExporting,
				}),
			}),

			ExportView = Roact.createElement(ProfilerExportView, {
				size = UDim2.new(1, 0, 1, -utilTabHeight),
			}),
		})
	end

	local simpleUIformFactor = formFactor == Constants.FormFactor.Small
	local showSimpleUI = FFlagScriptProfilerSimpleUI and simpleUIformFactor and self.state.showSimpleUI

	local utilButtons = self:renderUtilButtons(state, simpleUIformFactor, showSimpleUI)

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		LayoutOrder = 3,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		UtilAndTab = Roact.createElement(UtilAndTab, {
			windowWidth = size.X.Offset,
			formFactor = formFactor,
			tabList = tabList,
			layoutOrder = 1,
			isClientView = isClientView,

			refForParent = self.utilRef,
			onHeightChanged = self.onUtilTabHeightChanged,

			onClientButton = self.onClientButton,
			onServerButton = self.onServerButton,

			orderedCheckBoxState = checkBoxStates,
			onCheckBoxChanged = self.onCheckBoxChanged,

			onSearchTermChanged = self.onSearchTermChanged,
			searchTerm = state.searchTerm,
		}, utilButtons),

		ProfilerView = Roact.createElement(if isFunctionsView then ProfilerFunctionsView else ProfilerView, {
			size = UDim2.new(1, 0, 1, -utilTabHeight),
			searchFilter = if isFunctionsView then state.searchFilterFlat else state.searchFilterGraph,
			layoutOrder = 2,
			data = profilingData,
			profiling = isProfiling,
			showAsPercentages = usePercentages,
			sessionLength = sessionLength,
			rootNode = rootNode,
			rootNodeName = rootNodeName,
			average = state.average,
			showPlugins = state.showPlugins or not FFlagScriptProfilerShowPlugins,
			pluginOffsets = state.pluginOffsets,
			showGC = state.showGC or not FFlagScriptProfilerHideGCOverhead,
			gcFunctionOffsets = state.gcFunctionOffsets,
			gcNodeOffsets = state.gcNodeOffsets,
			pluginGCOffsets = state.pluginGCOffsets,
		})
	})
end

local function mapStateToProps(state, props)
	return {
		isClientView = state.ScriptProfiler.isClientView,
		usePercentages = state.ScriptProfiler.usePercentages,
		isExporting = state.ScriptProfiler.isExporting,

		client = state.ScriptProfiler.client,
		server = state.ScriptProfiler.server,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetScriptProfilerState = function(isClientView, usePercentages, clientSessionState, serverSessionState)
			dispatch(SetScriptProfilerState(isClientView, usePercentages, clientSessionState, serverSessionState))
		end,

		dispatchStartExport = function()
			dispatch(SetScriptProfilerState(nil, nil, nil, nil, true))
		end,

		dispatchFinishedExporting = function()
			dispatch(SetScriptProfilerState(nil, nil, nil, nil, false))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(
	DataConsumer(MainViewScriptProfiler, "ServerProfilingData")
)
