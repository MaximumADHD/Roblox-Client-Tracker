PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AvatarPreviewerLookComposerRelease"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R0 0
        8 CALL                             R0 0 1
        9 JUMPIFNOT                        R0 ; [+2]
       10 GETUPVAL                         R0 1
       11 CALL                             R0 0 1
       12 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagAvatarPreviewerMakeup"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Flags"]
       22 GETTABLEKS                       R3 R4 K9 ["getFFlagAvatarPreviewerMakeupDescription"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K11 [game]
       27 LOADK                            R5 K12 ["AvatarPreviewerLookComposerRelease"]
       28 LOADB                            R6 0
       29 NAMECALL                         R3 R3 K13 ["DefineFastFlag"]
       31 CALL                             R3 3 0
       32 DUPCLOSURE                       R3 K14 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 RETURN                           R3 1
