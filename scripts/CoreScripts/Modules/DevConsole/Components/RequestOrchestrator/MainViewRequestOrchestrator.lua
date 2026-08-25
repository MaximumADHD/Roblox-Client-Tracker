--!nonstrict
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")

local Roact = require(CorePackages.Packages.Roact)

local Components = script.Parent.Parent
local UtilAndTab = require(Components.UtilAndTab)
local DropDown = require(Components.DropDown)

local OrchestratorRow = require(script.Parent.OrchestratorRow)
local Data = require(script.Parent.RequestOrchestratorData)

local Constants = require(script.Parent.Parent.Parent.Constants)
local MAIN_ROW_PADDING = Constants.GeneralFormatting.MainRowPadding
local FONT = Constants.Font.Mono
-- Queue band (24) stacked above the timeline band (28).
local ROW_HEIGHT = 52
local FILTER_ROW_HEIGHT = 24
local CONTROLS_PADDING = 4
local DROPDOWN_WIDTH = 220
local INPUT_HEIGHT = 22
local LABEL_COLOR = Color3.fromRGB(220, 220, 220)

-- Signal -> ordered reducers (a signal may drive both a timeline and a queue reducer).
local SIGNAL_HANDLERS = {
	BatchCreated = { Data.registerBatch, Data.trackQueueOnCreated },
	BatchSent = { Data.openSendAttempt, Data.drainQueueOnSent },
	BatchResponseReceived = { Data.settleBatch },
	BatchRetrying = { Data.reclassifyOnRetry, Data.requeueRetryOps },
	BatchExhausted = { Data.markExhausted, Data.clearQueueOnExhausted },
	OperationEnqueued = { Data.enqueueOperation },
	CacheItemAdded = { Data.recordCacheItemAdded },
	CacheHit = { Data.recordCacheHit },
}

local function makeLabel(text, layoutOrder)
	return Roact.createElement("TextLabel", {
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.new(0, 0, 0, INPUT_HEIGHT),
		BackgroundTransparency = 1,
		Text = text,
		TextColor3 = LABEL_COLOR,
		TextSize = 11,
		Font = FONT,
		TextXAlignment = Enum.TextXAlignment.Left,
		LayoutOrder = layoutOrder,
	})
end

local function cloneSet(set)
	local copy = {}
	for k, v in pairs(set) do
		copy[k] = v
	end
	return copy
end

local MainViewRequestOrchestrator = Roact.Component:extend("MainViewRequestOrchestrator")

function MainViewRequestOrchestrator:init()
	self.model = Data.new()
	self.connections = {}
	self.utilRef = Roact.createRef()

	self.onUtilTabHeightChanged = function(utilTabHeight)
		self:setState({ utilTabHeight = utilTabHeight })
	end

	self.onTypeToggle = function(index)
		local nextSelected = cloneSet(self.state.selectedTypes)
		nextSelected[index] = (not nextSelected[index]) or nil
		self:setState({ selectedTypes = nextSelected })
	end

	self.state = {
		utilTabHeight = 0,
		selectedTypes = {},
	}
end

-- New types default to selected so a row appears as soon as its traffic arrives.
function MainViewRequestOrchestrator:observeType(orchType)
	local newIndex = Data.observeType(self.model, orchType)
	if newIndex then
		local nextSelected = cloneSet(self.state.selectedTypes)
		nextSelected[newIndex] = true
		self:setState({ selectedTypes = nextSelected })
	end
end

function MainViewRequestOrchestrator:didMount()
	self:setState({ utilTabHeight = self.utilRef.current.Size.Y.Offset })

	-- Load-bearing: creating the service triggers the registry to replay
	-- already-registered orchestrators and start emitting signals.
	local RequestOrchestratorService = game:GetService("RequestOrchestratorService")

	-- Seed rows from the registry so types show before traffic. GetRegisteredOrchestrators
	-- is a newer engine method; tolerate its absence on older engines.
	local ok, registered = pcall(function()
		return RequestOrchestratorService:GetRegisteredOrchestrators()
	end)
	if ok and registered then
		local newIndices = Data.observeTypes(self.model, registered)
		if #newIndices > 0 then
			local nextSelected = cloneSet(self.state.selectedTypes)
			for _, index in ipairs(newIndices) do
				nextSelected[index] = true
			end
			self:setState({ selectedTypes = nextSelected })
		end
	end

	for signalName, reducers in pairs(SIGNAL_HANDLERS) do
		self.connections[signalName] = RequestOrchestratorService[signalName]:Connect(function(data)
			local orchType = data.orchestratorType or "Unknown"
			self:observeType(orchType)
			for _, reducer in ipairs(reducers) do
				reducer(self.model, orchType, data)
			end
			self:setState({})
		end)
	end

	-- Span positions are functions of `now`, so the strip must repaint every frame to scroll.
	self.connections.heartbeat = RunService.Heartbeat:Connect(function()
		Data.advanceTime(self.model)
		self:setState({})
	end)
end

function MainViewRequestOrchestrator:willUnmount()
	for _, conn in pairs(self.connections) do
		conn:Disconnect()
	end
	self.connections = {}
end

function MainViewRequestOrchestrator:didUpdate()
	local height = self.utilRef.current.Size.Y.Offset
	if height ~= self.state.utilTabHeight then
		self:setState({ utilTabHeight = height })
	end
end

function MainViewRequestOrchestrator:render()
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList
	local utilTabHeight = self.state.utilTabHeight
	local selectedTypes = self.state.selectedTypes
	local allTypes = self.model.allTypes

	local elements = {}

	elements.UIListLayout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, MAIN_ROW_PADDING),
	})

	elements.UtilAndTab = Roact.createElement(UtilAndTab, {
		windowWidth = size.X.Offset,
		formFactor = formFactor,
		tabList = tabList,
		layoutOrder = 1,
		refForParent = self.utilRef,
		onHeightChanged = self.onUtilTabHeightChanged,
	})

	if utilTabHeight > 0 then
		local selectedCount = 0
		local lastSelectedName = nil
		for ind, name in ipairs(allTypes) do
			if selectedTypes[ind] then
				selectedCount = selectedCount + 1
				lastSelectedName = name
			end
		end

		local summaryText
		if #allTypes == 0 then
			summaryText = "(waiting for traffic)"
		elseif selectedCount == 0 then
			summaryText = "(none)"
		elseif selectedCount == 1 then
			summaryText = lastSelectedName
		elseif selectedCount == #allTypes then
			summaryText = string.format("All (%d)", selectedCount)
		else
			summaryText = string.format("%d selected", selectedCount)
		end

		elements.Controls = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, FILTER_ROW_HEIGHT),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, CONTROLS_PADDING),
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			ShowLabel = makeLabel("Show", 1),
			TypeDropDown = Roact.createElement(DropDown, {
				buttonSize = UDim2.new(0, DROPDOWN_WIDTH, 0, INPUT_HEIGHT),
				dropDownList = allTypes,
				selectedSet = selectedTypes,
				onToggle = self.onTypeToggle,
				summaryText = summaryText,
				layoutOrder = 2,
			}),
		})

		for ind, orchType in ipairs(allTypes) do
			if selectedTypes[ind] then
				elements["Row_" .. orchType] = Roact.createElement(OrchestratorRow, {
					orchestratorType = orchType,
					batches = self.model.batchesByType[orchType] or {},
					queue = self.model.queues[orchType],
					cache = self.model.cacheByType[orchType],
					observedMaxBatchSize = self.model.observedMaxByType[orchType],
					panelWidth = size.X.Offset,
					now = self.model.now,
					size = UDim2.new(1, 0, 0, ROW_HEIGHT),
					layoutOrder = 2 + ind,
				})
			end
		end
	end

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		LayoutOrder = 4,
	}, elements)
end

return MainViewRequestOrchestrator
