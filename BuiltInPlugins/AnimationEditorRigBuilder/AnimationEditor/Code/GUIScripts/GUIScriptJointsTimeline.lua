-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local JointsTimeline = {}

JointsTimeline.TargetWidget = nil
JointsTimeline.Paths = nil
JointsTimeline.ClonedChildren = {}
JointsTimeline.CurrentHeight = 0
JointsTimeline.JointScripts = {}
if FastFlags:isEnableRigSwitchingOn() then
	JointsTimeline.RootNodeScripts = {}
else
	JointsTimeline.RootNodeScript = nil
end
JointsTimeline.heightChangeEvent = nil

local function positionConnectionLines(self)
	for _, jointScript in pairs(self.JointScripts) do
		jointScript:positionConnectionLines()
	end	
end

local function recalculateHeight(self)
	if FastFlags:isEnableRigSwitchingOn() then
		self.CurrentHeight = 0
		for _, jointScript in ipairs(self.RootNodeScripts) do
			self.CurrentHeight = self.CurrentHeight + jointScript:getHeight()
		end
	else
		self.CurrentHeight = self.RootNodeScript:getHeight()
	end
	-- use the spawn function to wait a frame before positioning the connection lines, as the code relies on the other widgets being already in positioned 
	spawn(function() wait(); positionConnectionLines(self) end)	
	self.heightChangeEvent:fire()
end

local function shadeJoints(self, jointScript, doShade)
	if not FastFlags:isEnableRigSwitchingOn() then
		jointScript = jointScript and jointScript or self.RootNodeScript

		doShade = nil == doShade and false or doShade
	end

	jointScript:doShade(doShade)

	local doShadeChild = doShade
	if jointScript:isOpen() then
		for child in jointScript:childrenOrdered() do
			doShadeChild = not doShadeChild
			doShadeChild = shadeJoints(self, child, doShadeChild)
		end
	end
	return doShadeChild	
end

local function shadeHierarchy(self)
	doShade = false
	for _, jointScript in ipairs(self.RootNodeScripts) do
		doShade = shadeJoints(self, jointScript, doShade)
		doShade = not doShade
	end	
end

local function createJointSwizzles(self)
	for _, jointScript in pairs(self.JointScripts) do
		jointScript:createSwizzles()

		if jointScript.JointSwizzle then
			if FastFlags:isEnableRigSwitchingOn() then
				jointScript.JointSwizzle.swizzleOpenEvent:connect(function() shadeHierarchy(self) end)		
				jointScript.JointSwizzle.swizzleClosedEvent:connect(function() shadeHierarchy(self) end)
			else
				jointScript.JointSwizzle.swizzleOpenEvent:connect(function() shadeJoints(self) end)		
				jointScript.JointSwizzle.swizzleClosedEvent:connect(function() shadeJoints(self) end)
			end
		end
	end	
end

local function createJointNamesAndTracks(self, parentScript, node, indentLevel)
	if (node == nil) then
		return
	end
	
	-- add joint names
	local isRoot = nil
	if FastFlags:isEnableRigSwitchingOn() then
		isRoot = not self.Paths.DataModelRig:isARootPart(node.Item)
	else
		isRoot = node.Name ~= "HumanoidRootPart"
	end
	if isRoot then
		local jointWidget = self.Paths.GUIClonableJoint:clone()		
		local jointScript = self.Paths.GUIScriptJoint:new(self.Paths, jointWidget, node)	
		table.insert(self.ClonedChildren, jointWidget)	
		self.JointScripts[node.Item] = jointScript
		
		if parentScript then
			parentScript:addChild(jointScript, indentLevel)
		else
			if FastFlags:isEnableRigSwitchingOn() then
				self.RootNodeScripts[#self.RootNodeScripts + 1] = jointScript
				jointWidget.Parent = self.TargetWidget
				self.RootNodeScripts[#self.RootNodeScripts]:indent(indentLevel)
				self.RootNodeScripts[#self.RootNodeScripts].heightChangeEvent:connect(function() recalculateHeight(self);  end)
			else
				self.RootNodeScript = jointScript
				jointWidget.Parent = self.TargetWidget
				self.RootNodeScript:indent(indentLevel)
				self.RootNodeScript.heightChangeEvent:connect(function() recalculateHeight(self);  end)
			end
		end
		for _, childNode in pairs(node.Children) do
			createJointNamesAndTracks(self, jointScript, childNode, indentLevel + 1)
		end
	else
		for _, childNode in pairs(node.Children) do
			createJointNamesAndTracks(self, nil, childNode, indentLevel)
		end
	end
end

local function initKeyframes(self, keyframes)
	for _, jointScript in pairs(self.JointScripts) do
		jointScript:clearKeyframes()
	end	
	
	for time, key in pairs(keyframes) do
		for part, pose in pairs(key.Poses) do
			local jointScript = self.JointScripts[part]
			if nil ~= jointScript then
				jointScript:addKeyframe(time, pose)
			end
		end
	end
end

function JointsTimeline:init(Paths)
	self.TargetWidget = Paths.GUIJointsTimeline
	self.Paths = Paths
	if FastFlags:isEnableRigSwitchingOn() then
		for _, rootItem in pairs(Paths.DataModelRig:getItems()) do
			createJointNamesAndTracks(self, nil, rootItem, 0)
		end
	else
		createJointNamesAndTracks(self, nil, Paths.DataModelRig:getItem(), 0)
	end
	createJointSwizzles(self)
	self.heightChangeEvent = Paths.UtilityScriptEvent:new()

	if FastFlags:isEnableRigSwitchingOn() then
		shadeHierarchy(self)
	else
		shadeJoints(self)
	end
	recalculateHeight(self)
	
	initKeyframes(self, Paths.DataModelKeyframes.keyframeList)
	self.onKeyframesChange = function(keyframes)		
		initKeyframes(self, keyframes)
	end
	Paths.DataModelKeyframes.ChangedEvent:connect(self.onKeyframesChange)
end

function JointsTimeline:terminate()
	self.Paths.DataModelKeyframes.ChangedEvent:disconnect(self.onKeyframesChange)
	
	self.heightChangeEvent = nil

	for _, jointScript in pairs(self.JointScripts) do
		jointScript:terminate()
	end	
	self.JointScripts = {}
	
	local numClonedChildren = #self.ClonedChildren
	for cloned = 1, numClonedChildren do
		self.ClonedChildren[cloned].Parent = nil
		self.ClonedChildren[cloned]:Destroy()
		self.ClonedChildren[cloned] = nil
	end
	
	if FastFlags:isEnableRigSwitchingOn() then
		self.RootNodeScripts = {}
	else
		self.RootNodeScript = nil
	end
	self.TargetWidgetJointNames = nil
	self.TargetWidgetJointTracks = nil
	self.Paths = nil
end

function JointsTimeline:getHeight()
	return JointsTimeline.CurrentHeight
end

return JointsTimeline
