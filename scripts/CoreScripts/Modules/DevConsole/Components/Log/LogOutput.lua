--!nonstrict
local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Packages.Roact)

local Components = script.Parent.Parent.Parent.Components
local BannerButton = require(Components.BannerButton)

local Constants = require(script.Parent.Parent.Parent.Constants)
local FONT_SIZE = Constants.DefaultFontSize.MainWindow
local FONT = Constants.Font.Log
local ICON_PADDING = Constants.LogFormatting.IconHeight
local ARROW_OFFSET = Constants.LogFormatting.TextFrameHeight -- reuse this value for offset needed for the "<" char
local LINE_PADDING = Constants.LogFormatting.TextFramePadding
local MAX_STRING_SIZE = Constants.LogFormatting.MaxStringSize
local MAX_STR_MSG =
	" -- Could not display entire %d character message because message exceeds max displayable length of %d"

local MAX_CONTEXT_DEPTH = 3
local CONTEXT_INDENT_SIZE = 20
local EXPANDED_KEY = "_expanded"

local function countContextLines(contextTable: { [string]: any }, depth: number): number
	local count = 0
	for k, v in contextTable do
		if k ~= EXPANDED_KEY then
			count = count + 1
			if type(v) == "table" and depth + 1 < MAX_CONTEXT_DEPTH and v[EXPANDED_KEY] then
				count = count + countContextLines(v, depth + 1)
			end
		end
	end
	return count
end

local LogOutput = Roact.Component:extend("LogOutput")

function LogOutput:init(props)
	local initLogOutput = props.initLogOutput and props.initLogOutput()

	self.onCanvasChange = function()
		local current = self.ref.current
		if current then
			local canvasPos = current.CanvasPosition
			local absSize = current.AbsoluteSize
			if self.state.canvasPos ~= canvasPos or self.state.absSize ~= absSize then
				local yTotal = current.CanvasPosition.Y + current.AbsoluteSize.Y
				local yCanvasSize = current.CanvasSize.Y.Offset
				local autoScroll = yTotal == yCanvasSize

				self:setState({
					canvasPos = canvasPos,
					absSize = absSize,
					autoScroll = autoScroll,
				})
			end
		end
	end

	self.ref = Roact.createRef()

	self.state = {
		logData = initLogOutput,
		absSize = Vector2.new(),
		canvasPos = Vector2.new(),
		autoScroll = true,
		wordWrap = true,
	}
end

function LogOutput:willUpdate(nextProps, nextState)
	self._canvasSignal:Disconnect()
	self._absSizeSignal:Disconnect()
end

function LogOutput:didUpdate()
	self._canvasSignal = self.ref.current:GetPropertyChangedSignal("CanvasPosition"):Connect(self.onCanvasChange)
	self._absSizeSignal = self.ref.current:GetPropertyChangedSignal("AbsoluteSize"):Connect(self.onCanvasChange)

	if self.state.autoScroll then
		local current = self.ref.current
		if current then
			local newPos = Vector2.new(
				current.CanvasPosition.X,
				self.ref.current.CanvasSize.Y.Offset + self.ref.current.AbsoluteSize.Y
			)
			current.CanvasPosition = newPos
		end
	end
end

function LogOutput:didMount()
	self.logConnector = self.props.targetSignal:Connect(function(data)
		if not self.state.autoScroll and data:getSize() == data:getMaxSize() then
			local canvasPos = self.state.canvasPos
			local canvasPosY = canvasPos.Y
			local newestMsg = data:back()

			if newestMsg then
				local msgDimsY = newestMsg.Dims.Y
				local frameWidth = self.state.absSize.X - ARROW_OFFSET

				if self.state.wordWrap and frameWidth > 0 then
					msgDimsY = math.ceil(newestMsg.Dims.Y * math.ceil(newestMsg.Dims.X / frameWidth))
				end

				canvasPosY = math.max(0, canvasPosY - msgDimsY - LINE_PADDING)
			end

			self:setState({
				logData = data,
				canvasPos = Vector2.new(canvasPos.X, canvasPosY),
			})
		else
			self:setState({
				logData = data,
			})
		end
	end)

	self._canvasSignal = self.ref.current:GetPropertyChangedSignal("CanvasPosition"):Connect(self.onCanvasChange)
	self._absSizeSignal = self.ref.current:GetPropertyChangedSignal("AbsoluteSize"):Connect(self.onCanvasChange)

	--[[
		in some cases, the absolute size is not valid at this point. But in the
		case that it is, we want to update the absolute size here since the
		absolute size was changed prior to the absSizeSignal being set up
	--]]
	local absSize = self.ref.current.AbsoluteSize
	if absSize.Magnitude > 0 then
		self:setState({
			absSize = self.ref.current.AbsoluteSize,
		})
	end
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
	local wordWrap = self.state.wordWrap

	local elements = {}

	local messageCount = 1
	local scrollingFrameHeight = 0

	if self.ref.current and logData then
		local frameWidth = absSize.X - ARROW_OFFSET
		local paddingHeight = -1
		local usedFrameSpace = 0

		local function createOnButtonPress(msg: { Expanded: boolean }): () -> ()
			return function()
				msg.Expanded = not msg.Expanded
				self:setState({})
			end
		end

		local function addContextEntries(contextElements: { [string]: any }, contextTable: { [string]: any }, color: Color3, depth: number, counterRef: { i: number })
			if depth >= MAX_CONTEXT_DEPTH then return end
			local keys = {}
			for k in contextTable do
				if k ~= EXPANDED_KEY then
					table.insert(keys, k)
				end
			end
			table.sort(keys, function(a, b) return tostring(a) < tostring(b) end)

			local indent = CONTEXT_INDENT_SIZE + depth * CONTEXT_INDENT_SIZE

			for _, k in keys do
				local v = contextTable[k]
				counterRef.i = counterRef.i + 1
				local i = counterRef.i
				local elemKey = `Ctx_{depth}_{tostring(k)}`

				if type(v) == "table" and depth + 1 < MAX_CONTEXT_DEPTH then
					local nestedTable = v
					contextElements[elemKey] = Roact.createElement(BannerButton, {
						size = UDim2.new(1, 0, 0, FONT_SIZE),
						isExpanded = nestedTable[EXPANDED_KEY],
						isExpandable = true,
						layoutOrder = i,
						hideLines = true,
						onButtonPress = function()
							nestedTable[EXPANDED_KEY] = not nestedTable[EXPANDED_KEY]
							self:setState({})
						end,
					}, {
						Label = Roact.createElement("TextLabel", {
							Text = `{tostring(k)}: \{...\}`,
							TextSize = FONT_SIZE,
							Font = FONT,
							TextColor3 = color,
							BackgroundTransparency = 1,
							Size = UDim2.new(1, -(indent + CONTEXT_INDENT_SIZE), 1, 0),
							Position = UDim2.fromOffset(indent + CONTEXT_INDENT_SIZE, 0),
							TextXAlignment = Enum.TextXAlignment.Left,
						})
					})

					if nestedTable[EXPANDED_KEY] then
						addContextEntries(contextElements, nestedTable, color, depth + 1, counterRef)
					end
				else
					contextElements[elemKey] = Roact.createElement("TextLabel", {
						Text = `{tostring(k)}: {tostring(v)}`,
						TextSize = FONT_SIZE,
						Font = FONT,
						TextColor3 = color,
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, FONT_SIZE),
						LayoutOrder = i,
						TextXAlignment = Enum.TextXAlignment.Left,
					}, {
						Padding = Roact.createElement("UIPadding", {
							PaddingLeft = UDim.new(0, indent + CONTEXT_INDENT_SIZE),
						}),
					})
				end
			end
		end

		local msgIter = logData:iterator()
		local message = msgIter:next()
		while message do
			local currentMessage = message
			local fmtMessage = currentMessage.Message
			local charCount = currentMessage.CharCount

			local msgDimsY = currentMessage.Dims.Y
			if wordWrap and frameWidth > 0 then
				msgDimsY = math.ceil(currentMessage.Dims.Y * math.ceil(currentMessage.Dims.X / frameWidth))
			end

			local contextHeight = 0
			if currentMessage.Context then
				contextHeight = FONT_SIZE + LINE_PADDING
				if currentMessage.Expanded then
					contextHeight = contextHeight + (countContextLines(currentMessage.Context, 0) * (FONT_SIZE + LINE_PADDING))
				end
			end

			local totalEntryHeight = msgDimsY + contextHeight

			messageCount = messageCount + 1

			if scrollingFrameHeight + totalEntryHeight >= canvasPos.Y then
				if usedFrameSpace < absSize.Y then
					local color = Constants.Color.Text
					local image = ""

					if currentMessage.Type == Enum.MessageType.MessageOutput.Value then
						color = Constants.Color.Text
					elseif currentMessage.Type == Enum.MessageType.MessageInfo.Value then
						color = Constants.Color.HighlightBlue
						image = Constants.Image.Info
					elseif currentMessage.Type == Enum.MessageType.MessageWarning.Value then
						color = Constants.Color.WarningYellow
						image = Constants.Image.Warning
					elseif currentMessage.Type == Enum.MessageType.MessageError.Value then
						color = Constants.Color.ErrorRed
						image = Constants.Image.Error
					end

					local contextElements = {}
					if currentMessage.Context then
						contextElements["Layout"] = Roact.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							Padding = UDim.new(0, LINE_PADDING),
						})

						contextElements["Header"] = Roact.createElement(BannerButton, {
							size = UDim2.new(1, 0, 0, FONT_SIZE),
							isExpanded = currentMessage.Expanded,
							isExpandable = true,
							layoutOrder = 0,
							hideLines = true,
							onButtonPress = createOnButtonPress(currentMessage),
						}, {
							Label = Roact.createElement("TextLabel", {
								Text = "Context: {...}",
								TextSize = FONT_SIZE,
								Font = FONT,
								TextColor3 = color,
								BackgroundTransparency = 1,
								Size = UDim2.new(1, -CONTEXT_INDENT_SIZE, 1, 0),
								Position = UDim2.fromOffset(CONTEXT_INDENT_SIZE, 0),
								TextXAlignment = Enum.TextXAlignment.Left,
							})
						})

						if currentMessage.Expanded then
							local counterRef = { i = 0 }
							addContextEntries(contextElements, currentMessage.Context, color, 0, counterRef)
						end
					end

					elements[messageCount] = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, totalEntryHeight),
						BackgroundTransparency = 1,
						LayoutOrder = messageCount,
					}, {
						image = Roact.createElement("ImageLabel", {
							Image = image,
							Size = UDim2.new(0, ICON_PADDING, 0, ICON_PADDING),
							Position = UDim2.new(0, ICON_PADDING / 4, 0, (FONT_SIZE - ICON_PADDING) / 2),
							BackgroundTransparency = 1,
						}),
						msg = Roact.createElement("TextLabel", {
							Text = fmtMessage,
							TextColor3 = color,
							TextSize = FONT_SIZE,
							Font = FONT,
							TextXAlignment = Enum.TextXAlignment.Left,

							TextWrapped = wordWrap,

							Size = UDim2.new(1, 0, 0, msgDimsY),

							Position = UDim2.new(0, ARROW_OFFSET, 0, 0),
							BackgroundTransparency = 1,
						}),
						context = currentMessage.Context and Roact.createElement("Frame", {
							Size = UDim2.new(1, -ARROW_OFFSET, 0, contextHeight),
							Position = UDim2.new(0, ARROW_OFFSET, 0, msgDimsY + LINE_PADDING),
							BackgroundTransparency = 1,
						}, contextElements)
					})
				end

				if paddingHeight < 0 then
					paddingHeight = scrollingFrameHeight
				else
					usedFrameSpace = usedFrameSpace + totalEntryHeight + LINE_PADDING
				end
			end

			scrollingFrameHeight = scrollingFrameHeight + totalEntryHeight + LINE_PADDING

			if charCount < MAX_STRING_SIZE then
				message = msgIter:next()
			else
				local maxStrMsg = string.format(MAX_STR_MSG, charCount, MAX_STRING_SIZE)
				message = {
					Message = maxStrMsg,
					CharCount = #maxStrMsg,
					Type = currentMessage.Type,
					Dims = TextService:GetTextSize(maxStrMsg, FONT_SIZE, FONT, Vector2.new()),
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

	return Roact.createElement("ScrollingFrame", {
		Size = size,
		BackgroundTransparency = 1,
		VerticalScrollBarInset = 1,
		ScrollBarThickness = 6,
		CanvasSize = UDim2.new(0, 0, 0, scrollingFrameHeight),
		CanvasPosition = canvasPos,
		LayoutOrder = layoutOrder,

		[Roact.Ref] = self.ref,
	}, elements)
end

return LogOutput
