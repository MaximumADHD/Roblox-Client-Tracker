local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Parent.Constants)
local FONT_SIZE = Constants.DefaultFontSize.MainWindow
local FONT = Constants.Font.MainWindow
local ICON_PADDING = Constants.LogFormatting.IconHeight
local FRAME_HEIGHT = Constants.LogFormatting.TextFrameHeight
local LINE_PADDING = Constants.LogFormatting.TextFramePadding

local MAX_STRING_SIZE = 16384
local MAX_STR_MSG = "Could not display entire %d character message because message exceeds max displayable length of %d"

local LogOutput = Roact.Component:extend("LogOutput")

function LogOutput:init(props)
	local initLogOutput = props.initLogOutput and props.initLogOutput()

	self.onCanvasPosChanged = function()
		local canvasPos = self.ref.current.CanvasPosition
		if self.state.canvasPos ~= canvasPos then
			self:setState({
				canvasPos = canvasPos,
			})
		end
	end

	self.ref = Roact.createRef()

	self.state = {
		logData = initLogOutput,
	}
end

function LogOutput:willUpdate()
	self._canvasSignal:Disconnect()
end

function LogOutput:didUpdate()
	self._canvasSignal = self.ref.current:GetPropertyChangedSignal("CanvasPosition"):Connect(self.onCanvasPosChanged)

	if self.state.absSize ~= self.ref.current.AbsoluteSize then
		self:setState({
			absSize = self.ref.current.AbsoluteSize,
		})
	end
end

function LogOutput:didMount()
	self.logConnector = self.props.targetSignal:Connect(function(data)
		self:setState({
			logData = data
		})
	end)


	self._canvasSignal = self.ref.current:GetPropertyChangedSignal("CanvasPosition"):Connect(self.onCanvasPosChanged)

	self:setState({
		absSize = self.ref.current.AbsoluteSize,
		canvasPos = self.ref.current.CanvasPosition,
	})
end

function LogOutput:willUnmount()
	self.logConnector:Disconnect()
	self.logConnector = nil
end

function LogOutput:render()
	local layoutOrder = self.props.layoutOrder
	local size = self.props.size

	local logData = self.state.logData
	local absSize = self.state.absSize
	local canvasPos = self.state.canvasPos

	if self.ref.current then
		canvasPos = self.ref.current.CanvasPosition
	end

	local elements = {}

	local messageCount = 1
	local scrollingFrameHeight = 0

	if self.ref.current and logData then
		-- FRAME_HEIGHT is used to offset the text for the icon
		local maxSize = Vector2.new(absSize.X - FRAME_HEIGHT, 1000000)
		local paddingHeight = -1
		local usedFrameSpace = 0

		local msgIter = logData:iterator()
		local message = msgIter:next()
		while message do
			local fmtMessage
			if #message.Message < MAX_STRING_SIZE then
				fmtMessage = string.format("%s -- %s", message.Time, message.Message)

			else
				fmtMessage = string.format("%s -- %s", message.Time, string.sub(message.Message, 1, MAX_STRING_SIZE))
			end

			local msgDims = TextService:GetTextSize(fmtMessage, FONT_SIZE, FONT, maxSize)
			messageCount = messageCount + 1

			if scrollingFrameHeight + msgDims.Y >= canvasPos.Y then
				if usedFrameSpace < absSize.Y then
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
					elseif message.Type == Enum.MessageType.MessageError.Value then
						color = Constants.Color.ErrorRed
						image = Constants.Image.Errors
					end

					elements[messageCount] = Roact.createElement("Frame",{
						Size = UDim2.new(1, 0, 0, msgDims.Y),
						BackgroundTransparency = 1,
						LayoutOrder = messageCount,
					}, {
						image = Roact.createElement("ImageLabel",{
							Image = image,
							Size = UDim2.new(0, ICON_PADDING , 0, ICON_PADDING),
							Position = UDim2.new(0, ICON_PADDING / 4, .5, -ICON_PADDING / 2),
							BackgroundTransparency = 1,
						}),
						msg = Roact.createElement("TextLabel",{
							Text = fmtMessage,
							TextColor3 = color,
							TextSize = FONT_SIZE,
							Font = FONT,
							TextXAlignment = Enum.TextXAlignment.Left,

							TextWrapped = true,

							Size = UDim2.new(0, msgDims.X, 0, msgDims.Y),
							Position = UDim2.new(0, FRAME_HEIGHT, 0, 0),
							BackgroundTransparency = 1,
						})
					})
				end
				if paddingHeight < 0 then
					paddingHeight = scrollingFrameHeight
				else
					usedFrameSpace = usedFrameSpace + msgDims.Y + LINE_PADDING
				end
			end

			scrollingFrameHeight = scrollingFrameHeight + msgDims.Y + LINE_PADDING

			if #message.Message < MAX_STRING_SIZE then
				message = msgIter:next()
			else
				message = {
					Message = string.format(MAX_STR_MSG, #message.Message, MAX_STRING_SIZE),
					Time = "",
					Type = message.Type,
				}
			end
		end
		elements["UIListLayout"] = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, LINE_PADDING),
		})

		elements["WindowingPadding"] = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, paddingHeight),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		})
	end

	return Roact.createElement("ScrollingFrame",{
		Size = size,
		BackgroundTransparency = 1,
		VerticalScrollBarInset = 1,
		ScrollBarThickness = 6,
		CanvasSize = UDim2.new(1, 0, 0, scrollingFrameHeight),
		LayoutOrder = layoutOrder,

		[Roact.Ref] = self.ref,
	}, elements)
end

return LogOutput