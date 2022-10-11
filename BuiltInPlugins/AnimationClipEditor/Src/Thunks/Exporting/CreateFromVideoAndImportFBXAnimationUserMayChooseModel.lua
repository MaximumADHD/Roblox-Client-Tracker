--[[
	Prompts the user to select a video to turn into an avatar FBX animation.
	Then this function imports to a KeyframeSequence from the FBX animation.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)
local SetAnimationImportProgress = require(Plugin.Src.Actions.SetAnimationImportProgress)
local SetAnimationImportStatus = require(Plugin.Src.Actions.SetAnimationImportStatus)
local SetCreatingAnimationFromVideo = require(Plugin.Src.Actions.SetCreatingAnimationFromVideo)
local SetAnimationFromVideoUploadStartTime = require(Plugin.Src.Actions.SetAnimationFromVideoUploadStartTime)
local SetAnimationFromVideoErroredOut = require(Plugin.Src.Actions.SetAnimationFromVideoErroredOut)
local GetFFlagAnimationFromVideoCreatorServiceAnalytics2 =
	require(Plugin.LuaFlags.GetFFlagAnimationFromVideoCreatorServiceAnalytics2)

-- this function is is a variation of : ImportFBXAnimationUserMayChooseModel function (but is provided with a fbxFilePath parameter)
local function _ImportFBXAnimationFromFilePathUserMayChooseModel(
	store,
	fbxFilePath,
	plugin,
	animationClipDropdown,
	analytics
)
	local state = store:getState()
	local rootInstance = state.Status.RootInstance
	if not rootInstance then
		return
	end

	local function userChooseModelThenImportCB()
		animationClipDropdown:showImportAnimModelChoicePrompt()
	end

	local success, result = pcall(function()
		return game:GetService("AvatarImportService")
			:ImportFBXAnimationFromFilePathUserMayChooseModel(fbxFilePath, rootInstance, userChooseModelThenImportCB)
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
	else
		warn(result)
	end
end

return function(plugin, animationClipDropdown, analytics)
	return function(store)
		-- Do not allow more than one video to animation conversion at once.
		if store:getState().Status.CreatingAnimationFromVideo then
			return
		end

		-- reset the information about the error from the previous run
		if GetFFlagAnimationFromVideoCreatorServiceAnalytics2() then
			store:dispatch(SetAnimationFromVideoErroredOut(false))
		end

		store:dispatch(SetAnimationImportStatus(Constants.ANIMATION_FROM_VIDEO_STATUS.Initializing))
		store:dispatch(SetAnimationImportProgress(0))
		store:dispatch(SetCreatingAnimationFromVideo(true))

		if not GetFFlagAnimationFromVideoCreatorServiceAnalytics2() then
			-- code is redundant with SetCreatingAnimationFromVideo(true)
			animationClipDropdown:showAnimationImportProgress()
		end

		local startTime
		local function progressCallback(progress: number, status: number)
			if
				GetFFlagAnimationFromVideoCreatorServiceAnalytics2()
				and status == Constants.ANIMATION_FROM_VIDEO_STATUS.UploadingData
				and not startTime
			then
				startTime = os.clock()
				store:dispatch(SetAnimationFromVideoUploadStartTime(startTime))
			end

			if not store:getState().Status.CreatingAnimationFromVideo then
				return false
			else
				store:dispatch(SetAnimationImportStatus(status))
				store:dispatch(SetAnimationImportProgress(progress))
				return true
			end
		end

		local AnimationFromVideoCreatorStudioService = game:GetService("AnimationFromVideoCreatorStudioService")

		local success, result = pcall(function()
			-- alternatively we can split the process into two parts:
			-- using AnimationFromVideoCreatorStudioService:ImportVideoWithPrompt()
			-- and then AnimationFromVideoCreatorService:FullProcess(videoFilePath, progressCallback)
			return AnimationFromVideoCreatorStudioService:CreateAnimationByUploadingVideo(progressCallback)
		end)

		local duration = startTime and os.clock() - startTime

		-- Show errors or return if no file selected
		if not success then
			-- As we display the error information on the progress bar and dont really distinguish the errors from messages
			-- we need the information if the whole flow failed
			if GetFFlagAnimationFromVideoCreatorServiceAnalytics2() then
				store:dispatch(SetAnimationFromVideoErroredOut(true))
			end

			-- Close the progress dialog if the status is still initializing (the user cancelled picking a file).
			-- Otherwise the dialog is used to show errors.
			if store:getState().Status.AnimationImportStatus == Constants.ANIMATION_FROM_VIDEO_STATUS.Initializing then
				if GetFFlagAnimationFromVideoCreatorServiceAnalytics2() then
					store:dispatch(SetCreatingAnimationFromVideo(false))
				else
					animationClipDropdown:hideAnimationImportProgress()
				end
			end

			-- error occured during file upload, then we just display the error, but not hide the progress bar
			if
				GetFFlagAnimationFromVideoCreatorServiceAnalytics2()
				and store:getState().Status.AnimationImportStatus
					== Constants.ANIMATION_FROM_VIDEO_STATUS.UploadingData
			then
				store:dispatch(SetAnimationImportStatus(Constants.ANIMATION_FROM_VIDEO_STATUS.ErrorUploadingData))
				store:dispatch(SetAnimationImportProgress(0))
				result = result or "Error while uploading video" -- this is for analytics purposes (and changed only when we dont have any other result - like "Cancelled by user")
			end

			if GetFFlagAnimationFromVideoCreatorServiceAnalytics2() then
				analytics:report("onAnimationEditorImportVideoError", result, duration)
			else
				analytics:report("onAnimationEditorImportVideoError", result)
			end
			warn(result)
			return
		end

		local fbxFilePath = result

		if GetFFlagAnimationFromVideoCreatorServiceAnalytics2() then
			analytics:report("onAnimationEditorImportVideoUploadSucceed", duration)
		else
			analytics:report("onAnimationEditorImportVideoUploadSucceed")
		end

		-- Stop if canceled between downloading the FBX and importing the animation
		if fbxFilePath == nil or not store:getState().Status.CreatingAnimationFromVideo then
			return
		end

		if GetFFlagAnimationFromVideoCreatorServiceAnalytics2() then
			store:dispatch(SetCreatingAnimationFromVideo(false))
		else
			animationClipDropdown:hideAnimationImportProgress()
		end

		_ImportFBXAnimationFromFilePathUserMayChooseModel(store, fbxFilePath, plugin, animationClipDropdown, analytics)
	end
end
