local CorePackages = game:GetService("CorePackages")
local LogService = game:GetService("LogService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local UtilAndTab = require(Components.UtilAndTab)
local ServerProfilerInterface = require(script.Parent.ServerProfilerInterface)

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding
local BUTTON_WIDTH = Constants.MicroProfilerFormatting.ButtonWidth
local TEXT_SIZE = Constants.MicroProfilerFormatting.ButtonTextSize
local FONT = Constants.Font.MainWindow
local HEADER_FONT = Constants.Font.MainWindowHeader
local BUTTON_UNSELECTED = Constants.Color.UnselectedGray
local BUTTON_SELECTED = Constants.Color.SelectedBlue

local BUTTON_COLOR = Constants.Color.UnselectedGray

local ROW_HEIGHT = 30
local OFFSET = .10
local ROW_VALUE_WIDTH = .8
local MICROPROFILER_PRESSED_COUNTERNAME ="MicroprofilerDevConsolePressed"

local FFlagMicroProfilerSessionAnalytics = settings():GetFFlag("MicroProfilerSessionAnalytics")

local MainViewProfiler = Roact.Component:extend("MainViewProfiler")

function MainViewProfiler:init()
	self.onUtilTabHeightChanged = function(utilTabHeight)
		self:setState({
			utilTabHeight = utilTabHeight
		})
	end

	self.changeProfilerState = function(screenProfilerEnabled)
		return function()
			GameSettings.OnScreenProfilerEnabled = screenProfilerEnabled
			self:setState({
				clientProfilerEnabled = screenProfilerEnabled
			})

			if FFlagMicroProfilerSessionAnalytics then
				AnalyticsService:ReportCounter(MICROPROFILER_PRESSED_COUNTERNAME)
			end
		end
	end

	local microProfilerChangedSignal = GameSettings:GetPropertyChangedSignal("OnScreenProfilerEnabled")
	self.microProfilerChangedConnection = microProfilerChangedSignal:Connect(function()
		self:setState({
			clientProfilerEnabled = GameSettings.OnScreenProfilerEnabled
		})
	end)


	self.utilRef = Roact.createRef()

	self.state = {
		utilTabHeight = 0,
	}
end

function MainViewProfiler:didMount()
	local utilSize = self.utilRef.current.Size

	self:setState({
		utilTabHeight = utilSize.Y.Offset
	})
end

function MainViewProfiler:willUnmount()
	if self.microProfilerChangedConnection then
		self.microProfilerChangedConnection:Disconnect()
		self.microProfilerChangedConnection = nil
	end
end

function MainViewProfiler:didUpdate()
	local utilSize = self.utilRef.current.Size
	if utilSize.Y.Offset ~= self.state.utilTabHeight then
		self:setState({
			utilTabHeight = utilSize.Y.Offset
		})
	end
end

function MainViewProfiler:render()
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList

	local utilTabHeight = self.state.utilTabHeight

	local frameRate = self.state.frameRate
	local timeFrame = self.state.timeFrame
	local waitingForData = self.state.waitingForData
	local clientProfilerEnabled = self.state.clientProfilerEnabled
	local outputPath = self.state.outputPath

	local textbox_size = UDim2.new(ROW_VALUE_WIDTH, -BUTTON_WIDTH, 0, ROW_HEIGHT)
	local textbox_pos = UDim2.new(1 - ROW_VALUE_WIDTH / 2, BUTTON_WIDTH, 0, 0)

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		LayoutOrder = 3
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

			refForParent = self.utilRef,

			onHeightChanged = self.onUtilTabHeightChanged,
		}),

		MainFrame = Roact.createElement("ScrollingFrame",{
			Size = UDim2.new(1, 0, 1, -utilTabHeight),
			CanvasSize = UDim2.new(1, 0, 1, -utilTabHeight),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, PADDING * 2),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			MicroProfilerRow = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, ROW_HEIGHT * 3),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				Label = Roact.createElement("TextLabel", {
					Size = UDim2.new(0, BUTTON_WIDTH, 0, ROW_HEIGHT),
					Position = UDim2.new(OFFSET, 0, 0, 0),
					Text = "MicroProfiler",
					Font = HEADER_FONT,
					TextSize = TEXT_SIZE,
					TextColor3 = Constants.Color.Text,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
					BackgroundColor3 = BUTTON_COLOR,
					BackgroundTransparency = 1,
				}),

				HorizontalLine = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0, 0, 0, ROW_HEIGHT),
				}),

				ToggleButton = Roact.createElement("TextLabel", {
					Size = UDim2.new(ROW_VALUE_WIDTH, -BUTTON_WIDTH, 0, ROW_HEIGHT),
					Position = UDim2.new((1 - ROW_VALUE_WIDTH)/2, BUTTON_WIDTH, 0, ROW_HEIGHT * 1.25),
					BackgroundTransparency = 1,
				}, {
					OffButton = Roact.createElement("TextButton", {
						Size = UDim2.new(.5, 0, 1, 0),
						Text = "Off",
						Font = HEADER_FONT,
						TextSize = TEXT_SIZE,
						TextColor3 = Constants.Color.Text,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Center,
						BackgroundColor3 = clientProfilerEnabled and BUTTON_UNSELECTED or BUTTON_SELECTED,

						[Roact.Event.Activated] = self.changeProfilerState(false),
					}),

					ClientButton = Roact.createElement("TextButton", {
						Size = UDim2.new(.5, 0, 1, 0),
						Position = UDim2.new(.5, 0, 0, 0),
						Text = "Client",
						Font = HEADER_FONT,
						TextSize = TEXT_SIZE,
						TextColor3 = Constants.Color.Text,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Center,
						BackgroundColor3 = clientProfilerEnabled and BUTTON_SELECTED or BUTTON_UNSELECTED,

						[Roact.Event.Activated] = self.changeProfilerState(true),
					}),
				}),
			}),

			HorizontalLine = Roact.createElement("Frame", {
				Size = UDim2.new(1,0,0,PADDING),
				BackgroundTransparency = 1,
				LayoutOrder = 3
			}),

			ServerProfiler = Roact.createElement(ServerProfilerInterface, {
				Size = UDim2.new(1, 0, 0, ROW_HEIGHT * 4.5),
				BackgroundTransparency = 1,
				LayoutOrder = 4,
			}),
		})
	})
end

return MainViewProfiler
