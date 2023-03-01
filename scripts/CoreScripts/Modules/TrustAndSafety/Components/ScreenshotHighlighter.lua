local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.UIBlox)
local React = require(CorePackages.Packages.React)

local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local HeaderBar = UIBlox.App.Bar.HeaderBar
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local ImageSetButton = UIBlox.Core.ImageSet.Button
local UIBloxImages = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle
local Images = UIBlox.App.ImageSet.Images

local TnsModule = script.Parent.Parent
local Assets = require(TnsModule.Resources.Assets)
local Dependencies = require(TnsModule.Dependencies) 


local HIGHLIGHT_SIZE = 20
local SUPPORT_DRAG_SELECTION = false

export type Props = {
    -- List of annotation points where the user has clicked.
    annotationPoints: {Vector2},
    -- This component doesn't store state for the annotation points.
    -- The parent should handle that and re-render.
    handleAnnotationPoints: (({Vector2}) -> ()),
}

local function ScreenshotHighlighter(props: Props)
    ----------------------
    -- Handle click state
    ----------------------
    local isInputActivated, setInputActivated = React.useState(false)

    local appendAnnotationPoints = function(instance: GuiBase2d, newPointVec3: Vector3)
        local positionVec2 = Vector2.new(newPointVec3.X, newPointVec3.Y) - instance.AbsolutePosition
		positionVec2 = positionVec2 / instance.AbsoluteSize
        table.insert(props.annotationPoints, positionVec2)
        props.handleAnnotationPoints(props.annotationPoints)
    end

    local onInputBegan = function(instance: GuiBase2d, inputObj: InputObject)
        local isInputBegan = inputObj.UserInputState == Enum.UserInputState.Begin
        local isTouch = inputObj.UserInputType == Enum.UserInputType.Touch
        local isMouseButton1 = inputObj.UserInputType == Enum.UserInputType.MouseButton1
        if isInputBegan and (isTouch or isMouseButton1) then
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
            -- print("Changed?", inputObj.UserInputType, inputObj.UserInputState)
            appendAnnotationPoints(instance, inputObj.Position)
        end
    end

    local onInputEnded = function(instance: GuiBase2d, inputObj: InputObject)
        if isInputActivated then
            -- print("Mouse or touch up", inputObj.Position)
            if SUPPORT_DRAG_SELECTION then
                appendAnnotationPoints(instance, inputObj.Position)
            end
            setInputActivated(false)
            -- print("Input points", props.annotationPoints)
        end
    end

    -----------------------
    -- Render clicks
    -----------------------
    local children: any = {}

    for i, point in ipairs(props.annotationPoints) do
        children["point" .. i] = React.createElement(ImageSetButton, {
            -- TODO(bcwong): When clicking near the border, the dot partially lies outside
            Position = UDim2.fromScale(point.X, point.Y),
            -- TODO(bcwong): Point size should be a fraction of the image width/height
            Size = UDim2.fromOffset(HIGHLIGHT_SIZE, HIGHLIGHT_SIZE),
            AnchorPoint = Vector2.new(0.5, 0.5),
            Image = Images["component_assets/circle_16"],
            ImageTransparency = 0.5,
            BackgroundTransparency = 1,
        })
    end

    return React.createElement("Frame", {
        BackgroundTransparency = 1,
        Size = UDim2.fromScale(1, 1),
        [React.Event.InputBegan] = onInputBegan,
        [React.Event.InputChanged] = onInputChanged,
        [React.Event.InputEnded] = onInputEnded,
    }, children)
end

return ScreenshotHighlighter
