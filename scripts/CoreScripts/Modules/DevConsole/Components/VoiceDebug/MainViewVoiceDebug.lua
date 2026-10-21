local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local Actions = script.Parent.Parent.Parent.Actions

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local LineGraph = require(Components.LineGraph)
local Sparkline = require(Components.Sparkline)
local ConnectivityPanel = require(script.Parent.MainViewConnectivityPanel)
local SubscriptionsPanel = require(script.Parent.MainViewSubscriptionsPanel)
local RemoteOperationsPanel = require(script.Parent.MainViewRemoteOperationsPanel)
local ClientOperationQueuePanel = require(script.Parent.MainViewClientOperationQueuePanel)
local CollapsibleSection = require(script.Parent.CollapsibleSection)

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding
local GRAPH_HEIGHT = Constants.GeneralFormatting.LineGraphHeight
local STAT_ROW_HEIGHT = 20
local HEADER_ROW_HEIGHT = 18
local UtilAndTab = require(Components.UtilAndTab)

local ROW_ACCENT_WIDTH = 3
local ROW_LABEL_LEFT_PAD = 8
local ROW_COLUMN_GAP = 8
local ROW_SPARKLINE_WIDTH = 52
local ROW_SPARKLINE_BUTTON_HEIGHT = 13
local ROW_VALUE_WIDTH = 56
local ROW_UNIT_WIDTH = 36
local ROW_DELTA_WIDTH = 72
local ROW_RIGHT_BLOCK_WIDTH = ROW_SPARKLINE_WIDTH
	+ ROW_VALUE_WIDTH
	+ ROW_UNIT_WIDTH
	+ ROW_DELTA_WIDTH
	+ 3 * ROW_COLUMN_GAP

local CENTER_Y_SCALE = 0.5

local HEALTH_CARD_HEIGHT = 56
local HEALTH_CARD_WIDTH = 110
local HEALTH_CARD_CAPTION_HEIGHT = 14
local HEALTH_CARD_VALUE_HEIGHT = 20
local HEALTH_CARD_SUBCAPTION_HEIGHT = 12
local HEALTH_CARD_PADDING_X = 8
local HEALTH_CARD_PADDING_Y = 6

local GRAPH_HORIZONTAL_MARGIN = 32
local CONTENT_LEFT_PADDING = 16
local CONTENT_RIGHT_PADDING = 24

local UTIL_BAR_RIGHT_INSET_SMALL = -24
local UTIL_BAR_RIGHT_INSET_DEFAULT = -20
local UTIL_BAR_ITEM_GAP = 8
local BOTTOM_SPACER_HEIGHT = 16

local TWO_DECIMAL_FIELDS = {
	rttMs = true,
	incomingBitrateKbps = true,
	outgoingBitrateKbps = true,
	incomingJitterMs = true,
	outgoingJitterMs = true,
	jitterBufferDelayMs = true,
	incomingLossPercent = true,
}

local GROUP_ORDER = { "Connection", "Incoming", "Outgoing" }

local convertTimeStamp = require(script.Parent.Parent.Parent.Util.convertTimeStamp)

local VoiceDebugFieldMeta = require(script.Parent.VoiceDebugFieldMeta)
local VoiceDebugFieldDisplayOrder = require(script.Parent.VoiceDebugFieldDisplayOrder)

local getFFlagVoiceDebugConsoleV2 = require(script.Parent.GetFFlagVoiceDebugConsoleV2)

local FreezeToggle = require(script.Parent.FreezeToggle)

local EXTENDED_DISPLAY_ORDER = {
	"incomingBitrateKbps",
	"outgoingBitrateKbps",
	"outgoingCodec",
	"incomingLossPercent",
	"totalConcealmentEvents",
	"lastPublisherAudioLevelDbov",
	"lastSubscriberAudioLevelDbov",
}

-- Subset of EXTENDED_DISPLAY_ORDER gated out of the flag-off fallback loop below. Unlike
-- incomingBitrateKbps/outgoingBitrateKbps/outgoingCodec/incomingLossPercent -- pre-existing
-- fields that have always rendered via that fallback regardless of V2 -- these three are native
-- struct fields that are always present (possibly zero-valued) in self.state.stats, so leaving
-- them ungated would render them even with the flag off.
local FALLBACK_GATED_FIELDS = {
	totalConcealmentEvents = true,
	lastPublisherAudioLevelDbov = true,
	lastSubscriberAudioLevelDbov = true,
}

-- Precomputed once: both source lists are static module constants, so there's no need to
-- clone/rebuild this on every render. The flag check in render() still happens per-render (not
-- hoisted alongside this) since the flag can change at runtime under test.
local COMBINED_DISPLAY_ORDER = table.clone(VoiceDebugFieldDisplayOrder)
for _, key in EXTENDED_DISPLAY_ORDER do
	table.insert(COMBINED_DISPLAY_ORDER, key)
end

local function getX(entry)
	return entry.time
end

local function getY(entry)
	return entry.value
end

local function makeStringFormatY(key: string)
	local unit = VoiceDebugFieldMeta[key] and VoiceDebugFieldMeta[key].unit
	return function(value)
		if unit then
			return string.format("%.1f %s", value, unit)
		end
		return string.format("%.1f", value)
	end
end

local function getFieldSeverity(key: string, value: any): VoiceDebugFieldMeta.SeverityLevel?
	return VoiceDebugFieldMeta.getFieldSeverity(key, value)
end

local function severityColor(severity: VoiceDebugFieldMeta.SeverityLevel?, defaultColor: Color3): Color3
	if severity == "error" then
		return Constants.Color.ErrorRed
	elseif severity == "warn" then
		return Constants.Color.WarningYellow
	elseif severity == "ok" then
		return Constants.Color.HoverGreen
	end
	return defaultColor
end

local function formatNumber(key: string, value: number): string
	if TWO_DECIMAL_FIELDS[key] then
		return string.format("%.2f", value)
	end
	return tostring(value)
end

local function formatValue(key: string, value: any): string
	if value == nil then
		return "—"
	end
	local meta = VoiceDebugFieldMeta[key]
	local unit = meta and meta.unit
	local valueText = formatNumber(key, value)
	if unit then
		return string.format("%s %s", valueText, unit)
	end
	return valueText
end

local function formatCardSubCaption(seriesEntry: any, unit: string?): string
	local peakText = seriesEntry and string.format("%.1f", seriesEntry.max) or "—"
	if unit then
		return string.format("%s · peak %s%s", unit, peakText, unit)
	end
	return string.format("peak %s", peakText)
end

local function formatCardValue(value: any, decimals: number?): string
	if type(value) ~= "number" then
		return "—"
	end
	return string.format("%." .. tostring(decimals or 0) .. "f", value)
end

local function HealthCard(props)
	local valueColor = severityColor(props.severity, Constants.Color.Text)

	return Roact.createElement("Frame", {
		LayoutOrder = props.layoutOrder,
		Size = UDim2.new(0, HEALTH_CARD_WIDTH, 0, HEALTH_CARD_HEIGHT),
		BackgroundColor3 = Constants.Color.TextBoxGray,
		BorderSizePixel = 0,
	}, {
		Stroke = Roact.createElement("UIStroke", {
			Color = Constants.Color.BorderGray,
			Thickness = 1,
			Transparency = 0.5,
		}),

		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, HEALTH_CARD_PADDING_X),
			PaddingRight = UDim.new(0, HEALTH_CARD_PADDING_X),
			PaddingTop = UDim.new(0, HEALTH_CARD_PADDING_Y),
			PaddingBottom = UDim.new(0, HEALTH_CARD_PADDING_Y),
		}),

		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Caption = Roact.createElement("TextLabel", {
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 0, HEALTH_CARD_CAPTION_HEIGHT),
			Text = props.caption,
			Font = Constants.Font.MainWindowHeader,
			TextSize = Constants.DefaultFontSize.MainWindowHeader,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundTransparency = 1,
		}),

		Value = Roact.createElement("TextLabel", {
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 0, HEALTH_CARD_VALUE_HEIGHT),
			Text = props.value,
			Font = Constants.Font.MainWindowBold,
			TextSize = 18,
			TextColor3 = valueColor,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundTransparency = 1,
		}),

		SubCaption = Roact.createElement("TextLabel", {
			LayoutOrder = 3,
			Size = UDim2.new(1, 0, 0, HEALTH_CARD_SUBCAPTION_HEIGHT),
			Text = props.subCaption or "",
			Font = Constants.Font.MainWindow,
			TextSize = 11,
			TextColor3 = Constants.Color.BorderGray,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundTransparency = 1,
		}),
	})
end

local MainViewVoiceDebug = Roact.PureComponent:extend("MainViewVoiceDebug")

function MainViewVoiceDebug:init()
	self.onUtilTabHeightChanged = function(utilTabHeight)
		self:setState({
			utilTabHeight = utilTabHeight,
		})
	end

	self.onStatsUpdated = function(newStats)
		if self.state.frozen then
			return
		end
		self:setState({
			stats = newStats,
			series = self.props.VoiceDebugData:getSeries(),
			connectivity = self.props.VoiceDebugData:getConnectivity(),
			subscriptions = self.props.VoiceDebugData:getSubscriptions(),
			remoteOperations = self.props.VoiceDebugData:getRemoteOperations(),
		})
	end

	self.onFreezeToggled = function()
		if self.state.frozen then
			self:setState({
				frozen = false,
				stats = self.props.VoiceDebugData:getCurrentData(),
				series = self.props.VoiceDebugData:getSeries(),
				connectivity = self.props.VoiceDebugData:getConnectivity(),
				subscriptions = self.props.VoiceDebugData:getSubscriptions(),
				remoteOperations = self.props.VoiceDebugData:getRemoteOperations(),
			})
		else
			-- The live series map's CircularBuffers keep mutating in place on every stats
			-- update; snapshot them so a re-render while frozen (e.g. clicking a sparkline
			-- row) doesn't mix frozen stat values with live series/graph data.
			self:setState({ frozen = true, series = self.props.VoiceDebugData:getSeriesSnapshot() })
		end
	end

	local statsUpdatedSignal = self.props.VoiceDebugData:Signal()
	self._statsUpdatedConnection = statsUpdatedSignal:Connect(self.onStatsUpdated)

	self.utilRef = Roact.createRef()

	self.state = {
		utilTabHeight = 0,
		stats = {},
		series = {},
		connectivity = {},
		subscriptions = {},
		remoteOperations = {},
		selectedGraphKeyByGroup = {},
		frozen = false,
	}
end

function MainViewVoiceDebug:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset,
	})
end

function MainViewVoiceDebug:didUpdate()
	local utilSize = self.utilRef.current.Size
	if utilSize.Y.Offset ~= self.state.utilTabHeight then
		self:setState({
			utilTabHeight = utilSize.Y.Offset,
		})
	end
end

function MainViewVoiceDebug:willUnmount()
	if self._statsUpdatedConnection then
		self._statsUpdatedConnection:Disconnect()
		self._statsUpdatedConnection = nil
	end
end

function MainViewVoiceDebug:onGraphRowClicked(key: string)
	local meta = VoiceDebugFieldMeta[key]
	local group = (meta and meta.group) or key

	local selected = table.clone(self.state.selectedGraphKeyByGroup)
	if selected[group] == key then
		selected[group] = nil
	else
		selected[group] = key
	end
	self:setState({ selectedGraphKeyByGroup = selected })
end

function MainViewVoiceDebug:renderHealthStrip()
	local stats = self.state.stats
	local series = self.state.series

	return Roact.createElement("Frame", {
		LayoutOrder = 0,
		Size = UDim2.new(1, 0, 0, HEALTH_CARD_HEIGHT),
		BackgroundTransparency = 1,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, PADDING),
		}),

		RoundTrip = Roact.createElement(HealthCard, {
			layoutOrder = 1,
			caption = "Round-trip",
			value = formatCardValue(stats.rttMs, 2),
			severity = getFieldSeverity("rttMs", stats.rttMs),
			subCaption = formatCardSubCaption(series.rttMs, "ms"),
		}),

		LossIn = Roact.createElement(HealthCard, {
			layoutOrder = 2,
			caption = "Loss in",
			value = formatCardValue(stats.incomingLossPercent, 1),
			severity = getFieldSeverity("incomingLossPercent", stats.incomingLossPercent),
			subCaption = formatCardSubCaption(series.incomingLossPercent, "%"),
		}),

		JitterIn = Roact.createElement(HealthCard, {
			layoutOrder = 3,
			caption = "Jitter in",
			value = formatCardValue(stats.incomingJitterMs, 2),
			severity = getFieldSeverity("incomingJitterMs", stats.incomingJitterMs),
			subCaption = formatCardSubCaption(series.incomingJitterMs, "ms"),
		}),

		Streams = Roact.createElement(HealthCard, {
			layoutOrder = 4,
			caption = "Streams",
			value = string.format(
				"%s / %s",
				tostring(stats.incomingStreams or "—"),
				tostring(stats.outgoingStreams or "—")
			),
			severity = nil,
			subCaption = "in / out",
		}),
	})
end

local function buildStatRow(self, key: string, value: any, layoutOrder: number): any
	local meta = VoiceDebugFieldMeta[key]
	local label = meta and meta.label or key

	if getFFlagVoiceDebugConsoleV2() then
		local unit = (meta and meta.unit) or ""
		local seriesEntry = self.state.series[key]
		local plottable = meta ~= nil and meta.plottable == true and seriesEntry ~= nil

		local severity: VoiceDebugFieldMeta.SeverityLevel? = getFieldSeverity(key, value)
		local rowColor = severityColor(severity, Constants.Color.Text)
		local showAccent = severity == "warn" or severity == "error"

		local rowChildren = {
			Accent = Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(0, ROW_ACCENT_WIDTH, 1, 0),
				BackgroundColor3 = severityColor(severity, Constants.Color.WarningYellow),
				BackgroundTransparency = showAccent and 0 or 1,
				BorderSizePixel = 0,
			}),

			Label = Roact.createElement("TextLabel", {
				Position = UDim2.new(0, ROW_ACCENT_WIDTH + ROW_LABEL_LEFT_PAD, 0, 0),
				Size = UDim2.new(1, -(ROW_ACCENT_WIDTH + ROW_LABEL_LEFT_PAD + ROW_RIGHT_BLOCK_WIDTH), 1, 0),
				Text = label,
				Font = Constants.Font.MainWindow,
				TextSize = Constants.DefaultFontSize.MainWindow,
				TextColor3 = Constants.Color.Text,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTruncate = Enum.TextTruncate.AtEnd,
				BackgroundTransparency = 1,
			}),

			Value = Roact.createElement("TextLabel", {
				Position = UDim2.new(
					1,
					-(ROW_VALUE_WIDTH + ROW_UNIT_WIDTH + ROW_DELTA_WIDTH + 2 * ROW_COLUMN_GAP),
					0,
					0
				),
				Size = UDim2.new(0, ROW_VALUE_WIDTH, 1, 0),
				Text = value ~= nil and formatNumber(key, value) or "—",
				Font = Constants.Font.MainWindowBold,
				TextSize = Constants.DefaultFontSize.MainWindow,
				TextColor3 = rowColor,
				TextXAlignment = Enum.TextXAlignment.Right,
				BackgroundTransparency = 1,
			}),

			Unit = Roact.createElement("TextLabel", {
				Position = UDim2.new(1, -(ROW_UNIT_WIDTH + ROW_DELTA_WIDTH + ROW_COLUMN_GAP), 0, 0),
				Size = UDim2.new(0, ROW_UNIT_WIDTH, 1, 0),
				Text = unit,
				Font = Constants.Font.MainWindow,
				TextSize = Constants.DefaultFontSize.MainWindow,
				TextColor3 = Constants.Color.BorderGray,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),

			Delta = Roact.createElement("TextLabel", {
				Position = UDim2.new(1, -ROW_DELTA_WIDTH, 0, 0),
				Size = UDim2.new(0, ROW_DELTA_WIDTH, 1, 0),
				Text = plottable and string.format("peak %.1f", seriesEntry.max) or "—",
				Font = Constants.Font.MainWindow,
				TextSize = Constants.DefaultFontSize.MainWindow,
				TextColor3 = Constants.Color.BorderGray,
				TextXAlignment = Enum.TextXAlignment.Right,
				BackgroundTransparency = 1,
			}),
		}

		if plottable then
			local textButtonXOffset = -(ROW_VALUE_WIDTH + ROW_UNIT_WIDTH + ROW_DELTA_WIDTH + ROW_SPARKLINE_WIDTH + 3 * ROW_COLUMN_GAP)

			rowChildren.SparklineButton = Roact.createElement("TextButton", {
				AnchorPoint = Vector2.new(0, CENTER_Y_SCALE),
				Position = UDim2.new(1, textButtonXOffset, CENTER_Y_SCALE, 0),
				Size = UDim2.new(0, ROW_SPARKLINE_WIDTH, 0, ROW_SPARKLINE_BUTTON_HEIGHT),
				Text = "",
				AutoButtonColor = false,
				BackgroundTransparency = 1,
				[Roact.Event.Activated] = function()
					self:onGraphRowClicked(key)
				end,
			}, {
				Sparkline = Roact.createElement(Sparkline, {
					dataSet = seriesEntry.dataSet,
					getY = getY,
					minY = seriesEntry.min,
					maxY = seriesEntry.max,
					color = showAccent and Constants.Color.WarningYellow or Constants.Color.HighlightBlue,
					size = UDim2.new(1, 0, 1, 0),
				}),
			})
		end

		return Roact.createElement("Frame", {
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 0, STAT_ROW_HEIGHT),
			BackgroundTransparency = 1,
		}, rowChildren)
	end

	local text = string.format("%s: %s", label, formatValue(key, value))
	return Roact.createElement("TextLabel", {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, 0, 0, STAT_ROW_HEIGHT),
		Text = text,
		TextColor3 = Constants.Color.Text,
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
	})
end

local function buildGraphElement(seriesEntry, meta, key: string, layoutOrder: number)
	return Roact.createElement(LineGraph, {
		pos = UDim2.new(0, 0, 0, PADDING),
		size = UDim2.new(1, -GRAPH_HORIZONTAL_MARGIN, 0, GRAPH_HEIGHT),
		layoutOrder = layoutOrder,

		graphData = seriesEntry.dataSet,
		minY = seriesEntry.min,
		maxY = seriesEntry.max,

		getX = getX,
		getY = getY,

		axisLabelX = "Time",
		axisLabelY = meta.label,

		stringFormatX = convertTimeStamp,
		stringFormatY = makeStringFormatY(key),
	})
end

function MainViewVoiceDebug:renderStatLabels(displayOrder: { string })
	local labels: { [string]: any } = {}
	local layoutOrder = 0
	local totalHeight = 0

	local function addRow(key: string)
		layoutOrder += 1
		totalHeight += STAT_ROW_HEIGHT
		labels[key] = buildStatRow(self, key, self.state.stats[key], layoutOrder)
	end

	local function insertGraph(key: string, meta)
		local seriesEntry = self.state.series[key]
		if not seriesEntry then
			return
		end
		layoutOrder += 1
		totalHeight += GRAPH_HEIGHT + PADDING
		labels["__graph_" .. key] = buildGraphElement(seriesEntry, meta, key, layoutOrder)
	end

	if getFFlagVoiceDebugConsoleV2() then
		local buckets = {}
		for _, groupName in GROUP_ORDER do
			buckets[groupName] = {}
		end
		local otherBucket = {}
		for _, key in displayOrder do
			local meta = VoiceDebugFieldMeta[key]
			local group = meta and meta.group
			if group and buckets[group] then
				table.insert(buckets[group], key)
			else
				table.insert(otherBucket, key)
			end
		end

		for _, groupName in GROUP_ORDER do
			local keys = buckets[groupName]
			if #keys > 0 then
				layoutOrder += 1
				totalHeight += HEADER_ROW_HEIGHT
				labels["__group_header_" .. groupName] = Roact.createElement("TextLabel", {
					LayoutOrder = layoutOrder,
					Size = UDim2.new(1, 0, 0, HEADER_ROW_HEIGHT),
					Text = groupName,
					Font = Constants.Font.MainWindowHeader,
					TextSize = Constants.DefaultFontSize.MainWindowHeader,
					TextColor3 = Constants.Color.BorderGray,
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
				})
				for _, key in keys do
					addRow(key)
				end

				local selectedKey = self.state.selectedGraphKeyByGroup[groupName]
				local selectedMeta = selectedKey and VoiceDebugFieldMeta[selectedKey]
				if selectedMeta and selectedMeta.plottable then
					insertGraph(selectedKey, selectedMeta)
				end
			end
		end
		for _, key in otherBucket do
			addRow(key)

			local meta = VoiceDebugFieldMeta[key]
			if meta and meta.plottable and self.state.selectedGraphKeyByGroup[key] == key then
				insertGraph(key, meta)
			end
		end
	else
		for _, key in displayOrder do
			addRow(key)
		end
	end

	local isV2 = getFFlagVoiceDebugConsoleV2()
	for key in self.state.stats do
		if not labels[key] and (isV2 or not FALLBACK_GATED_FIELDS[key]) then
			addRow(key)
		end
	end

	return labels, totalHeight
end

function MainViewVoiceDebug:renderGraphs(displayOrder: { string })
	local graphs: { [string]: any } = {}
	local layoutOrder = 0

	if getFFlagVoiceDebugConsoleV2() then
		return graphs, layoutOrder
	end

	for _, key in displayOrder do
		local meta = VoiceDebugFieldMeta[key]
		local seriesEntry = self.state.series[key]
		if meta and meta.plottable and seriesEntry then
			layoutOrder += 1
			graphs[key] = Roact.createElement(LineGraph, {
				pos = UDim2.new(),
				size = UDim2.new(1, -GRAPH_HORIZONTAL_MARGIN, 0, GRAPH_HEIGHT),
				layoutOrder = layoutOrder,

				graphData = seriesEntry.dataSet,
				minY = seriesEntry.min,
				maxY = seriesEntry.max,

				getX = getX,
				getY = getY,

				axisLabelX = "Time",
				axisLabelY = meta.label,

				stringFormatX = convertTimeStamp,
				stringFormatY = makeStringFormatY(key),
			})
		end
	end

	return graphs, layoutOrder
end

function MainViewVoiceDebug:render()
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList

	local displayOrder = getFFlagVoiceDebugConsoleV2() and COMBINED_DISPLAY_ORDER or VoiceDebugFieldDisplayOrder

	local statLabels, statsHeight = self:renderStatLabels(displayOrder)
	local graphs, graphCount = self:renderGraphs(displayOrder)

	local graphsHeight = graphCount * GRAPH_HEIGHT + math.max(0, graphCount - 1) * PADDING
	local utilTabHeight = self.state.utilTabHeight

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = 3,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			Padding = UDim.new(0, PADDING),
		}),

		FramePadding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, CONTENT_LEFT_PADDING),
		}),

		UtilAndTab = Roact.createElement(UtilAndTab, {
			windowWidth = size.X.Offset,
			formFactor = formFactor,
			tabList = tabList,
			layoutOrder = 1,
			refForParent = self.utilRef,
			onHeightChanged = self.onUtilTabHeightChanged,

			extraContent = getFFlagVoiceDebugConsoleV2() and Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.X,
				Size = UDim2.new(0, 0, 1, 0),
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(
					1,
					formFactor == Constants.FormFactor.Small and UTIL_BAR_RIGHT_INSET_SMALL or UTIL_BAR_RIGHT_INSET_DEFAULT,
					0.5,
					0
				),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, UTIL_BAR_ITEM_GAP),
				}),
				FreezeToggle = Roact.createElement(FreezeToggle, {
					frozen = self.state.frozen,
					onToggle = self.onFreezeToggled,
					layoutOrder = 1,
				}),
			}) or nil,
		}),

		Content = Roact.createElement("ScrollingFrame", {
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 1, -utilTabHeight),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ScrollBarThickness = 5,
		}, getFFlagVoiceDebugConsoleV2() and {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, PADDING),
			}),
			ContentPadding = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, CONTENT_RIGHT_PADDING),
			}),

			MetricsSection = Roact.createElement(CollapsibleSection, {
				title = "Metrics",
				layoutOrder = 1,
			}, {
				HealthStrip = self:renderHealthStrip(),

				StatsContainer = Roact.createElement("Frame", {
					LayoutOrder = 2,
					Size = UDim2.new(1, 0, 0, statsHeight),
					BackgroundTransparency = 1,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),

					Labels = Roact.createFragment(statLabels),
				}),
			}),

			ConnectivityContainer = Roact.createElement(ConnectivityPanel, {
				connectivity = self.state.connectivity,
				layoutOrder = 2,
			}),

			SubscriptionsContainer = Roact.createElement(SubscriptionsPanel, {
				subscriptions = self.state.subscriptions,
				layoutOrder = 3,
			}),

			RemoteOperationsContainer = Roact.createElement(RemoteOperationsPanel, {
				remoteOperations = self.state.remoteOperations,
				layoutOrder = 4,
			}),

			ClientOperationQueueContainer = Roact.createElement(ClientOperationQueuePanel, {
				remoteOperations = self.state.remoteOperations,
				layoutOrder = 5,
			}),

			BottomSpacer = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, BOTTOM_SPACER_HEIGHT),
				LayoutOrder = 6,
				BackgroundTransparency = 1,
			}),
		} or {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, PADDING),
			}),

			ContentPadding = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, CONTENT_RIGHT_PADDING),
			}),

			StatsContainer = Roact.createElement("Frame", {
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, statsHeight),
				BackgroundTransparency = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				Labels = Roact.createFragment(statLabels),
			}),

			GraphsContainer = Roact.createElement("Frame", {
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, graphsHeight),
				BackgroundTransparency = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, PADDING),
				}),

				Graphs = Roact.createFragment(graphs),
			}),

			ConnectivityContainer = Roact.createElement(ConnectivityPanel, {
				connectivity = self.state.connectivity,
				layoutOrder = 3,
			}),
		}),
	})
end

return DataConsumer(MainViewVoiceDebug, "VoiceDebugData")
