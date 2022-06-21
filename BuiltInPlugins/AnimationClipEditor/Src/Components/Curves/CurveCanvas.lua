--!strict
--[[
	Draws curve tracks in the animation editor.

	Properties:
		AbsoluteSize: Absolute size of this component (TODO: Use resize logic on this component's main frame)
		EndTick: End tick of the timeline range (TODO: Pass HorizontalScroll/HorizontalZoom instead)
		LayoutOrder: Layout index of this component
		MaxValue: Maximum value of the keyframes of the tracks being displayed
		MinValue: Minimum value of the keyframes of the tracks being displayed
		Playhead: Position (in ticks) of the scrubber
		Position: Position of this component
		SelectedKeyframes: Information on what keyframes are selected for each track/instance,
		ShowTooltips: Whether we want to display keyframe tooltips (Disabled when dragging a keyframe)
		Size: Size of this component
		StartTick: Beginning tick of the timeline range (TODO: Pass HorizontalScroll/HorizontalZoom instead)
		Tracks: Information on the tracks being displayed
		VerticalScroll: Vertical scroll offset
		VerticalZoom: Vertical zoom factor
		ZIndex: Display index of this component

		OnKeyInputBegan: Callback for when the user starts interacting with a keyframe
		OnKeyInputEnded: Callback for when the user stops interacting with a keyframe
		OnKeyRightClick: Callback for when the user right clicks on a keyframe
		OnTangentInputBegan: Callback for when the user starts interacting with a tangent control
		OnTangentInputEnded: Callback for when the user stops interacting with a tangent control
		OnTangentRightClick: Callback for when the user right clicks on a tangent control
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local Line = require(Plugin.Src.Components.Curves.Line)
local Cubic = require(Plugin.Src.Components.Curves.Cubic)
local Keyframe = require(Plugin.Src.Components.Curves.Keyframe)
local TangentControl = require(Plugin.Src.Components.Curves.TangentControl)

local GetFFlagClampFacsCurves = require(Plugin.LuaFlags.GetFFlagClampFacsCurves)
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local CurveCanvas = Roact.PureComponent:extend("CurveCanvas")

export type Props = {
	-- State/Context
	Stylizer: any,
	Theme: any,

	-- Properties
	AbsoluteSize: Vector2,
	EndTick: number,
	LayoutOrder: number?,
	MaxValue: number,
	MinValue: number,
	Playhead: number,
	Position: UDim2?,
	SelectedKeyframes: any,
	ShowTooltips: boolean,
	Size: UDim2?,
	StartTick: number,
	Tracks: {any},
	VerticalScroll: number,
	VerticalZoom: number,
	ZIndex: number?,

	OnKeyInputBegan: (string, {string}, number, number, boolean, any) -> (),
	OnKeyInputEnded: (number, boolean, any) -> (),
	OnKeyRightClick: (string, {string}, number, boolean) -> (),
	OnTangentInputBegan: (string, {string}, number, string, any) -> (),
	OnTangentInputEnded: (number, boolean, any) -> (),
	OnTangentRightClick: (string, {string}, number, string) -> (),
}

function CurveCanvas:Init(): ()
	self.children = {}
end

function CurveCanvas:renderXAxis(): ()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme

	local xAxis = self:toCanvasSpace(Vector2.new())

	table.insert(self.children, Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 1),
		Position = UDim2.new(0, 0, 0, xAxis.Y),
		BackgroundColor3 = theme.curveTheme.xAxis,
		BorderSizePixel = 0,
	}))
end

-- Rescale x, y to absolute positions in pixels
function CurveCanvas:toCanvasSpace(position: Vector2): Vector2
	local props = self.props

	local minValue, maxValue = props.MinValue, props.MaxValue
	local scroll, zoom = props.VerticalScroll, props.VerticalZoom

	zoom = math.min(zoom, 0.99)  -- Avoid division by zero by restricting the zoom factor
	local zoomFactor = 1 / (1 - zoom)

	local x = (position.X - props.StartTick) * (props.AbsoluteSize.X) / (props.EndTick - props.StartTick)  -- Scale to viewport
	local y = (maxValue - position.Y) / (maxValue - minValue)  -- Normalize between 0 and 1. maxValue maps to 0, minValue to 1
	y = y - (scroll * zoom)  -- Apply normalized scroll
	y = y * zoomFactor  -- Apply zoom factor
	y = (props.AbsoluteSize.Y * Constants.CURVE_CANVAS_PADDING) + y * props.AbsoluteSize.Y * (1 - 2 * Constants.CURVE_CANVAS_PADDING)  -- Scale to viewport
	return Vector2.new(x, y)
end

-- Rescale a slope
function CurveCanvas:scaleSlope(slope: number): (number)
	-- This can be calculated by calling toCanvasSpace(Vector2.new(0, 0)) and toCanvasSpace(Vector2.new(1, slope))
	-- and returning dy/dx, but if we inline those calls, the operations can be somewhat simplified.

	local props = self.props

	local yRange = props.MinValue - props.MaxValue
	local zoomFactor = 1 - math.min(props.VerticalZoom, 0.99)
	local focusRangeY = props.AbsoluteSize.Y * (1 - 2 * Constants.CURVE_CANVAS_PADDING)
	local xFactor = (props.EndTick - props.StartTick) / props.AbsoluteSize.X
	local yFactor = (yRange * zoomFactor) / focusRangeY
	return slope * xFactor / yFactor
end

function CurveCanvas:renderCurve(track): ()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme

	if not track.Keyframes then
		return
	end

	local trackName = track.Path[#track.Path]
	local pathName = table.concat(track.Path, "_")

	local colorName = Constants.TRACK_THEME_MAPPING[track.Type] and Constants.TRACK_THEME_MAPPING[track.Type][trackName] or "Default"
	local color = theme.curveTheme[colorName]

	local cur, curB, prev
	local prevTick, prevKeyframe, prevSelected

	local tangentLength = props.AbsoluteSize.Y * Constants.TANGENT_CONTROL_LENGTH

	local selectedKeyframes = props.SelectedKeyframes
	local showTooltips = props.ShowTooltips

	-- Display a small dot on the scrubber
	local playhead = self.props.Playhead
	local value = KeyframeUtils.getValue(track, playhead)::number
	if GetFFlagClampFacsCurves() and track.Type == Constants.TRACK_TYPES.Facs then
		value = math.clamp(value, 0, 1)
	end

	local scrubberPosition = self:toCanvasSpace(Vector2.new(playhead, value))
	local scrubberName = string.format("%s_Scrubber", pathName)

	self.children[scrubberName] = Roact.createElement(Keyframe, {
		Position = scrubberPosition,
		TrackName = "",
		InterpolationMode = Enum.KeyInterpolationMode.Linear,
		LeftSlope = nil,
		LeftAuto = false,
		RightSlope = nil,
		RightAuto = false,
		Color = theme.scrubberTheme.backgroundColor,
		ShowSlopes = false,
		Width = Constants.SCRUBBER_MARKER_WIDTH,
	})

	-- Find Selected track information
	local instance = track.Instance
	local selectionTrack = selectedKeyframes[instance]
	for _, part in ipairs(track.Path) do
		if not selectionTrack then
			break
		end
		selectionTrack = selectionTrack.Components and selectionTrack.Components[part] or selectionTrack[part]
	end

	local minClamp, maxClamp
	if GetFFlagClampFacsCurves() and track.Type == Constants.TRACK_TYPES.Facs then
		-- The clamp values will be used in screen space, so "min" corresponds
		-- to 1.0, and "max" corresponds to 0.0
		minClamp = self:toCanvasSpace(Vector2.new(0, 1)).Y
		maxClamp = self:toCanvasSpace(Vector2.new(0, 0)).Y
	end

	for keyframeIndex, curTick in ipairs(track.Keyframes) do
		local curKeyframe = track.Data[curTick]
		local curSelected = selectionTrack and selectionTrack.Selection and selectionTrack.Selection[curTick]
		if track.Type == Constants.TRACK_TYPES.Quaternion then
			cur = self:toCanvasSpace(Vector2.new(curTick, 1))
			curB = self:toCanvasSpace(Vector2.new(curTick, 0))
		else
			cur = self:toCanvasSpace(Vector2.new(curTick, curKeyframe.Value))
		end

		local curveSelected = prevSelected or (curSelected and prevKeyframe and prevKeyframe.InterpolationMode ~= Enum.KeyInterpolationMode.Constant)
		local curveColor = curveSelected and theme.curveTheme.selected or color

		local curveName = string.format("%s_Curve_%d", pathName, keyframeIndex)
		if curTick >= props.StartTick and (not prevTick or prevTick <= props.EndTick) then
			if prevKeyframe and prev then
				if prevKeyframe.InterpolationMode == Enum.KeyInterpolationMode.Constant then
					self.children[curveName] = Roact.createElement(Line, {
						A = prev,
						B = Vector2.new(cur.X, prev.Y),
						Color = curveColor,
						Width = if curveSelected then Constants.CURVE_WIDTH_SELECTED else Constants.CURVE_WIDTH,
						ZIndex = 2,
					})
				elseif prevKeyframe.InterpolationMode == Enum.KeyInterpolationMode.Linear then
					self.children[curveName] = Roact.createElement(Line, {
						A = prev,
						B = cur,
						Color = curveColor,
						Width = if curveSelected then Constants.CURVE_WIDTH_SELECTED else Constants.CURVE_WIDTH,
						ZIndex = 2,
					})
				else
					local _, prevSlope = KeyframeUtils.getSlopes(track, prevTick)
					local curSlope, _ = KeyframeUtils.getSlopes(track, curTick)
					if prevSlope then
						prevSlope = self:scaleSlope(prevSlope)
					end
					if curSlope then
						curSlope = self:scaleSlope(curSlope)
					end

					self.children[curveName] = Roact.createElement(Cubic, {
						A = prev,
						ASlope = prevSlope,
						B = cur,
						BSlope = curSlope,
						Color = curveColor,
						Width = if curveSelected then Constants.CURVE_WIDTH_SELECTED else Constants.CURVE_WIDTH,
						FrameWidth = props.AbsoluteSize.X,
						ZIndex = 2,
						MinClamp = minClamp,
						MaxClamp = maxClamp,
					})
				end
			end

			local keyframeName = string.format("%s_Keyframe_%d", pathName, keyframeIndex)
			if track.Type ~= Constants.TRACK_TYPES.Quaternion or keyframeIndex > 1 then
				self.children[keyframeName] = Roact.createElement(Keyframe, {
					Position = cur,
					TrackName = trackName,  -- Obsolete with FFlagACECurveEditorNewTooltips
					Path = track.Path,
					InterpolationMode = curKeyframe.InterpolationMode,
					PrevInterpolationMode = if prevKeyframe then prevKeyframe.InterpolationMode else nil,
					LeftSlope = if keyframeIndex == 1 then nil else curKeyframe.LeftSlope,
					RightSlope = if keyframeIndex == #track.Keyframes then nil else curKeyframe.RightSlope,
					Color = color,
					ShowSlopes = false,
					ShowTooltip = showTooltips,
					Selected = curSelected,
					ZIndex = 4,
					OnRightClick = if props.OnKeyRightClick then function(_, input)
						props.OnKeyRightClick(track.Instance, track.Path, curTick, curSelected)
					end else nil,
					OnInputBegan = if props.OnKeyInputBegan then function(_, input)
						props.OnKeyInputBegan(track.Instance, track.Path, curTick, curSelected, input)
					end else nil,
					OnInputEnded = if props.OnKeyInputEnded then function(_, input)
						props.OnKeyInputEnded(curTick, curKeyframe.Value, curSelected, input)
					end else nil,
				})
			end

			-- Display the "other" keyframe of the quaternion track, at Y=0
			if keyframeIndex < #track.Keyframes and track.Type == Constants.TRACK_TYPES.Quaternion then
				self.children[keyframeName .. "b"] = Roact.createElement(Keyframe, {
					Position = curB,
					TrackName = trackName,  -- Obsolete with FFlagACECurveEditorNewTooltips
					Path = track.Path,
					InterpolationMode = curKeyframe.InterpolationMode,
					PrevInterpolationMode = if prevKeyframe then prevKeyframe.InterpolationMode else nil,
					LeftSlope = if keyframeIndex == 1 then nil else curKeyframe.LeftSlope,
					RightSlope = if keyframeIndex == #track.Keyframes then nil else curKeyframe.RightSlope,
					Color = color,
					ShowSlopes = false,
					ShowTooltip = showTooltips,
					Selected = curSelected,
					ZIndex = 4,
					OnRightClick = if props.OnKeyRightClick then function(_, input)
						props.OnKeyRightClick(track.Instance, track.Path, curTick, curSelected)
					end else nil,
					OnInputBegan = if props.OnKeyInputBegan then function(_, input)
						props.OnKeyInputBegan(track.Instance, track.Path, curTick, curSelected, input)
					end else nil,
					OnInputEnded = if props.OnKeyInputEnded then function(_, input)
						props.OnKeyInputEnded(curTick, curKeyframe.Value, curSelected, input)
					end else nil,
				})
			end

			if curSelected then
				if keyframeIndex > 1 then
					local leftSlope = self:scaleSlope(KeyframeUtils.getSlope(track, curTick, Constants.SLOPES.Left))
					local tangentName = string.format("%s_LeftTangent_%d", pathName, keyframeIndex)
					self.children[tangentName] = Roact.createElement(TangentControl, {
						Position = UDim2.new(0, cur.X, 0, cur.Y),
						Slope = leftSlope,
						Auto = prevKeyframe and prevKeyframe.InterpolationMode ~= Enum.KeyInterpolationMode.Cubic or curKeyframe.LeftSlope == nil,
						Length = tangentLength,
						Side = Constants.SLOPES.Left,
						ZIndex = 3,
						OnRightClick = if props.OnTangentRightClick then function(_, input)
							props.OnTangentRightClick(track.Instance, track.Path, curTick, Constants.SLOPES.Left)
						end else nil,
						OnInputBegan = function(_, input)
							props.OnTangentInputBegan(input)
						end,
						OnInputEnded = function(_, input)
							props.OnTangentInputEnded(track.Instance, track.Path, curTick, Constants.SLOPES.Left, input)
						end,
					})
				end

				if keyframeIndex < #track.Keyframes then
					local rightSlope = self:scaleSlope(KeyframeUtils.getSlope(track, curTick, Constants.SLOPES.Right))
					local position
					if track.Type == Constants.TRACK_TYPES.Quaternion then
						position = UDim2.new(0, curB.X, 0, curB.Y)
					else
						position = UDim2.new(0, cur.X, 0, cur.Y)
					end
					local tangentName = string.format("%s_RightTangent_%d", pathName, keyframeIndex)
					self.children[tangentName] = Roact.createElement(TangentControl, {
						Position = position,
						Slope = rightSlope,
						Auto = curKeyframe.InterpolationMode ~= Enum.KeyInterpolationMode.Cubic or curKeyframe.RightSlope == nil,
						Length = tangentLength,
						Side = Constants.SLOPES.Right,
						ZIndex = 3,
						OnRightClick = if props.OnTangentRightClick then function(_, input)
							props.OnTangentRightClick(track.Instance, track.Path, curTick, Constants.SLOPES.Right)
						end else nil,
						OnInputBegan = function(_, input)
							props.OnTangentInputBegan(input)
						end,
						OnInputEnded = function(_, input)
							props.OnTangentInputEnded(track.Instance, track.Path, curTick, Constants.SLOPES.Right, input)
						end,
					})
				end
			end
		end

		if track.Type == Constants.TRACK_TYPES.Quaternion then
			prev = curB
		else
			prev = cur
		end

		prevTick = curTick
		prevKeyframe = curKeyframe
		prevSelected = curSelected
	end
end

function CurveCanvas:render(): (any)
	local props = self.props
	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local size = props.Size
	local tracks = props.Tracks

	self.children = {}

	self:renderXAxis()
	for _, track in ipairs(tracks) do
		self:renderCurve(track)
	end

	return Roact.createElement("Frame", {
		Position = position,
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, self.children)
end

CurveCanvas = withContext({
	Stylizer = ContextServices.Stylizer,
})(CurveCanvas)

return CurveCanvas
