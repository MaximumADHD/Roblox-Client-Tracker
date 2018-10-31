-- singleton

local FastFlags = require(script.Parent.Parent.FastFlags)

local Rig = {}

Rig.BaseItem = nil
Rig.partInclude = {}
Rig.partList = {}
Rig.partListByName = {}
Rig.partToItemMap = {}
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

function Rig:create(Paths, selectedObject)
	-- reset the assembly information
	self.partList = {}
	self.partListByName = {}
	self.partToItemMap = {}
	self.partInclude = {}
	if FastFlags:isIKModeFlagOn() then
		self.partPinned = {}
	end

	local getController = function(p)
		for i, v in pairs(p:GetChildren()) do
			if v:IsA("Humanoid") or v:IsA("AnimationController") then
				return v
			end
		end
		return nil
	end

	self.AnimationController = getController(selectedObject.Parent)

	--first, gather the info on what's being animated
	local baseItem = Paths.UtilityScriptDataItem:new(Paths, selectedObject, nil, CFrame.new()) --recursive structure holding hierarchy of items

	local joints = {}
	local function recurse(obj)
		if obj:IsA("Motor6D") then
			table.insert(joints, obj)
		end

		for _, child in pairs(obj:GetChildren()) do
			recurse(child)
		end
	end
	recurse(baseItem.Item.Parent)

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

			local childList, jointList = findPairedJoints(item)
			for idx, joinedTo in pairs(childList) do
				local p = jointList[idx]

				local it = Paths.UtilityScriptDataItem:new(Paths, joinedTo, p, Paths.HelperFunctionsMath:orthoNormalizeCFrame(p.C1), item)

				item.Children[#item.Children+1] = it
				doCalculate(it)
			end
		end
		doCalculate(baseItem)
	end
	self.BaseItem = baseItem
end

if not FastFlags:isScrubbingPlayingMatchFlagOn() then
function Rig:onRigJointsChangeRequired()
	if not self.Paths.DataModelPlayState:getIsPlaying() then
		self:updateRigPosition()
	else
		self.Paths.DataModelPartManipulator:updateProxyPart()
	end
end
end

function Rig:init(Paths)
	Rig.Paths = Paths
	if not FastFlags:isScrubbingPlayingMatchFlagOn() then
		Rig.ScrubberTimeChangeHandle = Paths.DataModelSession.ScrubberTimeChangeEvent:connect(function()
			self:onRigJointsChangeRequired()
		end)
	end
	Rig.PartIncludeToggleEvent = Paths.UtilityScriptEvent:new()
	if FastFlags:isIKModeFlagOn() then
		Rig.PartPinnedToggleEvent = Paths.UtilityScriptEvent:new()
		Rig.RigVerifiedEvent = Paths.UtilityScriptEvent:new()
	end

	Rig.Connections = Paths.UtilityScriptConnections:new()
	Rig.NameChangedEvent = Paths.UtilityScriptEvent:new()
	Rig.Connections:add(self.BaseItem.Item.Parent.Changed:connect(function(property)
		if property == "Name" then
			Rig.NameChangedEvent:fire(self:getName())
		end
	end))

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
		Rig.RigVerifiedEvent:fire(self.Paths.UtilityScriptHumanIK:verifyForHumanBodyParts(self.Paths))
	end
end

function Rig:terminate()
	Rig.PartIncludeToggleEvent = nil
	if FastFlags:isIKModeFlagOn() then
		Rig.PartPinnedToggleEvent = nil
		Rig.RigVerifiedEvent = nil
	end

	if not FastFlags:isScrubbingPlayingMatchFlagOn() then
		Rig.ScrubberTimeChangeHandle:disconnect()
		Rig.ScrubberTimeChangeHandle = nil
	end

	Rig.Connections:disconnectAll()
	Rig.NameChangedEvent = nil
end

function Rig:getItem()
	return self.BaseItem
end

function Rig:getName()
	return self.BaseItem.Item.Parent.Name
end

if FastFlags:isIKModeFlagOn() then
	function Rig:getModel()
		return self.BaseItem.Item.Parent
	end
end

if not FastFlags:isScrubbingPlayingMatchFlagOn() then
-- this function was probably intended to force a re-render
function Rig:nudgeView()
	local mainPart = self.BaseItem.Item
	mainPart.CFrame = mainPart.CFrame*CFrame.new(0, 1, 0)
	mainPart.CFrame = mainPart.CFrame*CFrame.new(0, -1, 0)
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

		if not FastFlags:isScrubbingPlayingMatchFlagOn() then
			self:onRigJointsChangeRequired()
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
	if FastFlags:isScrubbingPlayingMatchFlagOn() then
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

	time = self.Paths.DataModelClip:keyframeTimeClamp(time)

	if data.Motor6D and data.Item then
		local part = data.Item
		local active = self.partInclude[part.Name]
		if active then
			local lastPose = self.Paths.DataModelClip:getPreviousPose(time, part)
			local nextPose = self.Paths.DataModelClip:getClosestNextPose(time, part)

			if lastPose then
				if self.Paths.DataModelPreferences:getValue(self.Paths.DataModelPreferences.Type.Interpolation) and nextPose and (lastPose.CFrame ~= nextPose.CFrame) and (time ~= lastPose.Time) then
					local timeChunk = nextPose.Time - lastPose.Time
					local timeIn = time - lastPose.Time
					local weight = timeIn / timeChunk

					weight = self.Paths.HelperFunctionsEasingStyles:getEasing(lastPose.EasingStyle, lastPose.EasingDirection, 1-weight)

					local lastCFrame = lastPose.CFrame

					local nextCFrame = nextPose.CFrame
					local retVal = lastCFrame:lerp(nextCFrame, weight) * data.OriginC1--this

					retVal = self.Paths.HelperFunctionsMath:orthoNormalizeCFrame(retVal)
					return retVal
				else
					return lastPose.CFrame * data.OriginC1
				end
			else
				return data.OriginC1
			end
		else
			return data.OriginC1
		end
	end
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
			if FastFlags:isResetLockedJointsFlagOn() then
				item.Motor6D.Transform = CFrame.new()
				item.Motor6D.CurrentAngle = 0
			end
			item.Motor6D.C1 = item.OriginC1
		end
	end
end

if not FastFlags:isScrubbingPlayingMatchFlagOn() then
function Rig:updateRigPosition()
	self.Paths.DataModelPlayState:pause()

	--move the model
	for part, item in pairs(self.partList) do
		local active = self.partInclude[part.Name]
		if item.Motor6D then
			item.Motor6D.C1 = self:getMotorC1(item, self.Paths.DataModelSession:getScrubberTime())
			self.Paths.DataModelPartManipulator:updateProxyPart()
			self:nudgeView()
		end
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