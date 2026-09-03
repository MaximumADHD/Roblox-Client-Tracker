local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

local Canvas = require(Graphing.Components.Canvas)
local GridLine = require(Graphing.Components.GridLine)
local InputDetector = require(Graphing.Components.InputDetector)
local SidePositioner = require(Graphing.Components.SidePositioner)
local Scale = require(Graphing.Components.Scale)

local MAX_POINTS = 20

local function ColorSequencePoint(props)
	local keypoint = props.Keypoint

	-- determine what color to make the draggable line, based on the keypoint's luminance
	local color: Color3 = props.Keypoint.Value
	local lum = 0.2126 * color.R + 0.7152 * color.G + 0.0722 * color.B
	local lineColor = if lum < 0.5 then Color3.fromRGB(255, 255, 255) else Color3.fromRGB(0, 0, 0)

	local function onHoverStart()
		props.SetHovered(true)
	end
	local function onHoverEnded()
		props.SetHovered(false)
	end
	local function onDragStart()
		props.SetDragged(true)
	end
	local function onDragEnded()
		props.SetDragged(false)
	end
	local function onDragMoved(newPos: Vector2)
		if props.XLocked then
			return
		end
		props.OnKeypointChanged(ColorSequenceKeypoint.new(newPos.X, keypoint.Value))
	end
	local function onRightClick()
		if props.XLocked then
			return
		end
		props.OnKeypointDeleted()
	end

	return React.createElement(React.Fragment, {}, {
		Triangle = React.createElement(SidePositioner, {
			Side = "Bottom",
			Position = keypoint.Time,
			ZIndex = if props.IsDragged then 11 else 10,
		}, {
			TriangleVisual = React.createElement("ImageButton", {
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.fromScale(0.5, 0.5),
				Size = if props.IsSelected then UDim2.fromOffset(14, 14) else UDim2.fromOffset(10, 10),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ImageColor3 = if props.IsSelected then Color3.fromRGB(255, 255, 100) else Color3.fromRGB(255, 255, 255),
				Image = "rbxasset://textures/smallTriangle.png",
			}, {
				Input = React.createElement(InputDetector, {
					Inflate = 2,
					OnHoverStart = onHoverStart,
					OnHoverMoved = onHoverStart,
					OnHoverEnded = onHoverEnded,
					OnDragStart = onDragStart,
					OnDragMoved = onDragMoved,
					OnDragEnded = onDragEnded,
					OnRightClick = onRightClick,
				}),
			}),
		}),

		Line = React.createElement(GridLine, {
			Orientation = "Vertical",
			Position = keypoint.Time,
			Color3 = lineColor,
			Thickness = 2,
			Transparency = if props.IsHovered or props.IsDragged then 0 else 1,
			ZIndex = -1,
		}, {
			Input = React.createElement(InputDetector, {
				Inflate = 5,
				OnHoverStart = onHoverStart,
				OnHoverMoved = onHoverStart,
				OnHoverEnded = onHoverEnded,
				OnDragStart = onDragStart,
				OnDragMoved = onDragMoved,
				OnDragEnded = onDragEnded,
			}),
		}),
	})
end

local function ColorSequencePointAdder(props)
	local hoverX, setHoverX = React.useState(nil)

	local leftIndex = 1
	if hoverX then
		local rightIndex = #props.Keypoints
		while leftIndex <= rightIndex do
			local middleIndex = math.floor((leftIndex + rightIndex) / 2)
			if props.Keypoints[middleIndex].Time < hoverX then
				leftIndex = middleIndex + 1
			elseif props.Keypoints[middleIndex].Time > hoverX then
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
				setHoverX(pos.X)
			end,
			OnHoverMoved = function(pos)
				setHoverX(pos.X)
			end,
			OnHoverEnded = function(_)
				setHoverX(nil)
			end,
			OnPress = function()
				if not props.Enabled or not hoverX then
					return
				end
				props.OnAddKeypoint(ColorSequenceKeypoint.new(hoverX, props.Keypoints[leftIndex].Value), leftIndex)
			end,
		}),

		GhostLine = props.Enabled and hoverX and React.createElement(GridLine, {
			Orientation = "Vertical",
			Position = hoverX,
			Color3 = Color3.fromRGB(155, 155, 155),
			Thickness = 1,
			Transparency = 0,
			ZIndex = -1,
		}),
	})
end

local function ColorSequenceEditor(props)
	local colorSequence: ColorSequence, setColorSequence = React.useState(ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 100, 100)),
		ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 255, 255)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(100, 255, 100)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 50, 20)),
	}))

	local selectedKeypoint, setSelectedKeypoint = React.useState(-1)

	-- TODO fix the issue with hovering two things at once and unhovering one of them
	-- Maybe we need some kind of context object to help store the list of controls being hovered? and which one is on top?
	local hoveredKeypoint, setHoveredKeypoint = React.useState(-1)
	local draggedKeypoint, setDraggedKeypoint = React.useState(-1)

	local reorderedIndex, setReorderedIndex = React.useState(-1)

	local children: { [string]: React.Node } = {
		Gradient = React.createElement("Frame", {
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			Size = UDim2.fromScale(1, 1),
			ZIndex = -10,
		}, {
			UIGradient = React.createElement("UIGradient", {
				Color = colorSequence,
			}),
		}),
	}
	local childrenUnclipped: { [string]: React.Node } = {
		XScale = React.createElement(Scale, {
			Side = "Top",
			Schema = {
				Type = "Uniform",
				Unit = 0.1,
			},
			TickThickness = 1,
		}),
	}

	for i, keypoint in colorSequence.Keypoints do
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

		local function onKeypointChanged(newKeypoint)
			local keypoints = colorSequence.Keypoints
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

			setColorSequence(ColorSequence.new(keypoints))
		end

		local function onKeypointDeleted()
			local keypoints = colorSequence.Keypoints
			table.remove(keypoints, i)
			setColorSequence(ColorSequence.new(keypoints))
		end

		local function setHovered(state)
			setHoveredKeypoint(if state then i else -1)
			if state then
				setSelectedKeypoint(i)
			end
		end

		local function setDragged(state)
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

		childrenUnclipped["Keypoint" .. renderI] = React.createElement(ColorSequencePoint, {
			Keypoint = keypoint,
			XLocked = renderI == 1 or renderI == #colorSequence.Keypoints,
			OnKeypointChanged = onKeypointChanged,
			OnKeypointDeleted = onKeypointDeleted,

			IsHovered = hoveredKeypoint == renderI,
			IsSelected = selectedKeypoint == renderI,
			IsDragged = draggedKeypoint == renderI,
			SetHovered = setHovered,
			SetDragged = setDragged,
		})
	end

	children.Add = React.createElement(ColorSequencePointAdder, {
		Enabled = #colorSequence.Keypoints < MAX_POINTS and hoveredKeypoint < 0 and draggedKeypoint < 0,
		Keypoints = colorSequence.Keypoints,
		OnAddKeypoint = function(keypoint, index)
			local keypoints = colorSequence.Keypoints
			table.insert(keypoints, index, keypoint)
			setColorSequence(ColorSequence.new(keypoints))
			setSelectedKeypoint(index)
		end,
	})

	return React.createElement(Canvas, {
		GraphRect = Rect.new(0, 0, 1, 1),
		children = children,
		childrenUnclipped = childrenUnclipped,
	})
end

return {
	summary = "An editor for a ColorSequence object, such as the value of the property UIGradient.Color.",
	story = function(props)
		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 100), -- TODO fix an issue where the contents of the canvas affect automatic sizing for some reason
			BackgroundTransparency = 1,
		}, {
			Editor = React.createElement(ColorSequenceEditor, props),
		})
	end,
	controls = {},
}
