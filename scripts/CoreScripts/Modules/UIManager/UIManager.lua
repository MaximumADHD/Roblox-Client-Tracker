-- DEPRECATED: Use the packgified UIManager in vr-spatial-ui module instead.
local VRService = game:GetService("VRService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui.RobloxGui
local VRHub = require(RobloxGui.Modules.VR.VRHub)
local UIManagerRoot = script.Parent
local Constants = require(UIManagerRoot.Constants)
local Utils = require(UIManagerRoot.Utils)
local PanelType = Constants.PanelType
local SpatialUIType = Constants.SpatialUIType
local createCompatPanel = require(script.Parent.createCompatPanel)
local createUIGroupDragBar = require(script.Parent.createUIGroupDragBar)
local DragBar = require(UIManagerRoot.DragBar)
local Players = game:GetService("Players")
local FIntUIResetDelayInSec = game:DefineFastInt("FIntUIResetDelayInSec", 3)
local FFlagFixHeadSacleAdjustment = game:DefineFastFlag("FixHeadSacleAdjustment", false)

export type UIGroupPositionProps = {
	-- The rotation of the UI group relative to the head, used to update the CFrame of the UI group
	-- when we need to adjust for the new head CFrame
	-- This is updated when we change the CFrame of the UI group relative to the head
	uiGroupHeadRotation: CFrame,
	-- The offset of the UI group relative to the camera. Used to update position when camera moves
	-- This is updated when we need to update the UI group position based on the current head CFrame
	uiGroupCameraOffSet: CFrame,
	-- The default rotation of the UI group relative to the head
	-- Use to reposition the UI group to default location
	defaultGroupHeadRotation: CFrame,
}

export type UIGroupStruct = {
	positionProps: UIGroupPositionProps,
	uiContainerSize: Vector2,
	draggable: boolean,
	dragBar: DragBar.DragBarClassType?,
	dragBarOffset: CFrame?,
	headScale: number,
}

local REPOSITION_DEVIATION_ANGLE = 100

local ROBLOX_UI_GROUP_ANGLE = CFrame.Angles(math.rad(-18), math.rad(10), math.rad(0))

local METER_TO_STUD_FACTOR = 1 / 0.3

local ROBLOX_UI_GROUP_POSITION =
	CFrame.new(-0.14 * METER_TO_STUD_FACTOR, -0.24 * METER_TO_STUD_FACTOR, -0.64 * METER_TO_STUD_FACTOR)

local MAIN_UI_GROUP_SIZE = Vector2.new(0.8 * METER_TO_STUD_FACTOR, 0.56 * METER_TO_STUD_FACTOR)

local ROBLOX_UI_GROUP_HEAD_ROTATION = ROBLOX_UI_GROUP_POSITION * ROBLOX_UI_GROUP_ANGLE

local function getZAxisStablizedCFrame(cframe: CFrame)
	local oX, oY, _ = cframe:ToOrientation()
	return CFrame.new(cframe.Position) * CFrame.fromOrientation(oX, oY, 0)
end

local function getCameraOffsetFromHeadRotationWithZAxisStabl(rotation)
	local cameraCFrame = (workspace.CurrentCamera :: Camera).CFrame
	local localHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)
	local headCFrame = cameraCFrame * localHeadCF
	local finalCFrame = headCFrame:ToWorldSpace(rotation)

	return cameraCFrame:ToObjectSpace(getZAxisStablizedCFrame(finalCFrame))
end

local function getPanelPart(panelStruct: Constants.PanelStruct): Part?
	if panelStruct.uiType == SpatialUIType.SpatialUI or panelStruct.uiType == SpatialUIType.SpatialUIRoact then
		local panelObject = panelStruct.panelObject :: SurfaceGui
		return panelObject.Adornee :: Part
	elseif panelStruct.uiType == SpatialUIType.SpatialUIPartOnly then
		return panelStruct.panelObject :: Part
	else
		return nil
	end
end

local function panelExistsInSpace(panelStruct: Constants.PanelStruct)
	return panelStruct ~= nil and panelStruct.panelObject ~= nil and panelStruct.uiType ~= SpatialUIType.ScreenUI
end

local UIManager = {}

local instance = nil :: UIManagerClassType?

export type UIManagerClassType = typeof(setmetatable(
	{} :: {
		currentMouseTarget: BasePart?,
		uiGroupsOutOfViewTimeStamp: number?,
		uiElements: { [Constants.PanelTypeValue]: Constants.PanelStruct },
		uiGroups: { [Constants.SpatialUIGroupTypeValue]: UIGroupStruct },
	},
	UIManager
))

UIManager.__index = UIManager

function UIManager.removeRoactPanel(self: UIManagerClassType, panelType: Constants.PanelTypeValue)
	self.uiElements[panelType] = nil
end

function UIManager.registerRoactPanel(
	self: UIManagerClassType,
	panelType: Constants.PanelTypeValue,
	panelStruct: Constants.PanelStruct
)
	self.uiElements[panelType] = panelStruct

	-- Make sure the UI is scaled correctly to current scale
	self:rescaleUIForCurrentHeadScale()
	self:updateUIGroupsForCurHeadCFrame()
end

function UIManager.createUI(self: UIManagerClassType, props: Constants.PanelCreationProps): Constants.CompatPanel?
	local panelStruct = createCompatPanel(props)
	if panelStruct == nil then
		return nil
	end
	self.uiElements[props.panelType] = panelStruct
	self:updatePanelForCurHeadCFrame(props.panelType)
	return {
		type = panelStruct.uiType,
		panelObject = panelStruct.panelObject,
	}
end

function UIManager.updateUIGroupForCurHeadCFrame(
	self: UIManagerClassType,
	uiGroupType: Constants.SpatialUIGroupTypeValue,
	providedDisableDragBarReposition: boolean?
)
	local uiGroupStruct: UIGroupStruct = self.uiGroups[uiGroupType]
	local newCameraOffSet =
		getCameraOffsetFromHeadRotationWithZAxisStabl(uiGroupStruct.positionProps.uiGroupHeadRotation)
	uiGroupStruct.positionProps.uiGroupCameraOffSet = newCameraOffSet
	local disableDragBarReposition = providedDisableDragBarReposition or false
	if uiGroupStruct.draggable and uiGroupStruct.dragBar and not disableDragBarReposition then
		local dragBar = uiGroupStruct.dragBar :: DragBar.DragBarClassType
		--- Bottom placement of dragbar
		dragBar:setCFrame(
			(workspace.CurrentCamera :: Camera).CFrame
				* newCameraOffSet:ToWorldSpace(uiGroupStruct.dragBarOffset :: CFrame)
		)
	end
	self:updatePanelsInUIGroupForCurHeadCFrame(uiGroupType)
end

function UIManager.updateUIGroupsForCurHeadCFrame(self: UIManagerClassType)
	for uiGroupType, _ in pairs(self.uiGroups) do
		self:updateUIGroupForCurHeadCFrame(uiGroupType :: Constants.SpatialUIGroupTypeValue)
	end
end

function UIManager.updatePanelForCurHeadCFrame(self: UIManagerClassType, panelType: Constants.PanelTypeValue)
	local panelStruct: Constants.PanelStruct = self.uiElements[panelType]
	if
		panelExistsInSpace(panelStruct)
		and panelStruct.panelPositionProps
		and panelStruct.panelPositionProps.cameraFixedPanelProp
	then
		local panelPositionProps = panelStruct.panelPositionProps :: Constants.PanelPositionProps
		local cameraFixedPanelProp = panelPositionProps.cameraFixedPanelProp :: Constants.CameraFixedUIObjectProps
		local newCameraOffSet = getCameraOffsetFromHeadRotationWithZAxisStabl(
			self.uiGroups[panelPositionProps.uiGroup].positionProps.uiGroupHeadRotation
		)
		local panelPart = getPanelPart(panelStruct)
		if panelPart == nil then
			return
		end
		panelPart = panelPart :: Part
		panelPart.CFrame = (workspace.CurrentCamera :: Camera).CFrame * newCameraOffSet
		panelPart.CFrame = panelPart.CFrame:ToWorldSpace(cameraFixedPanelProp.uiGroupElementOffset)
	end
end

function UIManager.updatePanelsInUIGroupForCurHeadCFrame(
	self: UIManagerClassType,
	uiGroupType: Constants.SpatialUIGroupTypeValue
)
	for panelType, panelStruct: Constants.PanelStruct in pairs(self.uiElements) do
		if panelStruct.panelPositionProps then
			local panelPositionProps = panelStruct.panelPositionProps :: Constants.PanelPositionProps
			if panelPositionProps.uiGroup == uiGroupType then
				self:updatePanelForCurHeadCFrame(panelType :: Constants.PanelTypeValue)
			end
		end
	end
end

function UIManager.updatePanelsForCurHeadCFrame(self: UIManagerClassType)
	for panelType, _ in pairs(self.uiElements) do
		self:updatePanelForCurHeadCFrame(panelType :: Constants.PanelTypeValue)
	end
end

function UIManager.dragUiGroupStart(self: UIManagerClassType, uiGroupType)
	if self.uiGroups[uiGroupType].draggable == false then
		return
	end
	local dragBar = self.uiGroups[uiGroupType].dragBar :: DragBar.DragBarClassType
	local uiGroupCFrame = (workspace.CurrentCamera :: Camera).CFrame:ToWorldSpace(
		self.uiGroups[uiGroupType].positionProps.uiGroupCameraOffSet
	)
	local uiGroupDragBarOffSet = dragBar:getCFrame():ToObjectSpace(uiGroupCFrame)
	dragBar:startDrag(uiGroupDragBarOffSet)
end

function UIManager.dragUiGroupEnd(self: UIManagerClassType, uiGroupType)
	if self.uiGroups[uiGroupType].draggable == false then
		return
	end
	local dragBar = self.uiGroups[uiGroupType].dragBar :: DragBar.DragBarClassType
	dragBar:dragEnd()
end

function UIManager.dragUiGroupStep(self: UIManagerClassType, uiGroupType)
	if self.uiGroups[uiGroupType].draggable == false then
		return
	end
	local dragBar = self.uiGroups[uiGroupType].dragBar :: DragBar.DragBarClassType

	local stablizedCameraCF = (workspace.CurrentCamera :: Camera).CFrame
	local localHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)
	local headCFrame = stablizedCameraCF * localHeadCF

	-- Force the Y rotation so that UI would face camera (180 rotation since UI is attached to back of part)
	local currentDragBarCFrame = dragBar:getCFrame()
	-- Adjust the head aiming position to be slightly lower than the actual head position
	local adjustedHeadAimingPosition =
		Vector3.new(headCFrame.Position.X, headCFrame.Position.Y - 0.2 * METER_TO_STUD_FACTOR, headCFrame.Position.Z)
	local headFacingXRotation, headFacingYRotation, _ = (CFrame.lookAt(
		currentDragBarCFrame.Position,
		adjustedHeadAimingPosition
	) * CFrame.Angles(0, math.rad(180), 0)):ToEulerAnglesXYZ()
	local _, _, newDragBarAngleZ = currentDragBarCFrame:ToEulerAnglesXYZ()
	dragBar:setCFrame(
		getZAxisStablizedCFrame(
			CFrame.new(currentDragBarCFrame.Position)
				* CFrame.Angles(headFacingXRotation, headFacingYRotation, newDragBarAngleZ)
		)
	)

	local newUiGroupCFrame = dragBar:getCFrame():ToWorldSpace(dragBar.uiGroupOffSet :: CFrame)
	self.uiGroups[uiGroupType].positionProps.uiGroupHeadRotation = headCFrame:ToObjectSpace(newUiGroupCFrame)
	self:updateUIGroupForCurHeadCFrame(uiGroupType, true --[[disableDragBarReposition]])
end

function UIManager.setUpUiGroups(self: UIManagerClassType)
	-- Set up the ui groups
	local mainUiGroupDragBar = createUIGroupDragBar({
		name = "MainUIGroup",
		dragFunction = function(player, ray, viewFrame, vrInputFrame, isModeSwitchKeyDown)
			self:dragUiGroupStep(Constants.SpatialUIGroupType.MainUIGroup)
		end,
		dragStartFunction = function(player, ray, hiFrame, hitFrame, clickedPart, vrInputFrame, isModeSwitchKeyDown)
			self:dragUiGroupStart(Constants.SpatialUIGroupType.MainUIGroup)
		end,
		dragEndFunction = function(player)
			self:dragUiGroupEnd(Constants.SpatialUIGroupType.MainUIGroup)
		end,
	})
	local mainUiGroupStruct: UIGroupStruct = {
		positionProps = {
			uiGroupHeadRotation = ROBLOX_UI_GROUP_HEAD_ROTATION,
			uiGroupCameraOffSet = getCameraOffsetFromHeadRotationWithZAxisStabl(ROBLOX_UI_GROUP_HEAD_ROTATION),
			defaultGroupHeadRotation = ROBLOX_UI_GROUP_HEAD_ROTATION,
		},
		uiContainerSize = MAIN_UI_GROUP_SIZE,
		draggable = true,
		dragBar = mainUiGroupDragBar,
		dragBarOffset = CFrame.new(
			0,
			Constants.ROACT_PANEL_UIGROUP_ELEMENT_OFFSET_MAP[PanelType.BottomBar].Y
				- 0.075
				- 0.02 * METER_TO_STUD_FACTOR,
			0
		),
		headScale = 1,
	}
	self.uiGroups[Constants.SpatialUIGroupType.MainUIGroup] = mainUiGroupStruct
end

function UIManager.step(self: UIManagerClassType)
	if not VRService.VREnabled then
		return
	end

	for panelType, panelStruct: Constants.PanelStruct in pairs(self.uiElements) do
		-- Use Main Roblox GUI for angle detection
		if panelExistsInSpace(panelStruct) and panelType :: Constants.PanelTypeValue == PanelType.RobloxGui then
			local robloxGuiPart: Part
			if panelStruct.uiType == SpatialUIType.SpatialUI then
				local panelObject = panelStruct.panelObject :: SurfaceGui
				robloxGuiPart = panelObject.Adornee :: Part
			else
				robloxGuiPart = panelStruct.panelObject :: Part
			end
			local pX, pY, _ = robloxGuiPart.CFrame:ToOrientation()
			local camera = workspace.CurrentCamera :: Camera
			local cameraCF = camera.CFrame
			-- Remove head rotation
			local hX, hY, _ = (cameraCF * VRService:GetUserCFrame(Enum.UserCFrame.Head)):ToOrientation()
			if
				math.abs(pY - hY) > math.rad(REPOSITION_DEVIATION_ANGLE)
				or math.abs(pX - hX) > math.rad(REPOSITION_DEVIATION_ANGLE)
			then
				if self.uiGroupsOutOfViewTimeStamp then
					if os.clock() - self.uiGroupsOutOfViewTimeStamp >= FIntUIResetDelayInSec then
						self:updateUIGroupsForCurHeadCFrame()
						self.uiGroupsOutOfViewTimeStamp = nil
					end
				else
					self.uiGroupsOutOfViewTimeStamp = os.clock()
				end
			else
				self.uiGroupsOutOfViewTimeStamp = nil
			end
		end
	end
end

function UIManager.onShowTopBarChanged(self: UIManagerClassType)
	if not VRService.VREnabled then
		return
	end
	if VRHub.ShowTopBar then
		for _, uiGroup: UIGroupStruct in pairs(self.uiGroups) do
			if uiGroup.draggable and uiGroup.dragBar then
				uiGroup.dragBar:show()
			end
		end
		for _, panelStruct: Constants.PanelStruct in pairs(self.uiElements) do
			if panelStruct.uiType == SpatialUIType.SpatialUI or panelStruct.uiType == SpatialUIType.SpatialUIRoact then
				local panelObject = panelStruct.panelObject :: SurfaceGui
				panelObject.Enabled = true
				local panelPart = panelObject.Adornee :: Part
				panelPart.Parent = workspace
			elseif panelStruct.uiType == SpatialUIType.SpatialUIPartOnly then
				local panelObject = panelStruct.panelObject :: Part
				panelObject.Parent = workspace
			end
		end
	else
		for _, uiGroup: UIGroupStruct in pairs(self.uiGroups) do
			if uiGroup.draggable and uiGroup.dragBar then
				uiGroup.dragBar:hide()
			end
		end
		for _, panelStruct: Constants.PanelStruct in pairs(self.uiElements) do
			if panelStruct.uiType == SpatialUIType.SpatialUI or panelStruct.uiType == SpatialUIType.SpatialUIRoact then
				local panelObject = panelStruct.panelObject :: SurfaceGui
				panelObject.Enabled = false
				local panelPart = panelObject.Adornee :: Part
				panelPart.Parent = nil
			elseif panelStruct.uiType == SpatialUIType.SpatialUIPartOnly then
				local panelObject = panelStruct.panelObject :: Part
				panelObject.Parent = nil
			end
		end
	end
end

function UIManager.updateUIGroupsForCurCamera(self: UIManagerClassType)
	if not VRService.VREnabled then
		return
	end
	for _, uiGroupStruct: UIGroupStruct in pairs(self.uiGroups) do
		if uiGroupStruct.draggable then
			local dragBar = uiGroupStruct.dragBar :: DragBar.DragBarClassType
			dragBar:setCFrame(
				(workspace.CurrentCamera :: Camera).CFrame
					* uiGroupStruct.positionProps.uiGroupCameraOffSet:ToWorldSpace(
						uiGroupStruct.dragBarOffset :: CFrame
					)
			)
		end
	end
	for _, panelStruct: Constants.PanelStruct in pairs(self.uiElements) do
		if
			panelExistsInSpace(panelStruct)
			and panelStruct.panelPositionProps
			and panelStruct.panelPositionProps.cameraFixedPanelProp
		then
			local panelPositionProps = panelStruct.panelPositionProps :: Constants.PanelPositionProps
			local cameraFixedPanelProp = panelPositionProps.cameraFixedPanelProp :: Constants.CameraFixedUIObjectProps
			local panelPart = getPanelPart(panelStruct)
			if panelPart == nil then
				return
			end
			panelPart = panelPart :: Part
			panelPart.CFrame = (workspace.CurrentCamera :: Camera).CFrame
				* self.uiGroups[panelPositionProps.uiGroup].positionProps.uiGroupCameraOffSet:ToWorldSpace(
					cameraFixedPanelProp.uiGroupElementOffset
				)
		end
	end
end

function UIManager.onMouseTargetChanged(self: UIManagerClassType, target: BasePart?)
	for _, uiGroupStruct: UIGroupStruct in pairs(self.uiGroups) do
		if not uiGroupStruct.draggable then
			-- do nothing
		elseif uiGroupStruct.dragBar and (uiGroupStruct.dragBar :: DragBar.DragBarClassType).part == target then
			uiGroupStruct.dragBar:startHover()
		elseif uiGroupStruct.dragBar and (uiGroupStruct.dragBar :: DragBar.DragBarClassType).part :: Part ~= target then
			uiGroupStruct.dragBar:hoverEnd()
		end
	end
end

function UIManager.rescaleUIForCurrentHeadScale(self: UIManagerClassType)
	local newHeadScale = (workspace.CurrentCamera :: Camera).HeadScale

	for _, uiGroupStruct: UIGroupStruct in pairs(self.uiGroups) do
		local uiGroupScalingFactor = newHeadScale / uiGroupStruct.headScale
		uiGroupStruct.positionProps.uiGroupHeadRotation =
			Utils.rescaleCFramePosition(uiGroupStruct.positionProps.uiGroupHeadRotation, uiGroupScalingFactor)
		uiGroupStruct.positionProps.uiGroupCameraOffSet =
			Utils.rescaleCFramePosition(uiGroupStruct.positionProps.uiGroupCameraOffSet, uiGroupScalingFactor)
		uiGroupStruct.positionProps.defaultGroupHeadRotation =
			Utils.rescaleCFramePosition(uiGroupStruct.positionProps.defaultGroupHeadRotation, uiGroupScalingFactor)
		if uiGroupStruct.draggable then
			uiGroupStruct.dragBarOffset =
				Utils.rescaleCFramePosition(uiGroupStruct.dragBarOffset :: CFrame, uiGroupScalingFactor)
			local dragBar = uiGroupStruct.dragBar :: DragBar.DragBarClassType
			dragBar:rescale(uiGroupScalingFactor)
		end
		uiGroupStruct.headScale = newHeadScale
	end
	for _, uiElement: Constants.PanelStruct in pairs(self.uiElements) do
		local uiElementScalingFactor = newHeadScale / uiElement.headScale
		-- React resets the part size to the property value at each re-render so we would delegate the headscale refresh
		if uiElement.uiType ~= SpatialUIType.SpatialUIRoact then
			local panelPart = getPanelPart(uiElement)
			if panelPart ~= nil then
				(panelPart :: Part).Size = panelPart.Size * uiElementScalingFactor
			end
		end
		local panelPositionProps = uiElement.panelPositionProps :: Constants.PanelPositionProps
		if panelPositionProps and panelPositionProps.cameraFixedPanelProp then
			(panelPositionProps.cameraFixedPanelProp :: Constants.CameraFixedUIObjectProps).uiGroupElementOffset =
				Utils.rescaleCFramePosition(
					(panelPositionProps.cameraFixedPanelProp :: Constants.CameraFixedUIObjectProps).uiGroupElementOffset,
					uiElementScalingFactor
				)
		end
		uiElement.headScale = newHeadScale
	end
end

function UIManager.new()
	local self = {
		currentMouseTarget = nil :: BasePart?,
		uiGroupsOutOfViewTimeStamp = nil :: number?,
		uiElements = {} :: { [Constants.PanelTypeValue]: Constants.PanelStruct },
		uiGroups = {} :: { [Constants.SpatialUIGroupTypeValue]: UIGroupStruct },
	}

	setmetatable(self, UIManager)

	--- Immediately initialize the UI groups after creation
	self:setUpUiGroups()
	self:rescaleUIForCurrentHeadScale()
	if FFlagFixHeadSacleAdjustment then
		self:updateUIGroupsForCurCamera()
	else
		self:updateUIGroupsForCurHeadCFrame()
	end

	RunService:BindToRenderStep("UIManagerRenderStep", Enum.RenderPriority.Last.Value, function()
		self:step()
	end)

	VRHub.ShowTopBarChanged.Event:connect(function()
		self:onShowTopBarChanged()
	end)

	local camera = workspace.CurrentCamera :: Camera
	camera:GetPropertyChangedSignal("CFrame"):Connect(function()
		self:updateUIGroupsForCurCamera()
	end)

	camera:GetPropertyChangedSignal("HeadScale"):Connect(function()
		self:rescaleUIForCurrentHeadScale()
		self:updateUIGroupsForCurHeadCFrame()
	end)

	local Player = Players.LocalPlayer :: Player
	local mouse = Player:GetMouse()
	if mouse then
		mouse.Move:Connect(function()
			local Player = Players.LocalPlayer :: Player
			local mouse = Player:GetMouse()
			if mouse.Target ~= self.currentMouseTarget then
				self:onMouseTargetChanged(mouse.Target)
				self.currentMouseTarget = mouse.Target
			end
		end)
	end

	return self
end

function UIManager.getInstance(): UIManagerClassType
	if instance == nil then
		instance = UIManager.new()
	end
	return instance :: UIManagerClassType
end

return UIManager
