PROTO_0:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R3 1
        4 NAMECALL                         R1 R1 K0 ["GetSkinnedJointNamesFromEditableMesh"]
        6 CALL                             R1 2 -1
        7 SETLIST                          R0 R1 -1 [1]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["MeshId"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 2
        5 JUMPIF                           R2 ; [+23]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K1 ["reportFailure"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R6 R7 K2 ["ErrorType"]
       12 GETTABLEKS                       R5 R6 K3 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
       14 LOADNIL                          R6
       15 MOVE                             R7 R1
       16 CALL                             R4 3 0
       17 LOADB                            R4 0
       18 NEWTABLE                         R5 0 1
       20 LOADK                            R7 K4 ["Could not get editable mesh data for %*. Please retry later or make a bug report."]
       21 MOVE                             R9 R0
       22 NAMECALL                         R7 R7 K5 ["format"]
       24 CALL                             R7 2 1
       25 MOVE                             R6 R7
       26 SETLIST                          R5 R6 1 [1]
       28 RETURN                           R4 2
       29 GETUPVAL                         R4 2
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R3
       33 MOVE                             R6 R1
       34 CALL                             R4 2 2
       35 JUMPIF                           R4 ; [+23]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K1 ["reportFailure"]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R8 R9 K2 ["ErrorType"]
       42 GETTABLEKS                       R7 R8 K3 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
       44 LOADNIL                          R8
       45 MOVE                             R9 R1
       46 CALL                             R6 3 0
       47 LOADB                            R6 0
       48 NEWTABLE                         R7 0 1
       50 LOADK                            R9 K6 ["Could not get skinning data for %*. Please retry later or make a bug report."]
       51 MOVE                             R11 R0
       52 NAMECALL                         R9 R9 K5 ["format"]
       54 CALL                             R9 2 1
       55 MOVE                             R8 R9
       56 SETLIST                          R7 R8 1 [1]
       58 RETURN                           R6 2
       59 MOVE                             R6 R5
       60 LOADNIL                          R7
       61 LOADNIL                          R8
       62 FORGPREP                         R6
       63 GETUPVAL                         R13 4
       64 GETTABLEKS                       R12 R13 K7 ["R15_STANDARD_JOINT_NAMES"]
       66 GETTABLE                         R11 R12 R10
       67 JUMPIFNOTEQKNIL                  R11 ; [+25]
       69 GETUPVAL                         R12 1
       70 GETTABLEKS                       R11 R12 K1 ["reportFailure"]
       72 GETUPVAL                         R14 1
       73 GETTABLEKS                       R13 R14 K2 ["ErrorType"]
       75 GETTABLEKS                       R12 R13 K8 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
       77 LOADNIL                          R13
       78 MOVE                             R14 R1
       79 CALL                             R11 3 0
       80 LOADB                            R11 0
       81 NEWTABLE                         R12 0 1
       83 LOADK                            R14 K9 ["%* is skinned to a non-standard joint %*. This part may only be skinned to standard R15 joints."]
       84 MOVE                             R16 R0
       85 MOVE                             R17 R10
       86 NAMECALL                         R14 R14 K5 ["format"]
       88 CALL                             R14 3 1
       89 MOVE                             R13 R14
       90 SETLIST                          R12 R13 1 [1]
       92 RETURN                           R11 2
       93 FORGLOOP                         R6 2 ; [-31]
       95 LOADB                            R6 1
       96 RETURN                           R6 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R2 R5 K0 ["R15_BODY_PARTS"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R9 R6
        7 NAMECALL                         R7 R0 K1 ["FindFirstChild"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+8]
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R8 R9 K2 ["validateMeshPart"]
       14 MOVE                             R9 R7
       15 MOVE                             R10 R1
       16 CALL                             R8 2 2
       17 JUMPIF                           R8 ; [+1]
       18 RETURN                           R8 2
       19 FORGLOOP                         R2 2 ; [-14]
       21 LOADB                            R2 1
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["UGCValidationService"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R0 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R0 K10 ["util"]
       20 GETIMPORT                        R4 K8 [require]
       22 GETTABLEKS                       R5 R0 K11 ["Constants"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K8 [require]
       27 GETTABLEKS                       R6 R3 K12 ["Types"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K8 [require]
       32 GETTABLEKS                       R7 R3 K13 ["pcallDeferred"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K8 [require]
       37 GETTABLEKS                       R9 R0 K10 ["util"]
       39 GETTABLEKS                       R8 R9 K14 ["getEditableMeshFromContext"]
       41 CALL                             R7 1 1
       42 NEWTABLE                         R8 2 0
       44 DUPCLOSURE                       R9 K15 [PROTO_1]
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 SETTABLEKS                       R9 R8 K16 ["validateMeshPart"]
       52 DUPCLOSURE                       R9 K17 [PROTO_2]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R8
       55 SETTABLEKS                       R9 R8 K18 ["validateBodyParts"]
       57 RETURN                           R8 1
