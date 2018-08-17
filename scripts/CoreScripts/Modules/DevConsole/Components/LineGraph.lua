local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local LineGraphHoverDisplay = require(script.Parent.LineGraphHoverDisplay)

local Constants = require(script.Parent.Parent.Constants)
local TEXT_COLOR = Constants.Color.Text
local MAIN_LINE_COLOR = Constants.Color.HighlightBlue
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor

local POINT_WIDTH = Constants.Graph.PointWidth
local POINT_OFFSET = Constants.Graph.PointOffset
local GRAPH_PADDING = Constants.Graph.Padding
local GRAPH_SCALE = Constants.Graph.Scale
local GRAPH_Y_INNER_PADDING = Constants.Graph.InnerPaddingY
local GRAPH_Y_INNER_SCALE = Constants.Graph.InnerScaleY
local TEXT_PADDING = Constants.Graph.TextPadding

local INVIS_LINE_THRESHOLD = 10
local LineGraph = Roact.Component:extend("LineGraph")

function LineGraph:init()
	self.onGraphInputChanged = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			if not self.state.holdPos then
				self:setState({
					inputPosition = input.Position,
				})
			end
		end
	end

	self.onGraphInputEnded = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			if not self.state.holdPos then
				self:setState({
					inputPosition = false
				})
			end
		elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
			self:setState({
				holdPos = not self.state.holdPos
			})
		end
	end

	self.graphRef = Roact.createRef()
	self.state = {
		selectedTimeStamps = {}
	}
end

function LineGraph:didUpdate()
	if self.state.absGraphSize ~= self.graphRef.current.AbsoluteSize then
		local absSize = self.graphRef.current.AbsoluteSize
		local absPos = self.graphRef.current.AbsolutePosition

		self:setState({
			absGraphSize = absSize,
			absGraphPos = absPos,
		})
	end
end

function LineGraph:didMount()
	local absSize = self.graphRef.current.AbsoluteSize
	local absPos = self.graphRef.current.AbsolutePosition

	self:setState({
		absGraphSize = absSize,
		absGraphPos = absPos,
	})
end

function LineGraph:render()
	local size = self.props.size
	local pos = self.props.pos

	local graphData = self.props.graphData

	local getX = self.props.getX
	local getY = self.props.getY

	local stringFormatX = self.props.stringFormatX
	local stringFormatY = self.props.stringFormatY

	local axisLabelX = self.props.axisLabelX
	local axisLabelY = self.props.axisLabelY

	local layoutOrder = self.props.layoutOrder

	local inputPosition = self.state.inputPosition
	local absGraphSize = self.state.absGraphSize
	local absGraphPos = self.state.absGraphPos


	local maxX = getX(graphData:back())
	local minX = getX(graphData:front())
	local maxY = self.props.maxY
	local minY = self.props.minY

	local hoverLineY

	local elements = {}
	if absGraphSize then
		local dataPoints = {}
		local dataIter = graphData:iterator()
		local data = dataIter:next()
		while data do
			local datapoint = getY(data)
			local time = getX(data)

			local xdivisor  = maxX - minX
			local xPosition = xdivisor > 0  and (time - minX) / xdivisor or 0

			local ydivisor = maxY - minY
			local yPosition = ydivisor > 0 and (datapoint - minY) / ydivisor or 1

			local point = {
				X = xPosition,
				Y = yPosition,
				data = data,
			}

			table.insert(dataPoints, point)

			data = dataIter:next()
		end

		for i = 2, #dataPoints do
			local aX = dataPoints[i].X * absGraphSize.X
			local aY = dataPoints[i].Y * absGraphSize.Y * GRAPH_Y_INNER_SCALE
			local bX = dataPoints[i - 1].X * absGraphSize.X
			local bY = dataPoints[i - 1].Y * absGraphSize.Y * GRAPH_Y_INNER_SCALE

			if aX ~= bX then
				local vecPosX = (aX + bX) / 2
				local vecPosY = (aY + bY) / 2

				local vecX = aX - bX
				local vecY = aY - bY

				local length = math.sqrt((vecX * vecX) + (vecY * vecY))
				local rot = math.deg(math.atan2(vecY, vecX))

				table.insert(elements, Roact.createElement("Frame", {
					Size = UDim2.new(0, length, 0, LINE_WIDTH),
					Position = UDim2.new(0, vecPosX - length / 2, 1 - GRAPH_Y_INNER_PADDING, -vecPosY),
					BackgroundColor3 = MAIN_LINE_COLOR,
					BorderSizePixel = 0,
					Rotation = -rot,
				}))

				table.insert(elements, Roact.createElement("Frame", {
					Size = UDim2.new(0, POINT_WIDTH, 0, POINT_WIDTH),
					Position = UDim2.new(0, aX, 1 - GRAPH_Y_INNER_PADDING, -aY - POINT_OFFSET),
					BackgroundColor3 = MAIN_LINE_COLOR,
					BorderSizePixel = 0,
				}))

				if inputPosition then
					local hoverLineX = inputPosition.X - absGraphPos.X
					if hoverLineX < aX and bX < hoverLineX then
						local aDataX = getX(dataPoints[i].data)
						local bDataX = getX(dataPoints[i - 1].data)
						local aDataY = getY(dataPoints[i].data)
						local bDataY = getY(dataPoints[i - 1].data)

						local ratio = (hoverLineX - bX) / vecX
						hoverLineY = bY + (vecY * ratio)

						local hoverValX = (aDataX - bDataX) * ratio + bDataX
						local hoverValY = (aDataY - bDataY) * ratio + bDataY

						elements["HoverDetails"] = Roact.createElement(LineGraphHoverDisplay, {
							hoverLineX = hoverLineX,
							hoverLineY = hoverLineY,
							hoverValX = hoverValX,
							hoverValY = hoverValY,

							stringFormatX = stringFormatX,
							stringFormatY = stringFormatY,
						})
					end
				end
			end
		end

		if #dataPoints > 0 then
			local lastEntryHeight = dataPoints[#dataPoints].Y * absGraphSize.Y * GRAPH_Y_INNER_SCALE
			local currValue = getY(dataPoints[#dataPoints].data)

			-- calc if the hovered Y position is very close to the last input entry (within the invis-threshold).
			-- If it's NOT within the "invis threshold" then we can show the line and "last entry value"
			local showCurrValue = not (hoverLineY and math.abs(lastEntryHeight - hoverLineY) < INVIS_LINE_THRESHOLD)

			-- calc if the hovered Y position is very close to the lower Y bound value (within the invis-threshold).
			-- If it's NOT within the "invis threshold" then we can show the lowerbound Y value
			local hoverLineCheck = (hoverLineY and math.abs(hoverLineY) < INVIS_LINE_THRESHOLD)
			local showLeastValue = not (hoverLineCheck or math.abs(lastEntryHeight) < INVIS_LINE_THRESHOLD)

			if showCurrValue then
				elements["LatestEntryLine"] = Roact.createElement("Frame", {
					Size = UDim2.new(1, TEXT_PADDING, 0, LINE_WIDTH),
					Position = UDim2.new(0, -TEXT_PADDING, 1 - GRAPH_Y_INNER_PADDING, -lastEntryHeight),
					BackgroundColor3 = LINE_COLOR,
					BackgroundTransparency = .5,
					BorderSizePixel = 0,
				})

				elements["LatestEntryText"] = Roact.createElement("TextLabel", {
					Text = stringFormatY and stringFormatY(currValue) or currValue,
					TextColor3 = TEXT_COLOR,
					TextXAlignment = Enum.TextXAlignment.Right,

					Position = UDim2.new(0, -TEXT_PADDING - 2, 1 - GRAPH_Y_INNER_PADDING, -lastEntryHeight),
					BackgroundTransparency = 1,
				})
			end

			if showLeastValue then
				elements["AxisTextY0"] = Roact.createElement("TextLabel", {
					Text = stringFormatY and stringFormatY(minY) or minY,
					TextColor3 = TEXT_COLOR,
					TextXAlignment = Enum.TextXAlignment.Right,

					Position = UDim2.new(0, -TEXT_PADDING - 2, 1 - GRAPH_Y_INNER_PADDING,0),
					BackgroundTransparency = 1,
				})
			end

			elements["AxisX"] = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LINE_WIDTH),
				Position = UDim2.new(0, 0, 1, 0),
				BackgroundColor3 = LINE_COLOR,
				BorderSizePixel = 0,
			})
			elements["AxisY"] = Roact.createElement("Frame", {
				Size = UDim2.new(0, LINE_WIDTH, 1, 0),
				BackgroundColor3 = LINE_COLOR,
				BorderSizePixel = 0,
			})
		end
	end

	local axisTextPadding = 2 * TEXT_PADDING + 2

	return Roact.createElement("Frame", {
		Size = size,
		Position = pos,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		name = Roact.createElement("TextLabel", {
			Text = axisLabelY,
			TextColor3 = TEXT_COLOR,
			TextXAlignment = Enum.TextXAlignment.Left,

			Position = UDim2.new(GRAPH_PADDING, 0, GRAPH_PADDING, -TEXT_PADDING),
			BackgroundTransparency = 1,
		}),

		minX = Roact.createElement("TextLabel", {
			Text = stringFormatX and stringFormatX(minX) or minX,
			TextColor3 = TEXT_COLOR,
			TextXAlignment = Enum.TextXAlignment.Center,

			Position = UDim2.new(GRAPH_PADDING, 0, GRAPH_PADDING + GRAPH_SCALE, axisTextPadding),
			BackgroundTransparency = 1,
		}),

		maxX = Roact.createElement("TextLabel", {
			Text = stringFormatX and stringFormatX(maxX) or maxX,
			TextColor3 = TEXT_COLOR,
			TextXAlignment = Enum.TextXAlignment.Center,

			Position = UDim2.new(GRAPH_PADDING + GRAPH_SCALE, 0, GRAPH_PADDING + GRAPH_SCALE, axisTextPadding),
			BackgroundTransparency = 1,
		}),

		axisLabelX = Roact.createElement("TextLabel", {
			Text = axisLabelX,
			TextColor3 = TEXT_COLOR,
			TextXAlignment = Enum.TextXAlignment.Center,

			-- adding 2 to padding to push the label away from the axis line
			Position = UDim2.new(.5, 0, GRAPH_PADDING + GRAPH_SCALE, axisTextPadding),
			BackgroundTransparency = 1,
		}),

		graph = Roact.createElement("Frame", {
			Position = UDim2.new(GRAPH_PADDING, 0, GRAPH_PADDING, 0),
			Size = UDim2.new(GRAPH_SCALE, 0, GRAPH_SCALE, 0),
			BackgroundTransparency = 1,

			[Roact.Ref] = self.graphRef,

			[Roact.Event.InputChanged] = self.onGraphInputChanged,
			[Roact.Event.InputEnded] = self.onGraphInputEnded,
		}, elements)
	})
end

return LineGraph