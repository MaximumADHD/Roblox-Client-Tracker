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
       12 JUMPIFEQKS                       R0 K2 ["Movement"] ; [+4]
       14 JUMPIFEQKS                       R1 K2 ["Movement"] ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K3 ["applyAvatarRulesWithDebounce"]
       20 CALL                             R2 0 0
       21 RETURN                           R0 0

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
       35 GETTABLEKS                       R4 R4 K11 ["previewFolderUtils"]
       37 CALL                             R3 1 1
       38 DUPCLOSURE                       R4 K12 [PROTO_0]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 RETURN                           R4 1
