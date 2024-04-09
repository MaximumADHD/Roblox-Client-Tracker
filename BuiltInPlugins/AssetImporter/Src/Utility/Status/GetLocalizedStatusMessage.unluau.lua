-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Utility.GetLocalizedString)
local var3 = {}
var3.FacsIncompletePosesWarning = "FacsIncompletePosesWarning1"
var3.FacsNearNeutralWarning = "FacsNearNeutralWarning1"
var3.FacsNoJointsError = "FacsNoJointsError1"
var3.FacsMultipleRootFaceJointsError = "FacsMultipleRootFaceJointsError1"
var3.FacsNoRootFaceJointError = "FacsNoRootFaceJointError1"
var3.FacsMissingKeyFrameError = "FacsMissingKeyFrameError2"
var3.FacsMissingBaseError = "FacsMissingBaseError2"
var3.FacsMissingSupportCorrectiveWarning = "FacsMissingSupportCorrectiveWarning2"
var3.FacsNoAttributesError = "FacsNoAttributesError1"
var3.FacsHasFramesNoRootFaceJointError = "FacsHasFramesNoRootFaceJointError1"
var3.FacsRootFaceJointExtraCharsError = "FacsRootFaceJointExtraCharsError1"
var3.FacsDupeControlError = "FacsDupeControlError3"
var3.FacsEmptyAttributeWarning = "FacsEmptyAttributeWarning1"
var3.FacsUnparseableFrameNumberError = "FacsUnparseableFrameNumberError1"
var3.FacsFrameAttrNotStringError = "FacsFrameAttrNotStringError1"
var3.FacsCorrectiveDupeError = "FacsCorrectiveDupeError3"
var3.FacsInvalidCorrectiveError = "FacsInvalidCorrectiveError2"
var3.FacsUnrecognizedFacsError = "FacsUnrecognizedFACSError2"
var3.FacsMax3CorrectivesError = "FacsMax3CorrectivesError3"
var3.FacsFrameExtraCharsWarning = "FacsFrameExtraCharsWarning1"
var3.NoRefMeshForCageWithSuggestionWarning = "NoRefMeshForCageWithSuggestionWarning1"
var3.CageNameHasTypoWarning = "CageNameHasTypoWarning1"
return function(arg1, arg2, arg3, arg4)
   local var40 = var3
   local var41 = var40[arg2]
   var40 = arg1
   local var1 = var2(var40, "Statuses", var44, arg4)
   if not var1 then
      local var52 = {}
      var52.type = arg2
      var1 = arg1:getText("Statuses", string.format("Default%s1", arg3), var52)
   end
   return var1
end
