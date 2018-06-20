local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Constants = require(script.Parent.Parent.Parent.Constants)
local IconHeight = Constants.LogFormatting.IconHeight
local FrameHeight = Constants.LogFormatting.TextFrameHeight
local LinePadding = Constants.LogFormatting.TextFramePadding
local CommandLineHeight = Constants.LogFormatting.CommandLineHeight

local DevConsoleCommandLine = require(script.Parent.DevConsoleCommandLine)

local ServerLog = Roact.PureComponent:extend("ServerLog")

function ServerLog:render()
	local elements = {}
	local layoutOrder = self.props.layoutOrder
	local serverDataFiltered = self.props.serverDataFiltered
	local serverData = self.props.serverData

	local targetList = serverData

	-- we use filtered log data if it exists
	if #serverDataFiltered > 0 then
		targetList = serverDataFiltered
	end

	local warningCount = 0
	local errorCount = 0
	-- we dont use ipairs because the list indexes might not be continuous
	for ind,message in pairs(targetList) do
		local color = Constants.Color.Text
		local image = ""

		if message.Type == Enum.MessageType.MessageOutput.Value then
			color = Constants.Color.Text
		elseif message.Type == Enum.MessageType.MessageInfo.Value then
			color = Constants.Color.HighlightBlue
			image = Constants.Image.Info
		elseif message.Type == Enum.MessageType.MessageWarning.Value then
			color = Constants.Color.WarningYellow
			image = Constants.Image.Warning
			warningCount = warningCount + 1
		elseif message.Type == Enum.MessageType.MessageError.Value then
			color = Constants.Color.ErrorRed
			image = Constants.Image.Error
			errorCount = errorCount + 1
		end

		local fmtMessage = string.format("%s -- %s", message.Time, message.Message)

		elements[ind] = Roact.createElement("Frame",{
			Size = UDim2.new(1, 0, 0, FrameHeight),
			BackgroundTransparency = 1,
			LayoutOrder = ind,
		}, {
			image = Roact.createElement("ImageLabel",{
				Image = image,
				Size = UDim2.new(0, IconHeight , 0, IconHeight),
				Position = UDim2.new(0, IconHeight / 4, .5, -IconHeight / 2),
				BackgroundTransparency = 1,
			}),
			msg = Roact.createElement("TextLabel",{
				Text = fmtMessage,
				TextColor3 = color,
				TextSize = Constants.DefaultFontSize.MainWindow,
				TextXAlignment = Enum.TextXAlignment.Left,

				Size = UDim2.new(1, -FrameHeight, 0, FrameHeight),
				Position = UDim2.new(0, FrameHeight, 0, 0),
				BackgroundTransparency = 1,
			})
		})
	end

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, LinePadding),
	})

	local scrollingFrameHeight = #elements * (FrameHeight+LinePadding)

	return Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		LogFrame = Roact.createElement("ScrollingFrame",{
			Position = UDim2.new(),
			Size = UDim2.new(1, 0, 1, -CommandLineHeight),
			BackgroundTransparency = 1,
			VerticalScrollBarInset = 1,
			ScrollBarThickness = 6,
			CanvasSize = UDim2.new(1, 0, 0, scrollingFrameHeight),
		}, elements),

		CommandLine = Roact.createElement(DevConsoleCommandLine, {
			pos = UDim2.new(0,0,1,-CommandLineHeight),
			height = CommandLineHeight
		}),
	})

end

local function mapStateToProps(state, props)
	return {
		serverDataFiltered = state.LogData.serverDataFiltered,
		serverData = state.LogData.serverData,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(ServerLog)