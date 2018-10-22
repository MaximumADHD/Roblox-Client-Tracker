local IKManipulator = {}

IKManipulator.IKManipulationEvent = nil
IKManipulator.IsIKModeActiveEvent = nil
IKManipulator.IKModeChangedEvent = nil

IKManipulator.IsIKModeActive = false
IKManipulator.IKModes = {
	FullBody = {},
	BodyPart = {},
}

IKManipulator.IKParts = {}
IKManipulator.IKMode = nil
IKManipulator.IKHoverBoxes = {}
IKManipulator.TranslationStiffness = 0.1
IKManipulator.RotationStiffness = 0.1

function IKManipulator:init(Paths)
	self.Paths = Paths
	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)
	self.Connections:add(Paths.DataModelSession.SelectedChangeEvent:connect(function()
		if self.IsIKModeActive then
			self:setSelection()
		end
	end))

	self.IKManipulationEvent = Paths.UtilityScriptEvent:new()
	self.IsIKModeActiveEvent = Paths.UtilityScriptEvent:new()
	self.IKModeChangedEvent = Paths.UtilityScriptEvent:new()
	self.IKMode = self.IKModes.BodyPart
	self.IKParts = {}
end

function IKManipulator:terminate()
	self.Connections:terminate()
	self.Connections = nil

	if self.IsIKModeActive then
		self:setIsIKModeActive(false)
	end

	self.IKManipulationEvent = nil
	self.IsIKModeActiveEvent = nil
	self.IKModeChangedEvent = nil

	self.IKParts = {}
	self.Paths = nil
end

function IKManipulator:addIKPart(dataItem)
	self.IKParts[dataItem] = dataItem.Item
end

function IKManipulator:removeIKPart(dataItem)
	self.IKParts[dataItem] = nil
end

function IKManipulator:isPartInIKChain(dataItem)
	return self.IKParts[dataItem] ~= nil
end

function IKManipulator:clearIKParts()
	self.IKParts = {}
end

function IKManipulator:setSelection()
	local dataItem = self.Paths.DataModelSession:getSelectedDataItem()
	if dataItem then
		self:determineIKChain(dataItem.Item)
	else
		self:resetHoverBoxes()
	end
end

function IKManipulator:resetHoverBoxes()
	self:clearIKParts()
	for _, hoverBox in pairs(self.IKHoverBoxes) do
		hoverBox:Destroy()
	end
	self.IKManipulationEvent:fire()
end

function IKManipulator:getRotationComponents(cframe)
	return select(4, cframe:GetComponents())
end

function IKManipulator:ikSolveForTranslationManipulation(faceID, dist, part, partCFrame, worldSpace)
	local translated = nil
	local axis = Vector3.FromNormalId(faceID)
	if worldSpace then
		translated = CFrame.new(axis * dist) * partCFrame
	else
		local translation = axis * dist
		local initialRotation = CFrame.new(0, 0, 0, self:getRotationComponents(partCFrame))
		translated = partCFrame + (initialRotation * translation)
	end
	self.Paths.Globals.PhysicsService:ikSolve(part, translated, self.TranslationStiffness, self.RotationStiffness)
end

local function rotateAboutObjectOrigin(rotation, partCFrame)
	local translation = CFrame.new(partCFrame.p)
	return translation * rotation * translation:inverse() * partCFrame
end

function IKManipulator:ikSolveForRotationManipulation(axisID, angle, part, partCFrame, worldSpace)
	local axis = Vector3.FromAxis(axisID)
	local rotation = CFrame.fromAxisAngle(axis, angle)
	if not worldSpace then
		local initialRotation = CFrame.new(0, 0, 0, self:getRotationComponents(partCFrame))
		local rotatedAxis = initialRotation * axis
		rotation = CFrame.fromAxisAngle(rotatedAxis, angle)
	end
	self.Paths.Globals.PhysicsService:ikSolve(part, rotateAboutObjectOrigin(rotation, partCFrame), self.TranslationStiffness, self.RotationStiffness)
end

function IKManipulator:setIsIKModeActive(enabled)
	self.IsIKModeActive = enabled
	self.Paths.DataModelSession:selectNone()
	if self.IsIKModeActive then
		self.Paths.UtilityScriptHumanIK:setupConstraints(self.Paths)
		self.IsRotating = false
		for name, dataItem in pairs(self.Paths.DataModelRig.partListByName) do
			self:addIKPart(dataItem)
		end
		self:makeIKHoverBoxes(nil)
		self:clearIKParts()
	else
		self.Paths.UtilityScriptHumanIK:removeIKConstraints(self.Paths)
		self:resetHoverBoxes()
	end
	self.IsIKModeActiveEvent:fire(self.IsIKModeActive)
end

function IKManipulator:setIKMode(ikMode)
	self.IKMode = ikMode
	local dataItem = self.Paths.DataModelSession:getSelectedDataItem()
	if dataItem then
		self:determineIKChain(dataItem.Item)
	end
	self.IKModeChangedEvent:fire(ikMode)
end

function IKManipulator:isFullBodyMode()
	return self.IKMode == self.IKModes.FullBody
end

function IKManipulator:isBodyPartMode()
	return self.IKMode == self.IKModes.BodyPart
end

function IKManipulator:requestCancelConstrainJoints()
	self.CancelRequested = true
end

function IKManipulator:wasConstrainJointsCancellationRequested()
	if self.CancelRequested then
		self.CancelRequested = false
		return true
	end

	return false
end

local function makeNewMotor6D(name, part0, part1, c0)
	local motor6D = Instance.new("Motor6D")
	motor6D.Name = name
	motor6D.Part0 = part0
	motor6D.Part1 = part1
	motor6D.C0 = c0
	motor6D.C1 = part1.CFrame:inverse() * part0.CFrame * c0
	motor6D.Parent = part1
	return motor6D
end

function IKManipulator:endIKManipulation()
	self.Paths.ActionEditClip:execute(self.Paths, self.Paths.ActionEditClip.ActionType.createKeyframe)

	if self.ProxyRoot then
		self.ProxyRoot:Destroy()
	end

	for name, dataItem in pairs(self.Paths.DataModelRig.partListByName) do
		local constraint = self.Paths.UtilityScriptHumanIK:getConstraintForPart(dataItem.Item)
		if constraint then
			constraint.Enabled = false
		end

		if not self.Paths.DataModelRig:isRootPart(dataItem) then
			dataItem.Item.Anchored = false
		end

		if self.Motor6DInfo[dataItem] then
			dataItem.Motor6D = makeNewMotor6D(self.Motor6DInfo[dataItem].Name, self.Paths.UtilityScriptHumanIK.PartToParentMap[dataItem.Item],  dataItem.Item, self.Motor6DInfo[dataItem].C0)
			if self:isPartInIKChain(dataItem) then
				local kfd = self.Paths.DataModelKeyframes:getCurrentKeyframeData(dataItem.Item, false, false)
				kfd.CFrame = dataItem.Motor6D.C1 * dataItem.OriginC1:inverse()
				self:removeIKPart(dataItem)
			end
		end
	end

	self.Paths.UtilityScriptHumanIK:resetAttachmentAxes(self.Paths)
	self.Paths.DataModelPartManipulator:updateManipulationSelection()
end

local function isParentPartPinned(self, dataItem)
	if self.Paths.DataModelRig:isRootPart(dataItem) then
		return false
	elseif self.Paths.DataModelRig:getPartPinned(dataItem.Name) or dataItem.Item.Anchored then
		return true
	else
		if dataItem.Parent then
			return isParentPartPinned(self, dataItem.Parent)
		else
			return false
		end
	end
end

local function addIKBodyParts(self, dataItem, startOfChain)
	if self.Paths.DataModelRig:isRootPart(dataItem) or (not startOfChain and (self.Paths.DataModelRig:getPartPinned(dataItem.Name) or dataItem.Item.Anchored)) then
		return
	else
		self:addIKPart(dataItem)
		if dataItem.Parent then
			addIKBodyParts(self, dataItem.Parent, false)
		else
			return
		end
	end
end

local function configureIKOnLimb(self, dataItem)
	dataItem.Item.Anchored = true
	self:replaceMotor6DWithConstraint(dataItem)
end

local function addBodyPartIKJoints(self, part)
	local dataItem = self.Paths.DataModelRig:getDataItem(part.Name)
	addIKBodyParts(self, dataItem, true)
	if self.Paths.DataModelRig:isATorso(dataItem) then
		addIKBodyParts(self, self.Paths.DataModelRig:getLeftFoot(), true)
		addIKBodyParts(self, self.Paths.DataModelRig:getRightFoot(), true)
	else
		self:removeIKPart(self.Paths.DataModelRig:getUpperTorso())
		self:removeIKPart(self.Paths.DataModelRig:getLowerTorso())
	end
end

local function addFullBodyIKJoints(self, part)
	local dataItem = self.Paths.DataModelRig:getDataItem(part.Name)
	addIKBodyParts(self, dataItem, true)
	if not isParentPartPinned(self, dataItem.Parent) then
		for partName, pinned in pairs(self.Paths.DataModelRig.partPinned) do
			if pinned and partName ~= part.Name then
				addIKBodyParts(self, self.Paths.DataModelRig:getDataItem(partName), true)
			end
		end
	end
end

function IKManipulator:determineIKChain(part)
	self:clearIKParts()
	if self.IKMode == self.IKModes.FullBody then
		addFullBodyIKJoints(self, part)
	else
		addBodyPartIKJoints(self, part)
	end
	self:makeIKHoverBoxes(part)
	IKManipulator.IKManipulationEvent:fire()
end

local function configureIKOnLegs(self)
	configureIKOnLimb(self, self.Paths.DataModelRig:getLeftFoot())
	configureIKOnLimb(self, self.Paths.DataModelRig:getRightFoot())
end

local function anchorParentTorso(self, dataItem)
	if self.Paths.DataModelRig:isATorso(dataItem) then
		dataItem.Item.Anchored = true
	else
		anchorParentTorso(self, dataItem.Parent)
	end
end

local function configureJointsBodyPartMode(self, part)
	local dataItem = self.Paths.DataModelRig:getDataItem(part.Name)
	if self.Paths.DataModelRig:isATorso(dataItem) then
		configureIKOnLegs(self)
	else
		anchorParentTorso(self, dataItem)
	end

	self:replaceMotor6DWithConstraint(dataItem)
end

local function configureJointsFullBodyMode(self, part)
	self:replaceMotor6DWithConstraint(self.Paths.DataModelRig:getDataItem(part.Name))
	for partName, pinned in pairs(self.Paths.DataModelRig.partPinned) do
		if pinned and partName ~= part.Name then
			configureIKOnLimb(self, self.Paths.DataModelRig:getDataItem(partName))
		end
	end
end

function IKManipulator:configureIkChain(part)
	self.ProxyRoot = nil
	part.Anchored = false
	self.Motor6DInfo = {}

	if self.IKMode == self.IKModes.FullBody then
		configureJointsFullBodyMode(self, part)
	else
		configureJointsBodyPartMode(self, part)
	end

	for dataItem, _ in pairs(self.Motor6DInfo) do
		local constraint = self.Paths.UtilityScriptHumanIK:getConstraintForPart(dataItem.Item)
		if constraint then
			self.Paths.UtilityScriptHumanIK:fixAttachmentAxes(dataItem.Item)
			constraint.Enabled = true
		end
	end
end

function IKManipulator:replaceMotor6DWithConstraint(dataItem)
	if dataItem then
		if dataItem.Motor6D then
			self.Motor6DInfo[dataItem] = {
				C0 = dataItem.Motor6D.C0,
				Part0CF = dataItem.Motor6D.Part0.CFrame,
				Name = dataItem.Motor6D.Name,
			}

			if not self.Paths.DataModelRig:isLowerTorso(dataItem) then
				local prevCF = dataItem.Item.CFrame
				dataItem.Motor6D:Destroy()
				dataItem.Motor6D = nil
				dataItem.Item.CFrame = prevCF
			else
				if self.ProxyRoot == nil then
					self.ProxyRoot = Instance.new("Part", self.Paths.DataModelRig:getItem().Item.Parent)
					self.ProxyRoot.Transparency = 1
					self.ProxyRoot.Locked = true
					self.ProxyRoot.CFrame = self.Paths.DataModelRig:getHumanoidRootPart().Item.CFrame
					dataItem.Motor6D.Part0 = self.ProxyRoot
				end
			end
		end

		if self.Paths.DataModelRig:isLowerTorso(dataItem) then
			return
		elseif dataItem.Parent then
			self:replaceMotor6DWithConstraint(dataItem.Parent)
		end
	end
end

function IKManipulator:makeIKHoverBoxes(mainPart)
	--clear old hover boxes
	for _, hoverBox in pairs(self.IKHoverBoxes) do
		hoverBox:Destroy()
	end

	for name, dataItem in pairs(self.Paths.DataModelRig.partListByName) do
		local part = dataItem.Item
		if self:isPartInIKChain(dataItem) and not part.Anchored then
			local hoverBox = self.Paths.HelperFunctionsCreation:make("SelectionBox", {
				Name = "HoverBox2",
				LineThickness = 0.02,
				Archivable = false,
				Adornee = part,
				Color = self.Paths.UtilityScriptColors.BrickColorMagenta,
				Transparency = (mainPart == nil or part == mainPart) and 0 or 0.85,
				Parent = self.Paths.Globals.CoreGUI,
			})
			table.insert(self.IKHoverBoxes, hoverBox)
		end
	end
end

function IKManipulator:getPivotCFrame(dataItem)
	if self.Motor6DInfo and self.Motor6DInfo[dataItem] then
		return self.Motor6DInfo[dataItem].Part0CF * self.Motor6DInfo[dataItem].C0
	end
end

local function updateProxyPartCFrameWithLockedPosition(self, proxyPart, newProxyPartCFrame)
	proxyPart.CFrame = CFrame.new(proxyPart.CFrame.x, proxyPart.CFrame.y, proxyPart.CFrame.z, self:getRotationComponents(newProxyPartCFrame))
end

local function updateProxyPartCFrameWithLockedRotation(self, proxyPart, newProxyPartCFrame)
	proxyPart.CFrame = CFrame.new(newProxyPartCFrame.x, newProxyPartCFrame.y, newProxyPartCFrame.z, self:getRotationComponents(proxyPart.CFrame))
end

function IKManipulator:updateProxyPartForIK(proxyPart, item, newProxyPartCFrame)
	if not self.Paths.DataModelPartManipulator:isCurrentlyManipulating() then
		proxyPart.CFrame = newProxyPartCFrame
	else
		if not self.Paths.DataModelPartManipulator.IsRotating then
			updateProxyPartCFrameWithLockedRotation(self, proxyPart, newProxyPartCFrame)
		else
			updateProxyPartCFrameWithLockedPosition(self, proxyPart, newProxyPartCFrame)
		end
	end
end

return IKManipulator
