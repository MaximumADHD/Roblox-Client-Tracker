PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getCurrentSettingsPage"]
        3 CALL                             R1 0 1
        4 JUMPIFNOTEQ                      R1 R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["setCurrentSettingsPage"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 1
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+4]
       15 GETUPVAL                         R2 2
       16 LOADB                            R3 1
       17 MOVE                             R4 R0
       18 CALL                             R2 2 0
       19 JUMPIFEQKS                       R0 K2 ["Movement"] ; [+4]
       21 JUMPIFEQKS                       R1 K2 ["Movement"] ; [+2]
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K3 ["applyAvatarRulesWithDebounce"]
       27 CALL                             R2 0 0
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarSettingsProviderTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["AvatarPreview"]
       24 GETTABLEKS                       R3 R3 K10 ["applyAvatarRulesUtil"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Util"]
       33 GETTABLEKS                       R4 R4 K9 ["AvatarPreview"]
       35 GETTABLEKS                       R4 R4 K11 ["applyRemovalHighlights"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Src"]
       42 GETTABLEKS                       R5 R5 K12 ["Flags"]
       44 GETTABLEKS                       R5 R5 K13 ["getFFlagAvatarSettingsPreviewRemovalHighlight"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K6 ["Src"]
       51 GETTABLEKS                       R6 R6 K7 ["Util"]
       53 GETTABLEKS                       R6 R6 K9 ["AvatarPreview"]
       55 GETTABLEKS                       R6 R6 K14 ["previewFolderUtils"]
       57 CALL                             R5 1 1
       58 DUPCLOSURE                       R6 K15 [PROTO_0]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R5
       63 RETURN                           R6 1
