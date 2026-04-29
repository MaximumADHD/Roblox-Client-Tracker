PROTO_0:
        0 LOADK                            R7 K0 ["ThumbnailConfiguration"]
        1 NAMECALL                         R5 R0 K1 ["FindFirstChild"]
        3 CALL                             R5 2 1
        4 JUMPIFNOT                        R5 ; [+86]
        5 LOADK                            R8 K2 ["ThumbnailCameraTarget"]
        6 NAMECALL                         R6 R5 K1 ["FindFirstChild"]
        8 CALL                             R6 2 1
        9 GETTABLEKS                       R7 R6 K3 ["Value"]
       11 JUMPIFEQ                         R7 R1 ; [+25]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K4 ["reportFailure"]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K5 ["ErrorType"]
       19 GETTABLEKS                       R8 R9 K6 ["validateThumbnailConfiguration_InvalidTarget"]
       21 LOADNIL                          R9
       22 MOVE                             R10 R4
       23 CALL                             R7 3 0
       24 LOADB                            R7 0
       25 NEWTABLE                         R8 0 1
       27 GETIMPORT                        R9 K9 [string.format]
       29 LOADK                            R10 K10 ["Invalid target asset for thumbnail generation. Expected it to be '%s'."]
       30 NAMECALL                         R11 R1 K11 ["GetFullName"]
       32 CALL                             R11 1 -1
       33 CALL                             R9 -1 -1
       34 SETLIST                          R8 R9 -1 [1]
       36 RETURN                           R7 2
       37 GETIMPORT                        R7 K13 [game]
       39 LOADK                            R9 K14 ["EngineUGCValidateThumbnailerMeshInFrustum"]
       40 NAMECALL                         R7 R7 K15 ["GetEngineFeature"]
       42 CALL                             R7 2 1
       43 JUMPIFNOT                        R7 ; [+47]
       44 GETUPVAL                         R7 1
       45 JUMPIFNOT                        R7 ; [+45]
       46 GETTABLEKS                       R7 R6 K3 ["Value"]
       48 GETTABLEKS                       R8 R7 K16 ["CFrame"]
       50 LOADK                            R11 K17 ["ThumbnailCameraValue"]
       51 NAMECALL                         R9 R5 K1 ["FindFirstChild"]
       53 CALL                             R9 2 1
       54 GETTABLEKS                       R11 R9 K3 ["Value"]
       56 MUL                              R10 R8 R11
       57 GETUPVAL                         R11 2
       58 GETTABLEKS                       R13 R2 K18 ["editableMesh"]
       60 MOVE                             R14 R3
       61 MOVE                             R15 R8
       62 MOVE                             R16 R10
       63 NAMECALL                         R11 R11 K19 ["CheckEditableMeshInCameraFrustum"]
       65 CALL                             R11 5 1
       66 JUMPIFNOTEQKB                    R11 FALSE ; [+24]
       68 GETUPVAL                         R12 0
       69 GETTABLEKS                       R11 R12 K4 ["reportFailure"]
       71 GETUPVAL                         R14 0
       72 GETTABLEKS                       R13 R14 K5 ["ErrorType"]
       74 GETTABLEKS                       R12 R13 K20 ["validateThumbnailConfiguration_OutsideView"]
       76 LOADNIL                          R13
       77 MOVE                             R14 R4
       78 CALL                             R11 3 0
       79 LOADB                            R11 0
       80 NEWTABLE                         R12 0 1
       82 GETIMPORT                        R13 K9 [string.format]
       84 LOADK                            R14 K21 ["Asset '%s' is positioned outside the thumbnail camera view. You need to reposition the asset at the center of the camera view and try again."]
       85 GETTABLEKS                       R15 R2 K22 ["fullName"]
       87 CALL                             R13 2 -1
       88 SETLIST                          R12 R13 -1 [1]
       90 RETURN                           R11 2
       91 LOADB                            R6 1
       92 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UGCValidationAddThumbnailFrustumCheckingv2"]
       10 LOADB                            R4 0
       11 NAMECALL                         R1 R1 K5 ["DefineFastFlag"]
       13 CALL                             R1 3 1
       14 GETIMPORT                        R4 K7 [script]
       16 GETTABLEKS                       R3 R4 K8 ["Parent"]
       18 GETTABLEKS                       R2 R3 K8 ["Parent"]
       20 GETIMPORT                        R3 K10 [require]
       22 GETTABLEKS                       R5 R2 K11 ["util"]
       24 GETTABLEKS                       R4 R5 K12 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R5 R2 K13 ["Analytics"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K14 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R0
       36 RETURN                           R5 1
