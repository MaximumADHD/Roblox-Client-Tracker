local CorePackages = game:GetService("CorePackages")
local MicroProfilerService = game:GetService("MicroProfilerService")
local TelemetryService = game:GetService("TelemetryService")

local BoxButton = require(script.Parent.Parent.BoxButton)
local Constants = require(script.Parent.Parent.Parent.Constants)
local MicroProfilerPanel = require(script.Parent.MicroProfilerPanel)
local NumberInput = require(script.Parent.Parent.NumberInput)

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local Actions = script.Parent.Parent.Parent.Actions
local AppendRecentDumpPath = require(Actions.AppendRecentDumpPath)
local SetRCCProfilerState = require(Actions.SetRCCProfilerState)

local getClientReplicator = require(script.Parent.Parent.Parent.Util.getClientReplicator)

local DEFAULT_CLIENT_FRAMES_TO_RECORD = 32
local DEFAULT_CLIENT_SECONDS_TO_DELAY = 1
local MIN_FRAMES_TO_RECORD = 1
local MAX_FRAMES_TO_RECORD = 60
local MIN_SECONDS_TO_DELAY = 1
local MAX_SECONDS_TO_DELAY = 4

local RecordAndDumpView = Roact.Component:extend("RecordAndDumpView")

local DevConsoleMpRecordAndDumpCounterConfig = {
	eventName = "DevConsoleMpRecordAndDumpCounter",
	backends = { "RobloxTelemetryCounter" },
	lastUpdated = { 2025, 11, 24 },
	description = [[
		Counter to track the action of using the Developer Console to record and save MicroProfiler
		dumps for either the client or server.
	]],
}

function RecordAndDumpView:logRecordAndDumpAction(context: string)
	TelemetryService:LogCounter(DevConsoleMpRecordAndDumpCounterConfig, {
		customFields = {
			context = context,
			secondsToDelay = self.state[`{context}SecondsToDelay`],
			framesToRecord = self.state[`{context}FramesToRecord`],
		},
	}, 1)
end

function RecordAndDumpView:numericInputRow(options)
	return {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 8),
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		UIPadding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, 4),
			PaddingLeft = UDim.new(0, Constants.MicroProfilerFormatting.OptionTextPadding),
			PaddingRight = UDim.new(0, 4),
			PaddingTop = UDim.new(0, 4),
		}),
		OptionLabel = Roact.createElement("TextLabel", {
			Font = Constants.Font.MainWindow,
			Text = options.Text,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = Constants.MicroProfilerFormatting.OptionTextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			Position = UDim2.fromOffset(8, 0),
			Size = UDim2.fromScale(0, 1),
		}, {
			UIFlexItem = Roact.createElement("UIFlexItem", {
				FlexMode = Enum.UIFlexMode.Fill,
			}),
		}),
		NumberInput = Roact.createElement(NumberInput, {
			Size = UDim2.new(0, 72, 1, 0),
			LayoutOrder = 3,
			OnNumberInputChanged = options.OnNumberInputChanged,
			Range = options.Range,
			DefaultValue = options.DefaultValue,
			IntegerOnly = options.IntegerOnly,
		}),
		NumberLimitsHint = Roact.createElement("TextLabel", {
			Font = Constants.Font.Log,
			Text = `({options.Range.Min}-{options.Range.Max})`,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 12,
			TextTransparency = 0.5,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			LayoutOrder = 2,
			Size = UDim2.new(0, 32, 1, 0),
			TextXAlignment = Enum.TextXAlignment.Right,
		}),
	}
end

function RecordAndDumpView:recordAndDumpRows(options)
	local isClient = options.Context == "Client"

	return {
		self:numericInputRow({
			Context = options.Context,
			Text = "Number of frames to record",
			DefaultValue = if isClient then self.state.ClientFramesToRecord else self.state.ServerFramesToRecord,
			Range = NumberRange.new(MIN_FRAMES_TO_RECORD, MAX_FRAMES_TO_RECORD),
			IntegerOnly = true,
			OnNumberInputChanged = function(newValue: number)
				if isClient then
					self:setState({
						ClientFramesToRecord = newValue,
					})
				else
					GameSettings.RCCProfilerRecordFrameRate = newValue
					self:setState({
						ServerFramesToRecord = newValue,
					})
				end
			end,
		}),
		self:numericInputRow({
			Context = options.Context,
			Text = "Seconds to delay",
			DefaultValue = if isClient then self.state.ClientSecondsToDelay else self.state.ServerSecondsToDelay,
			Range = NumberRange.new(MIN_SECONDS_TO_DELAY, MAX_SECONDS_TO_DELAY),
			IntegerOnly = true,
			OnNumberInputChanged = function(newValue: number)
				if isClient then
					self:setState({
						ClientSecondsToDelay = newValue,
					})
				else
					GameSettings.RCCProfilerRecordTimeFrame = newValue
					self:setState({
						ServerSecondsToDelay = newValue,
					})
				end
			end,
		}),
		{
			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 2),
				PaddingLeft = UDim.new(0, 2),
				PaddingRight = UDim.new(0, 2),
				PaddingTop = UDim.new(0, 2),
			}),
			Button = Roact.createElement(BoxButton, {
				text = if isClient
					then if self.state.IsClientRecording
						then options.RecordButtonText.Recording
						else options.RecordButtonText.Idle
					else if self.props.IsServerRecording
						then options.RecordButtonText.Recording
						else options.RecordButtonText.Idle,
				size = UDim2.fromScale(1, 1),
				pos = UDim2.new(0, 0, 0, 0),
				onClicked = options.OnRecordButtonClicked,
				enabled = if isClient then not self.state.IsClientRecording else not self.props.IsServerRecording,
			}),
		},
	} :: { { [string]: any } }
end

function RecordAndDumpView:init()
	self.state = {
		IsClientRecording = false,

		-- Will later have own game settings for client
		ClientFramesToRecord = DEFAULT_CLIENT_FRAMES_TO_RECORD,
		ClientSecondsToDelay = DEFAULT_CLIENT_SECONDS_TO_DELAY,

		ServerFramesToRecord = GameSettings.RCCProfilerRecordFrameRate,
		ServerSecondsToDelay = GameSettings.RCCProfilerRecordTimeFrame,
	}

	self.RecordingTasks = {
		Client = nil :: thread?,
	}
end

function RecordAndDumpView:willUnmount()
	if self.RecordingTasks.Client and coroutine.status(self.RecordingTasks.Client) ~= "dead" then
		task.cancel(self.RecordingTasks.Client)
	end
end

function RecordAndDumpView:render()
	return Roact.createElement(MicroProfilerPanel, {
		Title = "Record and dump",
		LayoutOrder = self.props.LayoutOrder,
		Sections = {
			{
				Name = "Client",
				Rows = self:recordAndDumpRows({
					Context = "Client",
					RecordButtonText = { Idle = "Begin client recording", Recording = "Recording client..." },
					OnRecordButtonClicked = function()
						if self.state.IsClientRecording then
							return
						end

						self:logRecordAndDumpAction("Client")
						self:setState({ IsClientRecording = true })

						self.RecordingTasks.Client = task.spawn(function()
							local dumpPath = MicroProfilerService:DumpToFileAsync(
								self.state.ClientSecondsToDelay,
								self.state.ClientFramesToRecord
							)

							self.props.dispatchAppendRecentDumpPath(dumpPath)

							self:setState(function(state)
								return {
									IsClientRecording = false,
								}
							end)

							self.RecordingTasks.Client = nil
						end)
					end,
				}),
			},
			{
				Name = "Server",
				Rows = self:recordAndDumpRows({
					Context = "Server",
					RecordButtonText = { Idle = "Begin server recording", Recording = "Recording server..." },
					OnRecordButtonClicked = function()
						if self.props.IsServerRecording then
							return
						end

						local clientReplicator = getClientReplicator()
						if not clientReplicator then
							return
						end

						self:logRecordAndDumpAction("Server")

						clientReplicator:RequestRCCProfilerData(
							self.state.ServerFramesToRecord,
							self.state.ServerSecondsToDelay
						)

						self.props.dispatchSetRCCProfilerState(true)
					end,
				}),
			},
		},
	})
end

local function mapStateToProps(state, props)
	return {
		IsServerRecording = state.MicroProfiler.waitingForRecording,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchAppendRecentDumpPath = function(dumpPath: string)
			dispatch(AppendRecentDumpPath(dumpPath))
		end,
		dispatchSetRCCProfilerState = function(waitingForRecording: boolean, dumpPath: string?)
			dispatch(SetRCCProfilerState(waitingForRecording, dumpPath))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(RecordAndDumpView)
