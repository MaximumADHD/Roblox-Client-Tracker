-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local WarningsAndPrompts = {}

local function createApplyIKPrompt(Paths, title, desc)
	Paths.GUIScriptPromptYesNo:show(
		title,
		desc,
		"We will check all the existing keys and update them to work in IK",
		nil,
		function()
			Paths.GUIScriptWaitingDialog:show("Apply IK", "Updating keys now...", function()
				Paths.DataModelIKManipulator:requestCancelConstrainJoints()
			end)
			Paths.ActionConstrainKeyData:execute(Paths)
	end)
end

function WarningsAndPrompts:createApplyIKPromptForIsIKModeActive(Paths)
	createApplyIKPrompt(Paths, "Apply IK", "Do you want to apply IK constraint on the existing keys?")
end

function WarningsAndPrompts:createApplyIKPromptForPaste(Paths)
	createApplyIKPrompt(Paths, "Paste Keys", "Do you want to apply IK constraint on these keys?")
end

function WarningsAndPrompts:createApplyIKPromptForLoad(Paths)
	createApplyIKPrompt(Paths, "Load File", "Do you want to apply IK constraint on keys in the loading file?")
end

function WarningsAndPrompts:createRemoveIKPrompt(Paths)
	if FastFlags:isUseRigNameForPromptsOn() then
		if not Paths.GUIScriptPromptYesNo:show(
			"Disable IK",
			"Do you want to disable IK for " ..Paths.DataModelRig:getName() .." joints?",
			"The IK constraint will no longer be applied to the joints",
			"Don't show this dialog again",
			function()
				Paths.DataModelIKManipulator:setIsIKModeActive(false)
		end) then
			Paths.DataModelIKManipulator:setIsIKModeActive(false)
		end
	else
		if not Paths.GUIScriptPromptYesNo:show(
			"Disable IK",
			"Do you want to disable IK for Dummy joints?",
			"The IK constraint will no longer be applied to the joints",
			"Don't show this dialog again",
			function()
				Paths.DataModelIKManipulator:setIsIKModeActive(false)
		end) then
			Paths.DataModelIKManipulator:setIsIKModeActive(false)
		end
	end
end

function WarningsAndPrompts:createInvalidPoseNamesInFileWarning(Paths, animationName, invalidPoseNames)
	if not Paths.HelperFunctionsTable:isNilOrEmpty(invalidPoseNames) then
		local msg = "Some joint names in the file can't match to any Dummy joints: "
		if FastFlags:isUseRigNameForPromptsOn() then
			msg = "Some joint names in the file can't match to any " ..Paths.DataModelRig:getName() .." joints: "
		end
		for _, part in pairs(invalidPoseNames) do
			msg = msg ..part .."; "
		end
		Paths.GUIScriptAlertMessage:showWarning(
			"File '" ..animationName .."' can't be loaded correctly",
			msg,
			"Keys of these missing joints can't be loaded into Animation Editor")
	end
end

function WarningsAndPrompts:createNameChangeError(Paths)
	Paths.GUIScriptAlertMessage:showError(
		"Failed to change the joint name",
		"Part names can't be changed in Explorer when Animation Editor is open",
		nil)
end

function WarningsAndPrompts:createAttachmentWarning(Paths)
	Paths.GUIScriptAlertMessage:showWarning(
		"Failed to find matching attachments",
		"Attachment names between two body parts must match in order to properly generate a constraint",
		nil)
end

function WarningsAndPrompts:createMissingBodyPartsWarning(Paths, missingBodyParts)
	local msg = "We can't find the following joint names in Dummy: "
	if FastFlags:isUseRigNameForPromptsOn() then
		msg = "We can't find the following joint names in " ..Paths.DataModelRig:getName() ..": "
	end
	for _, part in ipairs(missingBodyParts) do
		msg = msg ..part .."; "
	end
	Paths.GUIScriptAlertMessage:showWarning(
		"This is not a valid R15 avatar",
		msg,
		"Correct the joint names by the naming requirements (see help) to avoid IK and file loading errors.")
end

return WarningsAndPrompts
