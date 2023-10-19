local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ScriptContext = game:GetService("ScriptContext")
local HttpService = game:GetService("HttpService")

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local UtilAndTab = require(Components.UtilAndTab)
local BoxButton = require(Components.BoxButton)
local ProfilerView = require(script.Parent.ProfilerView)

local Actions = script.Parent.Parent.Parent.Actions
local SetScriptProfilerState = require(Actions.SetScriptProfilerState)

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding

local FONT = Constants.Font.MainWindowHeader
local TEXT_SIZE = Constants.DefaultFontSize.MainWindowHeader
local TEXT_COLOR = Constants.Color.Text
local BACKGROUND_COLOR = Constants.Color.UnselectedGray

local TESTING_DATA = nil -- Assign this to override the data for testing

local MainViewScriptProfiler = Roact.PureComponent:extend("MainViewScriptProfiler")

local getClientReplicator = require(script.Parent.Parent.Parent.Util.getClientReplicator)

local FFlagScriptProfilerFrequencyControl = game:DefineFastFlag("ScriptProfilerFrequencyControl", false)
local FFlagScriptProfilerSaveState = game:DefineFastFlag("ScriptProfilerSaveState", false)
local FFlagScriptProfilerTimedProfiling = game:DefineFastFlag("ScriptProfilerTimedProfiling", false)

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

	local function StopScriptProfiling(isClient)
		if isClient then
			local data = ScriptContext:StopScriptProfiling() :: any
			return ScriptContext:DeserializeScriptProfilerString(data)
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
			local data = StopScriptProfiling(isClient)

			local newState = table.clone(state)
			newState.isProfiling = false
			newState.data = data
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

		while wait(DELTA) do
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

	self.onBeginProfile = function ()

		if FFlagScriptProfilerSaveState then
			local isClientView, state = self:getActiveState()

			StartScriptProfiling(isClientView, state)

			local newState = table.clone(state)
			newState.isProfiling = true

			if FFlagScriptProfilerTimedProfiling and state.timedProfilingDuration > 0 then
				newState.timedProfilingCountdown = state.timedProfilingDuration

				newState.timedProfilingThread = task.delay(state.timedProfilingDuration, function()
					StopTimedProfiling(isClientView)
				end)

				newState.timedProfilingTimerThread = task.spawn(function()
					UpdateTimedProfilingTimer(isClientView)
				end)
			end

			self:UpdateState(isClientView, newState)
			return
		end

		if self.state.isClientView then
			if FFlagScriptProfilerFrequencyControl then
				ScriptContext:StartScriptProfiling(self.state.clientFrequency)
			else
				ScriptContext:StartScriptProfiling()
			end

			self:setState({
				clientIsProfiling = true
			})
		else
			local clientReplicator = getClientReplicator()
			if clientReplicator then
				if FFlagScriptProfilerFrequencyControl then
					clientReplicator:RequestServerScriptProfiling(true, self.state.serverFrequency)
				else
					clientReplicator:RequestServerScriptProfiling(true)
				end
			end

			self:setState({
				serverIsProfiling = true
			})
		end
	end

	self.onEndProfile = function ()

		if FFlagScriptProfilerSaveState then
			local isClientView, state = self:getActiveState()

			local data = StopScriptProfiling(isClientView)

			local newState = table.clone(state)
			newState.isProfiling = false
			newState.data = data

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

			self:UpdateState(isClientView, newState)
			return
		end

		if self.state.isClientView then
			local data = ScriptContext:StopScriptProfiling() :: any

			self:setState({
				clientProfilingData = ScriptContext:DeserializeScriptProfilerString(data),
				clientIsProfiling = false
			})
		else
			local clientReplicator = getClientReplicator()
			if clientReplicator then
				clientReplicator:RequestServerScriptProfiling(false)
			end

			self:setState({
				serverProfilingData = nil,
				serverIsProfiling = false
			})
		end
	end

	self.toggleTimedProfiling = function ()
		if FFlagScriptProfilerSaveState then
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
	end

	self.toggleUnits = function ()
		if FFlagScriptProfilerSaveState then
			self.props.dispatchSetScriptProfilerState(nil, not self.props.usePercentages, nil, nil)
		else
			self:setState(function (_)
				return {
					usePercentages = not self.state.usePercentages
				}
			end)
		end
	end

	self.toggleFrequency = function()

		if FFlagScriptProfilerSaveState then
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
			return
		end

		if self.state.isClientView then
			local freq = self.state.clientFrequency

			if freq == 1000 then
				freq = 10000
			else
				freq = 1000
			end

			self:setState({
				clientFrequency = freq;
			})
		else
			local freq = self.state.serverFrequency

			if freq == 1000 then
				freq = 10000
			else
				freq = 1000
			end

			self:setState({
				serverFrequency = freq;
			})
		end
	end

	self.onClientButton = function()
		if FFlagScriptProfilerSaveState then
			self.props.dispatchSetScriptProfilerState(true)
		else
			self:setState({
				isClientView = true
			})
		end
	end

	self.onServerButton = function()
		if FFlagScriptProfilerSaveState then
			self.props.dispatchSetScriptProfilerState(false)
		else
			self:setState({
				isClientView = false
			})
		end
	end

	-- TODO: Add support for searching the script profiler
	-- self.onSearchTermChanged = function(newSearchTerm)
		
	-- end

	self.utilRef = Roact.createRef()

	if FFlagScriptProfilerSaveState then
		self.state = {
			utilTabHeight = 0,
		}
	else
		self.state = {
			utilTabHeight = 0,
			isClientView = true,
			clientIsProfiling = false,
			serverIsProfiling = false,
			usePercentages = false,
			clientProfilingData = TESTING_DATA,
			serverProfilingData = TESTING_DATA,
			clientFrequency = 1000,
			serverFrequency = 1000,
		}
	end
end

function MainViewScriptProfiler:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset
	})

	self.statsConnector = self.props.ServerProfilingData:Signal():Connect(function(data)
		if FFlagScriptProfilerSaveState then
			local newState = table.clone(self.props.server)
			newState.data = data
			self:UpdateState(false, newState)
		else
			self:setState({
				serverProfilingData = data,
			})
		end
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

function MainViewScriptProfiler:render()
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList
	local scriptFilters = self.props.serverTypeFilters

	local isClientView
	local state

	local isProfiling
	local profilingData
	local frequency
	local usePercentages

	if FFlagScriptProfilerSaveState then
		isClientView, state = self:getActiveState()
		isProfiling = state.isProfiling
		profilingData = state.data
		frequency = state.frequency

		usePercentages = self.props.usePercentages
	else
		isClientView = self.state.isClientView
		usePercentages = self.state.usePercentages
		if isClientView then
			isProfiling = self.state.clientIsProfiling
			profilingData = self.state.clientProfilingData
			frequency = self.state.clientFrequency
		else
			isProfiling = self.state.serverIsProfiling
			profilingData = self.state.serverProfilingData
			frequency = self.state.serverFrequency
		end
	end

	local utilTabHeight = self.state.utilTabHeight
	local searchTerm =  self.props.serverSearchTerm

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

			-- TODO: Add support for searching the script profiler
			-- onSearchTermChanged = self.onSearchTermChanged,
			-- searchTerm = searchTerm,
		}, {
			-- Start/Stop Profiling
			Roact.createElement(BoxButton, {
				text = isProfiling and "Stop" or "Start",
				onClicked = isProfiling and self.onEndProfile or self.onBeginProfile
			}),
			-- Switch Units Button
			Roact.createElement(BoxButton, {
				text = if usePercentages then "Unit: %" else "Unit: ms",
				onClicked = self.toggleUnits,
			}),
			-- Change Sampling Frequency Button
			-- Since frequency is specified only when starting a new profiling session,
			-- this button is inactive while profiling.
			FFlagScriptProfilerFrequencyControl and Roact.createElement("TextButton", {
				Text = "Freq: " .. formatFreq(frequency),
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
			}) :: any,

			FFlagScriptProfilerTimedProfiling and FFlagScriptProfilerSaveState and Roact.createElement("TextButton", {
				Text = "Time" .. formatTimer(if isProfiling then state.timedProfilingCountdown else state.timedProfilingDuration),
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
			}) :: any,
		}),

		ProfilerView = Roact.createElement(ProfilerView, {
			size = UDim2.new(1, 0, 1, -utilTabHeight),
			searchTerm = searchTerm,
			layoutOrder = 2,
			data = profilingData,
			profiling = isProfiling,
			showAsPercentages = usePercentages,
			sessionLength = sessionLength,
		})
	})
end

if FFlagScriptProfilerSaveState then
	local function mapStateToProps(state, props)
		return {
			isClientView = state.ScriptProfiler.isClientView,
			usePercentages = state.ScriptProfiler.usePercentages,

			client = state.ScriptProfiler.client,
			server = state.ScriptProfiler.server,
		}
	end

	local function mapDispatchToProps(dispatch)
		return {
			dispatchSetScriptProfilerState = function(isClientView, usePercentages, clientSessionState, serverSessionState)
				dispatch(SetScriptProfilerState(isClientView, usePercentages, clientSessionState, serverSessionState))
			end,
		}
	end

	return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(
		DataConsumer(MainViewScriptProfiler, "ServerProfilingData")
	)
else
	return DataConsumer(MainViewScriptProfiler, "ServerProfilingData")
end
