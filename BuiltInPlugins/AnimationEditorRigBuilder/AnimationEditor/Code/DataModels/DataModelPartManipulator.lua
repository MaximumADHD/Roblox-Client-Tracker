-- singleton

local FastFlags = require(script.Parent.Parent.FastFlags)

local PartManipulator = {}

PartManipulator.InWorldSpace = false
PartManipulator.IsRotating = true
PartManipulator.ManipulatorChangeEvent = nil
PartManipulator.CurrentPositionManipulation = nil
PartManipulator.CurrentRotationManipulation = nil
PartManipulator.ManipulationBeginEvent = nil
PartManipulator.ManipulationEndEvent = nil

PartManipulator.rotateStep = 0
PartManipulator.moveStep = 0

PartManipulator.HoverBoxes = {}
PartManipulator.SelectBox = nil
PartManipulator.DragHandles = nil
PartManipulator.ProxyPart = nil
PartManipulator.RotateHandles = nil
PartManipulator.Hover = nil
PartManipulator.StartTransformCF = {}
PartManipulator.ProxyWeld = nil
PartManipulator.PartCFrameAtTransformStart = {}
PartManipulator.RotateUndoRegistered = false
PartManipulator.TranslateUndoRegistered = false
PartManipulator.MouseUpEventConnect = nil
PartManipulator.MouseTargeterHalt = nil
PartManipulator.TagName = "ForManipulation"

function PartManipulator:findAnimatedPart(clickedPart, partsChecked)
	partsChecked = partsChecked or {}
	
	if self.Paths.HelperFunctionsTable:hasValue(partsChecked, clickedPart) then return end
	table.insert(partsChecked, clickedPart)
	
	if self.Paths.DataModelRig.partToItemMap[clickedPart] then
		return self.Paths.DataModelRig.partToItemMap[clickedPart]
	end
	
	for _, part in pairs(clickedPart:GetConnectedParts()) do
		local animatedPart = self:findAnimatedPart(part, partsChecked)
		if animatedPart then
			return animatedPart
		end
	end
	
	return nil
end

function getAnimatedChunk(self, part)
	local parts = {part}
	
	local function recurse(parent)
		if not parent then return end
		
		for _, child in pairs(parent:GetConnectedParts()) do
			if (not self.Paths.DataModelRig.partToItemMap[child]) and (not self.Paths.HelperFunctionsTable:hasValue(parts, child)) then
				table.insert(parts, child)
				recurse(child)
			end
		end
	end
	recurse(part)
	
	return parts
end

local function initTargeter(self)
	self.MouseTargeterHalt = self.Paths.HelperFunctionsIteration:tick(function()
		if FastFlags:isIKModeFlagOn() and self.Paths.DataModelSession:inputLocked() then
			return
		end
		local part = self:mouseRaycast({})
		if part then
			part = self:findAnimatedPart(part)
			if part then
				part = part.Item
			end
		end
		
		if not FastFlags:isIKModeFlagOn() or not self:isCurrentlyManipulating() then
			if part ~= self.Hover then
				self.Hover = part
				
				--clear old hover boxes
				for _, hoverBox in pairs(self.HoverBoxes) do
					hoverBox:Destroy()
				end
				
				--make new hover boxes
				local model = Instance.new("Model")
				for _, chunkPart in pairs(getAnimatedChunk(self, part)) do
					local newPart = chunkPart:Clone()
					if newPart then
						newPart.Parent = model
						
						if self.Paths.DataModelRig.partToItemMap[chunkPart] then
							model.PrimaryPart = newPart
						end
					end
				end
				local selectionPart = self.Paths.HelperFunctionsCreation:make("Part", {
					Name = 'SelectionPart',
					Transparency = 1,
					--
					Anchored = true,
					CanCollide = false,
					Archivable = false,
					CFrame = model:GetModelCFrame(),
					Parent = workspace,
				})

				--this can't be in the table since form factor must be set first
				selectionPart.Size = model:GetExtentsSize()

				if FastFlags:isEnableRigSwitchingOn() then
					self.Paths.HelperFunctionsCreation:tag(selectionPart, self.TagName)
				end
				
				table.insert(self.HoverBoxes, selectionPart)
				
				local hoverBox = self.Paths.HelperFunctionsCreation:make("SelectionBox", {
					Name = "HoverBox2",
					LineThickness = 0.02,
					Archivable = false,
					Adornee = selectionPart,
					Parent = game:GetService("CoreGui"),
					Color = self.Paths.UtilityScriptColors.BrickColorMagenta,
				})
				table.insert(self.HoverBoxes, hoverBox)
			end
		else
			if not self.Paths.HelperFunctionsTable:isNilOrEmpty(self.HoverBoxes) then
				for _, hoverBox in pairs(self.HoverBoxes) do
					hoverBox:Destroy()
				end
			end
		end
	end)
	
	self.Connections:add(self.Paths.Globals.Plugin:GetMouse().Button1Down:connect(function()	
		if FastFlags:isEnableRigSwitchingOn() then
			if not self.Paths.DataModelRig:hasRig(self.Paths) then return end
		else
			if not self.Paths.DataModelRig:getItem() then return end
		end
			local part, point, normal = nil
			if FastFlags:isEnableRigSwitchingOn() then
				local ignoreList = {}
				table.insert(ignoreList, self.ProxyPart)
				for part in pairs(self.Paths.DataModelRig:getItems()) do
					table.insert(ignoreList, part)
				end
				part, point, normal = self:mouseRaycast(ignoreList)
			else
 				part, point, normal = self:mouseRaycast({self.ProxyPart, self.Paths.DataModelRig:getItem().Item})
			end
			if (part ~= nil) then
				local dataItem = self:findAnimatedPart(part)
				local active = false
				if dataItem then
					active = self.Paths.DataModelRig.partInclude[dataItem.Item.Name]
				end

				if FastFlags:isEnableRigSwitchingOn() then
					if (active and not self.Paths.DataModelRig:isARootPart(dataItem.Item)) then
						if (dataItem ~= nil) then
							self.Paths.DataModelSession:selectDataItem(dataItem)
						else
							self.Paths.DataModelSession:selectNone()
						end
					else
						self.Paths.DataModelSession:selectNone()
					end
				else
					if (active and dataItem ~= self.Paths.DataModelRig:getItem()) then
						if (dataItem ~= nil) then
							self.Paths.DataModelSession:selectDataItem(dataItem)
						else
							self.Paths.DataModelSession:selectNone()
						end
					else
						self.Paths.DataModelSession:selectNone()
					end
				end
			else
				self.Paths.DataModelSession:selectNone()
			end
		return false
	end))
end
	
function PartManipulator:mouseRaycast(ignoreList)
	local ray = workspace.CurrentCamera:ViewportPointToRay(self.Paths.InputMouse:getViewportXY().X, self.Paths.InputMouse:getViewportXY().Y)
	ray = Ray.new(ray.Origin, ray.Direction.Unit * 512)
		
	local part, point, normal

	while true do
		part, point, normal = workspace:FindPartOnRayWithIgnoreList(ray, ignoreList)
		
		if part then
			local isTransparent = (part.Transparency > 0.9 and self.Paths.DataModelPreferences:getValue(self.Paths.DataModelPreferences.Type.TransparentSelect) == false) or part.Name == "SelectionPart"
			local isHumanoidRootPart = part.Name == "HumanoidRootPart"
			
			--calculate whether it's an active part or not
			local isDisabled = false
			local animatedPart = self:findAnimatedPart(part)
			if animatedPart then
				isDisabled = not self.Paths.DataModelRig.partInclude[animatedPart.Name]		
			end
			
			local shouldSkip = isTransparent or isHumanoidRootPart or isDisabled
			
			if shouldSkip then
				table.insert(ignoreList, part)
			else
				break
			end
		else
			break
		end
	end
	
	return part, point, normal
end

function PartManipulator:displayHandles()
	if nil ~= self.Paths.DataModelSession:getSelectedDataItem() then
		self.ProxyPart.Size = Vector3.new(0.2, 0.2, 0.2)
		self:updateProxyPart()

		if (self.IsRotating) then
			self.RotateHandles.Adornee = self.ProxyPart
			self.DragHandles:changeAdornee(nil)
		else
			self.RotateHandles.Adornee = nil
			self.DragHandles:changeAdornee(self.ProxyPart)
		end
	end
end

local function weldBetween(a, b, parent)
    local weld = Instance.new("Motor6D")
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = CFrame.new()
    weld.C1 = b.CFrame:inverse()*a.CFrame
    weld.Parent = parent
    return weld;
end

function PartManipulator:updateProxyPart()
	local item = self.Paths.DataModelSession:getSelectedDataItem()
	if nil ~= item then						
		--Get 2nd largest dimension of the part!
		local sx = item.Item.Size.X
		local sy = item.Item.Size.Y
		local sz = item.Item.Size.Z
		--local dim = math.min(math.max(sx,sy), math.max(sx,sz))
		local dim = math.min(math.min(sx,sy), math.min(sx,sz))
		self.ProxyPart.Size = Vector3.new(dim, dim, dim)
		
		if (self.ProxyWeld ~= nil) then
			self.ProxyWeld:Destroy()
		end
					
		if FastFlags:isIKModeFlagOn() and self.Paths.DataModelIKManipulator.IsIKModeActive and (not FastFlags:isEnableRigSwitchingOn() or self.Paths.UtilityScriptHumanIK:isR15BodyPart(item.Item)) then
			self.Paths.DataModelIKManipulator:updateProxyPartForIK(self.ProxyPart, item, self:calculateCFrameForHandles(item))
		else
			self.ProxyPart.CFrame = self:calculateCFrameForHandles(item)
		end
		self.ProxyWeld = weldBetween(item.Item, self.ProxyPart, self.ProxyPart)
	end
end
	
function PartManipulator:toggleHandles()		
	self:setRotationHandles(not self.IsRotating)
end
		
function PartManipulator:setRotationHandles(setRot)
	if nil ~= self.Paths.DataModelSession:getSelectedDataItem() and self.IsRotating ~= setRot then
		self.IsRotating = setRot
		self:displayHandles()
		self.ManipulatorChangeEvent:fire()
	end
end

function PartManipulator:toggleTransformSpace()
	self.InWorldSpace = not self.InWorldSpace
	self.ManipulatorChangeEvent:fire()
	self:updateProxyPart()
end

function PartManipulator:toggleStep()
	if nil ~= self.Paths.DataModelSession:getSelectedDataItem() then
		if (self.IsRotating) then
			if (self.rotateStep == 0) then
				self.rotateStep = 10
			elseif (self.rotateStep == 10) then
				self.rotateStep = 45
			else
				self.rotateStep = 0
			end
		else
			if (self.moveStep == 0) then
				self.moveStep = 0.2
			elseif (self.moveStep == 0.2) then
				self.moveStep = 1
			else
				self.moveStep = 0
			end
		end
		self.ManipulatorChangeEvent:fire()
		self:displayHandles()
	end
end

function PartManipulator:resetSelection()
	for part, box in pairs(self.SelectBoxes) do
		box.Adornee = nil
	end

	self.DragHandles:changeAdornee(nil)
	self.RotateHandles.Adornee = nil
end

function PartManipulator:setSelection()
	if FastFlags:isIKModeFlagOn() and self.Paths.DataModelSession:inputLocked() then
		return
	end

	if FastFlags:isEnableRigSwitchingOn() then
		self:resetSelection()
	else
		for part, box in pairs(self.SelectBoxes) do
			box.Adornee = nil
		end
	end
	if not FastFlags:isIKModeFlagOn() or not self.Paths.DataModelIKManipulator.IsIKModeActive then
		for _, dataItem in pairs(self.Paths.DataModelSession:getSelectedDataItems()) do
			local selectBox = self:getOrCreateSelectBox(dataItem.Item)
			selectBox.Adornee = dataItem.Item
		end
	end

	if not FastFlags:isEnableRigSwitchingOn() then
		self.DragHandles:changeAdornee(nil)
		self.RotateHandles.Adornee = nil
	end
	self.ProxyPart.Parent = nil
	if not self.Paths.HelperFunctionsTable:isNilOrEmpty(self.Paths.DataModelSession:getSelectedDataItems()) then
		self:displayHandles()
	end
end

local function onMouseRotate(self, axisRaw, relAngle, item)
	self:setCurrentRotationManipulation(axisRaw, relAngle)
	
	local rotateStepRad = (self.rotateStep / 180 ) * math.pi
	if rotateStepRad > 0 then
		relAngle =  math.floor((relAngle / rotateStepRad) + 0.5) * rotateStepRad
	end

	local part = item.Item
	local kfd = self.Paths.DataModelKeyframes:getCurrentKeyframeData(part, true, true)

	local transform = CFrame.fromAxisAngle(Vector3.FromAxis(axisRaw), -relAngle)
	
	if not self.RotateUndoRegistered then
		self.RotateUndoRegistered = true			
		self.Paths.ActionEditClip:execute(self.Paths, self.Paths.ActionEditClip.ActionType.editRotate)
	end
	
	if FastFlags:isIKModeFlagOn() and self.Paths.DataModelIKManipulator.IsIKModeActive and (not FastFlags:isEnableRigSwitchingOn() or self.Paths.UtilityScriptHumanIK:isR15BodyPart(part)) then
		self.Paths.DataModelIKManipulator:ikSolveForRotationManipulation(axisRaw, relAngle, part, self.PartCFrameAtTransformStart[part], self.InWorldSpace)
	else
		if self.InWorldSpace then
			transform = CFrame.fromAxisAngle(Vector3.FromAxis(axisRaw), relAngle)
			
			local pivotCFrame = item.Motor6D.Part0.CFrame * item.Motor6D.C0
			local pivotPosition = nil
			pivotPosition = (self.PartCFrameAtTransformStart[part] * item.OriginC1).p
			local delta = pivotPosition - pivotCFrame.p
			pivotCFrame = pivotCFrame + delta
			
			local relativeToPivot = nil
			relativeToPivot = pivotCFrame:toObjectSpace(self.PartCFrameAtTransformStart[part])
			local newPartCFrame = (transform * (pivotCFrame - pivotCFrame.p) + pivotCFrame.p):toWorldSpace(relativeToPivot)
			
			local newMotorC1 = self.Paths.HelperFunctionsMath:orthoNormalizeCFrame(newPartCFrame:inverse() * (pivotCFrame - delta))
			kfd.CFrame = newMotorC1 * item.OriginC1:inverse()
			item.Motor6D.C1 = newMotorC1
		else
			local partcf = nil
			partcf = item.Motor6D.Part0.CFrame * item.Motor6D.C0 * self.StartTransformCF[part] * transform:inverse() * item.OriginC1:inverse()
			local cf = partcf:inverse() * item.Motor6D.Part0.CFrame * item.Motor6D.C0 * item.OriginC1:inverse()

			local ETrans = CFrame.new(item.OriginC1.p)

			kfd.CFrame = (ETrans * transform * ETrans:inverse() * self.StartTransformCF[part])
			item.Motor6D.C1 = (kfd.CFrame*item.OriginC1)
		end
	end

	self:updateProxyPart()
	
	if not FastFlags:isOptimizationsEnabledOn() then
		if self.Paths.HelperFunctionsTable:containsOneKeyOnly(self.Paths.DataModelSession:getSelectedDataItems()) then
			self.Paths.DataModelKeyframes.PoseTransformChangedEvent:fire()
		end
	end
end

local function onMouseRotateAll(self, axisRaw, relAngle)
	for _, dataItem in pairs(self.Paths.DataModelSession:getSelectedDataItems()) do
		onMouseRotate(self, axisRaw, relAngle, dataItem)
	end
end

local function onMouseEndRotate(self)		
	if nil ~= self.MouseUpEventConnect then	
		if FastFlags:isIKModeFlagOn() and self.Paths.DataModelIKManipulator.IsIKModeActive then
			self.Paths.DataModelIKManipulator:endIKManipulation()
		end

		if FastFlags:isOptimizationsEnabledOn() or self.Paths.HelperFunctionsTable:containsMultipleKeys(self.Paths.DataModelSession:getSelectedDataItems()) then
			self.Paths.DataModelKeyframes.PoseTransformChangedEvent:fire()
		end
		self:endCurrentManipulation()
		
		self.Paths.DataModelPlayState:recreateAnimationTrack()

		self:updateProxyPart() -- must be after endCurrentManipulation() call
		self.MouseUpEventConnect:disconnect()
		self.MouseUpEventConnect = nil
	end
end

local function onMouseBeginRotate(self, item)
	self:startCurrentManipulation()
	-- there is a bug where if you release the mouse while it is not over the handle, the mouse up event will not happen, so
	-- this is here to capture the mouse up event, even if it happens while the mouse is not over the handle
	self.MouseUpEventConnect = self.Paths.Globals.Plugin:GetMouse().Button1Up:connect(function()
		onMouseEndRotate(self)
	end)
			
	local allMotorC1s = self.Paths.DataModelRig:calculateAllMotorC1s()

	local part = item.Item

	if FastFlags:isIKModeFlagOn() and self.Paths.DataModelIKManipulator.IsIKModeActive and (not FastFlags:isEnableRigSwitchingOn() or self.Paths.UtilityScriptHumanIK:isR15BodyPart(part)) then
		self.Paths.DataModelIKManipulator:configureIkChain(part)
	end

	local kfd = nil
	if not FastFlags:isIKModeFlagOn() or not self.Paths.DataModelIKManipulator.IsIKModeActive or (FastFlags:isEnableRigSwitchingOn() and not self.Paths.UtilityScriptHumanIK:isR15BodyPart(part)) then
		kfd = self.Paths.DataModelKeyframes:getCurrentKeyframeData(part, false)
	end

	self.Paths.DataModelPlayState:pauseAndStop()
	self.Paths.DataModelRig:setAllMotorC1s(allMotorC1s)

	if not FastFlags:isIKModeFlagOn() or not self.Paths.DataModelIKManipulator.IsIKModeActive or (FastFlags:isEnableRigSwitchingOn() and not self.Paths.UtilityScriptHumanIK:isR15BodyPart(part)) then
		self.Paths.DataModelSession:addPoseToSelectedKeyframes(kfd.Time, kfd:getDataItem(), false)
		self.StartTransformCF[part] = kfd.CFrame
	end

	self.PartCFrameAtTransformStart[part] = part.CFrame
	
	self.RotateUndoRegistered = false
end

local function onMouseBeginRotateAll(self)
	local dataItems = self.Paths.DataModelSession:getSelectedDataItems()
	self.Paths.DataModelSession:selectNone()
	for _, dataItem in pairs(dataItems) do
		onMouseBeginRotate(self, dataItem)
	end
	self:updateManipulationSelection()
end

local function connectRotationCallbacks(self)
	self.Connections:add(self.RotateHandles.MouseDrag:connect(function(axisRaw, relAngle) 
		if not FastFlags:isIKModeFlagOn() or not self.Paths.DataModelIKManipulator.IsIKModeActive then
			onMouseRotateAll(self, axisRaw, relAngle)
		else
			onMouseRotate(self, axisRaw, relAngle, self.Paths.DataModelSession:getSelectedDataItem())
		end
	end))
	
	self.Connections:add(self.RotateHandles.MouseButton1Down:connect(function() 
		if FastFlags:isIKModeFlagOn() and self.Paths.DataModelIKManipulator.IsIKModeActive then
			self.Paths.DataModelSession:selectOnlyOneDataItem()
			onMouseBeginRotate(self, self.Paths.DataModelSession:getSelectedDataItem())
		else
			onMouseBeginRotateAll(self)
		end
	end))
	
	self.Connections:add(self.RotateHandles.MouseButton1Up:connect(function() 
		onMouseEndRotate(self) 
	end))
end

function PartManipulator:rotatePart(axis, relativeAngleRadians, dataItem)
	onMouseBeginRotate(self, dataItem)
	onMouseRotate(self, axis, relativeAngleRadians, dataItem)
	onMouseEndRotate(self)
end

local function onMouseBeginDrag(self, item) 
	self:startCurrentManipulation()
	
	local allMotorC1s = self.Paths.DataModelRig:calculateAllMotorC1s()
	
	local part = item.Item

	local kfd = nil

	if FastFlags:isIKModeFlagOn() and self.Paths.DataModelIKManipulator.IsIKModeActive and (not FastFlags:isEnableRigSwitchingOn() or self.Paths.UtilityScriptHumanIK:isR15BodyPart(part)) then
		self.Paths.DataModelIKManipulator:configureIkChain(part)
	end

	if not FastFlags:isIKModeFlagOn() or not self.Paths.DataModelIKManipulator.IsIKModeActive  or (FastFlags:isEnableRigSwitchingOn() and not self.Paths.UtilityScriptHumanIK:isR15BodyPart(part)) then
		kfd = self.Paths.DataModelKeyframes:getCurrentKeyframeData(part, false)
	end

	self.Paths.DataModelPlayState:pauseAndStop()
	self.Paths.DataModelRig:setAllMotorC1s(allMotorC1s)

	if not FastFlags:isIKModeFlagOn() or not self.Paths.DataModelIKManipulator.IsIKModeActive or (FastFlags:isEnableRigSwitchingOn() and not self.Paths.UtilityScriptHumanIK:isR15BodyPart(part)) then
		self.Paths.DataModelSession:addPoseToSelectedKeyframes(kfd.Time, kfd:getDataItem(), false)
		self.StartTransformCF[part] = kfd.CFrame
	end

	self.PartCFrameAtTransformStart[part] = part.CFrame
	
	self.TranslateUndoRegistered = false		
end

local function onMouseBeginDragAll(self)
	local dataItems = self.Paths.DataModelSession:getSelectedDataItems()
	self.Paths.DataModelSession:selectNone()
	for _, dataItem in pairs(dataItems) do
		onMouseBeginDrag(self, dataItem)
	end
	self:updateManipulationSelection()
end
	
local function onMouseDrag(self, face, dist, item)
	self:setCurrentPositionManipulation(face, dist)

	if self.moveStep > 0 then
		dist = math.floor(dist / self.moveStep) * self.moveStep
	end
	
	local part = item.Item
	if FastFlags:isIKModeFlagOn() and self.Paths.DataModelIKManipulator.IsIKModeActive and (not FastFlags:isEnableRigSwitchingOn() or self.Paths.UtilityScriptHumanIK:isR15BodyPart(part)) then
		self.Paths.DataModelIKManipulator:ikSolveForTranslationManipulation(face, dist, part, self.PartCFrameAtTransformStart[part], self.InWorldSpace)
	else
		local kfd = self.Paths.DataModelKeyframes:getCurrentKeyframeData(part, true, true)
		
		if not self.TranslateUndoRegistered then
			self.TranslateUndoRegistered = true		
			self.Paths.ActionEditClip:execute(self.Paths, self.Paths.ActionEditClip.ActionType.editTransform)
		end
		
		if self.InWorldSpace then
			local translation = Vector3.FromNormalId(face) * dist
			
			local newPartCFrame = nil
			newPartCFrame = self.PartCFrameAtTransformStart[part] + translation

			local pivotCFrame = item.Motor6D.Part0.CFrame * item.Motor6D.C0
			
			local newMotorC1 = self.Paths.HelperFunctionsMath:orthoNormalizeCFrame(newPartCFrame:inverse() * pivotCFrame)
			kfd.CFrame = (newMotorC1 * item.OriginC1:inverse())
			item.Motor6D.C1 = (newMotorC1)
		else
			local axis = Vector3.FromNormalId(face)

			kfd.CFrame = (CFrame.new(-axis*dist)*self.StartTransformCF[part])
			item.Motor6D.C1 = (kfd.CFrame*item.OriginC1)
		end
	end

	self:updateProxyPart()

	if not FastFlags:isOptimizationsEnabledOn() then
		if self.Paths.HelperFunctionsTable:containsOneKeyOnly(self.Paths.DataModelSession:getSelectedDataItems()) then
			self.Paths.DataModelKeyframes.PoseTransformChangedEvent:fire()
		end
	end
end

local function onMouseDragAll(self, face, dist)
	for _, dataItem in pairs(self.Paths.DataModelSession:getSelectedDataItems()) do
		onMouseDrag(self, face, dist, dataItem)
	end
end

local function onMouseEndDrag(self)
	if FastFlags:isIKModeFlagOn() and self.Paths.DataModelIKManipulator.IsIKModeActive then
		self.Paths.DataModelIKManipulator:endIKManipulation()
	end

	if FastFlags:isOptimizationsEnabledOn() or self.Paths.HelperFunctionsTable:containsMultipleKeys(self.Paths.DataModelSession:getSelectedDataItems()) then
		self.Paths.DataModelKeyframes.PoseTransformChangedEvent:fire()
	end
	self:endCurrentManipulation()	
	self.Paths.DataModelPlayState:recreateAnimationTrack()
end

function PartManipulator:movePart(face, dist, dataItem)
	onMouseBeginDrag(self, dataItem)
	onMouseDrag(self, face, dist, dataItem)
	onMouseEndDrag(self)
end

function PartManipulator:updateManipulationSelection()
	if FastFlags:isOptimizationsEnabledOn() then
		self.Paths.DataModelKeyframes:fireChangedEvent()
	else
		self.Paths.DataModelKeyframes.ChangedEvent:fire((self.Paths.DataModelKeyframes.keyframeList))
	end
	self.Paths.DataModelSession.SelectedChangeEvent:fire()
end

local function connectMoveCallbacks(self)
	local MouseDrag = self.DragHandles.DragEvent
	local MouseButtonDown = self.DragHandles.DragBeginEvent
	local MouseButtonUp = self.DragHandles.DragEndEvent
	self.Connections:add(MouseDrag:connect(function(face, dist) 
		if not FastFlags:isIKModeFlagOn() or not self.Paths.DataModelIKManipulator.IsIKModeActive then
			onMouseDragAll(self, face, dist)
		else
			onMouseDrag(self, face, dist, self.Paths.DataModelSession:getSelectedDataItem()) 
		end
	end))
	
	self.Connections:add(MouseButtonDown:connect(function() 
		if FastFlags:isIKModeFlagOn() and self.Paths.DataModelIKManipulator.IsIKModeActive then
			self.Paths.DataModelSession:selectOnlyOneDataItem()
			onMouseBeginDrag(self, self.Paths.DataModelSession:getSelectedDataItem())
		else
			onMouseBeginDragAll(self)
		end
	end))
	
	self.Connections:add(MouseButtonUp:connect(function() 
		onMouseEndDrag(self) 
	end))
end

function PartManipulator:getOrCreateSelectBox(part)
	if not self.SelectBoxes[part] then
		local selectBox = self.Paths.HelperFunctionsCreation:make('SelectionBox', {
			Name = "SelectBox",
			Color = self.Paths.UtilityScriptColors.BrickColorDeepOrange,
			Transparency = 0,
			LineThickness = 0.02,
			Parent = self.Paths.Globals.CoreGUI,
			Archivable = false,
		})
		self.SelectBoxes[part] = selectBox
		return selectBox
	else
		return self.SelectBoxes[part]
	end
end

function PartManipulator:makeHandles()	
	self.SelectBoxes = {}

	self.DragHandles = self.Paths.UtilityScriptCustomDragHandles:new(self.Paths, self)

	self.ProxyPart = self.Paths.HelperFunctionsCreation:make('Part', {
		Size = Vector3.new(0.8,0.8,0.8),
		Name = 'ProxyPart',
		Shape = 'Ball',
		Archivable = false,
		Parent = workspace,
		BrickColor = BrickColor.new(23),
		Anchored = false,
		CanCollide = false,
		Transparency = 0.5,
		TopSurface = 'Smooth',
		BottomSurface = 'Smooth',
	})
	if FastFlags:isEnableRigSwitchingOn() then
		self.Paths.HelperFunctionsCreation:tag(self.ProxyPart, self.TagName)
	end
	
	self.RotateHandles = self.Paths.HelperFunctionsCreation:make('ArcHandles', {
		Color = BrickColor.new(23),
		Parent = self.Paths.Globals.CoreGUI,
		Archivable = false,
	})
end

function PartManipulator:init(Paths)
	self.Paths = Paths
	self.ManipulatorChangeEvent = Paths.UtilityScriptEvent:new()
	PartManipulator.ManipulationBeginEvent = Paths.UtilityScriptEvent:new()
	PartManipulator.ManipulationEndEvent = Paths.UtilityScriptEvent:new()

	self.IsRotating = true
	self.rotateStep = 0
	self.moveStep = 0
	
	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)
	self.Connections:add(self.Paths.InputKeyboard.KeyPressedEvent:connect(function(theKey)
		if not Paths.InputKeyboard:isKeyCtrlOrCmdDown() then
			if Enum.KeyCode.R == theKey then
				self:toggleHandles()	
			elseif Enum.KeyCode.T == theKey then
				self:toggleStep()
			elseif Enum.KeyCode.Y == theKey then
				self:toggleTransformSpace()
			end
		end
	end))		

	self.Connections:add(Paths.DataModelSession.SelectedChangeEvent:connect(function()
		self:setSelection()
	end))

	self:makeHandles()
	connectRotationCallbacks(self)
	connectMoveCallbacks(self)		
	initTargeter(self)
end

function PartManipulator:terminate()
	self.Connections:terminate()
	self.Connections = nil

	for _, selectBox in pairs(self.SelectBoxes) do
		selectBox.Adornee = nil
		selectBox.Parent = nil
		selectBox = nil
	end
	self.SelectBoxes = {}

	if nil ~= self.DragHandles then
		self.DragHandles:terminate()
	end
	
	if nil ~= self.RotateHandles then
		self.RotateHandles.Adornee = nil
		self.RotateHandles.Parent = nil						
		self.RotateHandles = nil
	end
	
	if nil ~= self.ProxyPart then
		self.ProxyPart:Destroy()				
		self.ProxyPart = nil
	end
	
	for _, hoverBox in pairs(self.HoverBoxes) do
		hoverBox:Destroy()
	end
	self.HoverBoxes = {}
						
	PartManipulator.ManipulationEndEvent = nil	
	PartManipulator.ManipulationBeginEvent = nil	
	PartManipulator.ManipulatorChangeEvent = nil
	
	if self.MouseTargeterHalt ~= nil then
		self.MouseTargeterHalt()
		self.MouseTargeterHalt = nil
	end
	
	if nil ~= self.MouseUpEventConnect then
		self.MouseUpEventConnect:disconnect()
		self.MouseUpEventConnect = nil
	end
		
	PartManipulator.Paths = nil
													
	PartManipulator.InWorldSpace = false
	PartManipulator.IsRotating = true
	PartManipulator.CurrentPositionManipulation = nil
	PartManipulator.CurrentRotationManipulation = nil
	
	PartManipulator.Hover = nil
	PartManipulator.StartTransformCF = {}
	PartManipulator.ProxyWeld = nil
	PartManipulator.PartCFrameAtTransformStart = {}
	PartManipulator.RotateUndoRegistered = false
	PartManipulator.TranslateUndoRegistered = false
end

function PartManipulator:areHandlesRotate()
	return self.IsRotating
end

local function startCurrentRotationManipulation(self)
	self.CurrentRotationManipulation = Vector3.new(0, 0, 0)
end

local function startCurrentPositionManipulation(self)
	self.CurrentPositionManipulation = Vector3.new(0, 0, 0)
end

function PartManipulator:startCurrentManipulation()
	if self:areHandlesRotate() then
		startCurrentRotationManipulation(self)
	else
		startCurrentPositionManipulation(self)
	end
	PartManipulator.ManipulationBeginEvent:fire()
end

function PartManipulator:endCurrentManipulation()
	self.CurrentPositionManipulation = nil
	self.CurrentRotationManipulation = nil
	PartManipulator.ManipulationEndEvent:fire()
end

function PartManipulator:setCurrentRotationManipulation(axisId, amtRadians)
	local x = axisId == Enum.Axis.X and amtRadians or 0
	local y = axisId == Enum.Axis.Y and amtRadians or 0
	local z = axisId == Enum.Axis.Z and amtRadians or 0
	self.CurrentRotationManipulation = Vector3.new(x, y, z)
end

function PartManipulator:setCurrentPositionManipulation(normalId, amt)
	local x = (normalId == Enum.NormalId.Right or normalId == Enum.NormalId.Left) and amt or 0
	local y = (normalId == Enum.NormalId.Top or normalId == Enum.NormalId.Bottom) and amt or 0
	local z = (normalId == Enum.NormalId.Front or normalId == Enum.NormalId.Back) and amt or 0
	self.CurrentPositionManipulation = Vector3.new(x, y, z)
end

local function isItemCurrentlyBeingManipulated(self, dataItem)
	return self.Paths.DataModelSession:isCurrentlySelectedDataItem(dataItem) and self:isCurrentlyManipulating()
end

function PartManipulator:isCurrentlyManipulating()
	return nil ~= self.CurrentPositionManipulation or nil ~= self.CurrentRotationManipulation
end

function PartManipulator:calculateCFrameForHandles(dataItem)
	local pivotCFrame = nil
	if FastFlags:isIKModeFlagOn() then
		pivotCFrame = self.Paths.DataModelIKManipulator:getPivotCFrame(dataItem)
		if not pivotCFrame then
			pivotCFrame = (dataItem.Motor6D.Part0.CFrame * dataItem.Motor6D.C0) -- world space pivot
		end
	else
		pivotCFrame = (dataItem.Motor6D.Part0.CFrame * dataItem.Motor6D.C0) -- world space pivot
	end
	local pivotInOriginPartSpace = (pivotCFrame * dataItem.OriginC1:inverse()):toObjectSpace(pivotCFrame) -- put pivot in the local space of the originalCl
	local point = dataItem.Item.CFrame:toWorldSpace(pivotInOriginPartSpace).p -- transform pivot into world space with the dataItem.CFrame which transforms the OriginCl
	if self.InWorldSpace then
		if self.IsRotating and isItemCurrentlyBeingManipulated(self, dataItem) then
			return CFrame.fromEulerAnglesXYZ(self.CurrentRotationManipulation.X, self.CurrentRotationManipulation.Y, self.CurrentRotationManipulation.Z) + point
		end
		return CFrame.new(point)
	end

	return dataItem.Item.CFrame + (point - dataItem.Item.CFrame.p)
end

function PartManipulator:calculateCFrameForNumericalInput(dataItem)
	if self.InWorldSpace then
		local pivotCFrame = nil
		if FastFlags:isIKModeFlagOn() then
			pivotCFrame = self.Paths.DataModelIKManipulator:getPivotCFrame(dataItem)
			if not pivotCFrame then
				pivotCFrame = (dataItem.Motor6D.Part0.CFrame * dataItem.Motor6D.C0) -- world space pivot
			end
		else
			pivotCFrame = (dataItem.Motor6D.Part0.CFrame * dataItem.Motor6D.C0) -- world space pivot
		end
		local pivotInOriginPartSpace = (pivotCFrame * dataItem.OriginC1:inverse()):toObjectSpace(pivotCFrame)
		local point = dataItem.Item.CFrame:toWorldSpace(pivotInOriginPartSpace).p
		point = point * Vector3.new(1, 1, -1)
	
		local itemCFrameRotationOnly = dataItem.Item.CFrame - dataItem.Item.CFrame.p	
		-- world space rotation, world space position		
		return itemCFrameRotationOnly + point
	else
		if isItemCurrentlyBeingManipulated(self, dataItem) then
			if self.CurrentPositionManipulation then
				return CFrame.new(self.CurrentPositionManipulation)		
			end
			-- CurrentRotationManipulation must have a value if CurrentPositionManipulation didn't
			return CFrame.fromEulerAnglesXYZ(self.CurrentRotationManipulation.X, self.CurrentRotationManipulation.Y, self.CurrentRotationManipulation.Z)
		end
		return CFrame.new()
	end			
end

function PartManipulator:isWorldSpace()
	return self.InWorldSpace
end

return PartManipulator
