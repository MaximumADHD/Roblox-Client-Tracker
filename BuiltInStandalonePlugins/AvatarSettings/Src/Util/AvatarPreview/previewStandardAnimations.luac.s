PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["getStandardAnimationCycleIds"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R2 ; [+8]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["cycleAnimationsAsync"]
       15 MOVE                             R4 R2
       16 LOADK                            R5 K2 ["CustomWalkAnimation"]
       17 LOADN                            R6 2
       18 CALL                             R3 3 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K3 ["stopAndResetToRestPose"]
       23 CALL                             R3 0 0
       24 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AnimationClipsMode"]
        3 GETIMPORT                        R3 K4 [Enum.AvatarSettingsAnimationClipsMode.CustomClips]
        5 JUMPIFNOTEQ                      R2 R3 ; [+10]
        7 GETTABLEKS                       R1 R0 K5 ["CustomWalkAnimationEnabled"]
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETTABLEKS                       R2 R0 K6 ["CustomWalkAnimationId"]
       12 JUMPIFNOTEQKN                    R2 K7 [0] ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["preview"]
        3 MOVE                             R3 R1
        4 LOADB                            R4 0
        5 GETTABLEKS                       R5 R0 K1 ["AnimationClipsMode"]
        7 GETIMPORT                        R6 K5 [Enum.AvatarSettingsAnimationClipsMode.CustomClips]
        9 JUMPIFNOTEQ                      R5 R6 ; [+10]
       11 GETTABLEKS                       R4 R0 K6 ["CustomWalkAnimationEnabled"]
       13 JUMPIFNOT                        R4 ; [+6]
       14 GETTABLEKS                       R5 R0 K7 ["CustomWalkAnimationId"]
       16 JUMPIFNOTEQKN                    R5 K8 [0] ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagAvatarSettingsPreviewStandardWalkAnimation"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["AvatarPreview"]
       24 GETTABLEKS                       R3 R3 K11 ["previewAnimationManager"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K9 ["Util"]
       33 GETTABLEKS                       R4 R4 K10 ["AvatarPreview"]
       35 GETTABLEKS                       R4 R4 K12 ["standardAnimationIds"]
       37 CALL                             R3 1 1
       38 NEWTABLE                         R4 2 0
       40 DUPCLOSURE                       R5 K13 [PROTO_0]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R5 R4 K14 ["preview"]
       46 DUPCLOSURE                       R5 K15 [PROTO_1]
       47 DUPCLOSURE                       R6 K16 [PROTO_2]
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R6 R4 K17 ["fromRules"]
       51 RETURN                           R4 1
