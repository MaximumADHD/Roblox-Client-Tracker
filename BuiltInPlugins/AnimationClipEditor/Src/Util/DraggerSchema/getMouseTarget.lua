local Workspace = game:GetService("Workspace")
local Plugin = script.Parent.Parent.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework
local RigUtils = require(Plugin.Src.Util.RigUtils)

local function isValidJoint(rootInstance, joint, partsToMotors)
	return joint:IsDescendantOf(rootInstance) and joint:IsA("BasePart") and partsToMotors[joint.Name] ~= nil
end

local function getBone(rootInstance, joint)
	local boneNodeName = joint.Name
	local strippedBone = RigUtils.getBoneFromBoneNode(boneNodeName)
	if strippedBone ~= boneNodeName then
		local boneName = strippedBone
		local bone = RigUtils.getBoneByName(rootInstance, strippedBone)
		if bone then
			return bone
		end
	end
	return nil
end

local function isValidBone(rootInstance, bone, boneMap)
	return bone:IsDescendantOf(rootInstance) and boneMap[bone.Name] ~= nil
end

return function(draggerContext, mouseRay, currentSelection)
	local hitItem, hitPosition = Workspace:FindPartOnRayWithIgnoreList(mouseRay, {RigUtils.findRootPart(draggerContext.RootInstance)})

	-- Selection favoring: If there is a selected object and a non-selected
	-- object almost exactly coincident underneath the mouse, then we should
	-- favor the selected one, even if due to floating point error the non
	-- selected one comes out slightly closer.
	-- Without this case, if you duplicate objects and try to drag them, you
	-- may end up dragging only one of the objects because you clicked on the
	-- old non-selected copy, as opposed to the selected one you meant to.
	if hitItem then
		local hitSelectedObject, hitSelectedPosition
			= Workspace:FindPartOnRayWithWhitelist(mouseRay, currentSelection)

		if hitSelectedObject and hitSelectedPosition:FuzzyEq(hitPosition) then
			hitItem = hitSelectedObject
		end
	end

	local hitDistance = (mouseRay.Origin - hitPosition).Magnitude

	local hitResult = draggerContext:gizmoRaycast(
		mouseRay.Origin, mouseRay.Direction, RaycastParams.new())
	if hitResult and
		(draggerContext:shouldDrawConstraintsOnTop() or (hitResult.Distance < hitDistance)) then
		hitDistance = hitResult.Distance
		hitItem = hitResult.Instance
	end

	if hitItem then
		local hitSelectable = hitItem
		local _, partNameToMotorMap, _, boneMap = RigUtils.getRigInfo(draggerContext.RootInstance)
		-- prioritize joints
		local isValidSelectable = isValidJoint(draggerContext.RootInstance, hitSelectable, partNameToMotorMap)
		if not isValidSelectable then
			local bone = getBone(draggerContext.RootInstance, hitSelectable)
			if bone then 
				isValidSelectable = isValidBone(draggerContext.RootInstance, bone, boneMap)
				if isValidSelectable then
					hitSelectable = bone
					hitItem = bone
				end
			end
		end
		if hitSelectable and isValidSelectable then 
			return hitSelectable, hitItem, hitDistance
		end
	else
		return nil
	end
end