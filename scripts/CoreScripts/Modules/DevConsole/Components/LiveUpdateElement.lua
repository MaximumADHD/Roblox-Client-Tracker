local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local DataConsumer = require(script.Parent.Parent.Components.DataConsumer)

local Actions = script.Parent.Parent.Actions
local SetActiveTab = require(Actions.SetActiveTab)

local Constants = require(script.Parent.Parent.Constants)
local MEM_STAT_STR_SMALL = "Client Mem:"
local memStatStrSmallWidth = TextService:GetTextSize(MEM_STAT_STR_SMALL, Constants.DefaultFontSize.TopBar,
	Constants.Font.TopBar, Vector2.new(0, 0))
local MEM_STAT_STR = "Client Memory Usage:"
local memStatStrWidth = TextService:GetTextSize(MEM_STAT_STR, Constants.DefaultFontSize.TopBar,
	Constants.Font.TopBar, Vector2.new(0, 0))
local AVG_PING_STR = "Avg. Ping:"
local avgPingStrWidth = TextService:GetTextSize(AVG_PING_STR, Constants.DefaultFontSize.TopBar,
	Constants.Font.TopBar, Vector2.new(0, 0))

-- supposed to be the calculated width of the frame, but
-- doing this for now due to time constraints.
local MIN_LARGE_FORMFACTOR_WIDTH = 380
local INNNER_PADDING = 6

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
	self.onLogWarningButton = function()
		local WarningFilters = {
			Warning = true,
		}
		self.props.ClientLogData:setFilters(WarningFilters)
		self.props.dispatchChangeTabClientLog()
	end

	self.onLogErrorButton = function()
		local ErrorFilters = {
			Error = true,
		}
		self.props.ClientLogData:setFilters(ErrorFilters)
		self.props.dispatchChangeTabClientLog()
	end

	self.ref = Roact.createRef()

	self.state = {
		numErrors = 0,
		numWarnings = 0,
		totalClientMemory = 0,
		averagePing = 0,
		formFactorThreshold = MIN_LARGE_FORMFACTOR_WIDTH,
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
	local formFactorThreshold = self.state.formFactorThreshold

	local useSmallForm = false
	local currMemStrWidth = memStatStrWidth.X
	local alignment = Enum.HorizontalAlignment.Center

	if formFactor == Constants.FormFactor.Small or
		size.X.Offset < formFactorThreshold then

		position = position + UDim2.new(0, INNNER_PADDING * 2, 0, 0)
		currMemStrWidth = memStatStrSmallWidth.X
		useSmallForm = true
		alignment = Enum.HorizontalAlignment.Left
	end

	local imageSize = UDim2.new(0, Constants.DefaultFontSize.TopBar, 0, Constants.DefaultFontSize.TopBar)

	local logErrorStat = string.format("%d", numErrors)
	local logErrorStatVector = TextService:GetTextSize(
		logErrorStat,
		Constants.DefaultFontSize.TopBar,
		Constants.Font.TopBar,
		Vector2.new(0, 0)
	)

	local logWarningStat = string.format("%d", numWarnings)
	local logWarningStatVector = TextService:GetTextSize(
		logWarningStat,
		Constants.DefaultFontSize.TopBar,
		Constants.Font.TopBar,
		Vector2.new(0, 0)
	)

	local memUsageString = string.format("%d MB", clientMemoryUsage)
	local memUsageStringVector = TextService:GetTextSize(
		memUsageString,
		Constants.DefaultFontSize.TopBar,
		Constants.Font.TopBar,
		Vector2.new(0, 0)
	)

	local avgPingString = string.format("%d ms", averagePing)
	local avgPingStringVector = TextService:GetTextSize(avgPingString,
		Constants.DefaultFontSize.TopBar,
		Constants.Font.TopBar,
		Vector2.new(0, 0)
	)

	return Roact.createElement("Frame",{
		Position = position,
		Size = size,
		BackgroundTransparency = 1,

		[Roact.Ref] = self.ref,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, INNNER_PADDING),
			HorizontalAlignment = alignment,
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),

		LogErrorIcon = Roact.createElement("ImageButton", {
			Image = Constants.Image.Error,
			Size = imageSize,
			BackgroundTransparency = 1,
			LayoutOrder = 1,

			[Roact.Event.Activated] = self.onLogErrorButton,
		}),

		LogErrorCount = Roact.createElement("TextButton", {
			Text = logErrorStat,
			TextSize = Constants.DefaultFontSize.TopBar,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = Constants.Font.TopBar,
			Size = UDim2.new(0, logErrorStatVector.X, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			[Roact.Event.Activated] = self.onLogErrorButton,
		}),

		LogWarningIcon = Roact.createElement("ImageButton", {
			Image = Constants.Image.Warning,
			Size = imageSize,
			BackgroundTransparency = 1,
			LayoutOrder = 3,
			[Roact.Event.Activated] = self.onLogWarningButton,
		}),

		LogWarningCount = Roact.createElement("TextButton", {
			Text = logWarningStat,
			TextSize = Constants.DefaultFontSize.TopBar,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = Constants.Font.TopBar,
			Size = UDim2.new(0, logWarningStatVector.X, 1, 0),
			BackgroundTransparency = 9,
			LayoutOrder = 4,
			[Roact.Event.Activated] = self.onLogWarningButton,
		}),


		MemoryUsage = Roact.createElement("TextButton", {
			Text = useSmallForm and MEM_STAT_STR_SMALL or MEM_STAT_STR,
			TextSize = Constants.DefaultFontSize.TopBar,
			TextColor3 = Constants.Color.WarningYellow,
			TextXAlignment = Enum.TextXAlignment.Right,
			Font = Constants.Font.TopBar,
			Size = UDim2.new(0, currMemStrWidth, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 5,
			[Roact.Event.Activated] = self.props.dispatchChangeTabClientMemory,
		}),

		MemoryUsage_MB = Roact.createElement("TextButton", {
			Text = memUsageString,
			TextSize = Constants.DefaultFontSize.TopBar,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = Constants.Font.TopBar,
			Size = UDim2.new(0, memUsageStringVector.X, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 6,
			[Roact.Event.Activated] = self.props.dispatchChangeTabClientMemory,
		}),


		AvgPing = not useSmallForm and Roact.createElement("TextButton", {
			Text = AVG_PING_STR,
			TextSize = Constants.DefaultFontSize.TopBar,
			TextColor3 = Constants.Color.WarningYellow,
			TextXAlignment = Enum.TextXAlignment.Right,
			Font = Constants.Font.TopBar,
			Size = UDim2.new(0, avgPingStrWidth.X, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 7,
			[Roact.Event.Activated] = self.props.dispatchChangeTabNetworkPing,
		}),

		AvgPing_ms = not useSmallForm and Roact.createElement("TextButton", {
			Text = avgPingString,
			TextSize = Constants.DefaultFontSize.TopBar,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = Constants.Font.TopBar,
			Size = UDim2.new(0, avgPingStringVector.X, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 8,
			[Roact.Event.Activated] = self.props.dispatchChangeTabNetworkPing,
		})
	})
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchChangeTabClientLog = function()
			dispatch(SetActiveTab(1, true))
		end,
		dispatchChangeTabClientMemory = function()
			dispatch(SetActiveTab(2, true))
		end,
		dispatchChangeTabNetworkPing = function()
			dispatch(SetActiveTab(6, true))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(
	DataConsumer(LiveUpdateElement, "ServerStatsData", "ClientMemoryData", "ClientLogData" )
)