--[[
	Prompts the user to select a video to turn into an avatar FBX animation.
	Then this function imports to a KeyframeSequence from the FBX animation.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)

-- this function is is a variation of : ImportFBXAnimationUserMayChooseModel function (but is provided with a fbxFilePath parameter)
local function _ImportFBXAnimationFromFilePathUserMayChooseModel(store, fbxFilePath, plugin, animationClipDropdown, analytics)
	local state = store:getState()
	local rootInstance = state.Status.RootInstance
	if not rootInstance then
		return
	end

	local function userChooseModelThenImportCB()
		animationClipDropdown:showImportAnimModelChoicePrompt()
	end

	local success, result = pcall(function()
		return game:GetService("AvatarImportService"):ImportFBXAnimationFromFilePathUserMayChooseModel(fbxFilePath, rootInstance, userChooseModelThenImportCB)
	end)


	if success then
		local newData = RigUtils.fromRigAnimation(result)
		newData.Metadata.Name = Constants.DEFAULT_IMPORTED_NAME
		store:dispatch(LoadAnimationData(newData, analytics))
		store:dispatch(SetIsDirty(false))

		if result then
			result:Destroy()
		end

		analytics:report("onImportFbxAnimation")
		print("[AnimationFromVideoCreatorService] Finished importing fbx animation")
	else
		warn(result)
	end
end

return function(plugin, animationClipDropdown, analytics)
	return function(store)
		local function progressCallback(progress: number, status: number)
			print("[AnimationFromVideoCreatorService] Current processing progress is: ", progress, " and status: ", status)
		end
		
		local AnimationFromVideoCreatorStudioService = game:GetService("AnimationFromVideoCreatorStudioService")
		
		local success, result = pcall(function()
			-- alternatively we can split the process into two parts:
			-- using AnimationFromVideoCreatorStudioService:ImportVideoWithPrompt()
			-- and then AnimationFromVideoCreatorService:FullProcess(videoFilePath, progressCallback)
			return AnimationFromVideoCreatorStudioService:CreateAnimationByUploadingVideo(progressCallback)
		end)

		if not success then
			warn(result)
			return
		end

		local fbxFilePath = result
		print("[AnimationFromVideoCreatorService] Processed fbx file downloaded at path: ", fbxFilePath)
		--TODO: analytics:report("")

		print("[AnimationFromVideoCreatorService] Importing animation from fbx: ", fbxFilePath)
		_ImportFBXAnimationFromFilePathUserMayChooseModel(store, fbxFilePath, plugin, animationClipDropdown, analytics)

	end
end
