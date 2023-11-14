local srcPath = game.ReplicatedStorage.RobloxCharacterPackages.CharacterController
local Util = require(srcPath.Utils.Util)

local DebugDraw = {}

-- Forward declare private functions
local _drawDashedLine
local _initSeries
local _getSeriesDrawContext
local _getGenericDrawContext

DebugDraw.config = {
    -- Default color for a plot, if not passed via plotPoint()
    defaultPlotColor = Color3.fromRGB(255, 255, 255),

    -- Background color for the graph
    plotBGColor = Color3.fromRGB(0, 0, 0),

    -- Graph position relative to player
    graphPosition = Vector3.new(-30, 0, -20),

    -- Graph width/height
    graphDimensions = Vector3.new(60, 10, 0),

    -- The number of plots to fit inside the fixed graphDimensions. More plots
    -- make the graph draw slower. Graph resets after filling up.
    maxPlots = 1200,

    -- Margins between plots and edge of graph
    margin = Vector3.new(0, .5, 0),

    -- Draw a dotted line at zero
    drawZeroLine = true,

    -- Force a min/max, else auto-calculate the current running min/max
    fixedMin = nil,
    fixedMan = nil,
}

-- Nested data structure storing state for each series. See _initSeries().
DebugDraw.series = {}

--[[
USAGE:
DebugDraw.config.drawZeroLine = false
DebugDraw.plotPoint("PosX", humanoid.RootPart.Position.X, Color3.fromRGB(255, 0, 0))
DebugDraw.plotPoint("PosY", humanoid.RootPart.Position.Y, Color3.fromRGB(0, 255, 0))
DebugDraw.plotPoint("PosZ", humanoid.RootPart.Position.Z, Color3.fromRGB(0, 120, 255))
--]]
function DebugDraw.plotPoint(key: string, value: number, color: Color3?)
    local graphDimensions = DebugDraw.config.graphDimensions
    local lowerLeft = Vector3.zero - (graphDimensions / 2) + DebugDraw.config.margin
    local upperRight = Vector3.zero + (graphDimensions / 2) - DebugDraw.config.margin
    local drawContext = _initSeries(key, color).drawContext
    if drawContext == nil then
        return
    end

    -- Start over if we've hit the graph width
    if (#DebugDraw.series[key].values > DebugDraw.config.maxPlots) then
        DebugDraw.series[key].values = {}
    end

    drawContext:Clear()

    -- Initialize min/max values
    if DebugDraw.series[key].minValue == nil then
        DebugDraw.series[key].minValue = value
    end
    if DebugDraw.series[key].maxValue == nil then
        DebugDraw.series[key].maxValue = value
    end
    
    -- Track min/max values to auto-scale the graph, or just use the min/max
    -- passed in via config.
    if (DebugDraw.config.minValue == nil) then
        if value < DebugDraw.series[key].minValue then
            DebugDraw.series[key].minValue = value
        end
    else
        DebugDraw.series[key].minValue = DebugDraw.config.minValue
    end

    if (DebugDraw.config.maxValue == nil) then
        if value > DebugDraw.series[key].maxValue then
            DebugDraw.series[key].maxValue = value
        end
    else
        DebugDraw.series[key].maxValue = DebugDraw.config.maxValue
    end

    -- Add this value to the list of all values
    -- XXX: This method assumes a constant deltaTime. Could store pairs of
    --      gameTime/value, but iterating over lua tables like this was ugly.
    table.insert(DebugDraw.series[key].values, value)

    -- Draw zero line
    if DebugDraw.config.drawZeroLine then
        local remappedZero = Util.remapClamped(
            0,
            DebugDraw.series[key].minValue,
            DebugDraw.series[key].maxValue,
            lowerLeft.Y,
            upperRight.Y
        )

        local zeroInRange = remappedZero > DebugDraw.series[key].minValue and
            remappedZero < DebugDraw.series[key].maxValue
        if zeroInRange then
            _drawDashedLine(
                drawContext,
                Vector3.new(lowerLeft.X, remappedZero, 0),
                Vector3.new(upperRight.X, remappedZero, 0)
            )
        end
    end

    -- Don't draw anything until we have at least 2 plots
    if (#DebugDraw.series[key].values < 2) then
        return
    end

    -- Plot all values
    local lastValue = nil
    local lastTime = nil
    for i, val in ipairs(DebugDraw.series[key].values) do
        -- Start plotting from the second index
        if i < 2 then
            continue
        end

        -- Remap values to min/max of graph
        local remappedValue = Util.remapClamped(
            val,
            DebugDraw.series[key].minValue,
            DebugDraw.series[key].maxValue,
            lowerLeft.Y,
            upperRight.Y)

        -- Remap time to min/max of graph
        local remappedTime = Util.remapClamped(
            i - 1,
            1,
            DebugDraw.config.maxPlots,
            lowerLeft.X,
            upperRight.X)

        -- Handle first time we plot
        if lastValue == nil then
            lastValue = remappedValue
        end
        if lastTime == nil then
            lastTime = remappedTime
        end

        -- Draw a line between this point and the last point
        local lastPoint: Vector3 = Vector3.new(lastTime, lastValue, 0)
        local curPoint: Vector3 = Vector3.new(remappedTime, remappedValue, 0)
        drawContext:AddLine(
            lastPoint,
            curPoint
        )

        -- Store last point for next iteration
        lastValue = remappedValue
        lastTime = remappedTime
    end
end

function DebugDraw.drawLine(point1: Vector3, point2: Vector3, color: Color3?)
    local debugDraw = _getGenericDrawContext()
    color = color or Color3.fromRGB(255, 255, 255)

    debugDraw.Color3 = color

    debugDraw:AddLine(point1, point2)
    return debugDraw
end

function DebugDraw.drawRay(origin: Vector3, ray: Vector3, color: Color3?)
    local debugDraw = _getGenericDrawContext()
    color = color or Color3.fromRGB(255, 255, 255)

    debugDraw.Color3 = color

    debugDraw:AddLine(origin, origin + ray)
    return debugDraw
end

function DebugDraw.clear()
    local debugDraw = _getGenericDrawContext()
    debugDraw:Clear()
end

_drawDashedLine = function(debugDraw, point1: Vector3, point2: Vector3)
    local length = (point2 - point1).Magnitude
    local step = .25 / length

    local dashRatio = .5
    for t = 0, 1 - step, step  do

        debugDraw:AddLine(
            point1:Lerp(point2, t),
            point1:Lerp(point2, t + (step * dashRatio))
        )
    end
end

_initSeries = function(key: string, color: Color3?)
    color = color or DebugDraw.config.defaultPlotColor

    if DebugDraw.series[key] ~= nil then
        -- Cached series
        return DebugDraw.series[key]

    else
        -- Construct new series
        DebugDraw.series[key] = {
            values = {},
            minValue = nil,
            maxValue = nil,
        }
        DebugDraw.series[key].drawContext = _getSeriesDrawContext(key)
        DebugDraw.series[key].drawContext.Color3 = color
        return DebugDraw.series[key]
    end
end

_getSeriesDrawContext = function(key: string)
    if DebugDraw.series[key].drawContext ~= nil then
        return DebugDraw.series[key].drawContext
    end

    -- Create plot frame
    local plotFrame = Instance.new("Part")
    plotFrame.Parent = workspace
    plotFrame.Name = "debugPlotFrame_"..key
    plotFrame.Anchored = true
    plotFrame.CanCollide = false
    plotFrame.CanQuery = false
    plotFrame.CanTouch = false
    plotFrame.Size = DebugDraw.config.graphDimensions
    plotFrame.Color = DebugDraw.config.plotBGColor

    local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    plotFrame.Position = playerPos + DebugDraw.config.graphPosition +
        (DebugDraw.config.graphDimensions / 2)

    -- Create drawing context
    local drawContext = Instance.new("WireframeHandleAdornment")
    drawContext.Parent = plotFrame
    drawContext.Name = "debugDraw_"..key
    drawContext.Adornee = plotFrame

    -- Cache the drawing context
    DebugDraw.series[key].drawContext = drawContext

    return drawContext
end

_getGenericDrawContext = function()
    if DebugDraw.genericDrawContext ~= nil then
        return DebugDraw.genericDrawContext
    end

    -- Create drawing context
    local drawContext = Instance.new("WireframeHandleAdornment")
    local owner = Instance.new("Part")
    owner.Parent = workspace
    owner.Name = "debugDraw_genericOwner"
    owner.Anchored = true
    owner.CanCollide = false
    owner.CanQuery = false
    owner.CanTouch = false
    
    drawContext.Parent = owner
    drawContext.Name = "debugDraw_genericDrawContext"
    drawContext.Adornee = owner

    -- Cache the drawing context
    DebugDraw.genericDrawContext = drawContext

    return drawContext
end

return DebugDraw