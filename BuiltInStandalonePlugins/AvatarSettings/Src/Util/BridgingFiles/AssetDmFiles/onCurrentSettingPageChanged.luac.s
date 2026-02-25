PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getCurrentSettingsPage"]
        3 CALL                             R1 0 1
        4 JUMPIFNOTEQ                      R1 R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["setCurrentSettingsPage"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 0
       12 JUMPIFEQKS                       R0 K2 ["Movement"] ; [+4]
       14 JUMPIFEQKS                       R1 K2 ["Movement"] ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K3 ["applyAvatarRulesWithDebounce"]
       20 CALL                             R2 0 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["AvatarSettingsProviderTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K7 ["Util"]
       22 GETTABLEKS                       R4 R5 K9 ["AvatarPreview"]
       24 GETTABLEKS                       R3 R4 K10 ["applyAvatarRulesUtil"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Src"]
       31 GETTABLEKS                       R6 R7 K7 ["Util"]
       33 GETTABLEKS                       R5 R6 K9 ["AvatarPreview"]
       35 GETTABLEKS                       R4 R5 K11 ["previewFolderUtils"]
       37 CALL                             R3 1 1
       38 DUPCLOSURE                       R4 K12 [PROTO_0]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 RETURN                           R4 1
