PROTO_0:
        0 GETUPVAL                         R6 0
        1 GETTABLE                         R5 R6 R1
        2 OR                               R4 R5 R1
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R0
        5 LOADK                            R7 K0 ["Statuses"]
        6 MOVE                             R8 R4
        7 MOVE                             R9 R3
        8 CALL                             R5 4 1
        9 JUMPIF                           R5 ; [+13]
       10 LOADK                            R8 K0 ["Statuses"]
       11 GETIMPORT                        R9 K3 [string.format]
       13 LOADK                            R10 K4 ["Default%s1"]
       14 MOVE                             R11 R2
       15 CALL                             R9 2 1
       16 DUPTABLE                         R10 K6 [{"type"}]
       17 SETTABLEKS                       R1 R10 K5 ["type"]
       19 NAMECALL                         R6 R0 K7 ["getText"]
       21 CALL                             R6 4 1
       22 MOVE                             R5 R6
       23 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Utility"]
       20 GETTABLEKS                       R3 R3 K9 ["GetLocalizedString"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K54 [{["FacsIncompletePosesWarning"] = "FacsIncompletePosesWarning1", ["FacsNearNeutralWarning"] = "FacsNearNeutralWarning1", ["FacsNoJointsError"] = "FacsNoJointsError1", ["FacsMultipleRootFaceJointsError"] = "FacsMultipleRootFaceJointsError1", ["FacsNoRootFaceJointError"] = "FacsNoRootFaceJointError1", ["FacsMissingKeyFrameError"] = "FacsMissingKeyFrameError2", ["FacsMissingBaseError"] = "FacsMissingBaseError2", ["FacsMissingSupportCorrectiveWarning"] = "FacsMissingSupportCorrectiveWarning2", ["FacsNoAttributesError"] = "FacsNoAttributesError1", ["FacsHasFramesNoRootFaceJointError"] = "FacsHasFramesNoRootFaceJointError1", ["FacsRootFaceJointExtraCharsError"] = "FacsRootFaceJointExtraCharsError1", ["FacsDupeControlError"] = "FacsDupeControlError3", ["FacsEmptyAttributeWarning"] = "FacsEmptyAttributeWarning1", ["FacsUnparseableFrameNumberError"] = "FacsUnparseableFrameNumberError1", ["FacsFrameAttrNotStringError"] = "FacsFrameAttrNotStringError1", ["FacsCorrectiveDupeError"] = "FacsCorrectiveDupeError3", ["FacsInvalidCorrectiveError"] = "FacsInvalidCorrectiveError2", ["FacsUnrecognizedFacsError"] = "FacsUnrecognizedFACSError2", ["FacsMax3CorrectivesError"] = "FacsMax3CorrectivesError3", ["FacsFrameExtraCharsWarning"] = "FacsFrameExtraCharsWarning1", ["NoRefMeshForCageWithSuggestionWarning"] = "NoRefMeshForCageWithSuggestionWarning1", ["CageNameHasTypoWarning"] = "CageNameHasTypoWarning1"}]
       24 DUPCLOSURE                       R4 K55 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R2
       27 RETURN                           R4 1
