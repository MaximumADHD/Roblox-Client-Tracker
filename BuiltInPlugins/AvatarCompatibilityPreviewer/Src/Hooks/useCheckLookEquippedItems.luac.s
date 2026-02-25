PROTO_0:
        0 LOADN                            R0 0
        1 LOADN                            R1 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R8 R6 K0 ["item"]
        8 GETTABLEKS                       R7 R8 K1 ["source"]
       10 GETUPVAL                         R9 1
       11 GETTABLEKS                       R8 R9 K2 ["SOURCE_MARKETPLACE"]
       13 JUMPIFNOTEQ                      R7 R8 ; [+33]
       15 GETTABLEKS                       R8 R6 K3 ["palette"]
       17 GETTABLEKS                       R7 R8 K4 ["PublishAssetType"]
       19 JUMPIFEQKNIL                     R7 ; [+27]
       21 GETIMPORT                        R8 K7 [table.find]
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R9 R10 K8 ["CLOTHING_ASSET_TYPES"]
       26 MOVE                             R10 R7
       27 CALL                             R8 2 1
       28 GETIMPORT                        R9 K7 [table.find]
       30 GETUPVAL                         R11 1
       31 GETTABLEKS                       R10 R11 K9 ["ACCESSORY_ASSET_TYPES"]
       33 MOVE                             R11 R7
       34 CALL                             R9 2 1
       35 JUMPIF                           R8 ; [+1]
       36 JUMPIFNOT                        R9 ; [+1]
       37 ADDK                             R0 R0 K10 [1]
       38 GETIMPORT                        R10 K7 [table.find]
       40 GETUPVAL                         R12 1
       41 GETTABLEKS                       R11 R12 K11 ["MAKEUP_ASSET_TYPES"]
       43 MOVE                             R12 R7
       44 CALL                             R10 2 1
       45 JUMPIFNOT                        R10 ; [+1]
       46 ADDK                             R1 R1 K10 [1]
       47 FORGLOOP                         R2 2 ; [-42]
       49 DUPTABLE                         R2 K14 [{"canCreateAvatarLook", "canCreateMakeupLook"}]
       50 LOADN                            R4 1
       51 JUMPIFLE                         R4 R0 ; [+2]
       53 LOADB                            R3 0 +1
       54 LOADB                            R3 1
       55 SETTABLEKS                       R3 R2 K12 ["canCreateAvatarLook"]
       57 LOADN                            R4 2
       58 JUMPIFLE                         R4 R1 ; [+2]
       60 LOADB                            R3 0 +1
       61 LOADB                            R3 1
       62 SETTABLEKS                       R3 R2 K13 ["canCreateMakeupLook"]
       64 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K0 ["useContext"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K1 ["equippedItems"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U3
       18 NEWTABLE                         R4 0 1
       20 MOVE                             R5 R1
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R5 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K9 ["Util"]
       36 GETTABLEKS                       R5 R6 K12 ["EquipmentStateContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R8 K13 ["Flags"]
       45 GETTABLEKS                       R6 R7 K14 ["getFFlagAvatarPreviewerLookComposer"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K15 [PROTO_1]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 RETURN                           R6 1
