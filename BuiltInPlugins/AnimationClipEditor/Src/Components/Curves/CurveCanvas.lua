--[[
	Draws curve tracks in the animation editor.

	TODO: Clean up
	Properties:
		UDim2 Position = position of the frame
		UDim2 Size = size of the frame
		Vector2 ParentSize = absolute size of the frame that is the parent of this component
		float Padding = amount of padding from edges that each track should have
		int StartTick = beginning tick of timeline range
		int EndTick = end tick of timeline range
		int TopTrackIndex = index of the track that should be displayed at the top of the Dope Sheet
		array Tracks = is expected to be an array where each element is formatted as:
		{
			Name = name of the track,
			Instance = name of the instance that this track belongs to,
			Keyframes = array of keyframe indicies on this track,
		}
		table SelectedKeyframes = table containing information on what keyframes are selected for each track/instance
		table PreviewKeyframes = table containing information on keyframes that are currently being manipulated
		table PreviewData = table containing data for preview keyframes by index
		table NamedKeyframes = table mapping ticks to summary keyframe names.
		int TrackHeight = pixel height of each track
		int SummaryTrackHeight = pixel height of the summary track
		int LayoutOrder = The layout order of the frame, if in a Layout.
		int ZIndex = The draw index of the frame.

		function OnKeyActivated = A callback for when the user clicks on a keyframe.
		function OnKeyRightClick = A callback for when the user right-clicks on a keyframe.
		function OnKeyInputBegan = A callback for when the user starts interacting with a keyframe.
		function OnKeyInputEnded = A callback for when the user stops interacting with a keyframe.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local Line = require(Plugin.Src.Components.Curves.Line)

local LINE_WIDTH = 1

local CurveCanvas = Roact.PureComponent:extend("CurveCanvas")

function CurveCanvas:init()
	self.minValue = -1
	self.maxValue = 1

	self.majorInterval = nil
	self.minorInterval = nil

	self.children = nil

	if self.props.Tracks then
		self:updateCanvasExtents(self.props.Tracks)
	end
end

function CurveCanvas:recalculateIntervals(width, startTick, endTick)
	local function getExponent(value)
		if value < 1 then
			return -1
		else
			return math.floor(math.log10(value))
		end
	end

	local length = endTick - startTick
	local scale = Constants.CURVE_RESOLUTION * length / width
	local powTen = math.pow(10, getExponent(scale))
	local mult3 = 3 * powTen

	if scale < mult3 then
		self.majorInterval, self.minorInterval = powTen, math.max(powTen / Constants.CURVE_REFINEMENT, 1)
	else
		self.majorInterval, self.minorInterval = mult3, math.max(mult3 / Constants.CURVE_REFINEMENT, 1)
	end
end

function CurveCanvas:drawLine(x0, y0, x1, y1, color, width)
	table.insert(self.children, Roact.createElement(Line, {
		x0 = x0,
		y0 = y0,
		x1 = x1,
		y1 = y1,
		color = color,
		width = width,
	}))
end

function CurveCanvas:renderXAxis()
	local props = self.props
	local theme = THEME_REFACTOR and props.Stylizer.PluginTheme or props.Theme:get("PluginTheme")

	local minValue, maxValue = self.minValue, self.maxValue

	if minValue and maxValue and minValue < 0 and maxValue > 0 then
		local _, y = self:scale(0, 0)

		table.insert(self.children, Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, y),
			BackgroundColor3 = theme.curveTheme.XAxis,
			BorderSizePixel = 0,
		}))
	end
end

-- Rescale x, y to absolute positions in pixels
function CurveCanvas:scale(x, y)
	local props = self.props

	local minValue, maxValue = self.minValue, self.maxValue
	local scroll, zoom = props.VerticalScroll, props.VerticalZoom
	local zoomFactor = 1 / math.max(1 - zoom, 0.01)

	x = (x - props.StartTick) * (props.ParentSize.X - props.Padding) / (props.EndTick - props.StartTick)

	y = (maxValue - y) / (maxValue - minValue)	-- Normalize between 0 and 1. maxValue maps to 0, minValue to 1
	y = y - (scroll * zoom)						-- Apply normalized scroll
	y = y * zoomFactor							-- Apply zoom factor

	y = (props.ParentSize.Y * Constants.CURVE_CANVAS_PADDING) + y * props.ParentSize.Y * (1 - 2 * Constants.CURVE_CANVAS_PADDING)
	return x, y
end

function CurveCanvas:renderCurve(track, trackName)
	local props = self.props
	local theme = THEME_REFACTOR and props.Stylizer.PluginTheme or props.Theme:get("PluginTheme")

	if not track.Keyframes then
		return
	end

	local color = theme.curveTheme[trackName] or theme.curveTheme.Default

	local curX, curY
	local prevX, prevY
	local prevTick = nil
	local prevKeyframe = nil
	local interval = 4 * (props.EndTick - props.StartTick) / (props.ParentSize.X - props.Padding)

	local width = Constants.KEYFRAME_WIDTH

	for _, curTick in ipairs(track.Keyframes) do

		local curKeyframe = track.Data[curTick]

		prevX, prevY = curX, curY
		curX, curY = self:scale(curTick, curKeyframe.Value)

		if curTick >= props.StartTick and (not prevTick or prevTick <= props.EndTick) then
			if prevKeyframe then
				if prevKeyframe.InterpolationMode == Enum.KeyInterpolationMode.Constant then
					self:drawLine(prevX, prevY, curX, prevY, color, LINE_WIDTH)
				elseif prevKeyframe.InterpolationMode == Enum.KeyInterpolationMode.Linear then
					self:drawLine(prevX, prevY, curX, curY, color, LINE_WIDTH)
				else
					for tck = prevTick, curTick, interval do
						local tx, ty = self:scale(tck, KeyframeUtils.getValue(track, tck))
						self:drawLine(prevX, prevY, tx, ty, color, LINE_WIDTH)
						prevX, prevY = tx, ty
					end
					self:drawLine(prevX, prevY, curX, curY, color, LINE_WIDTH)
				end
			end

			table.insert(self.children, Roact.createElement("ImageButton", {
				Size = UDim2.new(0, width, 0, width),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0, curX, 0, curY),
				Rotation = 45,

				ImageTransparency = 1,
				BackgroundTransparency = 0.5,
				AutoButtonColor = false,

				BorderSizePixel = 1,  -- 2 if selected
				BorderColor3 = color,
				BackgroundColor3 = color,
			}))
		end

		prevTick = curTick
		prevKeyframe = curKeyframe
	end
end

function CurveCanvas:updateCanvasExtents(tracks)
	self.minValue = nil
	self.maxValue = nil

	for _, track in pairs(tracks) do
		TrackUtils.traverseTracks(nil, track, function(component, _, _)
			if component.Type ~= Constants.TRACK_TYPES.Quaternion then
				for _, keyframe in pairs(component.Data) do
					self.minValue = self.minValue and math.min(self.minValue, keyframe.Value) or keyframe.Value
					self.maxValue = self.maxValue and math.max(self.maxValue, keyframe.Value) or keyframe.Value
				end
			end
		end, true)
	end

	if not self.minValue then
		self.minValue = -1.0
		self.maxValue = 1.0
	end
end

function CurveCanvas:willUpdate(nextProps)
	-- If the track selection changes, recalculate the canvas extents
	if nextProps.Tracks ~= self.props.Tracks then
		self:updateCanvasExtents(nextProps.Tracks)
	end

	-- If the horizontal zoom changes (spread), or if the window is resized, or if the padding changes, recalculate the
	-- curves resolution
	-- Difference in spread that is less than 0.1 will be ignored (as LUA will compare numbers down to the 15th decimal)
	if math.abs((nextProps.EndTick - nextProps.StartTick) - (self.props.EndTick - self.props.StartTick)) > 0.1
		or nextProps.ParentSize.X ~= self.props.ParentSize.X
		or nextProps.Padding ~= self.props.Padding then
		self:recalculateIntervals(nextProps.ParentSize.X - nextProps.Padding, nextProps.StartTick, nextProps.EndTick)
	end
end

function CurveCanvas:renderCurveTrack(track, trackName)
	local trackType = track.Type
	if track.Components then
		for componentName, component in pairs(track.Components) do
			self:renderCurveTrack(component, componentName)
		end
	elseif trackType == Constants.TRACK_TYPES.Number
		or trackType == Constants.TRACK_TYPES.Angle
		or trackType == Constants.TRACK_TYPES.Facs then
		self:renderCurve(track, trackName)
	end
end

function CurveCanvas:render()
	local props = self.props
	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local size = props.Size
	local tracks = props.Tracks
	local isChannelAnimation = props.IsChannelAnimation

	self.children = {}
	self:renderXAxis()

	for trackName, track in pairs(tracks) do
		if isChannelAnimation then
			self:renderCurveTrack(track, trackName)
		end
	end

	return Roact.createElement("Frame", {
		Position = position,
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, self.children)
end

CurveCanvas = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(CurveCanvas)

return CurveCanvas
