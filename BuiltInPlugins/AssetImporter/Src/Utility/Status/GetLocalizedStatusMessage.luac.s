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
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K7 ["Utility"]
  GETTABLEKS R3 R4 K8 ["GetLocalizedString"]
  CALL R2 1 1
  DUPTABLE R3 K33 [{"FacsIncompletePosesWarning", "FacsNearNeutralWarning", "FacsNoJointsError", "FacsMultipleRootFaceJointsError", "FacsNoRootFaceJointError", "FacsMissingKeyFrameError", "FacsMissingBaseError", "FacsMissingSupportCorrectiveWarning", "FacsNoAttributesError", "FacsHasFramesNoRootFaceJointError", "FacsRootFaceJointExtraCharsError", "FacsDupeControlError", "FacsEmptyAttributeWarning", "FacsUnparseableFrameNumberError", "FacsFrameAttrNotStringError", "FacsCorrectiveDupeError", "FacsInvalidCorrectiveError", "FacsUnrecognizedFacsError", "FacsMax3CorrectivesError", "FacsFrameExtraCharsWarning", "NoRefMeshForCageWithSuggestionWarning", "NoRefMeshForCageWithSuggestionV1Warning", "CageNameHasTypoV1Warning", "CageNameHasTypoWarning"}]
  LOADK R4 K34 ["FacsIncompletePosesWarning1"]
  SETTABLEKS R4 R3 K9 ["FacsIncompletePosesWarning"]
  LOADK R4 K35 ["FacsNearNeutralWarning1"]
  SETTABLEKS R4 R3 K10 ["FacsNearNeutralWarning"]
  LOADK R4 K36 ["FacsNoJointsError1"]
  SETTABLEKS R4 R3 K11 ["FacsNoJointsError"]
  LOADK R4 K37 ["FacsMultipleRootFaceJointsError1"]
  SETTABLEKS R4 R3 K12 ["FacsMultipleRootFaceJointsError"]
  LOADK R4 K38 ["FacsNoRootFaceJointError1"]
  SETTABLEKS R4 R3 K13 ["FacsNoRootFaceJointError"]
  LOADK R4 K39 ["FacsMissingKeyFrameError2"]
  SETTABLEKS R4 R3 K14 ["FacsMissingKeyFrameError"]
  LOADK R4 K40 ["FacsMissingBaseError2"]
  SETTABLEKS R4 R3 K15 ["FacsMissingBaseError"]
  LOADK R4 K41 ["FacsMissingSupportCorrectiveWarning2"]
  SETTABLEKS R4 R3 K16 ["FacsMissingSupportCorrectiveWarning"]
  LOADK R4 K42 ["FacsNoAttributesError1"]
  SETTABLEKS R4 R3 K17 ["FacsNoAttributesError"]
  LOADK R4 K43 ["FacsHasFramesNoRootFaceJointError1"]
  SETTABLEKS R4 R3 K18 ["FacsHasFramesNoRootFaceJointError"]
  LOADK R4 K44 ["FacsRootFaceJointExtraCharsError1"]
  SETTABLEKS R4 R3 K19 ["FacsRootFaceJointExtraCharsError"]
  LOADK R4 K45 ["FacsDupeControlError3"]
  SETTABLEKS R4 R3 K20 ["FacsDupeControlError"]
  LOADK R4 K46 ["FacsEmptyAttributeWarning1"]
  SETTABLEKS R4 R3 K21 ["FacsEmptyAttributeWarning"]
  LOADK R4 K47 ["FacsUnparseableFrameNumberError1"]
  SETTABLEKS R4 R3 K22 ["FacsUnparseableFrameNumberError"]
  LOADK R4 K48 ["FacsFrameAttrNotStringError1"]
  SETTABLEKS R4 R3 K23 ["FacsFrameAttrNotStringError"]
  LOADK R4 K49 ["FacsCorrectiveDupeError3"]
  SETTABLEKS R4 R3 K24 ["FacsCorrectiveDupeError"]
  LOADK R4 K50 ["FacsInvalidCorrectiveError2"]
  SETTABLEKS R4 R3 K25 ["FacsInvalidCorrectiveError"]
  LOADK R4 K51 ["FacsUnrecognizedFACSError2"]
  SETTABLEKS R4 R3 K26 ["FacsUnrecognizedFacsError"]
  LOADK R4 K52 ["FacsMax3CorrectivesError3"]
  SETTABLEKS R4 R3 K27 ["FacsMax3CorrectivesError"]
  LOADK R4 K53 ["FacsFrameExtraCharsWarning1"]
  SETTABLEKS R4 R3 K28 ["FacsFrameExtraCharsWarning"]
  LOADK R4 K54 ["NoRefMeshForCageWithSuggestionWarning1"]
  SETTABLEKS R4 R3 K29 ["NoRefMeshForCageWithSuggestionWarning"]
  LOADK R4 K55 ["NoRefMeshForCageWithSuggestionV1Warning1"]
  SETTABLEKS R4 R3 K30 ["NoRefMeshForCageWithSuggestionV1Warning"]
  LOADK R4 K56 ["CageNameHasTypoV1Warning1"]
  SETTABLEKS R4 R3 K31 ["CageNameHasTypoV1Warning"]
  LOADK R4 K57 ["CageNameHasTypoWarning1"]
  SETTABLEKS R4 R3 K32 ["CageNameHasTypoWarning"]
  DUPCLOSURE R4 K58 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1
