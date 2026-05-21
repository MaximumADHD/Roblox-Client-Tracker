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
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETIMPORT                        R2 K1 [error]
        8 LOADK                            R3 K2 ["ValidateMeshPartOnlySkinnedToR15 is deprecated. Use RigidSkinnedToSchema / LCSkinnedToSchema / BodySkinnedToSchema instead."]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 LOADK                            R4 K3 ["MeshId"]
       13 MOVE                             R5 R1
       14 CALL                             R2 3 2
       15 JUMPIF                           R2 ; [+23]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K4 ["reportFailure"]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K5 ["ErrorType"]
       22 GETTABLEKS                       R5 R5 K6 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
       24 LOADNIL                          R6
       25 MOVE                             R7 R1
       26 CALL                             R4 3 0
       27 LOADB                            R4 0
       28 NEWTABLE                         R5 0 1
       30 LOADK                            R7 K7 ["Could not get editable mesh data for %*. Please retry later or make a bug report."]
       31 MOVE                             R9 R0
       32 NAMECALL                         R7 R7 K8 ["format"]
       34 CALL                             R7 2 1
       35 MOVE                             R6 R7
       36 SETLIST                          R5 R6 1 [1]
       38 RETURN                           R4 2
       39 GETUPVAL                         R4 4
       40 NEWCLOSURE                       R5 P0
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          VAL R3
       43 MOVE                             R6 R1
       44 CALL                             R4 2 2
       45 JUMPIF                           R4 ; [+23]
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K4 ["reportFailure"]
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R7 R7 K5 ["ErrorType"]
       52 GETTABLEKS                       R7 R7 K6 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
       54 LOADNIL                          R8
       55 MOVE                             R9 R1
       56 CALL                             R6 3 0
       57 LOADB                            R6 0
       58 NEWTABLE                         R7 0 1
       60 LOADK                            R9 K9 ["Could not get skinning data for %*. Please retry later or make a bug report."]
       61 MOVE                             R11 R0
       62 NAMECALL                         R9 R9 K8 ["format"]
       64 CALL                             R9 2 1
       65 MOVE                             R8 R9
       66 SETLIST                          R7 R8 1 [1]
       68 RETURN                           R6 2
       69 MOVE                             R6 R5
       70 LOADNIL                          R7
       71 LOADNIL                          R8
       72 FORGPREP                         R6
       73 GETUPVAL                         R12 6
       74 GETTABLEKS                       R12 R12 K10 ["R15_STANDARD_JOINT_NAMES"]
       76 GETTABLE                         R11 R12 R10
       77 JUMPIFNOTEQKNIL                  R11 ; [+25]
       79 GETUPVAL                         R11 3
       80 GETTABLEKS                       R11 R11 K4 ["reportFailure"]
       82 GETUPVAL                         R12 3
       83 GETTABLEKS                       R12 R12 K5 ["ErrorType"]
       85 GETTABLEKS                       R12 R12 K11 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
       87 LOADNIL                          R13
       88 MOVE                             R14 R1
       89 CALL                             R11 3 0
       90 LOADB                            R11 0
       91 NEWTABLE                         R12 0 1
       93 LOADK                            R14 K12 ["%* is skinned to a non-standard joint %*. This part may only be skinned to standard R15 joints."]
       94 MOVE                             R16 R0
       95 MOVE                             R17 R10
       96 NAMECALL                         R14 R14 K8 ["format"]
       98 CALL                             R14 3 1
       99 MOVE                             R13 R14
      100 SETLIST                          R12 R13 1 [1]
      102 RETURN                           R11 2
      103 FORGLOOP                         R6 2 ; [-31]
      105 LOADB                            R6 1
      106 RETURN                           R6 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETIMPORT                        R2 K1 [error]
        8 LOADK                            R3 K2 ["ValidateMeshPartOnlySkinnedToR15 is deprecated. Use RigidSkinnedToSchema / LCSkinnedToSchema / BodySkinnedToSchema instead."]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K3 ["R15_BODY_PARTS"]
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 MOVE                             R9 R6
       17 NAMECALL                         R7 R0 K4 ["FindFirstChild"]
       19 CALL                             R7 2 1
       20 JUMPIFNOT                        R7 ; [+8]
       21 GETUPVAL                         R8 3
       22 GETTABLEKS                       R8 R8 K5 ["validateMeshPart"]
       24 MOVE                             R9 R7
       25 MOVE                             R10 R1
       26 CALL                             R8 2 2
       27 JUMPIF                           R8 ; [+1]
       28 RETURN                           R8 2
       29 FORGLOOP                         R2 2 ; [-14]
       31 LOADB                            R2 1
       32 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       37 GETTABLEKS                       R8 R0 K10 ["util"]
       39 GETTABLEKS                       R8 R8 K14 ["getEditableMeshFromContext"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K8 [require]
       44 GETTABLEKS                       R9 R0 K15 ["flags"]
       46 GETTABLEKS                       R9 R9 K16 ["getEngineFeatureEngineUGCValidationConsolidateAccessorySkinning"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K8 [require]
       51 GETTABLEKS                       R10 R0 K15 ["flags"]
       53 GETTABLEKS                       R10 R10 K17 ["getFFlagUGCValidationEnableR15plusSkinning"]
       55 CALL                             R9 1 1
       56 NEWTABLE                         R10 2 0
       58 DUPCLOSURE                       R11 K18 [PROTO_1]
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R4
       66 SETTABLEKS                       R11 R10 K19 ["validateMeshPart"]
       68 DUPCLOSURE                       R11 K20 [PROTO_2]
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R10
       73 SETTABLEKS                       R11 R10 K21 ["validateBodyParts"]
       75 RETURN                           R10 1
