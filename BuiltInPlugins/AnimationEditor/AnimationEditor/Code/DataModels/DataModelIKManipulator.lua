local IKManipulator = {}

local FastFlags = require(script.Parent.Parent.FastFlags)

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
	if not FastFlags:isEnableRigSwitchingOn() or self.Paths.UtilityScriptHumanIK:isR15BodyPart(dataItem.Item) then
		self.IKParts[dataItem] = dataItem.Item
	end
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

function IKManipulator:isIKModeEnabled()
	return self.IsIKModeActive and
	      (self.IKMode == self.IKModes.FullBody or
	       self.IKMode == self.IKModes.BodyPart)
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

	for name, dataItem in pairs(self.Paths.DataModelRig.partListByName) do
		local constraint = self.Paths.UtilityScriptHumanIK:getConstraintForPart(dataItem.Item)
		if constraint then
			constraint.Enabled = false
		end

		if not self.Paths.DataModelRig:isRootPart(dataItem) then
			dataItem.Item.Anchored = false
		end

		if self.Motor6DInfo and self.Motor6DInfo[dataItem] then
			dataItem.Motor6D = makeNewMotor6D(self.Motor6DInfo[dataItem].Name, self.Paths.UtilityScriptHumanIK.PartToParentMap[dataItem.Item],  dataItem.Item, self.Motor6DInfo[dataItem].C0)
			if self:isPartInIKChain(dataItem) and self.Paths.DataModelRig:getPartInclude(dataItem.Name) then
				local kfd = self.Paths.DataModelKeyframes:getCurrentKeyframeData(dataItem.Item, false, false)
				kfd.CFrame = dataItem.Motor6D.C1 * dataItem.OriginC1:inverse()
				self:removeIKPart(dataItem)
				if FastFlags:isHipHeightPopFixOn() and self.Paths.DataModelRig:isLowerTorso(dataItem) then
					kfd.CFrame = self.Paths.DataModelPartManipulator:scaleCFrameToHipHeight(kfd.CFrame, dataItem.OriginC1, true)
				end
			end
		end
	end

	self.Paths.UtilityScriptHumanIK:resetAttachmentAxes(self.Paths)
	self.Paths.DataModelPartManipulator:updateManipulationSelection()

	self:resetWeldConstraints()
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

local function configureIKOnLimb(self, dataItem, notRecursive)
	self:replaceMotor6DWithConstraint(dataItem, notRecursive)
	dataItem.Item.Anchored = true
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

local configureIKOnLegs = nil
local anchorParentTorso = nil
if not FastFlags:isFixIKBodyPartModeOn() then
	configureIKOnLegs = function(self)
		configureIKOnLimb(self, self.Paths.DataModelRig:getLeftFoot())
		configureIKOnLimb(self, self.Paths.DataModelRig:getRightFoot())
	end

	anchorParentTorso = function(self, dataItem)
		if self.Paths.DataModelRig:isATorso(dataItem) then
			dataItem.Item.Anchored = true
		else
			anchorParentTorso(self, dataItem.Parent)
		end
	end
end

local function distanceFromLowerTorso(self, dataItem)
	if self.Paths.DataModelRig:isLowerTorso(dataItem) or dataItem == nil then
		return 0
	else
		return 1 + distanceFromLowerTorso(self, dataItem.Parent)
	end
end

local function configureJointsHelper(self, part, pinnedParts)
	local addedToTableMap = {}
	local priorityTable = {}

	local function addChainToTable(item)
		local distance = distanceFromLowerTorso(self, item)
		while distance >= 0 do
			if not addedToTableMap[item] then
				priorityTable[#priorityTable + 1] = {
					Item = item,
					Priority = distance
				}
				addedToTableMap[item] = true
			end

			item = item.Parent
			distance = distance - 1
		end
	end

	addChainToTable(self.Paths.DataModelRig:getDataItem(part.Name))

	if FastFlags:isFixIKBodyPartModeOn() then
		pinnedParts = pinnedParts ~= nil and pinnedParts or self.Paths.DataModelRig.partPinned
		for partName, pinned in pairs(pinnedParts) do
			if pinned and partName ~= part.Name then
				addChainToTable(self.Paths.DataModelRig:getDataItem(partName))
			end
		end
	else
		for partName, pinned in pairs(self.Paths.DataModelRig.partPinned) do
			if pinned and partName ~= part.Name then
				addChainToTable(self.Paths.DataModelRig:getDataItem(partName))
			end
		end
	end

	table.sort(priorityTable, function(a, b) return a.Priority > b.Priority end)

	if FastFlags:isFixIKBodyPartModeOn() then
		for i = 1, #priorityTable do
			local curItem = priorityTable[i].Item
			if pinnedParts[curItem.Name] and curItem.Name ~= part.Name then
				configureIKOnLimb(self, curItem, --[[ notRecursive = ]] true)
			else
				self:replaceMotor6DWithConstraint(curItem, --[[ notRecursive = ]] true)
			end
		end
	else
		for i = 1, #priorityTable do
			local curItem = priorityTable[i].Item
			if self.Paths.DataModelRig:getPartPinned(curItem.Name) and curItem.Name ~= part.Name then
				configureIKOnLimb(self, curItem, --[[ notRecursive = ]] true)
			else
				self:replaceMotor6DWithConstraint(curItem, --[[ notRecursive = ]] true)
			end
		end
	end
end

local function configureJointsBodyPartMode(self, part)
	local dataItem = self.Paths.DataModelRig:getDataItem(part.Name)
	if FastFlags:isFixIKBodyPartModeOn() then
		local staticParts = {}

		if self.Paths.DataModelRig:isATorso(dataItem) then
			staticParts[self.Paths.DataModelRig:getLeftFoot().Name] = true
			staticParts[self.Paths.DataModelRig:getRightFoot().Name] = true
		else
			staticParts[self.Paths.DataModelRig:getUpperTorso().Name] = true
			staticParts[self.Paths.DataModelRig:getLowerTorso().Name] = true
		end

		configureJointsHelper(self, part, staticParts)
	else
		if self.Paths.DataModelRig:isATorso(dataItem) then
			configureIKOnLegs(self)
		else
			anchorParentTorso(self, dataItem)
		end

		self:replaceMotor6DWithConstraint(dataItem)
	end
end

function IKManipulator:configureWeldConstraints(part0, part1)
	if not self.Welds then
		self.Welds = {}
	end
	local weldConstraint = Instance.new("WeldConstraint")
	weldConstraint.Parent = self.Paths.DataModelRig:getModel()
	weldConstraint.Part0 = part0
	weldConstraint.Part1 = part1
	self.Welds[#self.Welds + 1] = weldConstraint
end

function IKManipulator:resetWeldConstraints()
	if self.Welds then
		for _, weld in ipairs(self.Welds) do
			weld:Destroy()
		end
		self.Welds = {}
	end
end

function IKManipulator:configureIkChain(part)
	self.ProxyRoot = nil
	part.Anchored = false
	self.Motor6DInfo = {}

	if self.IKMode == self.IKModes.FullBody then
		configureJointsHelper(self, part)
	else
		configureJointsBodyPartMode(self, part)
	end

	for dataItem, _ in pairs(self.Motor6DInfo) do
		local constraint = self.Paths.UtilityScriptHumanIK:getConstraintForPart(dataItem.Item)
		if constraint then
			self.Paths.UtilityScriptHumanIK:fixAttachmentAxes(dataItem.Item)
			if self.Paths.DataModelRig:getPartInclude(dataItem.Name) then
				constraint.Enabled = true
			else
				self:configureWeldConstraints(constraint.Attachment0.Parent, constraint.Attachment1.Parent)
			end
		end
	end

	if not self.Paths.DataModelRig:getPartInclude(self.Paths.DataModelRig:getLowerTorso().Name) then
		self.Paths.DataModelRig:getLowerTorso().Item.Anchored = true
	end
end

function IKManipulator:replaceMotor6DWithConstraint(dataItem, notRecursive)
	if dataItem then
		if dataItem.Motor6D then
			self.Motor6DInfo[dataItem] = {
				C0 = dataItem.Motor6D.C0,
				Part0CF = dataItem.Motor6D.Part0.CFrame,
				Name = dataItem.Motor6D.Name,
			}

			local prevCF = dataItem.Item.CFrame
			dataItem.Motor6D:Destroy()
			dataItem.Motor6D = nil
			dataItem.Item.CFrame = prevCF
		end

		if self.Paths.DataModelRig:isLowerTorso(dataItem) or notRecursive then
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
