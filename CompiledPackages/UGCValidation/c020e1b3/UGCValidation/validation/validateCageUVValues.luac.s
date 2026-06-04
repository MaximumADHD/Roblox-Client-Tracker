PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["editableMesh"]
        5 NAMECALL                         R0 R0 K1 ["ValidateEditableMeshUVValuesInReference"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R3 K1 [tick]
        2 CALL                             R3 0 1
        3 GETTABLEKS                       R4 R2 K2 ["isServer"]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R8 R1 K3 ["Parent"]
        8 GETTABLEKS                       R8 R8 K4 ["Name"]
       10 GETTABLE                         R6 R7 R8
       11 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       13 LOADK                            R7 K5 ["WrapTarget is not parented to a MeshPart"]
       14 GETIMPORT                        R5 K7 [assert]
       16 CALL                             R5 2 1
       17 GETUPVAL                         R6 1
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R5
       21 CAPTURE                          VAL R0
       22 MOVE                             R8 R2
       23 CALL                             R6 2 2
       24 JUMPIF                           R6 ; [+30]
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K8 ["reportFailure"]
       28 GETUPVAL                         R9 3
       29 GETTABLEKS                       R9 R9 K9 ["ErrorType"]
       31 GETTABLEKS                       R9 R9 K10 ["validateCageUVValues_FailedToLoadMesh"]
       33 LOADNIL                          R10
       34 MOVE                             R11 R2
       35 CALL                             R8 3 0
       36 GETIMPORT                        R8 K13 [string.format]
       38 LOADK                            R9 K14 ["Failed to load UVs for '%s'. Make sure the UV map exists and try again."]
       39 NAMECALL                         R10 R1 K15 ["GetFullName"]
       41 CALL                             R10 1 -1
       42 CALL                             R8 -1 1
       43 JUMPIFNOT                        R4 ; [+4]
       44 GETIMPORT                        R9 K17 [error]
       46 MOVE                             R10 R8
       47 CALL                             R9 1 0
       48 LOADB                            R9 0
       49 NEWTABLE                         R10 0 1
       51 MOVE                             R11 R8
       52 SETLIST                          R10 R11 1 [1]
       54 RETURN                           R9 2
       55 JUMPIF                           R7 ; [+24]
       56 GETUPVAL                         R8 3
       57 GETTABLEKS                       R8 R8 K8 ["reportFailure"]
       59 GETUPVAL                         R9 3
       60 GETTABLEKS                       R9 R9 K9 ["ErrorType"]
       62 GETTABLEKS                       R9 R9 K18 ["validateCageUVValues_UnexpectedUVValue"]
       64 LOADNIL                          R10
       65 MOVE                             R11 R2
       66 CALL                             R8 3 0
       67 LOADB                            R8 0
       68 NEWTABLE                         R9 0 1
       70 GETIMPORT                        R10 K13 [string.format]
       72 LOADK                            R11 K19 ["Found invalid UV value outside [0, 1] range for '%s'. You need to edit the UV map to fix this issue."]
       73 NAMECALL                         R12 R1 K15 ["GetFullName"]
       75 CALL                             R12 1 -1
       76 CALL                             R10 -1 -1
       77 SETLIST                          R9 R10 -1 [1]
       79 RETURN                           R8 2
       80 GETUPVAL                         R8 3
       81 GETTABLEKS                       R8 R8 K20 ["recordScriptTime"]
       83 GETIMPORT                        R9 K22 [script]
       85 GETTABLEKS                       R9 R9 K4 ["Name"]
       87 MOVE                             R10 R3
       88 MOVE                             R11 R2
       89 CALL                             R8 3 0
       90 LOADB                            R8 1
       91 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["pcallDeferred"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["WrapTargetCageUVReferenceValues"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Analytics"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K11 [game]
       33 LOADK                            R7 K12 ["UGCValidationService"]
       34 NAMECALL                         R5 R5 K13 ["GetService"]
       36 CALL                             R5 2 1
       37 DUPCLOSURE                       R6 K14 [PROTO_1]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 RETURN                           R6 1
