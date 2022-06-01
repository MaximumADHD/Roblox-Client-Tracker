local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local GetFFlagBoneAdornmentSelection = require(Plugin.LuaFlags.GetFFlagBoneAdornmentSelection)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local GetFFlagHideBonesWithToggle = require(Plugin.LuaFlags.GetFFlagHideBonesWithToggle)
local FFlagCheckForAdornment = game:DefineFastFlag("CheckForAdornment", false)

return function(draggerContext, hoverSelectable)
	--if we have hit a bone
	if GetFFlagBoneAdornmentSelection() and hoverSelectable.parent.Name == "RBX_MICROBONE_NODES" and (not GetFFlagHideBonesWithToggle() or GetFFlagHideBonesWithToggle() and draggerContext.VisualizeBones) then
		--first check if this is a bone link and then highlight the respective bone node
		local bone = draggerContext.BoneLinksToBone[hoverSelectable.Name]
		local folder = RigUtils.getOrCreateMicroboneFolder()
		if bone then 
			local boneNameNode = folder:FindFirstChild(bone .. "Node")
			if boneNameNode then 
				boneNameNode.Sphere.Color3 = Constants.BONE_COLOR_HOVER
				boneNameNode.Sphere.Transparency = Constants.BONE_TRANSPARENCY_HOVER
			end
		-- next check if this is a bone node and then highlight the respective bone links
		else 
			bone = RigUtils.getBoneFromBoneNode(hoverSelectable.Name)
			for boneLinkName, correspondingBone in pairs(draggerContext.BoneLinksToBone) do
				if correspondingBone == bone then 
					local boneLink = folder:FindFirstChild(boneLinkName)
					if not FFlagCheckForAdornment or (boneLink and boneLink:FindFirstChild("Cone")) then 
						boneLink.Cone.Color3 = Constants.BONE_COLOR_HOVER
						boneLink.Cone.Transparency = Constants.BONE_TRANSPARENCY_HOVER
					end
				end
			end
		end
		--highlight the item the user is currently hovering on	
		if hoverSelectable and hoverSelectable:FindFirstChild("Cone") and hoverSelectable.Cone.Color3 ~= Constants.BONE_COLOR_SELECTED then 
			hoverSelectable.Cone.Color3 = Constants.BONE_COLOR_HOVER
			hoverSelectable.Cone.Transparency = Constants.BONE_TRANSPARENCY_HOVER
		end
	
		if hoverSelectable and hoverSelectable:FindFirstChild("Sphere") and hoverSelectable.Sphere.Color3 ~= Constants.BONE_COLOR_SELECTED then 
			hoverSelectable.Sphere.Color3 = Constants.BONE_COLOR_HOVER
			hoverSelectable.Sphere.Transparency = Constants.BONE_TRANSPARENCY_HOVER
		end
	else
		return "SelectionBox"
	end
end