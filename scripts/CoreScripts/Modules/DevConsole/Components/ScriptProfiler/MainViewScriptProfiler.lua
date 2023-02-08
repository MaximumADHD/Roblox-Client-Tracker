local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local ScriptContext = game:GetService("ScriptContext")
local HttpService = game:GetService("HttpService")

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local UtilAndTab = require(Components.UtilAndTab)
local BoxButton = require(Components.BoxButton)
local ProfilerView = require(script.Parent.ProfilerView)

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

function MainViewScriptProfiler:init()

	self.onUtilTabHeightChanged = function(utilTabHeight)
		self:setState({
			utilTabHeight = utilTabHeight
		})
	end

	self.onBeginProfile = function ()
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

	self.toggleUnits = function ()
		self:setState(function (_)
			return {
				usePercentages = not self.state.usePercentages
			}
		end)
	end

	self.toggleFrequency = function()
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
		self:setState({
			isClientView = true
		})
	end

	self.onServerButton = function()
		self:setState({
			isClientView = false
		})
	end

	-- TODO: Add support for searching the script profiler
	-- self.onSearchTermChanged = function(newSearchTerm)
		
	-- end

	self.utilRef = Roact.createRef()

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

function MainViewScriptProfiler:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset
	})

	self.statsConnector = self.props.ServerProfilingData:Signal():Connect(function(data)
		self:setState({
			serverProfilingData = data,
		})
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

function MainViewScriptProfiler:render()
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList
	local scriptFilters = self.props.serverTypeFilters

	local isClientView = self.state.isClientView

	local isProfiling
	local profilingData
	local frequency
	if isClientView then
		isProfiling = self.state.clientIsProfiling
		profilingData = self.state.clientProfilingData
		frequency = self.state.clientFrequency
	else
		isProfiling = self.state.serverIsProfiling
		profilingData = self.state.serverProfilingData
		frequency = self.state.serverFrequency
	end

	local utilTabHeight = self.state.utilTabHeight
	local searchTerm =  self.props.serverSearchTerm

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
				text = if self.state.usePercentages then "Unit: %" else "Unit: ms",
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
		}),

		ProfilerView = Roact.createElement(ProfilerView, {
			size = UDim2.new(1, 0, 1, -utilTabHeight),
			searchTerm = searchTerm,
			layoutOrder = 2,
			data = profilingData,
			profiling = isProfiling,
			showAsPercentages = self.state.usePercentages
		})
	})
end

return DataConsumer(MainViewScriptProfiler, "ServerProfilingData")
