-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local JointsTimeline = {}

JointsTimeline.TargetWidget = nil
JointsTimeline.Paths = nil
JointsTimeline.ClonedChildren = {}
JointsTimeline.CurrentHeight = 0
JointsTimeline.JointScripts = {}
JointsTimeline.RootNodeScript = nil
JointsTimeline.heightChangeEvent = nil

local function positionConnectionLines(self)
	for _, jointScript in pairs(self.JointScripts) do
		jointScript:positionConnectionLines()
	end	
end

local function recalculateHeight(self)
	self.CurrentHeight = self.RootNodeScript:getHeight()
	-- use the spawn function to wait a frame before positioning the connection lines, as the code relies on the other widgets being already in positioned 
	spawn(function() wait(); positionConnectionLines(self) end)	
	self.heightChangeEvent:fire()
end

local function shadeJoints(self, jointScript, doShade)
	jointScript = jointScript and jointScript or self.RootNodeScript

	doShade = nil == doShade and false or doShade
	
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

local function createJointSwizzles(self)
	for _, jointScript in pairs(self.JointScripts) do
		jointScript:createSwizzles()

		if jointScript.JointSwizzle then	
			jointScript.JointSwizzle.swizzleOpenEvent:connect(function() shadeJoints(self) end)		
			jointScript.JointSwizzle.swizzleClosedEvent:connect(function() shadeJoints(self) end)
		end
	end	
end

local function createJointNamesAndTracks(self, parentScript, node, indentLevel)
	if (node == nil) then
		return
	end
	
	-- add joint names					
	if node.Name ~= "HumanoidRootPart" then
		local jointWidget = self.Paths.GUIClonableJoint:clone()		
		local jointScript = self.Paths.GUIScriptJoint:new(self.Paths, jointWidget, node)	
		table.insert(self.ClonedChildren, jointWidget)	
		self.JointScripts[node.Item] = jointScript
		
		if parentScript then
			parentScript:addChild(jointScript, indentLevel)
		else	
			self.RootNodeScript = jointScript
			jointWidget.Parent = self.TargetWidget
			self.RootNodeScript:indent(indentLevel)
			self.RootNodeScript.heightChangeEvent:connect(function() recalculateHeight(self);  end)
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
	createJointNamesAndTracks(self, nil, Paths.DataModelRig:getItem(), 0)
	createJointSwizzles(self)
	self.heightChangeEvent = Paths.UtilityScriptEvent:new()
	shadeJoints(self)
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
	
	self.RootNodeScript = nil
	self.TargetWidgetJointNames = nil
	self.TargetWidgetJointTracks = nil
	self.Paths = nil
end

function JointsTimeline:getHeight()
	return JointsTimeline.CurrentHeight
end

return JointsTimeline
