-- singleton

local FastFlags = require(script.Parent.Parent.FastFlags)

local Rig = {}

if FastFlags:isEnableRigSwitchingOn() then
	Rig.BaseItems = nil
else
	Rig.BaseItem = nil
end
Rig.partInclude = {}
Rig.partList = {}
Rig.partListByName = {}
Rig.partToItemMap = {}
if FastFlags:isShiftSelectJointsOn() then
	Rig.orderedPartList = {}
	Rig.partToIndexMap = {}
end
if FastFlags:isIKModeFlagOn() then
	Rig.partPinned = {}
end
Rig.Paths = nil
Rig.AnimationController = nil
Rig.PartIncludeToggleEvent = nil
if FastFlags:isIKModeFlagOn() then
	Rig.PartPinnedToggleEvent = nil
	Rig.RigVerifiedEvent = nil
end
Rig.Connections = nil
Rig.TagName = "InIK"

function Rig:create(Paths, potentialRoots)
	-- reset the assembly information
	self.partList = {}
	self.partListByName = {}
	self.partToItemMap = {}
	self.partInclude = {}
	if FastFlags:isIKModeFlagOn() then
		self.partPinned = {}
	end
	if FastFlags:isShiftSelectJointsOn() then
		self.orderedPartList = {}
		self.partToIndexMap = {}
	end

	local getController = function(p)
		for i, v in pairs(p:GetChildren()) do
			if v:IsA("Humanoid") or v:IsA("AnimationController") then
				return v
			end
		end
		return nil
	end
	if FastFlags:isEnableRigSwitchingOn() then
		self.AnimationController = getController(Paths.HelperFunctionsTable:firstValue(potentialRoots).Parent)
	else
		self.AnimationController = getController(potentialRoots.Parent)
	end

	--first, gather the info on what's being animated
	local baseItems = {}
	local baseItem = nil
	if FastFlags:isEnableRigSwitchingOn() then
		for _, part in pairs(potentialRoots) do
			baseItems[part] = Paths.UtilityScriptDataItem:new(Paths, part, nil, CFrame.new())
		end
	else
		baseItem = Paths.UtilityScriptDataItem:new(Paths, potentialRoots, nil, CFrame.new()) --recursive structure holding hierarchy of items
	end

	local joints = {}
	local function recurse(obj)
		if obj:IsA("Motor6D") then
			table.insert(joints, obj)
		end

		for _, child in pairs(obj:GetChildren()) do
			recurse(child)
		end
	end

	if FastFlags:isEnableRigSwitchingOn() then
		recurse(Paths.HelperFunctionsTable:firstValue(baseItems).Item.Parent)
	else
		recurse(baseItem.Item.Parent)
	end

	do
		local visitedParts = {}
		local function findPairedJoints(parent)
			local parentObject = parent.Item
			local childList = {}
			local jointList = {}
			for _, joint in pairs(joints) do
				if (joint.Part1 and joint.Part1.Name == "ProxyPart") or (joint.Part0 and joint.Part0.Name == "ProxyPart") then
					break
				else
					if joint.Part0 == parentObject and joint.Part1 ~= nil and visitedParts[joint.Part1.Name] == nil then
						table.insert(childList, joint.Part1)
						table.insert(jointList, joint)
					elseif joint.Part1 == parentObject and joint.Part0 ~= nil and visitedParts[joint.Part0.Name] == nil then
						table.insert(childList, joint.Part0)
						table.insert(jointList, joint)
					end
				end
			end
			return childList, jointList
		end

		local function doCalculate(item)
			visitedParts[item.Name] = item
			self.partList[item.Item] = item
			self.partListByName[item.Name] = item
			self.partToItemMap[item.Item] = item
			self.partInclude[item.Name] = true
			if FastFlags:isIKModeFlagOn() then
				self.partPinned[item.Name] = false
			end
			if FastFlags:isShiftSelectJointsOn() then
				self.orderedPartList[#self.orderedPartList + 1] = item
				self.partToIndexMap[item.Item] = #self.orderedPartList
			end

			local childList, jointList = findPairedJoints(item)
			for idx, joinedTo in pairs(childList) do
				local p = jointList[idx]

				local it = Paths.UtilityScriptDataItem:new(Paths, joinedTo, p, Paths.HelperFunctionsMath:orthoNormalizeCFrame(p.C1), item)

				item.Children[#item.Children+1] = it
				doCalculate(it)
			end
		end
		if FastFlags:isEnableRigSwitchingOn() then
			for _, item in pairs(baseItems) do
				doCalculate(item)
			end
		else
			doCalculate(baseItem)
		end
	end
	if FastFlags:isEnableRigSwitchingOn() then
		self.BaseItems = baseItems
	else
		self.BaseItem = baseItem
	end
end

function Rig:init(Paths)
	Rig.Paths = Paths
	Rig.PartIncludeToggleEvent = Paths.UtilityScriptEvent:new()
	if FastFlags:isIKModeFlagOn() then
		Rig.PartPinnedToggleEvent = Paths.UtilityScriptEvent:new()
		Rig.RigVerifiedEvent = Paths.UtilityScriptEvent:new()
	end

	Rig.NameChangedEvent = Paths.UtilityScriptEvent:new()

	if FastFlags:isEnableRigSwitchingOn() then
		self:initConnections()
	else
		Rig.Connections = Paths.UtilityScriptConnections:new()
		Rig.NameChangedEvent = Paths.UtilityScriptEvent:new()
		Rig.Connections:add(self.BaseItem.Item.Parent.Changed:connect(function(property)
			if property == "Name" then
				Rig.NameChangedEvent:fire(self:getName())
			end
		end))

		if FastFlags:isUseHipHeightInKeyframeSequencesOn() and self:getModel().Humanoid then
			Rig.Connections:add(self.BaseItem.Item.Parent.Humanoid.Changed:connect(function(property)
				if property == "HipHeight" then
					if self.Paths.DataModelClip:getAuthoredHipHeight() ~= self:getHipHeight() then
						self.Paths.HelperFunctionsWarningsAndPrompts:createHipHeightMismatchWarning(self.Paths)
					end
				end
			end))
		end

		if FastFlags:isIKModeFlagOn() then
			for _, dataItem in pairs(self.partListByName) do
				Rig.Connections:add(dataItem.Item.Changed:connect(function(property)
					if property == "Name" then
						if dataItem.Item.Name ~= dataItem.Name then
							dataItem.Item.Name = dataItem.Name
							self.Paths.HelperFunctionsWarningsAndPrompts:createNameChangeError(self.Paths)
						end
					end
				end))
			end
		end
	end
end

function Rig:initConnections()
	if Rig.Connections then
		Rig.Connections:disconnectAll()
	end
	Rig.Connections = self.Paths.UtilityScriptConnections:new()

	Rig.Connections:add(self:getModel().Changed:connect(function(property)
		if property == "Name" then
			Rig.NameChangedEvent:fire(self:getName())
		end
	end))

	if FastFlags:isUseHipHeightInKeyframeSequencesOn() and self:getModel().Humanoid then
		Rig.Connections:add(self:getModel().Humanoid.Changed:connect(function(property)
			if property == "HipHeight" then
				if self.Paths.DataModelClip:getAuthoredHipHeight() ~= self:getHipHeight() then
					self.Paths.HelperFunctionsWarningsAndPrompts:createHipHeightMismatchWarning(self.Paths)
				end
			end
		end))
	end

	if FastFlags:isIKModeFlagOn() then
		for _, dataItem in pairs(self.partListByName) do
			Rig.Connections:add(dataItem.Item.Changed:connect(function(property)
				if property == "Name" then
					if dataItem.Item.Name ~= dataItem.Name then
						dataItem.Item.Name = dataItem.Name
						self.Paths.HelperFunctionsWarningsAndPrompts:createNameChangeError(self.Paths)
					end
				end
			end))
		end
	end
end

if FastFlags:isIKModeFlagOn() then
	function Rig:initPostGUICreate()
		local verified = self.Paths.UtilityScriptHumanIK:verifyForHumanBodyParts(self.Paths)
		Rig.RigVerifiedEvent:fire(verified)
		if FastFlags:isEnableRigSwitchingOn() then
			if verified then
				if self.Paths.HelperFunctionsCreation:hasTag(self:getModel(), self.TagName) then
					self.Paths.DataModelIKManipulator:setIsIKModeActive(true)
				else
					self.Paths.DataModelIKManipulator:setIsIKModeActive(false)
				end
			else
				self.Paths.DataModelIKManipulator:setIsIKModeActive(false)
			end
		end
	end
end

function Rig:terminate()
	if FastFlags:isEnableRigSwitchingOn() then
		self:destroyRig()
	end
	Rig.PartIncludeToggleEvent = nil
	if FastFlags:isIKModeFlagOn() then
		Rig.PartPinnedToggleEvent = nil
		Rig.RigVerifiedEvent = nil
	end

	Rig.Connections:disconnectAll()
	Rig.NameChangedEvent = nil
end

function Rig:getItems()
	return self.BaseItems
end

if not FastFlags:isEnableRigSwitchingOn() then
	function Rig:getItem()
		return self.BaseItem
	end
end

function Rig:hasRig(Paths)
	return not Paths.HelperFunctionsTable:isNilOrEmpty(self.BaseItems)
end

function Rig:destroyRig()
	self.BaseItems = {}
	self.partList = {}
	self.partListByName = {}
	self.partToItemMap = {}
	self.partInclude = {}
	self.partPinned = {}
	self.AnimationController = nil
end

function Rig:getName()
	if FastFlags:isEnableRigSwitchingOn() then
		return self:getModel().Name
	else
		return self.BaseItem.Item.Parent.Name
	end
end

function Rig:isARootPart(part)
	return self.BaseItems[part] ~= nil
end

if FastFlags:isIKModeFlagOn() then
	function Rig:getModel()
		if FastFlags:isEnableRigSwitchingOn() then
			return self.Paths.HelperFunctionsTable:firstValue(self.BaseItems).Item.Parent
		else
			return self.BaseItem.Item.Parent
		end
	end
end

if FastFlags:isUseHipHeightInKeyframeSequencesOn() then
	function Rig:getHipHeight()
		local humanoid = self:getModel().Humanoid
		if humanoid then
			return humanoid.HipHeight
		else
			return 0
		end
	end
elseif FastFlags:isHipHeightPopFixOn() then
	function Rig:getHumanoid()
		return self:getModel():FindFirstChildOfClass("Humanoid")
	end

	function Rig:getHipHeight(humanoid)
		if humanoid == nil then
			humanoid = self:getHumanoid()
		end

		if humanoid then
			return humanoid.HipHeight
		else
			return 0
		end
	end

	local function getDefaultHipHeight()
		return FastFlags:isAdjustHumanoidRootPartToHipPositionOn() and 2.0 or 1.35
	end

	function Rig:getHipHeightScale()
		local humanoid = self:getHumanoid()
		if not humanoid or (humanoid and not humanoid.AutomaticScalingEnabled) then
			return 1
		end
		return self:getHipHeight(humanoid) / getDefaultHipHeight()
	end

	-- we are specifically looking for a LowerTorso part connected to the HumanoidRootPart
	function Rig:getHipPartFromHumanoid()
		if self:getHumanoid() then
			local humanoidRootPart = self:getDataItem("HumanoidRootPart")
			local lowerTorso = self:getDataItem("LowerTorso")
			if humanoidRootPart and lowerTorso and lowerTorso.Parent == humanoidRootPart then
				return lowerTorso
			end
		end
	end
end

function Rig:getPart(name)
	local item = self:getDataItem(name)
	if item ~= nil then
		return item.Item
	end
end

function Rig:getDataItem(name)
	return self.partListByName[name]
end

function Rig:togglePartInclude(dataItemName)
	self:setPartInclude(dataItemName, not self.partInclude[dataItemName])
end

local function setPartIncludeInternal(self, dataItemName, newVal)
	if newVal ~= self.partInclude[dataItemName] then
		self.partInclude[dataItemName] = newVal
		if not self.partInclude[dataItemName] then
			self.Paths.DataModelSession:resetDataItemIfSelected(self:getDataItem(dataItemName))
		end

		return true
	end
	return false
end

function Rig:setPartInclude(dataItemName, newVal)
	if setPartIncludeInternal(self, dataItemName, newVal) then
		Rig.PartIncludeToggleEvent:fire()
	end
end

if FastFlags:isIKModeFlagOn() then
	function Rig:setPartPinned(dataItemName, newVal)
		self.partPinned[dataItemName] = newVal
		Rig.PartPinnedToggleEvent:fire()
	end

	function Rig:unpinAll()
		local partsToUnpin = {}

		for partName, isPinned in pairs(self.partPinned) do
			if isPinned then
				partsToUnpin[#partsToUnpin + 1] = partName
			end
		end

		for _, partName in pairs(partsToUnpin) do
			self:setPartPinned(partName, false)
		end
	end

	function Rig:getPartPinned(dataItemName)
		return self.partPinned[dataItemName]
	end
end

function Rig:setPartIncludeAll(set)
	local anyChanges = false
	for dataItemName, _ in pairs(Rig.partInclude) do
		if setPartIncludeInternal(self, dataItemName, set) then
			anyChanges = true
		end
	end

	if anyChanges then
		Rig.PartIncludeToggleEvent:fire()
	end
end

function Rig:getPartInclude(dataItemName)
	return self.partInclude[dataItemName]
end

function Rig:isPartManeuverable(dataItem)
	return nil ~= dataItem and nil ~= dataItem.Motor6D
end

function Rig:getMotorC1(data, time)
	time = self.Paths.DataModelClip:keyframeTimeClamp(time)

	if nil ~= data.Motor6D then
		self.Paths.DataModelPlayState:setTime(time)
		local motorC1 = data.OriginC1 * data.Motor6D.Transform:inverse()
		-- set the animation back to where the scrubber was
		self.Paths.DataModelPlayState:setTime(self.Paths.DataModelSession:getScrubberTime())
		return motorC1
	end
	return CFrame.new()
end

function Rig:calculateAllMotorC1s()
	local resultTab = {}
	for _, item in pairs(self.partList) do
		if item.Motor6D then
			resultTab[item.Motor6D] = item.OriginC1 * item.Motor6D.Transform:inverse()
		end
	end
	return resultTab
end

-- setAllMotorC1s(calculateAllMotorC1s()) - this would set all C1s to match the transforms set from animations
function Rig:setAllMotorC1s(allC1s)
	for _, item in pairs(self.partList) do
		if item.Motor6D then
			item.Motor6D.C1 = allC1s[item.Motor6D]
		end
	end
end

function Rig:resetJoints()
	for part, item in pairs(self.partList) do
		if nil ~= item.Motor6D then
			item.Motor6D.Transform = CFrame.new()
			item.Motor6D.CurrentAngle = 0
			item.Motor6D.C1 = item.OriginC1
		end
	end
end

if FastFlags:isIKModeFlagOn() then
	function Rig:isATorso(dataItem)
		return dataItem == self:getLowerTorso() or dataItem == self:getUpperTorso()
	end

	function Rig:isLowerTorso(dataItem)
		return dataItem == self:getLowerTorso()
	end

	function Rig:isRootPart(dataItem)
		return dataItem == self:getHumanoidRootPart()
	end

	function Rig:getPartDataItem(part)
		if part then return self:getDataItem(part.Name) end
	end

	function Rig:getHumanoidRootPart()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.HumanoidRootPart)
	end

	function Rig:getHead()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.Head)
	end

	function Rig:getUpperTorso()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.UpperTorso)
	end

	function Rig:getLowerTorso()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.LowerTorso)
	end

	function Rig:getRightUpperArm()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.RightUpperArm)
	end

	function Rig:getRightLowerArm()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.RightLowerArm)
	end

	function Rig:getRightHand()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.RightHand)
	end

	function Rig:getLeftUpperArm()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.LeftUpperArm)
	end

	function Rig:getLeftLowerArm()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.LeftLowerArm)
	end

	function Rig:getLeftHand()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.LeftHand)
	end

	function Rig:getRightUpperLeg()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.RightUpperLeg)
	end

	function Rig:getRightLowerLeg()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.RightLowerLeg)
	end

	function Rig:getRightFoot()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.RightFoot)
	end

	function Rig:getLeftUpperLeg()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.LeftUpperLeg)
	end

	function Rig:getLeftLowerLeg()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.LeftLowerLeg)
	end

	function Rig:getLeftFoot()
		return self:getPartDataItem(self.Paths.UtilityScriptHumanIK.BodyParts.LeftFoot)
	end
end

return Rig
