--!nonstrict
local root = script.Parent.Parent.Parent

local HttpService = game:GetService("HttpService")

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local APIUtil = require(root.util.APIUtil)

local getFFlagUGCValidateEmotesBonesAllowed = require(root.flags.getFFlagUGCValidateEmotesBonesAllowed)
local getFFlagUGCValidateEmotesBoneUserVerification = require(root.flags.getFFlagUGCValidateEmotesBoneUserVerification)

local CurveAnimBonesAllowed = {}

CurveAnimBonesAllowed.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
CurveAnimBonesAllowed.requiredData = { ValidationEnums.SharedDataMember.consumerConfig }
CurveAnimBonesAllowed.conditionalData = { ValidationEnums.SharedDataMember.curveAnimBoneData }
CurveAnimBonesAllowed.fflag = getFFlagUGCValidateEmotesBonesAllowed
CurveAnimBonesAllowed.expectedFailures = {}
CurveAnimBonesAllowed.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

local function checkTrustedCreatorPermission(): (boolean, string?)
	local url = string.format(
		"https://itemconfiguration.%s/v1/permissions/action-allowed-for-item-type?trustedCreatorCheck=true&action=1&assetType=61",
		APIUtil.getBaseDomain()
	)

	local success, response = APIUtil.requestAndRetryGet(url)
	if not success then
		return false, "Failed to check trusted creator permission: " .. tostring(response)
	end

	local decodeSuccess, responseData = pcall(function()
		return HttpService:JSONDecode(response)
	end)
	if not decodeSuccess then
		return false, "Failed to decode permission response"
	end

	return responseData.isActionAllowed == true, nil
end

CurveAnimBonesAllowed.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	if not getFFlagUGCValidateEmotesBoneUserVerification() then
		return
	end

	local consumerEnv = data.consumerConfig.consumerEnv

	if consumerEnv == ValidationEnums.ConsumerEnv.IEC then
		reporter:fail(ErrorSourceStrings.Keys.CurveAnim_BonesNotAllowed)
		return
	end

	if consumerEnv == ValidationEnums.ConsumerEnv.Backend then
		local isAllowed = data.consumerConfig.backendConfigs.isUserInTrustedCreatorProgram
		if not isAllowed then
			reporter:fail(ErrorSourceStrings.Keys.CurveAnim_BonesNotAllowed)
		end
		return
	end

	-- Studio/Client: use API call (has user cookies)
	local isAllowed, errMsg = checkTrustedCreatorPermission()
	if errMsg then
		reporter:forceError(errMsg)
	end
	if not isAllowed then
		reporter:fail(ErrorSourceStrings.Keys.CurveAnim_BonesNotAllowed)
	end
end

return CurveAnimBonesAllowed :: Types.ValidationModule
