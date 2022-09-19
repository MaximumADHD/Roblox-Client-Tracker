local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local ScriptContext = game:GetService("ScriptContext")
local HttpService = game:GetService("HttpService")

local Components = script.Parent.Parent.Parent.Components
local UtilAndTab = require(Components.UtilAndTab)
local BoxButton = require(Components.BoxButton)
local ProfilerView = require(script.Parent.ProfilerView)

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding

local TESTING_DATA = nil -- Assign this to override the data for testing

local MainViewScriptProfiler = Roact.PureComponent:extend("MainViewScriptProfiler")

function MainViewScriptProfiler:init()

	self.onUtilTabHeightChanged = function(utilTabHeight)
		self:setState({
			utilTabHeight = utilTabHeight
		})
	end

	self.onBeginProfile = function ()
		ScriptContext:StartScriptProfiling()
		self:setState({
			isProfiling = true
		})
	end

	self.onEndProfile = function ()
		self:setState({
			profilingData = ScriptContext:StopScriptProfiling(),
			isProfiling = false
		})
	end

	self.toggleUnits = function ()
		self:setState(function (_)
			return {
				usePercentages = not self.state.usePercentages
			}
		end)
	end

	-- TODO: Implement these when we support server profiling
	-- self.onClientButton = function()
	-- 	self:setState({
	-- 		profilingData = Roact.None,
	-- 		isClientView = true
	-- 	})
	-- end

	-- self.onServerButton = function()
	-- 	self:setState({
	-- 		profilingData = Roact.None,
	-- 		isClientView = false
	-- 	})
	-- end

	-- TODO: Add support for searching the script profiler
	-- self.onSearchTermChanged = function(newSearchTerm)
		
	-- end

	self.utilRef = Roact.createRef()

	self.state = {
		utilTabHeight = 0,
		isClientView = true,
		isProfiling = false,
		usePercentages = false,
		profilingData = TESTING_DATA,
	}
end

function MainViewScriptProfiler:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset
	})
end

function MainViewScriptProfiler:didUpdate()
	local utilSize = self.utilRef.current.Size
	if utilSize.Y.Offset ~= self.state.utilTabHeight then
		self:setState({
			utilTabHeight = utilSize.Y.Offset
		})
	end
end

function MainViewScriptProfiler:render()
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList
	local scriptFilters = self.props.serverTypeFilters

	local isProfiling = self.state.isProfiling
	local isClientView = self.state.isClientView
	local profilingData = self.state.profilingData

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

			-- TODO: Implement these when we support server profiling
			-- onClientButton = self.onClientButton,
			-- onServerButton = self.onServerButton,

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

return MainViewScriptProfiler
