--[[
	Character models created outside of the workspace need their joints rebuilt
	to properly appear inside a Viewport Frame.
]]
local function applyJointTree(dataItem)
	if not dataItem then
		return
	end

	if dataItem.Joint then
		local isChildPart0 = dataItem.Joint.Part0 == dataItem.Part

		if dataItem.Joint:IsA("Motor6D") then
			if isChildPart0 then
				dataItem.Part.CFrame = dataItem.Joint.Part1.CFrame * dataItem.Joint.C1 * dataItem.Joint.Transform
					* dataItem.Joint.C0:inverse()
			else
				dataItem.Part.CFrame = dataItem.Joint.Part0.CFrame * dataItem.Joint.C0 * dataItem.Joint.Transform
					* dataItem.Joint.C1:inverse()
			end
		else
			if isChildPart0 then
				dataItem.Part.CFrame = dataItem.Joint.Part1.CFrame * dataItem.Joint.C1 * dataItem.Joint.C0:inverse()
			else
				dataItem.Part.CFrame = dataItem.Joint.Part0.CFrame * dataItem.Joint.C0 * dataItem.Joint.C1:inverse()
			end
		end
	end

	if dataItem.Children then
		for _, childDataItem in pairs(dataItem.Children) do
			applyJointTree(childDataItem)
		end
	end
end

local function buildJointTree(character)
	local function findJoints(obj, joints)
		if obj:IsA("Motor6D") or obj:IsA("Weld") then
			table.insert(joints, obj)
		end

		for _, child in pairs(obj:GetChildren()) do
			findJoints(child, joints)
		end
	end

	local joints = {}
	findJoints(character, joints)

	local visitedParts = {}
	local function createItems(dataItem)
		visitedParts[dataItem.Part] = dataItem

		local function findPairedJoints()
			local childList = {}
			local jointList = {}
			for _, joint in pairs(joints) do
				if joint.Part0 == dataItem.Part and joint.Part1 ~= nil and visitedParts[joint.Part1] == nil then
					table.insert(childList, joint.Part1)
					table.insert(jointList, joint)
				elseif joint.Part1 == dataItem.Part and joint.Part0 ~= nil and visitedParts[joint.Part0] == nil then
					table.insert(childList, joint.Part0)
					table.insert(jointList, joint)
				end
			end
			return childList, jointList
		end

		local childList, jointList = findPairedJoints()
		for idx, childPart in ipairs(childList) do
			local childDataItem = {
				Part = childPart,
				Name = childPart.Name,
				Joint = jointList[idx]
			}

			dataItem.Children = dataItem.Children or {}
			dataItem.Children[#dataItem.Children + 1] = childDataItem
			createItems(childDataItem)
		end
	end

	local baseDataItem = {
		Part = character.HumanoidRootPart,
		Name = character.HumanoidRootPart.Name,
	}
	createItems(baseDataItem)
	return baseDataItem
end

local function rebuildJoints(character)
	applyJointTree(buildJointTree(character))
end

return rebuildJoints