PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R3 R4 K0 ["editableMesh"]
        5 NAMECALL                         R0 R0 K1 ["ValidateEditableMeshUVValuesInReference"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R3 K1 [tick]
        2 CALL                             R3 0 1
        3 GETTABLEKS                       R4 R2 K2 ["isServer"]
        5 GETUPVAL                         R5 0
        6 CALL                             R5 0 1
        7 JUMPIF                           R5 ; [+2]
        8 LOADB                            R5 1
        9 RETURN                           R5 1
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R9 R1 K3 ["Parent"]
       13 GETTABLEKS                       R8 R9 K4 ["Name"]
       15 GETTABLE                         R6 R7 R8
       16 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       18 LOADK                            R7 K5 ["WrapTarget is not parented to a MeshPart"]
       19 GETIMPORT                        R5 K7 [assert]
       21 CALL                             R5 2 1
       22 GETUPVAL                         R6 2
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R0
       27 MOVE                             R8 R2
       28 CALL                             R6 2 2
       29 JUMPIF                           R6 ; [+30]
       30 GETUPVAL                         R9 4
       31 GETTABLEKS                       R8 R9 K8 ["reportFailure"]
       33 GETUPVAL                         R11 4
       34 GETTABLEKS                       R10 R11 K9 ["ErrorType"]
       36 GETTABLEKS                       R9 R10 K10 ["validateCageUVValues_FailedToLoadMesh"]
       38 LOADNIL                          R10
       39 MOVE                             R11 R2
       40 CALL                             R8 3 0
       41 GETIMPORT                        R8 K13 [string.format]
       43 LOADK                            R9 K14 ["Failed to load UVs for '%s'. Make sure the UV map exists and try again."]
       44 NAMECALL                         R10 R1 K15 ["GetFullName"]
       46 CALL                             R10 1 -1
       47 CALL                             R8 -1 1
       48 JUMPIFNOT                        R4 ; [+4]
       49 GETIMPORT                        R9 K17 [error]
       51 MOVE                             R10 R8
       52 CALL                             R9 1 0
       53 LOADB                            R9 0
       54 NEWTABLE                         R10 0 1
       56 MOVE                             R11 R8
       57 SETLIST                          R10 R11 1 [1]
       59 RETURN                           R9 2
       60 JUMPIF                           R7 ; [+24]
       61 GETUPVAL                         R9 4
       62 GETTABLEKS                       R8 R9 K8 ["reportFailure"]
       64 GETUPVAL                         R11 4
       65 GETTABLEKS                       R10 R11 K9 ["ErrorType"]
       67 GETTABLEKS                       R9 R10 K18 ["validateCageUVValues_UnexpectedUVValue"]
       69 LOADNIL                          R10
       70 MOVE                             R11 R2
       71 CALL                             R8 3 0
       72 LOADB                            R8 0
       73 NEWTABLE                         R9 0 1
       75 GETIMPORT                        R10 K13 [string.format]
       77 LOADK                            R11 K19 ["Found invalid UV value outside [0, 1] range for '%s'. You need to edit the UV map to fix this issue."]
       78 NAMECALL                         R12 R1 K15 ["GetFullName"]
       80 CALL                             R12 1 -1
       81 CALL                             R10 -1 -1
       82 SETLIST                          R9 R10 -1 [1]
       84 RETURN                           R8 2
       85 GETUPVAL                         R9 4
       86 GETTABLEKS                       R8 R9 K20 ["recordScriptTime"]
       88 GETIMPORT                        R10 K22 [script]
       90 GETTABLEKS                       R9 R10 K4 ["Name"]
       92 MOVE                             R10 R3
       93 MOVE                             R11 R2
       94 CALL                             R8 3 0
       95 LOADB                            R8 1
       96 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R4 K7 ["pcallDeferred"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["WrapTargetCageUVReferenceValues"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R6 R0 K9 ["flags"]
       30 GETTABLEKS                       R5 R6 K10 ["getEngineFeatureEngineUGCValidateBodyParts"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Analytics"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K13 [game]
       40 LOADK                            R8 K14 ["UGCValidationService"]
       41 NAMECALL                         R6 R6 K15 ["GetService"]
       43 CALL                             R6 2 1
       44 DUPCLOSURE                       R7 K16 [PROTO_1]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R5
       50 RETURN                           R7 1
