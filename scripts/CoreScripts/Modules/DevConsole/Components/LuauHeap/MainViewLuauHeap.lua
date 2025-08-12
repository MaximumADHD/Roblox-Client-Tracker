--!strict
-- The root view of the Luau heap memory profiling tool, includes Client/Server selector, snapshot create/clear buttons and the LuauHeapView component
local CorePackages = game:GetService("CorePackages")
local ScriptContext = game:GetService("ScriptContext")
local HttpService = game:GetService("HttpService")
local HeapProfilerService = game:GetService("HeapProfilerService")
local Players = game:GetService("Players")

local AppCommonLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local memoize = AppCommonLib.memoize

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

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local FFlagFixSearchCrash = game:DefineFastFlag("FixSearchCrash", false)

local function filterNode(entry: any, term: string?): any?
	if term == nil then
		return false
	end

	local entry = table.clone(entry)
	local found = false

	if entry.Name ~= nil then
		found = string.find(string.lower(entry.Name), string.lower(term), 1, true) ~= nil
	end

	if entry.Source ~= nil then
		local isMatch = string.find(string.lower(entry.Source), string.lower(term), 1, true) ~= nil
		found = found or isMatch
	end

	if entry.Paths ~= nil then
		for _, path in entry.Paths do
			for _, pathEntry in path do
				local isMatch = string.find(string.lower(pathEntry), string.lower(term), 1, true) ~= nil
				found = found or isMatch
			end
		end
	end

	if entry.Roots ~= nil then
		local newRoots = {}
		for _, root in entry.Roots do
			local newNode = table.clone(root) :: LuauHeapTypes.UniqueRefEntry
			local isMatch = filterNode(newNode, term)
			if isMatch then
				table.insert(newRoots, newNode)
			end
			found = found or isMatch
		end
		entry.Roots = newRoots
	end

	if entry.Children ~= nil then
		local newChildren = {}
		for _, child in entry.Children do
			local newNode = table.clone(child) :: LuauHeapTypes.UniqueRefEntry
			local isMatch = filterNode(newNode, term)
			if isMatch then
				table.insert(newChildren, child)
			end
			found = found or isMatch
		end
		entry.Children = newChildren
	end

	if found then
		return entry
	else
		return nil
	end
end

local function filterHeapReportsStatEntryList(
	statList: { LuauHeapTypes.HeapReportStatsEntry },
	term: string?
): { LuauHeapTypes.HeapReportStatsEntry }
	if term == nil then
		return statList
	end

	local newStatList = {}
	for _, stat in statList do
		if string.find(string.lower(stat.Name), string.lower(term), 1, true) ~= nil then
			local newStat = table.clone(stat) :: LuauHeapTypes.HeapReportStatsEntry
			table.insert(newStatList, newStat)
		end
	end

	return newStatList
end

local function filterHeapReportGraph(
	graph: LuauHeapTypes.HeapReportGraphEntry, term: string?, depth : number): LuauHeapTypes.HeapReportGraphEntry?
	if term == nil then
		return graph
	end
	graph = table.clone(graph) :: LuauHeapTypes.HeapReportGraphEntry
	local newChildren = {}
	for _, child in graph.Children do
		local newChild = filterHeapReportGraph(child, term, depth + 1)
		if newChild then
			table.insert(newChildren, newChild)
		end
	end
	graph.Children = newChildren

	if depth == 0 then
		return graph
	end

	local shouldReturn = #newChildren > 0

	if string.find(string.lower(graph.Name), string.lower(term), 1, true) ~= nil then
		shouldReturn = true
	end

	if shouldReturn then
		return graph
	end
	return nil
end

local function filterUniqueRefEntryPath(
	entry: LuauHeapTypes.UniqueRefEntryPath, term: string?): LuauHeapTypes.UniqueRefEntryPath?
	if term == nil then
		return entry
	end

	local newEntryPath = {}
	for _, path in entry do
		if string.find(string.lower(path), string.lower(term), 1, true) ~= nil then
			table.insert(newEntryPath, path)
		end
	end
	if #newEntryPath > 0 then
		return newEntryPath
	else
		return nil
	end
end

local function filterUniqueRefEntryPathList(
	paths :{ LuauHeapTypes.UniqueRefEntryPath },
	term: string?
)
	if term == nil then
		return paths
	end

	local newPaths = {}
	for _, path in paths do
		local newPath = filterUniqueRefEntryPath(path, term)
		if newPath then
			table.insert(newPaths, newPath)
		end
	end

	return newPaths

end

local function filterUniqueRefEntry(
	entry: LuauHeapTypes.UniqueRefEntry,
	term: string?
): LuauHeapTypes.UniqueRefEntry?
	if term == nil then
		return entry
	end
	local entry = table.clone(entry) :: LuauHeapTypes.UniqueRefEntry

	local shouldReturn = false
	if string.find(string.lower(entry.Name), string.lower(term), 1, true) ~= nil then
		shouldReturn = true
	end

	local newPaths = filterUniqueRefEntryPathList(entry.Paths, term)	

	entry.Paths = newPaths	

	if #newPaths > 0 then
		shouldReturn = true
	end
	
	if shouldReturn then
		return entry
	else
		return nil
	end	
end

local function filterUniqueRefReport(
	refs: LuauHeapTypes.UniqueRefReport?,
	term: string?
): LuauHeapTypes.UniqueRefReport?
	if term == nil or refs == nil then
		return refs
	end
	refs = table.clone(refs) :: LuauHeapTypes.UniqueRefReport
	local newRoots = {}
	for _, root in refs.Roots do
		local newRoot = filterUniqueRefEntry(root, term)
		if newRoot then
			table.insert(newRoots, newRoot)
		end
	end
	refs.Roots = newRoots
	return refs
end

local function filterSnapshots(snapshots: { LuauHeapTypes.HeapReport }, term: string?, version : number): { LuauHeapTypes.HeapReport }
	if FFlagFixSearchCrash then
		if term == nil then
			return snapshots
		end

		local newSnapshots = {}
		for _, snapshot in snapshots do
			local newSnapshot = table.clone(snapshot) :: LuauHeapTypes.HeapReport

			-- Filter newState.TagBreakdown
			newSnapshot.TagBreakdown = filterHeapReportsStatEntryList(newSnapshot.TagBreakdown, term)

			newSnapshot.MemcatBreakdown = filterHeapReportsStatEntryList(newSnapshot.MemcatBreakdown, term) 

			newSnapshot.UserdataBreakdown = filterHeapReportsStatEntryList(newSnapshot.UserdataBreakdown, term)

			-- Filter newState.Graph
			newSnapshot.Graph = filterHeapReportGraph(newSnapshot.Graph, term, 0) :: LuauHeapTypes.HeapReportGraphEntry
			-- Filter newState.Refs.Roots
			if newSnapshot.Refs then
				newSnapshot.Refs = filterUniqueRefReport(newSnapshot.Refs, term)
			end

			table.insert(newSnapshots, newSnapshot)
		end
		return newSnapshots
	else	
		if term == nil then
			return snapshots
		end

		local newSnapshots = {}
		for _, snapshot in snapshots do
			local newSnapshot = table.clone(snapshot) :: LuauHeapTypes.HeapReport

			-- Filter newState.TagBreakdown
			local newTagBreakdown = {}
			for _, node in newSnapshot.TagBreakdown do
				local newNode = filterNode(node, term)
			if newNode then
					table.insert(newTagBreakdown, newNode)
				end
			end
			newSnapshot.TagBreakdown = newTagBreakdown

			-- Filter newState.MemcatBreakdown
			local newMemcatBreakdown = {}
			for _, node in newSnapshot.MemcatBreakdown do
				local newNode = filterNode(node, term)
				if newNode then
					table.insert(newMemcatBreakdown, newNode)
				end
			end
			newSnapshot.MemcatBreakdown = newMemcatBreakdown 

			-- Filter newState.UserdataBreakdown
			local newUserdataBreakdown = {}
			for _, node in newSnapshot.UserdataBreakdown do
				local newNode = filterNode(node, term)
				if newNode then
					table.insert(newUserdataBreakdown, newNode)
				end
			end
			newSnapshot.UserdataBreakdown = newUserdataBreakdown 

			-- Filter newState.Graph
			newSnapshot.Graph = filterNode(newSnapshot.Graph, term) :: LuauHeapTypes.HeapReportGraphEntry

			-- Filter newState.Refs.Roots
			if newSnapshot.Refs then
				newSnapshot.Refs = filterNode(newSnapshot.Refs, term)
			end

			table.insert(newSnapshots, newSnapshot)
		end

		return newSnapshots
	end
end

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

	self.version = 0

	self.dispatchSetLuauHeapState = function(isClientState: boolean, sessionState: LuauHeapTypes.SessionState?)
		self.version = self.version + 1
		self.props.dispatchSetLuauHeapState(isClientState, sessionState)
	end
	self.onClientButton = function()
		self.props.dispatchSetLuauHeapProfileTarget(true)
	end

	self.onServerButton = function()
		self.props.dispatchSetLuauHeapProfileTarget(false)
	end
	
	self.filterSnapshots = memoize(filterSnapshots)

	self.onCreateSnapshot = function()
		local isClientView, state = self:getActiveState()
		local success, message = nil, nil
		if isClientView then
			success, message = pcall(HeapProfilerService.ClientRequestDataAsync, HeapProfilerService, Players.LocalPlayer :: Player)
		else
			success, message = pcall(HeapProfilerService.ServerRequestDataAsync, HeapProfilerService)
		end

		if not success then
			warn(message)
			return
		end

		local data = HttpService:JSONDecode(message)
		local snapshot = data.Report :: LuauHeapTypes.HeapReport
		local refs = data.Refs :: LuauHeapTypes.UniqueRefReport
		snapshot.Refs = refs

		local newState: LuauHeapTypes.SessionState = table.clone(state)

		table.insert(newState.snapshots, snapshot)

		newState.active = #newState.snapshots

		if FFlagFixSearchCrash then 
			self.dispatchSetLuauHeapState(isClientView, newState)
		else
			self.props.dispatchSetLuauHeapState(isClientView, newState)
		end
	end

	self.onClearSnapshots = function()
		local isClientView, state = self:getActiveState()

		local newState: LuauHeapTypes.SessionState = table.clone(state)

		table.clear(newState.snapshots)
		newState.active = 0
		
		if FFlagFixSearchCrash then
			self.dispatchSetLuauHeapState(isClientView, newState)
		else
			self.props.dispatchSetLuauHeapState(isClientView, newState)
		end
	end

	self.utilRef = Roact.createRef()

	self.state = {
		searchTerm = nil,
		utilTabHeight = 0,
	}

	self.onSearchTermChanged = function(searchTerm: string?)
		if searchTerm == nil or searchTerm == "" then
			self:setState({
				searchTerm = Roact.None,
			})
		else
			self:setState({
				searchTerm = searchTerm,
			})
		end
	end
end

function MainViewLuauHeap:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset,
	})
end

function MainViewLuauHeap:willUnmount()
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
			onServerButton = self.onServerButton,

			refForParent = self.utilRef,
			onHeightChanged = self.onUtilTabHeightChanged,

			onSearchTermChanged = self.onSearchTermChanged,
		}, {
			Roact.createElement(BoxButton, {
				text = "Create Snapshot",
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
			data = if FFlagFixSearchCrash then self.filterSnapshots(state.snapshots, self.state.searchTerm, self.version) else self.filterSnapshots(state.snapshots, self.state.searchTerm),
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

-- TODO: CLI-163924 Remove LuauHeapData provider
return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(DataConsumer(MainViewLuauHeap, "LuauHeapData"))
