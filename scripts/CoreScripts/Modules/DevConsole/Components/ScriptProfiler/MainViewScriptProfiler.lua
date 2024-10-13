local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ScriptContext = game:GetService("ScriptContext")
local ScriptProfiler = game:GetService("ScriptProfilerService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

local Immutable = require(script.Parent.Parent.Parent.Immutable)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local UtilAndTab = require(Components.UtilAndTab)
local BoxButton = require(Components.BoxButton)
local DropDown = require(Components.DropDown)
local ProfilerView = require(script.Parent.ProfilerView)
local ProfilerFunctionsView = require(script.Parent.ProfilerFunctionsView)
local ProfilerData = require(script.Parent.ProfilerDataFormatV2)
local ProfilerExportView = require(script.Parent.ProfilerExportView)
local MobileSettingsView = require(script.Parent.MobileSettingsView)

local ProfilerUtil = require(script.Parent.ProfilerUtil)
local getPluginFlag = ProfilerUtil.getPluginFlag
local getDurations = ProfilerUtil.getDurations
local formatFreq = ProfilerUtil.formatFrequency

local Actions = script.Parent.Parent.Parent.Actions
local SetScriptProfilerState = require(Actions.SetScriptProfilerState)
local SetIsProfiling = require(script.Parent.Actions.SetIsProfiling)
local SetData = require(script.Parent.Actions.SetData)
local SetThreads = require(script.Parent.Actions.SetThreads)
local SetTimerState = require(script.Parent.Actions.SetTimerState)
local ClearStateForNewProfilingSession = require(script.Parent.Actions.ClearStateForNewProfilingSession)
local SetAverage = require(script.Parent.Actions.SetAverage)
local SetFrequency = require(script.Parent.Actions.SetFrequency)
local SetDataView = require(script.Parent.Actions.SetDataView)
local SetLiveUpdate = require(script.Parent.Actions.SetLiveUpdate)
local SetShowPlugins = require(script.Parent.Actions.SetShowPlugins)
local SetShowGC = require(script.Parent.Actions.SetShowGC)
local SetSearchData = require(script.Parent.Actions.SetSearchData)

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

local FFlagScriptProfilerShowPlugins = game:DefineFastFlag("ScriptProfilerShowPlugins2", false)
local FFlagScriptProfilerNoClientRepl = game:DefineFastFlag("ScriptProfilerNoClientRepl", false)

local FIntScriptProfilerLiveUpdateIntervalMS = game:DefineFastInt("ScriptProfilerLiveUpdateIntervalMS", 1000)

local DATA_VIEW_DROPDOWN_NAMES = { "Callgraph", "Functions" }
local SMALL_DV_BUTTON_WIDTH = 100

type SearchFilterType = { [number]: boolean }

local function annotateSearchFilterNodes(
	data: ProfilerData.RootDataFormat,
	searchFilterFuncs: SearchFilterType,
	searchFilterNodes: SearchFilterType,
	funcId: number,
	nodeId: number,
	parentIsMatch: boolean
): boolean
	local node = data.Nodes[nodeId]

	if not node.Children then
		searchFilterNodes[nodeId] = (funcId > 0 and searchFilterFuncs[funcId]) or parentIsMatch
		return funcId > 0 and searchFilterFuncs[funcId]
	end

	local children = node.Children :: { [ProfilerData.FunctionId]: ProfilerData.NodeId }

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
			local match =
				annotateSearchFilterNodes(data, searchFilterFuncs, searchFilterNodes, functionId, nodeId, parentIsMatch)

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
		local name = ProfilerUtil.getName(data, func)

		if name and string.find(name, searchTerm, 1, true) then
			searchFilterFuncs[i] = true
		end
	end

	local searchFilterNodes = table.create(#data.Nodes, false)

	for i, cat in data.Categories do
		annotateSearchFilterNodes(data, searchFilterFuncs, searchFilterNodes, 0, cat.NodeId, false)
	end

	-- Perform matching against source name after annotating searchFilterNodes so that searching for source name works in Functions view, but not Callgraph view.
	for i, func in data.Functions do
		if searchFilterFuncs[i] == true then
			continue
		end

		local name = ProfilerUtil.getName(data, func)
		if not name then
			local source = ProfilerUtil.getSourceName(data, func)
			if source and string.find(source, searchTerm, 1, true) then
				searchFilterFuncs[i] = true
			end
		end
	end

	return searchFilterFuncs, searchFilterNodes
end

local function generatePluginDurationOffsets(
	gcNodeOffsets: { [number]: number, Total: number? },
	data: ProfilerData.RootDataFormat?
): (
	{ [number]: number, Total: number? },
	{ [number]: number, Total: number? }
)
	if data then
		assert(data.Version == 2)

		local offsets = table.create(#data.Categories, 0) :: { [number]: number, Total: number }
		local gcOffsets = table.create(#data.Categories, 0) :: { [number]: number, Total: number }

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
						offset += getDurations(data, nodeId)

						if #gcNodeOffsets > 0 then
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

local function getGCOverhead(
	funcOffsets: { number },
	nodeOffsets: { number },
	data: ProfilerData.RootDataFormat,
	nodeId: ProfilerData.NodeId,
	gcFuncId: ProfilerData.FunctionId
): number
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

local function generateGCOverheadOffsets(
	data: ProfilerData.RootDataFormat?
): ({ number }, { [number]: number, Total: number? })
	if data and data.GCFuncId then
		local gcFuncId = data.GCFuncId

		local funcOffsets = table.create(#data.Functions, 0)
		local nodeOffsets = table.create(#data.Nodes, 0) :: { [number]: number, Total: number? }

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

local function OnNewProfilingData(state, oldState, jsonString: string?)
	state.serializedData = jsonString
	state.data = ScriptProfiler:DeserializeJSON(jsonString)

	state.gcFunctionOffsets, state.gcNodeOffsets = generateGCOverheadOffsets(state.data)

	if FFlagScriptProfilerShowPlugins then
		state.pluginOffsets, state.pluginGCOffsets = generatePluginDurationOffsets(state.gcNodeOffsets, state.data)
	end

	local count = if state.data then #state.data.Nodes else 0
	local oldCount = if oldState.data then #oldState.data.Nodes else 0
	local newExpandedNodes = table.create(count, false)
	local oldExpandedNodes = oldState.expandedNodes
	table.move(oldExpandedNodes, 1, oldCount, 1, newExpandedNodes)
	state.expandedNodes = newExpandedNodes
end

function MainViewScriptProfiler:init()
	local function StartScriptProfiling(isClient, state)
		if isClient then
			ScriptProfiler:ClientStart(Players.LocalPlayer :: Player, state.frequency)
		else
			ScriptProfiler:ServerStart(state.frequency)
		end
	end

	local function StopScriptProfiling(isClient): string?
		if isClient then
			ScriptProfiler:ClientStop(Players.LocalPlayer :: Player)
		else
			ScriptProfiler:ServerStop()
		end
		return nil
	end

	local function RequestNewData(isClient)
		if isClient then
			ScriptProfiler:ClientRequestData(Players.LocalPlayer :: Player)
		else
			ScriptProfiler:ServerRequestData()
		end
	end

	local function StopTimedProfiling(isClient)
		local state = self:getState(isClient)

		if state.isProfiling then
			local jsonString = StopScriptProfiling(isClient)

			self.props.dispatchSetIsProfiling(isClient, false)

			RequestNewData(isClient)
		end
	end

	self.onUtilTabHeightChanged = function(utilTabHeight)
		self:setState({
			utilTabHeight = utilTabHeight,
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

			self.props.dispatchSetTimer(isClient, { timedProfilingCountdown = countdown - DELTA })
		end
	end

	local function LiveUpdate(isClient)
		while task.wait(FIntScriptProfilerLiveUpdateIntervalMS / 1000) do
			local state = self:getState(isClient)

			if state.liveUpdate then
				RequestNewData(isClient)
			end
		end
	end

	self.onBeginProfile = function()
		local isClientView, state = self:getActiveState()

		StartScriptProfiling(isClientView, state)

		self.props.dispatchSetIsProfiling(isClientView, true)
		self.props.dispatchClearStateForNewSession(isClientView)

		local threads = {}

		if state.timedProfilingDuration > 0 then
			self.props.dispatchSetTimer(isClientView, { timedProfilingCountdown = state.timedProfilingDuration })

			threads.timedProfilingThread = task.delay(state.timedProfilingDuration, function()
				StopTimedProfiling(isClientView)
			end)

			threads.timedProfilingTimerThread = task.spawn(function()
				UpdateTimedProfilingTimer(isClientView)
			end)
		end

		threads.liveUpdateThread = task.spawn(LiveUpdate, isClientView)

		self.props.dispatchSetThreads(isClientView, threads)
	end

	self.onEndProfile = function()
		local isClientView, state = self:getActiveState()

		local jsonString = StopScriptProfiling(isClientView)

		local newState = {}

		if state.timedProfilingThread then
			task.cancel(state.timedProfilingThread)
			newState.timedProfilingThread = nil
		end

		if state.timedProfilingTimerThread then
			task.cancel(state.timedProfilingTimerThread)
			newState.timedProfilingTimerThread = nil
		end

		if state.liveUpdateThread then
			task.cancel(state.liveUpdateThread)
			newState.liveUpdateThread = nil
		end

		self.props.dispatchSetThreads(isClientView, {})
		self.props.dispatchSetIsProfiling(isClientView, false)

		RequestNewData(isClientView)
	end

	self.toggleTimedProfiling = function()
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

		self.props.dispatchSetTimer(isClientView, { timedProfilingDuration = duration })
	end

	self.toggleAverage = function()
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

		self.props.dispatchSetAverage(isClientView, average)
	end

	self.toggleUnits = function()
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

		self.props.dispatchSetFrequency(isClientView, freq)
	end

	self.onClientButton = function()
		self.props.dispatchSetScriptProfilerState(true)
	end

	self.onServerButton = function()
		self.props.dispatchSetScriptProfilerState(false)
	end

	self.dataViewDropDownCallback = function(index)
		local isClientView, state = self:getActiveState()

		local isFunctionsView = state.isFunctionsView

		if index == 1 then
			isFunctionsView = false
		elseif index == 2 then
			isFunctionsView = true
		end

		self.props.dispatchSetDataView(isClientView, isFunctionsView)
	end

	self.onCheckBoxChanged = function(boxName, newValue)
		local isClientView = self.props.isClientView

		if boxName == LIVE_UPDATE_TEXT then
			self.props.dispatchSetLiveUpdate(isClientView, newValue)
		elseif boxName == SHOW_PLUGINS_TEXT then
			self.props.dispatchSetShowPlugins(isClientView, newValue)
		elseif boxName == SHOW_GC_TEXT then
			self.props.dispatchSetShowGC(isClientView, newValue)
		end
	end

	self.onSearchTermChanged = function(newSearchTerm)
		local isClientView, state = self:getActiveState()

		local flat, graph = generateSearchFilters(state, newSearchTerm)

		self.props.dispatchSetSearchData(
			isClientView,
			{ searchTerm = newSearchTerm, searchFilterFlat = flat or {}, searchFilterGraph = graph or {} }
		)
	end

	self.utilRef = Roact.createRef()

	self.state = {
		utilTabHeight = 0,
	}
end

function MainViewScriptProfiler:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset,
	})

	self.scriptProfilerConnection = ScriptProfiler.OnNewData:Connect(function(player, jsonString)
		local isClient = (player ~= nil)

		local oldState = self:getState(isClient)
		local newState = {}

		OnNewProfilingData(newState :: any, oldState, jsonString)

		self.props.dispatchSetData(isClient, newState)
	end)
end

function MainViewScriptProfiler:willUnmount()
	self.scriptProfilerConnection:Disconnect()
	self.scriptProfilerConnection = nil
end

function MainViewScriptProfiler:didUpdate()
	local utilSize = self.utilRef.current.Size
	if utilSize.Y.Offset ~= self.state.utilTabHeight then
		self:setState({
			utilTabHeight = utilSize.Y.Offset,
		})
	end
end

local function formatTimer(secs: number?): string
	local result = ProfilerUtil.formatTimer(secs)

	if result ~= "" then
		return ": " .. result
	end

	return result
end

function MainViewScriptProfiler:renderUtilButtons(state, mobileUIformFactor, showSimpleUI)
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
	if not showSimpleUI then
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

	if not showSimpleUI then
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

	if not showSimpleUI then
		table.insert(
			elements,
			Roact.createElement("TextButton", {
				Text = "Average" .. formatTimer(state.average),
				TextSize = TEXT_SIZE,
				TextColor3 = TEXT_COLOR,
				Font = FONT,

				AutoButtonColor = true,
				BackgroundColor3 = if isProfiling then Constants.Color.InactiveBox else BACKGROUND_COLOR,
				BackgroundTransparency = 0,

				[Roact.Event.Activated] = function()
					if not isProfiling then
						self.toggleAverage()
					end
				end,
			})
		)
	end

	if not showSimpleUI then
		table.insert(
			elements,
			Roact.createElement(BoxButton, {
				text = "Export",
				onClicked = self.props.dispatchStartExport,
			})
		)
	end

	if not showSimpleUI then
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

	if mobileUIformFactor then
		table.insert(
			elements,
			Roact.createElement(BoxButton, {
				text = "More...",
				onClicked = function()
					self.props.dispatchShowMobileSettings()
				end,
			})
		)
	end

	return elements
end

function MainViewScriptProfiler:renderUtilAndTab(props: {}, elements: {})
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList

	return Roact.createElement(
		UtilAndTab,
		Immutable.JoinDictionaries({
			windowWidth = size.X.Offset,
			formFactor = formFactor,
			tabList = tabList,
			layoutOrder = 1,

			refForParent = self.utilRef,
			onHeightChanged = self.onUtilTabHeightChanged,
		}, props),
		elements
	)
end

function MainViewScriptProfiler:renderExportView()
	local size = self.props.size
	local utilTabHeight = self.state.utilTabHeight

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

		UtilAndTab = self:renderUtilAndTab({}, {
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

function MainViewScriptProfiler:renderMobileSettingsUI()
	local size = self.props.size
	local utilTabHeight = self.state.utilTabHeight

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

		UtilAndTab = self:renderUtilAndTab({}, {
			-- Go to export screen from mobile settings
			Roact.createElement(BoxButton, {
				text = "Export",
				onClicked = self.props.dispatchStartExport,
			}),

			-- Exit mobile settings and return to profiler
			Roact.createElement(BoxButton, {
				text = "Exit",
				onClicked = self.props.dispatchHideMobileSettings,
			}),
		}),

		MobileSettingsView = Roact.createElement(MobileSettingsView, {
			size = UDim2.new(1, 0, 1, -utilTabHeight),
		}),
	})
end

function MainViewScriptProfiler:renderProfilerView(isClientView, state, utilButtons, checkBoxStates)
	local isProfiling = state.isProfiling
	local profilingData = state.data
	local usePercentages = self.props.usePercentages
	local isFunctionsView = state.isFunctionsView
	local rootNode = state.rootNode
	local rootNodeName = state.rootNodeName
	local rootFunc = state.rootFunc

	local size = self.props.size
	local utilTabHeight = self.state.utilTabHeight

	local sessionLength = nil
	if profilingData and profilingData.SessionStartTime and profilingData.SessionEndTime then
		sessionLength = profilingData.SessionEndTime - profilingData.SessionStartTime
	end

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

		UtilAndTab = self:renderUtilAndTab({
			isClientView = isClientView,

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
			rootFunc = rootFunc,
			rootNodeName = rootNodeName,
			average = state.average,
			showPlugins = state.showPlugins or not FFlagScriptProfilerShowPlugins,
			pluginOffsets = state.pluginOffsets,
			showGC = state.showGC,
			gcFunctionOffsets = state.gcFunctionOffsets,
			gcNodeOffsets = state.gcNodeOffsets,
			pluginGCOffsets = state.pluginGCOffsets,
			expandedNodes = if isFunctionsView then nil else state.expandedNodes,
		}),
	})
end

function MainViewScriptProfiler:render()
	if self.props.isExporting then
		return self:renderExportView()
	end

	if self.props.isShowingMobileSettings then
		return self:renderMobileSettingsUI()
	end

	local formFactor = self.props.formFactor

	local isClientView, state = self:getActiveState()

	local checkBoxStates = {}
	local tmpCheckboxIndex = 1 -- Temporary, remove with each flag that uses checkboxes; ensures that each flagged entry does not depend on the others being enabled

	local mobileUIformFactor = formFactor == Constants.FormFactor.Small

	if not mobileUIformFactor then
		checkBoxStates[1] = { name = LIVE_UPDATE_TEXT, state = state.liveUpdate }

		if FFlagScriptProfilerShowPlugins then
			tmpCheckboxIndex += 1
			checkBoxStates[tmpCheckboxIndex] = { name = SHOW_PLUGINS_TEXT, state = state.showPlugins }
		end

		tmpCheckboxIndex += 1
		checkBoxStates[tmpCheckboxIndex] = { name = SHOW_GC_TEXT, state = state.showGC }
	end

	local utilButtons = self:renderUtilButtons(
		state,
		mobileUIformFactor,
		mobileUIformFactor
	)

	return self:renderProfilerView(isClientView, state, utilButtons, checkBoxStates)
end

local function mapStateToProps(state, props)
	return {
		isClientView = state.ScriptProfiler.isClientView,
		usePercentages = state.ScriptProfiler.usePercentages,
		isExporting = state.ScriptProfiler.isExporting,
		isShowingMobileSettings = state.ScriptProfiler.isShowingMobileSettings,

		client = state.ScriptProfiler.client,
		server = state.ScriptProfiler.server,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetScriptProfilerState = function(isClientView, usePercentages, clientSessionState, serverSessionState)
			dispatch(SetScriptProfilerState(isClientView, usePercentages, clientSessionState, serverSessionState))
		end,

		dispatchSetIsProfiling = function(isClient, isProfiling)
			dispatch(SetIsProfiling(isClient, isProfiling))
		end,

		dispatchSetData = function(isClient, state)
			dispatch(SetData(isClient, state))
		end,

		dispatchSetThreads = function(isClient, state)
			dispatch(SetThreads(isClient, state))
		end,

		dispatchSetTimer = function(isClient, state)
			dispatch(SetTimerState(isClient, state))
		end,

		dispatchClearStateForNewSession = function(isClient)
			dispatch(ClearStateForNewProfilingSession(isClient))
		end,

		dispatchSetAverage = function(isClient, average)
			dispatch(SetAverage(isClient, average))
		end,

		dispatchSetFrequency = function(isClient, frequency)
			dispatch(SetFrequency(isClient, frequency))
		end,

		dispatchSetDataView = function(isClient, isFunctionsView)
			dispatch(SetDataView(isClient, isFunctionsView))
		end,

		dispatchSetLiveUpdate = function(isClient, liveUpdate)
			dispatch(SetLiveUpdate(isClient, liveUpdate))
		end,

		dispatchSetShowPlugins = function(isClient, showPlugins)
			dispatch(SetShowPlugins(isClient, showPlugins))
		end,

		dispatchSetShowGC = function(isClient, showGC)
			dispatch(SetShowGC(isClient, showGC))
		end,

		dispatchSetSearchData = function(isClient, state)
			dispatch(SetSearchData(isClient, state))
		end,

		dispatchStartExport = function()
			dispatch(SetScriptProfilerState(nil, nil, nil, nil, true))
		end,

		dispatchFinishedExporting = function()
			dispatch(SetScriptProfilerState(nil, nil, nil, nil, false))
		end,

		dispatchShowMobileSettings = function()
			dispatch(SetScriptProfilerState(nil, nil, nil, nil, nil, true))
		end,

		dispatchHideMobileSettings = function()
			dispatch(SetScriptProfilerState(nil, nil, nil, nil, nil, false))
		end,
	}
end

if FFlagScriptProfilerNoClientRepl then
	return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MainViewScriptProfiler)
else
	return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(
		DataConsumer(MainViewScriptProfiler, "ServerProfilingData")
	)
end
