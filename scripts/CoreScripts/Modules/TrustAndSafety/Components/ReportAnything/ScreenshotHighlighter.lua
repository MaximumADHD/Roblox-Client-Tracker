local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local UIBlox = require(CorePackages.UIBlox)
local React = require(CorePackages.Packages.React)
local TnsModule = script.Parent.Parent.Parent
local GetFIntRAMaxAnnotationCount = require(TnsModule.Flags.GetFIntRAMaxAnnotationCount)

local ImageSetButton = UIBlox.Core.ImageSet.ImageSetButton
local Images = UIBlox.App.ImageSet.Images

local SUPPORT_DRAG_SELECTION = false

export type Props = {
	-- List of annotation points where the user has clicked.
	annotationPoints: { Vector2 },
	-- This component doesn't store state for the annotation points.
	-- The parent should handle that and re-render.
	handleAnnotationPoints: (({ Vector2 }) -> ()),
	setAnnotationCircleRadius: ((number) -> ()),
	setAspectRatioDimensions: ((number, number) -> ()),
}


local function ScreenshotHighlighter(props: Props)
	-- Using a fraction of screen size to determine annotation circle size
	local sizeData = RobloxGui.AbsoluteSize
	local minScreenDimension = (sizeData.Y > sizeData.X) and sizeData.X or sizeData.Y
	local annotationCircleSize = minScreenDimension / 5
	----------------------
	-- Handle click state
	----------------------
	local isInputActivated, setInputActivated = React.useState(false)

	local appendAnnotationPoints = function(instance: GuiBase2d, newPointVec3: Vector3)
		local positionVec2 = Vector2.new(newPointVec3.X, newPointVec3.Y) - instance.AbsolutePosition
		positionVec2 = positionVec2 / instance.AbsoluteSize
		table.insert(props.annotationPoints, positionVec2)
		local size = if instance.AbsoluteSize.X > instance.AbsoluteSize.Y then instance.AbsoluteSize.X else instance.AbsoluteSize.Y
		props.setAnnotationCircleRadius(annotationCircleSize * 0.5 / size)
		props.setAspectRatioDimensions(instance.AbsoluteSize.X, instance.AbsoluteSize.Y)
		props.handleAnnotationPoints(props.annotationPoints)
	end

	local onInputBegan = function(instance: GuiBase2d, inputObj: InputObject)
		local isInputBegan = inputObj.UserInputState == Enum.UserInputState.Begin
		local isTouch = inputObj.UserInputType == Enum.UserInputType.Touch
		local isMouseButton1 = inputObj.UserInputType == Enum.UserInputType.MouseButton1
		if isInputBegan and (isTouch or isMouseButton1) and #props.annotationPoints < GetFIntRAMaxAnnotationCount() then
			setInputActivated(true)
			appendAnnotationPoints(instance, inputObj.Position)
		end
	end

	local onInputChanged = function(instance: GuiBase2d, inputObj: InputObject)
		if not SUPPORT_DRAG_SELECTION or not isInputActivated then
			return
		end
		local isInputChanged = inputObj.UserInputState == Enum.UserInputState.Change
		local isMouseMovement = inputObj.UserInputType == Enum.UserInputType.MouseMovement
		local isTouch = inputObj.UserInputType == Enum.UserInputType.Touch
		if isInputChanged and (isTouch or isMouseMovement) then
			appendAnnotationPoints(instance, inputObj.Position)
		end
	end

	local onInputEnded = function(instance: GuiBase2d, inputObj: InputObject)
		if isInputActivated then
			if SUPPORT_DRAG_SELECTION then
				appendAnnotationPoints(instance, inputObj.Position)
			end
			setInputActivated(false)
		end
	end
	-----------------------
	-- Render clicks
	-----------------------
	local children: any = {}

	for i, point in ipairs(props.annotationPoints) do
		children["point" .. i] = React.createElement("Frame", {
			Position = UDim2.fromScale(point.X, point.Y),
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(annotationCircleSize, annotationCircleSize),
		}, {
			-- Our design requires a circle with border
			-- since we don't have the specific image for it I have to combine two images
			Border = React.createElement(ImageSetButton, {
				Size = UDim2.fromOffset(annotationCircleSize, annotationCircleSize),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = Images["component_assets/circle_49_stroke_1"],
				ImageColor3 = Color3.fromHex("#3CF3E9"),
				ImageTransparency = 0,
				BackgroundTransparency = 1,
			}),
			Background = React.createElement(ImageSetButton, {
				-- TODO(bcwong): When clicking near the border, the dot partially lies outside
				-- TODO(bcwong): Point size should be a fraction of the image width/height
				Size = UDim2.fromOffset(annotationCircleSize, annotationCircleSize),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = Images["component_assets/circle_49"],
				ImageColor3 = Color3.fromHex("#3CF3E9"),
				ImageTransparency = 0.6,
				BackgroundTransparency = 1,
			}),
		})
	end

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		[React.Event.InputBegan] = onInputBegan,
		[React.Event.InputChanged] = onInputChanged,
		[React.Event.InputEnded] = onInputEnded,
		ZIndex = 3,
	}, children)
end

return ScreenshotHighlighter
