local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

local Canvas = require(Graphing.Components.Canvas)
local Curve = require(Graphing.Components.Curve)
local Grid = require(Graphing.Components.Grid)
local InputDetector = require(Graphing.Components.InputDetector)
local Point = require(Graphing.Components.Point)
local Positioner = require(Graphing.Components.Positioner)
local Scale = require(Graphing.Components.Scale)

local MAX_X = 1
local MAX_Y = 10
local MAX_POINTS = 20

local function NumberSequencePoint(props)
	local keypoint = props.Keypoint
	local originalEnvelope, setOriginalEnvelope = React.useState(0)

	return React.createElement(Point, {
		Position = Vector2.new(keypoint.Time, keypoint.Value),
		OutlineThickness = if props.IsSelected then 2 else 0,
		ZIndex = if props.IsDragged then 15 else 10,
	}, {
		Input = React.createElement(InputDetector, {
			OnHoverStart = function()
				props.SetHovered(true)
			end,
			OnHoverMoved = function()
				props.SetHovered(true)
			end,
			OnHoverEnded = function()
				props.SetHovered(false)
			end,
			OnDragStart = function(_)
				setOriginalEnvelope(keypoint.Envelope)
				props.SetDragged(true)
			end,
			OnDragMoved = function(newPos: Vector2)
				if props.XLocked then
					newPos = Vector2.new(keypoint.Time, newPos.Y)
				end

				local newEnvelope = originalEnvelope
				newEnvelope = math.min(newEnvelope, math.abs(newPos.Y))
				newEnvelope = math.min(newEnvelope, math.abs(props.MaxY - newPos.Y))

				props.OnKeypointChanged(NumberSequenceKeypoint.new(newPos.X, newPos.Y, newEnvelope))
			end,
			OnDragEnded = function(_)
				props.SetDragged(false)
			end,
			OnRightClick = function()
				if props.XLocked then
					return
				end
				props.OnKeypointDeleted()
			end,
		}),
	})
end

local function NumberSequenceEnvelopeTick(props)
	local keypoint = props.Keypoint
	local topPoint = Vector2.new(keypoint.Time, keypoint.Value + props.Direction * keypoint.Envelope)
	local anchorPoint = Vector2.new(0.5, if props.Direction > 0 then 1 else 0)

	return React.createElement(Positioner, {
		Position = topPoint,
		ZIndex = if props.IsDragged then 14 else 9,
	}, {
		LineVisual = React.createElement("Frame", {
			AnchorPoint = anchorPoint,
			Position = UDim2.fromScale(0.5, 0.5),
			Size = if props.IsHovered or props.IsDragged then UDim2.fromOffset(5, 20) else UDim2.fromOffset(2, 15),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BorderSizePixel = 0,
		}, {
			Input = React.createElement(InputDetector, {
				Inflate = 5,
				OnHoverStart = function()
					props.SetHovered(true)
				end,
				OnHoverMoved = function()
					props.SetHovered(true)
				end,
				OnHoverEnded = function()
					props.SetHovered(false)
				end,
				OnDragStart = function(_)
					props.SetDragged(true)
				end,
				OnDragMoved = function(newPos: Vector2)
					local newEnvelope = math.max(0, props.Direction * (newPos.Y - keypoint.Value))
					newEnvelope = math.min(newEnvelope, math.abs(keypoint.Value))
					newEnvelope = math.min(newEnvelope, math.abs(props.MaxY - keypoint.Value))

					local newKeypoint = NumberSequenceKeypoint.new(keypoint.Time, keypoint.Value, newEnvelope)
					props.OnKeypointChanged(newKeypoint)
				end,
				OnDragEnded = function(_)
					props.SetDragged(false)
				end,
			}),
		}),
	})
end

local function NumberSequencePointAdder(props)
	local hoverPoint, setHoverPoint = React.useState(nil)

	local leftIndex = 1
	if hoverPoint then
		local rightIndex = #props.Keypoints
		while leftIndex <= rightIndex do
			local middleIndex = math.floor((leftIndex + rightIndex) / 2)
			if props.Keypoints[middleIndex].Time < hoverPoint.X then
				leftIndex = middleIndex + 1
			elseif props.Keypoints[middleIndex].Time > hoverPoint.X then
				rightIndex = middleIndex - 1
			else
				leftIndex = middleIndex
				rightIndex = middleIndex - 1
			end
		end
	end
	leftIndex = math.max(2, leftIndex)

	return React.createElement(React.Fragment, {}, {
		Input = React.createElement(InputDetector, {
			ZIndex = 2,
			OnHoverStart = function(pos)
				setHoverPoint(pos)
			end,
			OnHoverMoved = function(pos)
				setHoverPoint(pos)
			end,
			OnHoverEnded = function(_)
				setHoverPoint(nil)
			end,
			OnPress = function()
				if not props.Enabled or not hoverPoint then
					return
				end
				props.OnAddKeypoint(NumberSequenceKeypoint.new(hoverPoint.X, hoverPoint.Y, 0), leftIndex)
			end,
		}),

		GhostPoint = props.Enabled and hoverPoint and React.createElement(Point, {
			Position = hoverPoint,
			Color3 = Color3.fromRGB(155, 155, 155),
			Size = 5,
			ZIndex = -1,
		}),
		GhostCurve = props.Enabled and hoverPoint and React.createElement(Curve, {
			Points = {
				{ Position = Vector2.new(props.Keypoints[leftIndex - 1].Time, props.Keypoints[leftIndex - 1].Value) },
				{ Position = hoverPoint },
				{ Position = Vector2.new(props.Keypoints[leftIndex].Time, props.Keypoints[leftIndex].Value) },
			},
			Color3 = Color3.fromRGB(155, 155, 155),
			Thickness = 1,
			ZIndex = -1,
		}),
	})
end

local function NumberSequenceEditor(props)
	local numberSequence: NumberSequence, setNumberSequence = React.useState(NumberSequence.new({
		NumberSequenceKeypoint.new(0, 5),
		NumberSequenceKeypoint.new(0.3, 8, 2),
		NumberSequenceKeypoint.new(0.4, 7, 3),
		NumberSequenceKeypoint.new(1, 2, 1),
	}))

	local selectedKeypoint, setSelectedKeypoint = React.useState(-1)

	-- TODO fix the issue with hovering two things at once and unhovering one of them
	-- Maybe we need some kind of context object to help store the list of controls being hovered? and which one is on top?
	local hoveredKeypoint, setHoveredKeypoint = React.useState(-1)
	local draggedKeypoint, setDraggedKeypoint = React.useState(-1)

	local reorderedIndex, setReorderedIndex = React.useState(-1)

	local children: { [string]: React.Node } = {
		Grid = React.createElement(Grid, {
			XAxis = {
				Type = "Uniform",
				Unit = MAX_X / 5,
			},
			XAxisMinor = {
				Type = "Uniform",
				Unit = MAX_X / 10,
			},
			YAxis = {
				Type = "Uniform",
				Unit = MAX_Y / 5,
			},
			YAxisMinor = {
				Type = "Uniform",
				Unit = MAX_Y / 10,
			},
		}),
	}
	local childrenUnclipped: { [string]: React.Node } = {
		XScale = React.createElement(Scale, {
			Side = "Bottom",
			Schema = {
				Type = "Uniform",
				Unit = MAX_X / 10,
			},
			TickLength = 0,
		}),
		YScale = React.createElement(Scale, {
			Side = "Left",
			Schema = {
				Type = "Uniform",
				Unit = MAX_Y / 10,
			},
			TickLength = 0,
		}),
	}

	local curvePoints = {}
	local topCurvePoints = {}
	local bottomCurvePoints = {}

	for i, keypoint in numberSequence.Keypoints do
		local renderI = i
		if reorderedIndex > 0 and reorderedIndex ~= draggedKeypoint then
			if renderI == reorderedIndex then
				renderI = draggedKeypoint
			elseif renderI > reorderedIndex and renderI <= draggedKeypoint then
				renderI = renderI - 1
			elseif renderI < reorderedIndex and renderI >= draggedKeypoint then
				renderI = renderI + 1
			end
		end

		local midPoint = Vector2.new(keypoint.Time, keypoint.Value)
		local topPoint = Vector2.new(keypoint.Time, keypoint.Value + keypoint.Envelope)
		local bottomPoint = Vector2.new(keypoint.Time, keypoint.Value - keypoint.Envelope)

		curvePoints[i] = { Position = midPoint }
		topCurvePoints[i] = { Position = topPoint }
		bottomCurvePoints[i] = { Position = bottomPoint }

		local function onKeypointChanged(newKeypoint)
			local keypoints = numberSequence.Keypoints
			keypoints[i] = newKeypoint

			local j = i
			while j > 1 and keypoints[j].Time < keypoints[j - 1].Time do
				local temp = keypoints[j]
				keypoints[j] = keypoints[j - 1]
				keypoints[j - 1] = temp
				j -= 1
			end
			if j < i then
				setReorderedIndex(j)
			end

			local k = i
			while k < #keypoints and keypoints[k].Time > keypoints[k + 1].Time do
				local temp = keypoints[k]
				keypoints[k] = keypoints[k + 1]
				keypoints[k + 1] = temp
				k += 1
			end
			if k > i then
				setReorderedIndex(k)
			end

			setNumberSequence(NumberSequence.new(keypoints))
		end

		local function onKeypointDeleted()
			local keypoints = numberSequence.Keypoints
			table.remove(keypoints, i)
			setNumberSequence(NumberSequence.new(keypoints))
		end

		local function setHovered(state: boolean)
			setHoveredKeypoint(if state then i else -1)
			if state then
				setSelectedKeypoint(i)
			end
		end

		local function setDragged(state: boolean)
			if state then
				setHoveredKeypoint(i)
				setSelectedKeypoint(i)
			else
				setSelectedKeypoint(reorderedIndex)
				if hoveredKeypoint == draggedKeypoint then
					setHoveredKeypoint(reorderedIndex)
				end
			end

			setDraggedKeypoint(if state then i else -1)
			setReorderedIndex(if state then i else -1)
		end

		children["Keypoint" .. renderI] = React.createElement(NumberSequencePoint, {
			Keypoint = keypoint,
			MaxY = MAX_Y,
			XLocked = renderI == 1 or renderI == #numberSequence.Keypoints,
			OnKeypointChanged = onKeypointChanged,
			OnKeypointDeleted = onKeypointDeleted,

			IsSelected = selectedKeypoint == renderI,
			IsHovered = hoveredKeypoint == renderI,
			IsDragged = draggedKeypoint == renderI,
			SetHovered = setHovered,
			SetDragged = setDragged,
		})
		children["EnvelopeTop" .. renderI] = React.createElement(NumberSequenceEnvelopeTick, {
			Keypoint = keypoint,
			Direction = 1,
			MaxY = MAX_Y,
			OnKeypointChanged = onKeypointChanged,

			IsHovered = hoveredKeypoint == renderI,
			IsDragged = draggedKeypoint == renderI,
			SetHovered = setHovered,
			SetDragged = setDragged,
		})
		children["EnvelopeBottom" .. renderI] = React.createElement(NumberSequenceEnvelopeTick, {
			Keypoint = keypoint,
			Direction = -1,
			MaxY = MAX_Y,
			OnKeypointChanged = onKeypointChanged,

			IsHovered = hoveredKeypoint == renderI,
			IsDragged = draggedKeypoint == renderI,
			SetHovered = setHovered,
			SetDragged = setDragged,
		})
	end

	children.Curve = React.createElement(Curve, {
		Points = curvePoints,
	})
	children.TopCurve = React.createElement(Curve, {
		Points = topCurvePoints,
	})
	children.BottomCurve = React.createElement(Curve, {
		Points = bottomCurvePoints,
	})

	children.Add = React.createElement(NumberSequencePointAdder, {
		Enabled = #numberSequence.Keypoints < MAX_POINTS and hoveredKeypoint < 0 and draggedKeypoint < 0,
		Keypoints = numberSequence.Keypoints,
		OnAddKeypoint = function(keypoint, index)
			local keypoints = numberSequence.Keypoints
			table.insert(keypoints, index, keypoint)
			setNumberSequence(NumberSequence.new(keypoints))
			setSelectedKeypoint(index)
		end,
	})

	return React.createElement(Canvas, {
		GraphRect = Rect.new(0, 0, MAX_X, MAX_Y),
		children = children,
		childrenUnclipped = childrenUnclipped,
	})
end

return {
	summary = "An editor for a NumberSequence object, such as the value of the property ParticleEmitter.Size.",
	story = function(props)
		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 300), -- TODO fix an issue where the contents of the canvas affect automatic sizing for some reason
			BackgroundTransparency = 1,
		}, {
			Editor = React.createElement(NumberSequenceEditor, props),
		})
	end,
	controls = {},
}
