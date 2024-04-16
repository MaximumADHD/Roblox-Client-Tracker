--!strict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

-- Temporary: Remove with FFlagScriptProfilerUseNewAPI
-- Used only to work around CI where we try to get the ScriptProfilerService on versions of roblox-cli that do not implement it.
-- Can be removed once all CLI's in CI are >= 620.
local HAS_SCRIPTPROFILERSERVICE = pcall(function()
	game:GetService("ScriptProfilerService")
end)

local FFlagScriptProfilerUseNewAPI = game:DefineFastFlag("ScriptProfilerUseNewAPI", false)

local ScriptContext = game:GetService("ScriptContext")
local ScriptProfiler: any = if FFlagScriptProfilerUseNewAPI and HAS_SCRIPTPROFILERSERVICE
	then game:GetService("ScriptProfilerService")
	else nil

local ProfilerData = require(script.Parent.ProfilerDataFormatV2)

local Components = script.Parent.Parent.Parent.Components
local ScrollingTextBox = require(Components.ScrollingTextBox)

local Actions = script.Parent.Parent.Parent.Actions

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding

local HEADER_FONT = Constants.Font.MainWindowHeader
local FONT = Constants.Font.MainWindow
local TEXT_SIZE = Constants.MicroProfilerFormatting.ButtonTextSize
local BACKGROUND_COLOR = Constants.Color.UnselectedGray

local ROW_HEIGHT = 30
local OFFSET = 0.10

local BUTTON_WIDTH = Constants.MicroProfilerFormatting.ButtonWidth

local ProfilerExportView = Roact.PureComponent:extend("ProfilerExportView")

local function generateDefaultExportName(isClient: boolean, data: ProfilerData.RootDataFormat?, ext: string)
	local result = "scriptprofiler-"
	local date = ""
	local sessionIntent = if isClient then "client" else "server"

	local startTime = data and data.SessionStartTime

	if startTime then
		date = os.date("%Y%b%d-%H%M%S-", startTime / 1000) or ""
	end

	return result .. date .. sessionIntent .. ext
end

function ProfilerExportView:init() end

function ProfilerExportView:didMount()
	self:setState({
		exportFilenameClient = generateDefaultExportName(true, self.props.client.data, ".json"),
		exportFilenameServer = generateDefaultExportName(false, self.props.server.data, ".json"),
	})
end

function ProfilerExportView:didUpdate() end

function ProfilerExportView:renderExportInputAndButton(isClient: boolean, exportFilename: string, exportData: string)
	local offset = OFFSET / 2

	return Roact.createElement(
		"TextLabel",
		{
			Size = UDim2.new(1 - (offset * 2), 0, 0, ROW_HEIGHT),
			Position = UDim2.new(offset, 0, 0, ROW_HEIGHT * 1.25),
			BackgroundTransparency = 0,
			BackgroundColor3 = BACKGROUND_COLOR,
			Text = if exportData then "" else "Complete a profiling session to export data",
			TextSize = TEXT_SIZE,
			Font = FONT,
			TextColor3 = Constants.Color.Text,
		},
		if exportData
			then {
				InputField = Roact.createElement(ScrollingTextBox, {
					Text = exportFilename,
					TextSize = TEXT_SIZE,
					Font = FONT,
					Size = UDim2.new(0.8, 0, 1, 0),
					Position = UDim2.new(0, 0, 0, 0),
					ShowNativeInput = true,
					TextColor3 = Constants.Color.Text,
					TextXAlignment = Enum.TextXAlignment.Left,

					ClearTextOnFocus = false,
					PlaceholderText = "Filename for export",

					TextBoxFocusLost = function(rbx, enterPressed, inputThatCausedFocusLoss)
						if isClient then
							self:setState({
								exportFilenameClient = rbx.text,
							})
						else
							self:setState({
								exportFilenameServer = rbx.text,
							})
						end
					end,
				}),

				ExportButton = Roact.createElement("TextButton", {
					Size = UDim2.new(0.2, 0, 1, 0),
					Position = UDim2.new(0.8, 0, 0, 0),
					Text = "Export",
					Font = HEADER_FONT,
					TextSize = TEXT_SIZE,
					TextColor3 = Constants.Color.Text,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					BackgroundColor3 = BACKGROUND_COLOR,

					[Roact.Event.Activated] = function()
						local savedToPath

						if FFlagScriptProfilerUseNewAPI then
							savedToPath = ScriptProfiler:SaveScriptProfilingData(exportData, exportFilename)
						else
							savedToPath = ScriptContext:SaveScriptProfilingData(exportData, exportFilename)
						end

						if isClient then
							self:setState({
								clientSavePath = savedToPath,
							})
						else
							self:setState({
								serverSavePath = savedToPath,
							})
						end
					end,
				}),
			}
			else {}
	)
end

function ProfilerExportView:renderExportSection(isClient: boolean, header: string)
	local exportFilename
	local serializedData
	local savePath

	if isClient then
		exportFilename = self.state.exportFilenameClient
		serializedData = self.props.client.serializedData
		savePath = self.state.clientSavePath
	else
		exportFilename = self.state.exportFilenameServer
		serializedData = self.props.server.serializedData
		savePath = self.state.serverSavePath
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, ROW_HEIGHT * 3),
		BackgroundTransparency = 1,
		LayoutOrder = 2,
	}, {
		Label = Roact.createElement("TextLabel", {
			Size = UDim2.new(0, BUTTON_WIDTH, 0, ROW_HEIGHT),
			Position = UDim2.new(OFFSET, 0, 0, 0),
			Text = header,
			Font = HEADER_FONT,
			TextSize = TEXT_SIZE,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			BackgroundColor3 = BACKGROUND_COLOR,
			BackgroundTransparency = 1,
		}),

		HorizontalLine = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, ROW_HEIGHT),
		}),

		Export = self:renderExportInputAndButton(isClient, exportFilename, serializedData),

		SavedPath = if not savePath
			then nil
			else Roact.createElement("TextBox", {
				Size = UDim2.new(1 - (OFFSET / 2), 0, 0, ROW_HEIGHT),
				Position = UDim2.new(OFFSET / 2, 0, 0, 2 * ROW_HEIGHT * 1.25),
				Text = "Saved to " .. savePath,
				Font = HEADER_FONT,
				TextSize = TEXT_SIZE,
				TextColor3 = Constants.Color.Text,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				BackgroundColor3 = BACKGROUND_COLOR,
				BackgroundTransparency = 1,
				TextEditable = false,
				ClearTextOnFocus = false,
			}),
	})
end

function ProfilerExportView:render()
	return Roact.createElement("Frame", {
		Size = self.props.size,
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		LayoutOrder = 2,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, PADDING * 2),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Row = self:renderExportSection(true, "Client"),

		HorizontalLine = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, PADDING),
			BackgroundTransparency = 1,
			LayoutOrder = 3,
		}),

		Row2 = self:renderExportSection(false, "Server"),
	})
end

local function mapStateToProps(state, props)
	return {
		client = state.ScriptProfiler.client,
		server = state.ScriptProfiler.server,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(ProfilerExportView)
