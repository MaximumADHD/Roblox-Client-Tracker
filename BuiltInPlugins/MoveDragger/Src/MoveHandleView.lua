
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local Plugin = script.Parent.Parent
local Framework = Plugin.Packages.DraggerFramework
local Math = require(Framework.Utility.Math)
local Roact = require(Plugin.Packages.Roact)

local MoveHandleView = Roact.PureComponent:extend("MoveHandleView")

local BASE_HANDLE_RADIUS = 0.07
local BASE_HANDLE_HITTEST_RADIUS = 0.22 -- Handle hittests bigger than it looks
local BASE_HANDLE_OFFSET = 0.60
local BASE_HANDLE_LENGTH = 3.00
local BASE_TIP_OFFSET = 0.20
local BASE_TIP_LENGTH = 0.25
local SCREENSPACE_HANDLE_SIZE = 6

function MoveHandleView:render()
    local scale = self.props.Scale

    -- TODO: Debug code so that the designers can play with the handle size,
    -- remove before shipping.
    if Workspace:FindFirstChild("MoveHandleRadius") and Workspace.MoveHandleRadius.Value ~= 0 then
        BASE_HANDLE_RADIUS = 0.07 * Workspace.MoveHandleRadius.Value
        BASE_HANDLE_HITTEST_RADIUS = BASE_HANDLE_RADIUS * 3
    end
    if Workspace:FindFirstChild("MoveHandleLength") and Workspace.MoveHandleLength.Value ~= 0 then
        BASE_HANDLE_LENGTH = 3.00 * Workspace.MoveHandleLength.Value
    end

    local length = scale * BASE_HANDLE_LENGTH
    local radius = scale * BASE_HANDLE_RADIUS
    local offset = scale * BASE_HANDLE_OFFSET
    local tipOffset = scale * BASE_TIP_OFFSET
    local tipLength = length * BASE_TIP_LENGTH

    local color = self.props.Color
    if not self.props.Hovered then
        color = color:Lerp(Color3.new(0, 0, 0), 0.3)
    end

    local coneAtCFrame = self.props.Axis * CFrame.new(0, 0, -(offset + length))
    local tipAt = coneAtCFrame * Vector3.new(0, 0, -tipOffset)
    local tipAtScreen, tipVisible = Workspace.CurrentCamera:WorldToScreenPoint(tipAt)

    local children = {}
    children.Shaft = Roact.createElement("CylinderHandleAdornment", {
        Adornee = Workspace.Terrain, -- Just a neutral anchor point
        ZIndex = 0,
        Radius = radius,
        Height = length,
        CFrame = self.props.Axis * CFrame.new(0, 0, -(offset + length * 0.5)),
        Color3 = color,
        AlwaysOnTop = self.props.AlwaysOnTop,
    })
    children.Head = Roact.createElement("ConeHandleAdornment", {
        Adornee = Workspace.Terrain,
        ZIndex = 0,
        Radius = 3 * radius,
        Height = tipLength,
        CFrame = coneAtCFrame,
        Color3 = color,
        AlwaysOnTop = self.props.AlwaysOnTop,
    })
    if not self.props.AlwaysOnTop then
        children.ScreenBox = Roact.createElement(Roact.Portal, {
            target = CoreGui,
        }, {
            MoveToolScreenspaceHandle = Roact.createElement("ScreenGui", {}, {
                Frame = Roact.createElement("Frame", {
                    BorderSizePixel = 0,
                    BackgroundColor3 = self.props.Color,
                    Position = UDim2.new(0, tipAtScreen.X - 0.5 * SCREENSPACE_HANDLE_SIZE, 0, tipAtScreen.Y - 0.5 * SCREENSPACE_HANDLE_SIZE),
                    Size = UDim2.new(0, SCREENSPACE_HANDLE_SIZE, 0, SCREENSPACE_HANDLE_SIZE),
                })
            })
        })
    end
    return Roact.createFragment(children)
end

function MoveHandleView.hitTest(props, mouseRay)
    local scale = props.Scale

    local length = scale * BASE_HANDLE_LENGTH
    local radius = scale * BASE_HANDLE_HITTEST_RADIUS
    local offset = scale * BASE_HANDLE_OFFSET
    local tipOffset = scale * BASE_TIP_OFFSET
    local tipLength = length * BASE_TIP_LENGTH

    if not props.AlwaysOnTop then
        -- Check the always on top 2D element at the tip of the vector
        local tipAt = props.Axis * Vector3.new(0, 0, -(offset + length + tipOffset))
        local tipAtScreen, tipVisible = Workspace.CurrentCamera:WorldToScreenPoint(tipAt)
        local mouseAtScreen = Workspace.CurrentCamera:WorldToScreenPoint(mouseRay.Origin)
        if mouseAtScreen.X > tipAtScreen.X - 0.5 * SCREENSPACE_HANDLE_SIZE and
            mouseAtScreen.Y > tipAtScreen.Y - 0.5 * SCREENSPACE_HANDLE_SIZE and
            mouseAtScreen.X < tipAtScreen.X + 0.5 * SCREENSPACE_HANDLE_SIZE and
            mouseAtScreen.Y < tipAtScreen.Y + 0.5 * SCREENSPACE_HANDLE_SIZE
        then
            return 0
        end
    end

    local hasIntersection, hitDistance =
        Math.intersectRayRay(
            props.Axis.Position, props.Axis.LookVector,
            mouseRay.Origin, mouseRay.Direction.Unit)

    if not hasIntersection then
        return nil
    end

    -- Must have an intersection if the above intersect did
    local _, distAlongMouseRay =
        Math.intersectRayRay(
            mouseRay.Origin, mouseRay.Direction.Unit,
            props.Axis.Position, props.Axis.LookVector)

    local hitRadius =
        ((props.Axis.Position + props.Axis.LookVector * hitDistance) -
        (mouseRay.Origin + mouseRay.Direction.Unit * distAlongMouseRay)).Magnitude

    if hitRadius < radius and hitDistance > offset and hitDistance < length + offset + tipLength then
        return distAlongMouseRay
    else
        return nil
    end
end

return MoveHandleView