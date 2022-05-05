local Workspace = game:GetService("Workspace")
local Plugin = script.Parent.Parent.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework
local RigUtils = require(Plugin.Src.Util.RigUtils)
local Math = require(DraggerFramework.Utility.Math)
local Constants = require(Plugin.Src.Util.Constants)
local GetFFlagBoneAdornmentSelection = require(Plugin.LuaFlags.GetFFlagBoneAdornmentSelection)

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

local function hitTestEachBoneLink(boneLinkInstance, mouseRay)
	if boneLinkInstance:FindFirstChild("Cone") then 
		local hasIntersection, hitDistance = Math.intersectRayRay(boneLinkInstance.CFrame.Position, boneLinkInstance.CFrame.LookVector, mouseRay.Origin, mouseRay.Direction.Unit)

		if not hasIntersection then
			return nil
		end
		-- Must have an intersection if the above intersect did
		local _, distAlongMouseRay = Math.intersectRayRay(mouseRay.Origin, mouseRay.Direction.Unit, boneLinkInstance.CFrame.Position, boneLinkInstance.CFrame.LookVector)

		local hitRadius =
			((boneLinkInstance.CFrame.Position + boneLinkInstance.CFrame.LookVector * hitDistance) -
			(mouseRay.Origin + mouseRay.Direction.Unit * distAlongMouseRay)).Magnitude

		if boneLinkInstance:FindFirstChild("Cone") and hitRadius < boneLinkInstance.Cone.Radius and hitDistance > 0 and hitDistance < boneLinkInstance.Cone.Height then
			return distAlongMouseRay
		else 
			return nil
		end
	elseif boneLinkInstance:FindFirstChild("Sphere") then 
		local hasIntersection, hitDistance = Math.intersectRaySphere(mouseRay.Origin, mouseRay.Direction.Unit, boneLinkInstance.CFrame.Position, boneLinkInstance.Sphere.Radius)
		if hasIntersection then 
			return hitDistance
		else 
			return nil
		end
	else
		return nil
	end
end

local function hitTestAllBoneLinks(mouseRay, folder)
	local closestBoneLink, closestBoneDistance = nil, math.huge
	local boneLinks = folder:GetChildren()
	for _, boneLink in pairs(boneLinks) do
		if boneLink:FindFirstChild("Cone") and boneLink.Cone.Color3 ~= Constants.BONE_COLOR_SELECTED then 
			boneLink.Cone.Color3 = Constants.BONE_COLOR_DEFAULT
			boneLink.Cone.Transparency = Constants.BONE_TRANSPARENCY_DEFAULT
		end
		if boneLink:FindFirstChild("Sphere") and boneLink.Sphere.Color3 ~= Constants.BONE_COLOR_SELECTED then 
			boneLink.Sphere.Color3 = Constants.BONE_COLOR_DEFAULT
			boneLink.Sphere.Transparency = Constants.BONE_TRANSPARENCY_DEFAULT
		end
		local distance = hitTestEachBoneLink(boneLink, mouseRay)
		if distance and distance < closestBoneDistance then
			closestBoneDistance = distance
			closestBoneLink = boneLink
		end
	end
	return closestBoneLink, closestBoneDistance
end

return function(draggerContext, mouseRay, currentSelection)
	if not draggerContext.RootInstance then 
		return nil
	end

	local hitItem, hitDistance = nil
	local params = RaycastParams.new()
	params.FilterType = Enum.RaycastFilterType.Blacklist
	params.FilterDescendantsInstances = {RigUtils.findRootPart(draggerContext.RootInstance)}
	params.BruteForceAllSlow = true
	local result = Workspace:Raycast(mouseRay.Origin, mouseRay.Direction, params)

	if result then
		hitItem = result.Instance
		hitDistance = result.Distance

		-- Selection favoring: If there is a selected object and a non-selected
		-- object almost exactly coincident underneath the mouse, then we should
		-- favor the selected one, even if due to floating point error the non
		-- selected one comes out slightly closer.
		-- Without this case, if you duplicate objects and try to drag them, you
		-- may end up dragging only one of the objects because you clicked on the
		-- old non-selected copy, as opposed to the selected one you meant to.
		params.FilterType = Enum.RaycastFilterType.Whitelist
		params.FilterDescendantsInstances = currentSelection
		local selectedResult = Workspace:raycast(mouseRay.Origin, mouseRay.Direction, params)
		if selectedResult and selectedResult.Position:FuzzyEq(result.Position) then
			hitItem = selectedResult.Instance
		end
	end

	local gizmoResult = draggerContext:gizmoRaycast(
		mouseRay.Origin, mouseRay.Direction, RaycastParams.new())
	if gizmoResult and
		(draggerContext:shouldDrawConstraintsOnTop() or (result and gizmoResult.Distance < result.Distance)) then
		hitItem = gizmoResult.Instance
		hitDistance = gizmoResult.Distance
	end

	if GetFFlagBoneAdornmentSelection() then 
		local _, partNameToMotorMap, _, boneMap = RigUtils.getRigInfo(draggerContext.RootInstance)
		local folder = RigUtils.getOrCreateMicroboneFolder()
		local boneLink, boneDistance = hitTestAllBoneLinks(mouseRay, folder)

		if boneLink then 
			return boneLink, boneLink, boneDistance
		end
	end


	if hitItem then -- raycasts have hit any part or gizmo
		local hitSelectable = hitItem
		local _, partNameToMotorMap, _, boneMap = RigUtils.getRigInfo(draggerContext.RootInstance)
		-- prioritize joints
		local isValidSelectable = isValidJoint(draggerContext.RootInstance, hitSelectable, partNameToMotorMap)
		if not GetFFlagBoneAdornmentSelection() then 
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
		end
		if hitSelectable and isValidSelectable then 
			return hitSelectable, hitItem, hitDistance
		end
	else
		return nil
	end
end