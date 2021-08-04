--[[
    Roact component for listening for the mouse pressed

    Props
	    setMaterial :           function to set material
	    setSourceMaterial :     function to set source material
        setTargetMaterial:      function to set target material
]]
local FFlagTerrainToolsV2WithContext = game:GetFastFlag("TerrainToolsV2WithContext")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")

local MouseListener = Roact.PureComponent:extend("MouseListener")

local function isAltKeyDown()
	return UserInputService:IsKeyDown(Enum.KeyCode.LeftAlt) or UserInputService:IsKeyDown(Enum.KeyCode.RightAlt)
end

local function isShiftKeyDown()
	return UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)
end

function MouseListener:pickMaterial()
    self._mouse = self.props.Mouse:get()
    local unitRay = self._mouse.UnitRay.Direction
    local cameraPos = self._mouse.Origin.p
    local rayHit, hitMaterial

    local raycastResult = Workspace:Raycast(cameraPos, unitRay * 10000, self._raycastParams)

    if raycastResult then
        rayHit = raycastResult.Instance
        hitMaterial = raycastResult.Material
    end

    if rayHit and rayHit:IsA("Terrain") then
        if not isShiftKeyDown() then
            if self.props.dispatchSetMaterial then
                self.props.dispatchSetMaterial(hitMaterial)
            end
            if self.props.dispatchSetSourceMaterial then
                self.props.dispatchSetSourceMaterial(hitMaterial)
            end
        else
            if self.props.dispatchSetTargetMaterial then
                self.props.dispatchSetTargetMaterial(hitMaterial)
            end
        end
    end
end

function MouseListener:init()
    self.onInputBegan = function(event, gpe)
    	-- Check for mouse here
        if event.UserInputType == Enum.UserInputType.MouseButton1 and not gpe then
            local altDown = isAltKeyDown()
            if altDown then
                self:pickMaterial()
            end
        end
    end
end

function MouseListener:didMount()
    self._raycastParams = RaycastParams.new()
    self._raycastParams.FilterType = Enum.RaycastFilterType.Whitelist
    self._raycastParams.FilterDescendantsInstances = {self.props.Terrain:get()}
    self._onInputBeganConnection = UserInputService.InputBegan:Connect(self.onInputBegan)
end

function MouseListener:willUnmount()
    if self._onInputBeganConnection then
        self._onInputBeganConnection:Disconnect()
        self._onInputBeganConnection = nil
    end
end

function MouseListener:render()
	-- Shouldn't have any visuals for this
	-- Could also assert there's no children
    return nil
end

if FFlagTerrainToolsV2WithContext then
	MouseListener = withContext({
	    Mouse = ContextServices.Mouse,
	    Terrain = ContextItems.Terrain,
	})(MouseListener)
else
	ContextServices.mapToProps(MouseListener, {
	    Mouse = ContextServices.Mouse,
	    Terrain = ContextItems.Terrain,
	})
end


return MouseListener