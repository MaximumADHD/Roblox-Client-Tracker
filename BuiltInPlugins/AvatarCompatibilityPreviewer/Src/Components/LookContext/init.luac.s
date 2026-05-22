PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canCreateAvatarLook"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["canCreateMakeupLook"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["canCreateAvatarLook"]
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K0 ["canCreateAvatarLook"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K1 ["canCreateMakeupLook"]
       16 JUMPIFNOT                        R3 ; [+3]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K1 ["canCreateMakeupLook"]
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K2 ["equippableItems"]
       23 LENGTH                           R5 R6
       24 LOADN                            R6 1
       25 JUMPIFLE                         R6 R5 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 JUMPIF                           R0 ; [+2]
       30 MOVE                             R5 R1
       31 JUMPIFNOT                        R5 ; [+1]
       32 MOVE                             R5 R4
       33 DUPTABLE                         R6 K6 [{"showLookSaveMenu", "showCreateAvatarLook", "showCreateMakeupLook", "canCreateAvatarLook", "canCreateMakeupLook"}]
       34 SETTABLEKS                       R5 R6 K3 ["showLookSaveMenu"]
       36 SETTABLEKS                       R0 R6 K4 ["showCreateAvatarLook"]
       38 SETTABLEKS                       R1 R6 K5 ["showCreateMakeupLook"]
       40 SETTABLEKS                       R2 R6 K0 ["canCreateAvatarLook"]
       42 SETTABLEKS                       R3 R6 K1 ["canCreateMakeupLook"]
       44 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["useContext"]
        8 GETUPVAL                         R2 2
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 3
       11 JUMPIFEQ                         R1 R2 ; [+4]
       13 GETTABLEKS                       R2 R0 K1 ["children"]
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 4
       17 CALL                             R2 0 1
       18 GETUPVAL                         R3 5
       19 CALL                             R3 0 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K0 ["useContext"]
       23 GETUPVAL                         R5 6
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R7 0 5
       34 GETTABLEKS                       R8 R2 K3 ["canCreateAvatarLook"]
       36 GETTABLEKS                       R9 R2 K4 ["canCreateMakeupLook"]
       38 GETTABLEKS                       R10 R3 K3 ["canCreateAvatarLook"]
       40 GETTABLEKS                       R11 R3 K4 ["canCreateMakeupLook"]
       42 GETTABLEKS                       R12 R4 K5 ["equippableItems"]
       44 SETLIST                          R7 R8 5 [1]
       46 CALL                             R5 2 1
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K6 ["createElement"]
       50 GETUPVAL                         R7 2
       51 GETTABLEKS                       R7 R7 K7 ["Provider"]
       53 DUPTABLE                         R8 K9 [{"value"}]
       54 SETTABLEKS                       R5 R8 K8 ["value"]
       56 GETTABLEKS                       R9 R0 K1 ["children"]
       58 CALL                             R6 3 -1
       59 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["useCanCreateLookAsync"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R4 K11 ["useCheckLookEquippedItems"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Components"]
       36 GETTABLEKS                       R5 R5 K13 ["MarketplaceCatalogContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Flags"]
       45 GETTABLEKS                       R6 R6 K15 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
       47 CALL                             R5 1 1
       48 DUPTABLE                         R6 K21 [{"showLookSaveMenu", "showCreateAvatarLook", "showCreateMakeupLook", "canCreateAvatarLook", "canCreateMakeupLook"}]
       49 LOADB                            R7 0
       50 SETTABLEKS                       R7 R6 K16 ["showLookSaveMenu"]
       52 LOADB                            R7 0
       53 SETTABLEKS                       R7 R6 K17 ["showCreateAvatarLook"]
       55 LOADB                            R7 0
       56 SETTABLEKS                       R7 R6 K18 ["showCreateMakeupLook"]
       58 LOADB                            R7 0
       59 SETTABLEKS                       R7 R6 K19 ["canCreateAvatarLook"]
       61 LOADB                            R7 0
       62 SETTABLEKS                       R7 R6 K20 ["canCreateMakeupLook"]
       64 GETTABLEKS                       R7 R1 K22 ["createContext"]
       66 MOVE                             R8 R6
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R8 K23 [PROTO_1]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R4
       76 DUPTABLE                         R9 K26 [{"Context", "Provider"}]
       77 SETTABLEKS                       R7 R9 K24 ["Context"]
       79 SETTABLEKS                       R8 R9 K25 ["Provider"]
       81 RETURN                           R9 1
