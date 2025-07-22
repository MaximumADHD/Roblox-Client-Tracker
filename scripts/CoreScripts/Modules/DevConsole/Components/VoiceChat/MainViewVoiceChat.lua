local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local Actions = script.Parent.Parent.Parent.Actions

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding
local UtilAndTab = require(Components.UtilAndTab)

local MainViewVoiceChat = Roact.PureComponent:extend("MainViewVoiceChat")

function MainViewVoiceChat:init()
	self.onUtilTabHeightChanged = function(utilTabHeight)
		self:setState({
			utilTabHeight = utilTabHeight,
		})
	end

	self.onStatsUpdated = function(newStats)
		self:setState({
			stats = newStats,
		})
	end

	local statsUpdatedSignal = self.props.VoiceChatData:Signal()
	self._statsUpdatedConnection = statsUpdatedSignal:Connect(self.onStatsUpdated)

	self.utilRef = Roact.createRef()

	self.state = {
		utilTabHeight = 0,
		stats = {},
	}
end

function MainViewVoiceChat:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset,
	})
end

function MainViewVoiceChat:didUpdate()
	local utilSize = self.utilRef.current.Size
	if utilSize.Y.Offset ~= self.state.utilTabHeight then
		self:setState({
			utilTabHeight = utilSize.Y.Offset,
		})
	end
end

function MainViewVoiceChat:willUnmount()
	if self._statsUpdatedConnection then
		self._statsUpdatedConnection:Disconnect()
		self._statsUpdatedConnection = nil
	end
end

function MainViewVoiceChat:render()
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList

	local statsToDisplay = {
		{ key = "rttMs", format = "Round-trip time: %f", defaultValue = 0 },
		{ key = "incomingPackets", format = "Incoming Packets: %d", defaultValue = 0 },
		{ key = "outgoingPackets", format = "Outgoing Packets: %d", defaultValue = 0 },
		{ key = "incomingPacketsLost", format = "Incoming Packets Lost: %d", defaultValue = 0 },
		{ key = "outgoingPacketsLost", format = "Outgoing Packets Lost: %d", defaultValue = 0 },
	}

	local function renderStatLabels()
		local labels = {}
		for i, statInfo in ipairs(statsToDisplay) do
			labels[i] = Roact.createElement("TextLabel", {
				LayoutOrder = i,
				Size = UDim2.fromOffset(200, 20),
				Text = string.format(statInfo.format, self.state.stats[statInfo.key] or statInfo.defaultValue),
				TextColor3 = Constants.Color.Text,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			})
		end
		return Roact.createFragment(labels)
	end

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
			PaddingLeft = UDim.new(0, 16),
		}),

		UtilAndTab = Roact.createElement(UtilAndTab, {
			windowWidth = size.X.Offset,
			formFactor = formFactor,
			tabList = tabList,
			layoutOrder = 1,
			refForParent = self.utilRef,
		}),

		StatsContainer = Roact.createElement("Frame", {
			LayoutOrder = 2,
			BackgroundTransparency = 1,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			Labels = renderStatLabels(),
		}),
	})
end

return DataConsumer(MainViewVoiceChat, "VoiceChatData")
