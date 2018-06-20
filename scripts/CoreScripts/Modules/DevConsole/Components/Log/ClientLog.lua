local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Constants = require(script.Parent.Parent.Parent.Constants)
local IconHeight = Constants.LogFormatting.IconHeight
local FrameHeight = Constants.LogFormatting.TextFrameHeight
local LinePadding = Constants.LogFormatting.TextFramePadding

local Actions = script.Parent.Parent.Parent.Actions
local SetLogErrorWarningCount = require(Actions.SetLogErrorWarningCount)

local ClientLog = Roact.PureComponent:extend("ClientLog")

function ClientLog:render()
	local layoutOrder = self.props.layoutOrder
	local clientDataFiltered = self.props.clientDataFiltered or {}
	local clientData = self.props.clientData or {}

	local elements = {}

	local targetList = clientData
	-- determine whether to draw out
	if next(clientDataFiltered) then
		targetList = clientDataFiltered
	end

	-- count number of warnings and error to update topbar with
	local errorCount = 0
	local warningCount = 0

	-- we dont use ipairs because the list indexes might not be continuous
	local messageCount = 0
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
		messageCount = messageCount + 1
	end

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, LinePadding),
	})

	local scrollingFrameHeight = messageCount * (FrameHeight + LinePadding)

	return Roact.createElement("ScrollingFrame",{
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		VerticalScrollBarInset = 1,
		ScrollBarThickness = 6,
		CanvasSize = UDim2.new(1, 0, 0, scrollingFrameHeight),
		LayoutOrder = layoutOrder,
	}, elements)
end

local function mapStateToProps(state, props)
	return {
		clientDataFiltered = state.LogData.clientDataFiltered,
		clientData = state.LogData.clientData,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetLogErrorWarningCount = function(errors, warnings)
			dispatch(SetLogErrorWarningCount(errors, warnings))
		end
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(ClientLog)