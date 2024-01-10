--!strict
-- The root view of the Luau heap memory profiling tool, includes Client/Server selector, snapshot create/clear buttons and the LuauHeapView component
local CorePackages = game:GetService("CorePackages")
local ScriptContext = game:GetService("ScriptContext")
local HttpService = game:GetService("HttpService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local UtilAndTab = require(Components.UtilAndTab)
local BoxButton = require(Components.BoxButton)
local LuauHeapView = require(script.Parent.LuauHeapView)
local LuauHeapTypes = require(script.Parent.LuauHeapTypes)

local Actions = script.Parent.Parent.Parent.Actions
local SetLuauHeapState = require(Actions.SetLuauHeapState)
local SetLuauHeapProfileTarget = require(Actions.SetLuauHeapProfileTarget)

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding

local MainViewLuauHeap = Roact.PureComponent:extend("MainViewLuauHeap")

local getClientReplicator = require(script.Parent.Parent.Parent.Util.getClientReplicator)

local LuauHeapProfilerReplicationEngineFeature = game:GetEngineFeature("LuauHeapProfilerReplication")

function MainViewLuauHeap:getState(isClient: boolean): LuauHeapTypes.SessionState
	return if isClient then self.props.client else self.props.server
end

function MainViewLuauHeap:getActiveState(): (boolean, LuauHeapTypes.SessionState)
	return self.props.isClientView, self:getState(self.props.isClientView)
end

function MainViewLuauHeap:init()
	self.onUtilTabHeightChanged = function(utilTabHeight)
		self:setState({
			utilTabHeight = utilTabHeight,
		})
	end

	self.onClientButton = function()
		self.props.dispatchSetLuauHeapProfileTarget(true)
	end

	self.onServerButton = function()
		self.props.dispatchSetLuauHeapProfileTarget(false)
	end

	self.onCreateSnapshot = function()
		local isClientView, state = self:getActiveState()

		if isClientView then
			local snapshot = ScriptContext:GetLuauHeapMemoryReport("game") :: LuauHeapTypes.HeapReport

			snapshot.Refs = ScriptContext:GetLuauHeapInstanceReferenceReport("game") :: LuauHeapTypes.UniqueRefReport

			local newState: LuauHeapTypes.SessionState = table.clone(state)

			table.insert(newState.snapshots, snapshot)

			newState.active = #newState.snapshots

			self.props.dispatchSetLuauHeapState(true, newState)
		else
			local clientReplicator = getClientReplicator()

			if clientReplicator then
				clientReplicator:RequestServerLuauHeapData()
			end
		end
	end

	self.onClearSnapshots = function()
		local isClientView, state = self:getActiveState()

		local newState: LuauHeapTypes.SessionState = table.clone(state)

		table.clear(newState.snapshots)
		newState.active = 0

		self.props.dispatchSetLuauHeapState(isClientView, newState)
	end

	self.utilRef = Roact.createRef()

	self.state = {
		utilTabHeight = 0,
	}
end

function MainViewLuauHeap:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset,
	})

	self.statsConnector = self.props.LuauHeapData:Signal():Connect(function(data)
		local state = self:getState(false)

		local snapshot = data.Report :: LuauHeapTypes.HeapReport
		local refs = data.Refs :: LuauHeapTypes.UniqueRefReport

		snapshot.Refs = refs

		local newState: LuauHeapTypes.SessionState = table.clone(state)

		table.insert(newState.snapshots, snapshot)

		newState.active = #newState.snapshots

		self.props.dispatchSetLuauHeapState(false, newState)
	end)
end

function MainViewLuauHeap:willUnmount()
	self.statsConnector:Disconnect()
	self.statsConnector = nil
end

function MainViewLuauHeap:didUpdate()
	local utilSize = self.utilRef.current.Size
	if utilSize.Y.Offset ~= self.state.utilTabHeight then
		self:setState({
			utilTabHeight = utilSize.Y.Offset,
		})
	end
end

function MainViewLuauHeap:render()
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList

	local utilTabHeight = self.state.utilTabHeight

	local isClientView, state = self:getActiveState()

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

			onClientButton = self.onClientButton,
			onServerButton = if LuauHeapProfilerReplicationEngineFeature then self.onServerButton else nil,

			refForParent = self.utilRef,
			onHeightChanged = self.onUtilTabHeightChanged,
		}, {
			Roact.createElement(BoxButton, {
				text = "Create Snaphot",
				onClicked = self.onCreateSnapshot,
			}),

			Roact.createElement(BoxButton, {
				text = "Clear Snapshots",
				onClicked = self.onClearSnapshots,
			}),
		}),

		LuauHeapView = Roact.createElement(LuauHeapView, {
			size = UDim2.new(1, 0, 1, -utilTabHeight),
			layoutOrder = 2,
			data = state.snapshots,
			activeSnapshot = state.active,
			compareSnapshot = state.compare,
		}),
	})
end

local function mapStateToProps(state, props)
	return {
		isClientView = state.LuauHeap.isClientView,

		client = state.LuauHeap.client,
		server = state.LuauHeap.server,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetLuauHeapState = function(isClientState: boolean, sessionState: LuauHeapTypes.SessionState?)
			dispatch(SetLuauHeapState(isClientState, sessionState))
		end,
		dispatchSetLuauHeapProfileTarget = function(useClientView: boolean)
			dispatch(SetLuauHeapProfileTarget(useClientView))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(DataConsumer(MainViewLuauHeap, "LuauHeapData"))
