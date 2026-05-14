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
       23 DUPTABLE                         R3 K32 [{"FacsIncompletePosesWarning", "FacsNearNeutralWarning", "FacsNoJointsError", "FacsMultipleRootFaceJointsError", "FacsNoRootFaceJointError", "FacsMissingKeyFrameError", "FacsMissingBaseError", "FacsMissingSupportCorrectiveWarning", "FacsNoAttributesError", "FacsHasFramesNoRootFaceJointError", "FacsRootFaceJointExtraCharsError", "FacsDupeControlError", "FacsEmptyAttributeWarning", "FacsUnparseableFrameNumberError", "FacsFrameAttrNotStringError", "FacsCorrectiveDupeError", "FacsInvalidCorrectiveError", "FacsUnrecognizedFacsError", "FacsMax3CorrectivesError", "FacsFrameExtraCharsWarning", "NoRefMeshForCageWithSuggestionWarning", "CageNameHasTypoWarning"}]
       24 LOADK                            R4 K33 ["FacsIncompletePosesWarning1"]
       25 SETTABLEKS                       R4 R3 K10 ["FacsIncompletePosesWarning"]
       27 LOADK                            R4 K34 ["FacsNearNeutralWarning1"]
       28 SETTABLEKS                       R4 R3 K11 ["FacsNearNeutralWarning"]
       30 LOADK                            R4 K35 ["FacsNoJointsError1"]
       31 SETTABLEKS                       R4 R3 K12 ["FacsNoJointsError"]
       33 LOADK                            R4 K36 ["FacsMultipleRootFaceJointsError1"]
       34 SETTABLEKS                       R4 R3 K13 ["FacsMultipleRootFaceJointsError"]
       36 LOADK                            R4 K37 ["FacsNoRootFaceJointError1"]
       37 SETTABLEKS                       R4 R3 K14 ["FacsNoRootFaceJointError"]
       39 LOADK                            R4 K38 ["FacsMissingKeyFrameError2"]
       40 SETTABLEKS                       R4 R3 K15 ["FacsMissingKeyFrameError"]
       42 LOADK                            R4 K39 ["FacsMissingBaseError2"]
       43 SETTABLEKS                       R4 R3 K16 ["FacsMissingBaseError"]
       45 LOADK                            R4 K40 ["FacsMissingSupportCorrectiveWarning2"]
       46 SETTABLEKS                       R4 R3 K17 ["FacsMissingSupportCorrectiveWarning"]
       48 LOADK                            R4 K41 ["FacsNoAttributesError1"]
       49 SETTABLEKS                       R4 R3 K18 ["FacsNoAttributesError"]
       51 LOADK                            R4 K42 ["FacsHasFramesNoRootFaceJointError1"]
       52 SETTABLEKS                       R4 R3 K19 ["FacsHasFramesNoRootFaceJointError"]
       54 LOADK                            R4 K43 ["FacsRootFaceJointExtraCharsError1"]
       55 SETTABLEKS                       R4 R3 K20 ["FacsRootFaceJointExtraCharsError"]
       57 LOADK                            R4 K44 ["FacsDupeControlError3"]
       58 SETTABLEKS                       R4 R3 K21 ["FacsDupeControlError"]
       60 LOADK                            R4 K45 ["FacsEmptyAttributeWarning1"]
       61 SETTABLEKS                       R4 R3 K22 ["FacsEmptyAttributeWarning"]
       63 LOADK                            R4 K46 ["FacsUnparseableFrameNumberError1"]
       64 SETTABLEKS                       R4 R3 K23 ["FacsUnparseableFrameNumberError"]
       66 LOADK                            R4 K47 ["FacsFrameAttrNotStringError1"]
       67 SETTABLEKS                       R4 R3 K24 ["FacsFrameAttrNotStringError"]
       69 LOADK                            R4 K48 ["FacsCorrectiveDupeError3"]
       70 SETTABLEKS                       R4 R3 K25 ["FacsCorrectiveDupeError"]
       72 LOADK                            R4 K49 ["FacsInvalidCorrectiveError2"]
       73 SETTABLEKS                       R4 R3 K26 ["FacsInvalidCorrectiveError"]
       75 LOADK                            R4 K50 ["FacsUnrecognizedFACSError2"]
       76 SETTABLEKS                       R4 R3 K27 ["FacsUnrecognizedFacsError"]
       78 LOADK                            R4 K51 ["FacsMax3CorrectivesError3"]
       79 SETTABLEKS                       R4 R3 K28 ["FacsMax3CorrectivesError"]
       81 LOADK                            R4 K52 ["FacsFrameExtraCharsWarning1"]
       82 SETTABLEKS                       R4 R3 K29 ["FacsFrameExtraCharsWarning"]
       84 LOADK                            R4 K53 ["NoRefMeshForCageWithSuggestionWarning1"]
       85 SETTABLEKS                       R4 R3 K30 ["NoRefMeshForCageWithSuggestionWarning"]
       87 LOADK                            R4 K54 ["CageNameHasTypoWarning1"]
       88 SETTABLEKS                       R4 R3 K31 ["CageNameHasTypoWarning"]
       90 DUPCLOSURE                       R4 K55 [PROTO_0]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R2
       93 RETURN                           R4 1
