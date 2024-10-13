PROTO_0:
  GETUPVAL R6 0
  GETTABLE R5 R6 R1
  OR R4 R5 R1
  GETUPVAL R5 1
  MOVE R6 R0
  LOADK R7 K0 ["Statuses"]
  MOVE R8 R4
  MOVE R9 R3
  CALL R5 4 1
  JUMPIF R5 [+13]
  LOADK R8 K0 ["Statuses"]
  GETIMPORT R9 K3 [string.format]
  LOADK R10 K4 ["Default%s1"]
  MOVE R11 R2
  CALL R9 2 1
  DUPTABLE R10 K6 [{"type"}]
  SETTABLEKS R1 R10 K5 ["type"]
  NAMECALL R6 R0 K7 ["getText"]
  CALL R6 4 1
  MOVE R5 R6
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["Utility"]
  GETTABLEKS R3 R4 K9 ["GetLocalizedString"]
  CALL R2 1 1
  DUPTABLE R3 K32 [{"FacsIncompletePosesWarning", "FacsNearNeutralWarning", "FacsNoJointsError", "FacsMultipleRootFaceJointsError", "FacsNoRootFaceJointError", "FacsMissingKeyFrameError", "FacsMissingBaseError", "FacsMissingSupportCorrectiveWarning", "FacsNoAttributesError", "FacsHasFramesNoRootFaceJointError", "FacsRootFaceJointExtraCharsError", "FacsDupeControlError", "FacsEmptyAttributeWarning", "FacsUnparseableFrameNumberError", "FacsFrameAttrNotStringError", "FacsCorrectiveDupeError", "FacsInvalidCorrectiveError", "FacsUnrecognizedFacsError", "FacsMax3CorrectivesError", "FacsFrameExtraCharsWarning", "NoRefMeshForCageWithSuggestionWarning", "CageNameHasTypoWarning"}]
  LOADK R4 K33 ["FacsIncompletePosesWarning1"]
  SETTABLEKS R4 R3 K10 ["FacsIncompletePosesWarning"]
  LOADK R4 K34 ["FacsNearNeutralWarning1"]
  SETTABLEKS R4 R3 K11 ["FacsNearNeutralWarning"]
  LOADK R4 K35 ["FacsNoJointsError1"]
  SETTABLEKS R4 R3 K12 ["FacsNoJointsError"]
  LOADK R4 K36 ["FacsMultipleRootFaceJointsError1"]
  SETTABLEKS R4 R3 K13 ["FacsMultipleRootFaceJointsError"]
  LOADK R4 K37 ["FacsNoRootFaceJointError1"]
  SETTABLEKS R4 R3 K14 ["FacsNoRootFaceJointError"]
  LOADK R4 K38 ["FacsMissingKeyFrameError2"]
  SETTABLEKS R4 R3 K15 ["FacsMissingKeyFrameError"]
  LOADK R4 K39 ["FacsMissingBaseError2"]
  SETTABLEKS R4 R3 K16 ["FacsMissingBaseError"]
  LOADK R4 K40 ["FacsMissingSupportCorrectiveWarning2"]
  SETTABLEKS R4 R3 K17 ["FacsMissingSupportCorrectiveWarning"]
  LOADK R4 K41 ["FacsNoAttributesError1"]
  SETTABLEKS R4 R3 K18 ["FacsNoAttributesError"]
  LOADK R4 K42 ["FacsHasFramesNoRootFaceJointError1"]
  SETTABLEKS R4 R3 K19 ["FacsHasFramesNoRootFaceJointError"]
  LOADK R4 K43 ["FacsRootFaceJointExtraCharsError1"]
  SETTABLEKS R4 R3 K20 ["FacsRootFaceJointExtraCharsError"]
  LOADK R4 K44 ["FacsDupeControlError3"]
  SETTABLEKS R4 R3 K21 ["FacsDupeControlError"]
  LOADK R4 K45 ["FacsEmptyAttributeWarning1"]
  SETTABLEKS R4 R3 K22 ["FacsEmptyAttributeWarning"]
  LOADK R4 K46 ["FacsUnparseableFrameNumberError1"]
  SETTABLEKS R4 R3 K23 ["FacsUnparseableFrameNumberError"]
  LOADK R4 K47 ["FacsFrameAttrNotStringError1"]
  SETTABLEKS R4 R3 K24 ["FacsFrameAttrNotStringError"]
  LOADK R4 K48 ["FacsCorrectiveDupeError3"]
  SETTABLEKS R4 R3 K25 ["FacsCorrectiveDupeError"]
  LOADK R4 K49 ["FacsInvalidCorrectiveError2"]
  SETTABLEKS R4 R3 K26 ["FacsInvalidCorrectiveError"]
  LOADK R4 K50 ["FacsUnrecognizedFACSError2"]
  SETTABLEKS R4 R3 K27 ["FacsUnrecognizedFacsError"]
  LOADK R4 K51 ["FacsMax3CorrectivesError3"]
  SETTABLEKS R4 R3 K28 ["FacsMax3CorrectivesError"]
  LOADK R4 K52 ["FacsFrameExtraCharsWarning1"]
  SETTABLEKS R4 R3 K29 ["FacsFrameExtraCharsWarning"]
  LOADK R4 K53 ["NoRefMeshForCageWithSuggestionWarning1"]
  SETTABLEKS R4 R3 K30 ["NoRefMeshForCageWithSuggestionWarning"]
  LOADK R4 K54 ["CageNameHasTypoWarning1"]
  SETTABLEKS R4 R3 K31 ["CageNameHasTypoWarning"]
  DUPCLOSURE R4 K55 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1
