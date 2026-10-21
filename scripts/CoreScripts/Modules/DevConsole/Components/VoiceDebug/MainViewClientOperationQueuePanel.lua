--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Components = script.Parent.Parent.Parent.Components
local FilterChip = require(Components.FilterChip)
local InfoBanner = require(Components.InfoBanner)
local mergeObservedNames = require(Components.MergeObservedNames)
local OperationRow = require(Components.OperationRow)
local VirtualList = require(Components.VirtualList)

local CollapsibleSection = require(script.Parent.CollapsibleSection)
local VoiceDebugOperationLabels = require(script.Parent.VoiceDebugOperationLabels)

local ROW_HEIGHT = 22
local MAX_LIST_HEIGHT = 320
local EMPTY_LIST_HEIGHT = ROW_HEIGHT * 2

local CULLING_OPERATION_TYPE = "ClientCullingOperation"

local function filterOperations(entries: { any }, excludedNames: { [string]: boolean }, showCullingExclusively: boolean): { any }
	local filtered = {}
	for _, entry in entries do
		if showCullingExclusively then
			if entry.operationType == CULLING_OPERATION_TYPE then
				filtered[#filtered + 1] = entry
			end
		elseif entry.operationType ~= CULLING_OPERATION_TYPE and not excludedNames[entry.operationType] then
			filtered[#filtered + 1] = entry
		end
	end
	return filtered
end

local function isChipOn(name: string, excludedNames: { [string]: boolean }, showCullingExclusively: boolean): boolean
	if name == CULLING_OPERATION_TYPE then
		return showCullingExclusively
	end
	return not showCullingExclusively and not excludedNames[name]
end

local function nextChipState(
	name: string,
	oldState: { excludedNames: { [string]: boolean }, showCullingExclusively: boolean }
): { excludedNames: { [string]: boolean }, showCullingExclusively: boolean }
	if name == CULLING_OPERATION_TYPE then
		return { excludedNames = oldState.excludedNames, showCullingExclusively = not oldState.showCullingExclusively }
	end

	local excludedNames = table.clone(oldState.excludedNames)
	if oldState.showCullingExclusively then
		-- Every non-culling chip reads as off while culling is exclusive; clicking one
		-- should turn it on, not toggle its own exclusion on top of exiting exclusive mode.
		excludedNames[name] = nil
	else
		excludedNames[name] = not excludedNames[name] or nil
	end
	return { excludedNames = excludedNames, showCullingExclusively = false }
end

local ClientOperationQueuePanel = Roact.Component:extend("ClientOperationQueuePanel")

function ClientOperationQueuePanel:init()
	local observedNames = {}
	mergeObservedNames((self.props.remoteOperations or {}).operations or {}, observedNames, "operationType")

	self.state = {
		observedNames = observedNames,
		excludedNames = {},
		showCullingExclusively = false,
	}

	self.onChipActivated = function(name)
		self:setState(function(oldState)
			return nextChipState(name, oldState)
		end)
	end
end

function ClientOperationQueuePanel:didUpdate(prevProps)
	if prevProps.remoteOperations == self.props.remoteOperations then
		return
	end
	local operations = (self.props.remoteOperations or {}).operations or {}
	local observedNames = table.clone(self.state.observedNames)
	if mergeObservedNames(operations, observedNames, "operationType") then
		self:setState({ observedNames = observedNames })
	end
end

function ClientOperationQueuePanel:render()
	local remoteOperations = self.props.remoteOperations or {}
	local layoutOrder = self.props.layoutOrder
	local excludedNames = self.state.excludedNames
	local showCullingExclusively = self.state.showCullingExclusively

	local visible = filterOperations(remoteOperations.operations or {}, excludedNames, showCullingExclusively)
	table.sort(visible, function(a, b)
		return a.timestampSeconds > b.timestampSeconds
	end)

	local chips = {}
	local chipOrder = 0
	for name in self.state.observedNames do
		chipOrder += 1
		chips["chip" .. name] = Roact.createElement(FilterChip, {
			name = VoiceDebugOperationLabels.labelForOperationType(name),
			isOn = isChipOn(name, excludedNames, showCullingExclusively),
			layoutOrder = chipOrder,
			onActivated = function()
				self.onChipActivated(name)
			end,
		})
	end

	local hasCollectedData = remoteOperations.operations ~= nil
	local opQueueCaptureEnabled = remoteOperations.opQueueCaptureEnabled == true

	return Roact.createElement(CollapsibleSection, {
		title = "Client Activity",
		layoutOrder = layoutOrder,
	}, {
		CaptureNotice = (hasCollectedData and not opQueueCaptureEnabled) and Roact.createElement(InfoBanner, {
			layoutOrder = 1,
			text = "Operation capture is off (FFlag::VoiceMetricsDataEnabled). Enable it to see executed operations here.",
		}) or nil,

		Filters = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = 2,
			BackgroundTransparency = 1,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				Wraps = true,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 4),
			}),
			Chips = Roact.createFragment(chips),
		}),

		List = Roact.createElement(VirtualList, {
			items = visible,
			rowHeight = ROW_HEIGHT,
			renderItem = function(item, index)
				local rawState = item.name:match("::(.+)$") or item.name
				local label = VoiceDebugOperationLabels.labelForOperationType(item.operationType)
					.. ": "
					.. VoiceDebugOperationLabels.humanizeName(rawState)
				return Roact.createElement(OperationRow, {
					timestampText = item.timestampText,
					tag = "op",
					name = label,
					layoutOrder = index,
				})
			end,
			size = UDim2.new(1, 0, 0, #visible > 0 and math.min(#visible * ROW_HEIGHT, MAX_LIST_HEIGHT) or EMPTY_LIST_HEIGHT),
			layoutOrder = 3,
			emptyText = "No activity observed yet.",
		}),
	})
end

ClientOperationQueuePanel._filterOperations = filterOperations
ClientOperationQueuePanel._isChipOn = isChipOn
ClientOperationQueuePanel._nextChipState = nextChipState

return ClientOperationQueuePanel
