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
local MAX_LIST_HEIGHT = 280
local EMPTY_LIST_HEIGHT = ROW_HEIGHT * 2

local function mergeChronologically(sent: { any }, received: { any }): { any }
	local merged = table.create(#sent + #received)
	local i, j = 1, 1
	while i <= #sent or j <= #received do
		if i <= #sent and (j > #received or sent[i].timestampSeconds <= received[j].timestampSeconds) then
			local entry = sent[i]
			merged[#merged + 1] = { name = entry.name, timestampSeconds = entry.timestampSeconds, timestampText = entry.timestampText, tag = "snt" }
			i += 1
		else
			local entry = received[j]
			merged[#merged + 1] = { name = entry.name, timestampSeconds = entry.timestampSeconds, timestampText = entry.timestampText, tag = "srv" }
			j += 1
		end
	end
	return merged
end

local RemoteOperationsPanel = Roact.Component:extend("RemoteOperationsPanel")

function RemoteOperationsPanel:init()
	local observedNames = {}
	local remoteOperations = self.props.remoteOperations or {}
	mergeObservedNames(remoteOperations.sent or {}, observedNames, "name")
	mergeObservedNames(remoteOperations.received or {}, observedNames, "name")

	self.state = {
		observedNames = observedNames,
		excludedNames = {},
	}

	self.onChipActivated = function(name)
		self:setState(function(oldState)
			local excludedNames = table.clone(oldState.excludedNames)
			excludedNames[name] = not excludedNames[name] or nil
			return { excludedNames = excludedNames }
		end)
	end
end

function RemoteOperationsPanel:didUpdate(prevProps)
	if prevProps.remoteOperations == self.props.remoteOperations then
		return
	end
	local remoteOperations = self.props.remoteOperations or {}
	local observedNames = table.clone(self.state.observedNames)
	local changedSent = mergeObservedNames(remoteOperations.sent or {}, observedNames, "name")
	local changedReceived = mergeObservedNames(remoteOperations.received or {}, observedNames, "name")
	if changedSent or changedReceived then
		self:setState({ observedNames = observedNames })
	end
end

function RemoteOperationsPanel:render()
	local remoteOperations = self.props.remoteOperations or {}
	local layoutOrder = self.props.layoutOrder
	local excludedNames = self.state.excludedNames

	local merged = mergeChronologically(remoteOperations.sent or {}, remoteOperations.received or {})
	local visible = {}
	for i = #merged, 1, -1 do
		local entry = merged[i]
		if not excludedNames[entry.name] then
			visible[#visible + 1] = entry
		end
	end

	local chips = {}
	local chipOrder = 0
	for name in self.state.observedNames do
		chipOrder += 1
		chips["chip" .. name] = Roact.createElement(FilterChip, {
			name = VoiceDebugOperationLabels.labelForEventName(name),
			isOn = not excludedNames[name],
			layoutOrder = chipOrder,
			onActivated = function()
				self.onChipActivated(name)
			end,
		})
	end

	local hasCollectedData = remoteOperations.sent ~= nil
	local receivedCaptureEnabled = remoteOperations.receivedCaptureEnabled == true
	local sentCaptureEnabled = remoteOperations.sentCaptureEnabled == true

	return Roact.createElement(CollapsibleSection, {
		title = "Message Log",
		layoutOrder = layoutOrder,
	}, {
		Banner = (hasCollectedData and not receivedCaptureEnabled) and Roact.createElement(InfoBanner, {
			layoutOrder = 1,
			text = "Remote operation capture is off (FFlag::VoiceMetricsDataEnabled). Enable it to see sent/received events here.",
		}) or (hasCollectedData and not sentCaptureEnabled) and Roact.createElement(InfoBanner, {
			layoutOrder = 1,
			text = "Sent-event capture is off (FFlag::VoiceChatEventReplicatorWrapperEnabled). Received events are still shown below.",
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
				return Roact.createElement(OperationRow, {
					timestampText = item.timestampText,
					tag = item.tag,
					name = VoiceDebugOperationLabels.labelForEventName(item.name),
					layoutOrder = index,
				})
			end,
			size = UDim2.new(1, 0, 0, #visible > 0 and math.min(#visible * ROW_HEIGHT, MAX_LIST_HEIGHT) or EMPTY_LIST_HEIGHT),
			layoutOrder = 3,
			emptyText = #merged > 0 and "No messages match filter." or "No messages observed yet.",
		}),
	})
end

RemoteOperationsPanel._mergeChronologically = mergeChronologically

return RemoteOperationsPanel
