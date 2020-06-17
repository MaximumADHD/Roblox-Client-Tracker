local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local DataConsumer = require(script.Parent.Parent.Components.DataConsumer)

local Actions = script.Parent.Parent.Actions
local SetActiveTab = require(Actions.SetActiveTab)

local Constants = require(script.Parent.Parent.Constants)
local MsgTypeNamesOrdered = Constants.MsgTypeNamesOrdered

local TOP_BAR_FONT_SIZE = Constants.DefaultFontSize.TopBar
local TEXT_COLOR = Constants.Color.Text
local FONT = Constants.Font.TopBar

local IMAGE_SIZE = UDim2.new(0, TOP_BAR_FONT_SIZE, 0, TOP_BAR_FONT_SIZE)

local MEM_STAT_STR_SMALL = "Client Mem:"
local memStatStrSmallWidth = TextService:GetTextSize(MEM_STAT_STR_SMALL, TOP_BAR_FONT_SIZE, FONT, Vector2.new(0, 0))
local MEM_STAT_STR = "Client Memory Usage:"
local memStatStrWidth = TextService:GetTextSize(MEM_STAT_STR, TOP_BAR_FONT_SIZE, FONT, Vector2.new(0, 0))
local AVG_PING_STR = "Avg. Ping:"
local avgPingStrWidth = TextService:GetTextSize(AVG_PING_STR, TOP_BAR_FONT_SIZE, FONT, Vector2.new(0, 0))

-- supposed to be the calculated width of the frame, but
-- doing this for now due to time constraints.
local MIN_LARGE_FORMFACTOR_WIDTH = 380
local INNER_PADDING = 6

local LiveUpdateElement = Roact.PureComponent:extend("LiveUpdateElement")

function LiveUpdateElement:didMount()
	local totalMemSignal = self.props.ClientMemoryData:totalMemSignal()
	self.totalMemConnector = totalMemSignal:Connect(function(totalClientMemory)
		self:setState({totalClientMemory = totalClientMemory})
	end)

	self.avgPingConnector = self.props.ServerStatsData:avgPing():Connect(function(averagePing)
		self:setState({averagePing = averagePing})
	end)

	self.logWarningErrorConnector = self.props.ClientLogData:errorWarningSignal():Connect(function(error, warning)
		self:setState({
			numErrors = error,
			numWarnings = warning,
		})
	end)

	
	self:doSizeCheck()
	
end

function LiveUpdateElement:didUpdate()
	self:doSizeCheck()
end

function LiveUpdateElement:doSizeCheck()
	if self.ref.current then
		local formFactorThreshold = self.state.formFactorThreshold
		local isSmallerThanFormFactorThreshold = self.ref.current.AbsoluteSize.X < formFactorThreshold

		if isSmallerThanFormFactorThreshold ~= self.state.isSmallerThanFormFactorThreshold then
			self:setState({
				isSmallerThanFormFactorThreshold = isSmallerThanFormFactorThreshold
			})
		end
	end
end

function LiveUpdateElement:willUnmount()
	self.totalMemConnector:Disconnect()
	self.totalMemConnector = nil

	self.avgPingConnector:Disconnect()
	self.avgPingConnector = nil

	self.logWarningErrorConnector:Disconnect()
	self.logWarningErrorConnector = nil
end

function LiveUpdateElement:init()
	local errorInit, warningInit = self.props.ClientLogData:getErrorWarningCount()
	self.onLogWarningButton = function()
		local warningFilters = {}
		for _, name in pairs(MsgTypeNamesOrdered) do
			warningFilters[name] = false
		end

		warningFilters["Warning"] = true
		self.props.ClientLogData:setFilters(warningFilters)
		self.props.dispatchChangeTabClientLog()
	end

	self.onLogErrorButton = function()
		local errorFilters = {}
		for _, name in pairs(MsgTypeNamesOrdered) do
			errorFilters[name] = false
		end

		errorFilters["Error"] = true
		self.props.ClientLogData:setFilters(errorFilters)
		self.props.dispatchChangeTabClientLog()
	end

	self.ref = Roact.createRef()

	self.state = {
		numErrors = errorInit,
		numWarnings = warningInit,
		totalClientMemory = 0,
		averagePing = 0,
		formFactorThreshold = MIN_LARGE_FORMFACTOR_WIDTH,
		isSmallerThanFormFactorThreshold = false,
	}
end

function LiveUpdateElement:render()
	local size = self.props.size
	local position = self.props.position
	local formFactor = self.props.formFactor

	local numErrors = self.state.numErrors
	local numWarnings = self.state.numWarnings
	local clientMemoryUsage = self.state.totalClientMemory
	local averagePing = self.state.averagePing
	local isSmallerThanFormFactorThreshold = self.state.isSmallerThanFormFactorThreshold

	local useSmallForm = false
	local currMemStrWidth = memStatStrWidth.X
	local alignment = Enum.HorizontalAlignment.Center

	if formFactor == Constants.FormFactor.Small or isSmallerThanFormFactorThreshold then
		position = position + UDim2.new(0, INNER_PADDING * 2, 0, 0)
		currMemStrWidth = memStatStrSmallWidth.X
		useSmallForm = true
		alignment = Enum.HorizontalAlignment.Left
	end

	local logErrorStat = string.format("%d", numErrors)
	local logErrorStatVector = TextService:GetTextSize(
		logErrorStat,
		TOP_BAR_FONT_SIZE,
		FONT,
		Vector2.new(0, 0)
	)

	local logWarningStat = string.format("%d", numWarnings)
	local logWarningStatVector = TextService:GetTextSize(
		logWarningStat,
		TOP_BAR_FONT_SIZE,
		FONT,
		Vector2.new(0, 0)
	)

	local memUsageString = string.format("%d MB", clientMemoryUsage)
	local memUsageStringVector = TextService:GetTextSize(
		memUsageString,
		TOP_BAR_FONT_SIZE,
		FONT,
		Vector2.new(0, 0)
	)

	local avgPingString = string.format("%d ms", averagePing)
	local avgPingStringVector = TextService:GetTextSize(avgPingString,
		TOP_BAR_FONT_SIZE,
		FONT,
		Vector2.new(0, 0)
	)

	if formFactor == Constants.FormFactor.Small or isSmallerThanFormFactorThreshold then
		position = position + UDim2.new(0, INNER_PADDING * 2, 0, 0)
		currMemStrWidth = memStatStrSmallWidth.X
		useSmallForm = true
		alignment = Enum.HorizontalAlignment.Left
	end

	local showNetworkPing = averagePing > 0

	return Roact.createElement("Frame", {
		Position = position,
		Size = size,
		BackgroundTransparency = 1,

		[Roact.Ref] = self.ref,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, INNER_PADDING),
			HorizontalAlignment = alignment,
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),

		LogErrorIcon = Roact.createElement("ImageButton", {
			Image = Constants.Image.Error,
			Size = IMAGE_SIZE,
			BackgroundTransparency = 1,
			LayoutOrder = 1,

			[Roact.Event.Activated] = self.onLogErrorButton,
		}),

		LogErrorCount = Roact.createElement("TextButton", {
			Text = logErrorStat,
			TextSize = TOP_BAR_FONT_SIZE,
			TextColor3 = TEXT_COLOR,
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = FONT,
			Size = UDim2.new(0, logErrorStatVector.X, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			[Roact.Event.Activated] = self.onLogErrorButton,
		}),

		ErrorWarningPad = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 3,
		}),

		LogWarningIcon = Roact.createElement("ImageButton", {
			Image = Constants.Image.Warning,
			Size = IMAGE_SIZE,
			BackgroundTransparency = 1,
			LayoutOrder = 4,
			[Roact.Event.Activated] = self.onLogWarningButton,
		}),

		LogWarningCount = Roact.createElement("TextButton", {
			Text = logWarningStat,
			TextSize = TOP_BAR_FONT_SIZE,
			TextColor3 = TEXT_COLOR,
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = FONT,
			Size = UDim2.new(0, logWarningStatVector.X, 1, 0),
			BackgroundTransparency = 9,
			LayoutOrder = 5,
			[Roact.Event.Activated] = self.onLogWarningButton,
		}),

		WarningMemoryPad = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 6,
		}),

		MemoryUsage = Roact.createElement("TextButton", {
			Text = useSmallForm and MEM_STAT_STR_SMALL or MEM_STAT_STR,
			TextSize = TOP_BAR_FONT_SIZE,
			TextColor3 = Constants.Color.WarningYellow,
			TextXAlignment = Enum.TextXAlignment.Right,
			Font = FONT,
			Size = UDim2.new(0, currMemStrWidth, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 7,
			[Roact.Event.Activated] = self.props.dispatchChangeTabClientMemory,
		}),

		MemoryUsage_MB = Roact.createElement("TextButton", {
			Text = memUsageString,
			TextSize = TOP_BAR_FONT_SIZE,
			TextColor3 = TEXT_COLOR,
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = FONT,
			Size = UDim2.new(0, memUsageStringVector.X, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 8,
			[Roact.Event.Activated] = self.props.dispatchChangeTabClientMemory,
		}),

		MemoryPingPad = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 9,
		}),

		AvgPing = not useSmallForm and showNetworkPing and Roact.createElement("TextButton", {
			Text = AVG_PING_STR,
			TextSize = TOP_BAR_FONT_SIZE,
			TextColor3 = Constants.Color.WarningYellow,
			TextXAlignment = Enum.TextXAlignment.Right,
			Font = FONT,
			Size = UDim2.new(0, avgPingStrWidth.X, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 10,
			[Roact.Event.Activated] = self.props.dispatchChangeTabNetworkPing,
		}),

		AvgPing_ms = not useSmallForm and showNetworkPing and Roact.createElement("TextButton", {
			Text = avgPingString,
			TextSize = TOP_BAR_FONT_SIZE,
			TextColor3 = TEXT_COLOR,
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = FONT,
			Size = UDim2.new(0, avgPingStringVector.X, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 11,
			[Roact.Event.Activated] = self.props.dispatchChangeTabNetworkPing,
		})
	})
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchChangeTabClientLog = function()
			dispatch(SetActiveTab("Log", true))
		end,
		dispatchChangeTabClientMemory = function()
			dispatch(SetActiveTab("Memory", true))
		end,
		dispatchChangeTabNetworkPing = function()
			dispatch(SetActiveTab("ServerStats", true))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(
	DataConsumer(LiveUpdateElement, "ServerStatsData", "ClientMemoryData", "ClientLogData" )
)