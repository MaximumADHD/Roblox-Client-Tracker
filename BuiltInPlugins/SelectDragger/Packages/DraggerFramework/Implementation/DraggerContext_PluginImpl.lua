--[[
	DraggerContext is a class which wraps all of the global state which the
	dragger needs to access to operate. This is the plugin implementation of the
	context, which pulls those globals from the studio session's services, to
	be used by a plugin.
]]

local DraggerFramework = script.Parent.Parent

local SelectionWrapper = require(DraggerFramework.Utility.SelectionWrapper)
local Analytics = require(DraggerFramework.Utility.Analytics)
local setInsertPoint = require(DraggerFramework.Utility.setInsertPoint)

local getEngineFeatureActiveInstanceHighlight = require(DraggerFramework.Flags.getEngineFeatureActiveInstanceHighlight)

local DraggerContext = {}
DraggerContext.__index = DraggerContext

local RAYCAST_DIRECTION_SCALE = 10000
local HANDLE_SCALE_FACTOR = 0.05

function DraggerContext.new(plugin, editDataModel, userSettings)
	return setmetatable({
		_editDataModel = editDataModel,
		_plugin = plugin,
		_userSettings = userSettings,
		_studioService = editDataModel:GetService("StudioService"),
		_runService = editDataModel:GetService("RunService"),
		_studioSettings = userSettings.Studio,
		_workspace = editDataModel:GetService("Workspace"),
		_userInputService = editDataModel:GetService("UserInputService"),
		_mouse = plugin:GetMouse(),
	}, DraggerContext)
end

-- What instance should the plugin's GUI objects get created under?
function DraggerContext:getGuiParent()
	return self._editDataModel:GetService("CoreGui")
end

function DraggerContext:setHoverInstance(instance)
	self._studioService.HoverInstance = instance
end

function DraggerContext:shouldUseLocalSpace()
	return self._studioService.UseLocalSpace
end

function DraggerContext:areCollisionsEnabled()
	return self._plugin.CollisionEnabled
end

function DraggerContext:areConstraintsEnabled()
	return self._studioService.DraggerSolveConstraints
end

function DraggerContext:areConstraintDetailsShown()
	return self._studioService.ShowConstraintDetails
end

function DraggerContext:shouldDrawConstraintsOnTop()
	return self._studioService.DrawConstraintsOnTop
end

function DraggerContext:shouldJoinSurfaces()
	return self._plugin:GetJoinMode() ~= Enum.JointCreationMode.None
end

function DraggerContext:shouldShowHover()
	return self._studioSettings["Show Hover Over"]
end

function DraggerContext:shouldAnimateHover()
	return self._studioSettings["Animate Hover Over"]
end

function DraggerContext:getHoverAnimationSpeedInSeconds()
	local speed = self._studioSettings["Hover Animate Speed"]
	if speed == Enum.HoverAnimateSpeed.VerySlow then
		return 2
	elseif speed == Enum.HoverAnimateSpeed.Slow then
		return 1
	elseif speed == Enum.HoverAnimateSpeed.Medium then
		return 0.5
	elseif speed == Enum.HoverAnimateSpeed.Fast then
		return 0.25
	elseif speed == Enum.HoverAnimateSpeed.VeryFast then
		return 0.1
	end
	return 0
end

function DraggerContext:getHoverBoxColor(isActive)
	if not getEngineFeatureActiveInstanceHighlight() then
		assert(isActive == nil)
		return self._studioSettings["Hover Over Color"]
	end
	if isActive then
		return self._studioSettings["Active Hover Over Color"]
	else
		return self._studioSettings["Hover Over Color"]
	end
end

function DraggerContext:getHoverLineThickness()
	-- There should probably be a setting for this but there isn't right now
	return 0.04
end

function DraggerContext:getSelectionBoxColor(isActive)
	if not getEngineFeatureActiveInstanceHighlight() then
		assert(isActive == nil)
		return self._studioSettings["Select Color"]
	end
	if isActive then
		return self._studioSettings["Active Color"]
	else
		return self._studioSettings["Select Color"]
	end
end

function DraggerContext:getCameraCFrame()
	return self._workspace.CurrentCamera.CFrame
end

function DraggerContext:getMouseUnitRay()
	return self._mouse.UnitRay
end

function DraggerContext:getHandleScale(focusPoint)
	local distance = (self:getCameraCFrame().Position - focusPoint).Magnitude
	local angleFrac = math.sin(math.rad(self._workspace.CurrentCamera.FieldOfView))
	return angleFrac * distance * HANDLE_SCALE_FACTOR
end

function DraggerContext:getMouseRay()
	local unitRay = self:getMouseUnitRay()
	return Ray.new(unitRay.Origin, unitRay.Direction * RAYCAST_DIRECTION_SCALE)
end

function DraggerContext:getMouseLocation()
	return self._userInputService:GetMouseLocation()
end

function DraggerContext:viewportPointToRay(mouseLocation)
	return self._workspace.CurrentCamera:ViewportPointToRay(mouseLocation.X, mouseLocation.Y)
end

function DraggerContext:setMouseIcon(icon)
	self._mouse.Icon = icon
end

function DraggerContext:getSelectionWrapper()
	return SelectionWrapper
end

-- Are non-anchored parts in the world currently being physically simulated?
-- (i.e. are they moving around of thier own accord)
function DraggerContext:isSimulating()
	return self._runService:IsRunning()
end

function DraggerContext:isAltKeyDown()
	return self._userInputService:IsKeyDown(Enum.KeyCode.LeftAlt) or
		self._userInputService:IsKeyDown(Enum.KeyCode.RightAlt)
end

function DraggerContext:isCtrlKeyDown()
	return self._userInputService:IsKeyDown(Enum.KeyCode.LeftControl) or
		self._userInputService:IsKeyDown(Enum.KeyCode.RightControl)
end

function DraggerContext:isShiftKeyDown()
	return self._userInputService:IsKeyDown(Enum.KeyCode.LeftShift) or
		self._userInputService:IsKeyDown(Enum.KeyCode.RightShift)
end

function DraggerContext:shouldExtendSelection()
	return self:isCtrlKeyDown() or self:isShiftKeyDown()
end

function DraggerContext:getGridSize()
	return self._studioService.GridSize
end

function DraggerContext:getRotateIncrement()
	return self._studioService.RotateIncrement
end

function DraggerContext:getAnalytics()
	return Analytics
end

function DraggerContext:gizmoRaycast(origin, direction, raycastParams)
	return self._studioService:GizmoRaycast(origin, direction, raycastParams)
end

function DraggerContext:setInsertPoint(location)
	setInsertPoint(location)
end

function DraggerContext:shouldShowActiveInstanceHighlight()
	assert(getEngineFeatureActiveInstanceHighlight())
	return self._studioService.ShowActiveInstanceHighlight
end

function DraggerContext:shouldAlignDraggedObjects()
	return self._studioService.AlignDraggedObjects
end

return DraggerContext