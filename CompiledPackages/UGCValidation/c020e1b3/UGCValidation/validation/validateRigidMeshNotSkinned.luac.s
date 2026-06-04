PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["DoesMeshHaveSkinningData"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 2
        6 JUMPIF                           R2 ; [+18]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K0 ["reportFailure"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K1 ["ErrorType"]
       13 GETTABLEKS                       R5 R5 K2 ["validateRigidMeshSkinning_FailedToDownload"]
       15 LOADNIL                          R6
       16 MOVE                             R7 R1
       17 CALL                             R4 3 0
       18 LOADB                            R4 0
       19 NEWTABLE                         R5 0 1
       21 LOADK                            R6 K3 ["Could not verify underlying mesh data. Please try again or make a bug report."]
       22 SETLIST                          R5 R6 1 [1]
       24 RETURN                           R4 2
       25 JUMPIFNOT                        R3 ; [+18]
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K0 ["reportFailure"]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K1 ["ErrorType"]
       32 GETTABLEKS                       R5 R5 K4 ["validateRigidMeshSkinning_BonesFoundInMesh"]
       34 LOADNIL                          R6
       35 MOVE                             R7 R1
       36 CALL                             R4 3 0
       37 LOADB                            R4 0
       38 NEWTABLE                         R5 0 1
       40 LOADK                            R6 K5 ["This accessory mesh has underlying skinning data, which is not supported for rigid accessories. Ensure that you are not importing bones when loading the mesh into Studio."]
       41 SETLIST                          R5 R6 1 [1]
       43 RETURN                           R4 2
       44 LOADB                            R4 1
       45 RETURN                           R4 1

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
       23 GETTABLEKS                       R4 R0 K8 ["Analytics"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [game]
       28 LOADK                            R6 K11 ["UGCValidationService"]
       29 NAMECALL                         R4 R4 K12 ["GetService"]
       31 CALL                             R4 2 1
       32 DUPCLOSURE                       R5 K13 [PROTO_1]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 RETURN                           R5 1
