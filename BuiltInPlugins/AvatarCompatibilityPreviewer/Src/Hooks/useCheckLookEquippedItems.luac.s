PROTO_0:
        0 LOADN                            R0 0
        1 LOADN                            R1 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["item"]
        8 GETTABLEKS                       R7 R7 K1 ["source"]
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R8 R8 K2 ["SOURCE_MARKETPLACE"]
       13 JUMPIFNOTEQ                      R7 R8 ; [+36]
       15 GETTABLEKS                       R7 R6 K3 ["palette"]
       17 GETTABLEKS                       R7 R7 K4 ["PublishAssetType"]
       19 JUMPIFEQKNIL                     R7 ; [+30]
       21 GETTABLEKS                       R8 R6 K5 ["isHidden"]
       23 JUMPIF                           R8 ; [+26]
       24 GETIMPORT                        R8 K8 [table.find]
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R9 R9 K9 ["CLOTHING_ASSET_TYPES"]
       29 MOVE                             R10 R7
       30 CALL                             R8 2 1
       31 GETIMPORT                        R9 K8 [table.find]
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R10 R10 K10 ["ACCESSORY_ASSET_TYPES"]
       36 MOVE                             R11 R7
       37 CALL                             R9 2 1
       38 JUMPIF                           R8 ; [+1]
       39 JUMPIFNOT                        R9 ; [+1]
       40 ADDK                             R0 R0 K11 [1]
       41 GETIMPORT                        R10 K8 [table.find]
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R11 R11 K12 ["MAKEUP_ASSET_TYPES"]
       46 MOVE                             R12 R7
       47 CALL                             R10 2 1
       48 JUMPIFNOT                        R10 ; [+1]
       49 ADDK                             R1 R1 K11 [1]
       50 FORGLOOP                         R2 2 ; [-45]
       52 DUPTABLE                         R2 K15 [{"canCreateAvatarLook", "canCreateMakeupLook"}]
       53 LOADN                            R4 1
       54 JUMPIFLE                         R4 R0 ; [+2]
       56 LOADB                            R3 0 +1
       57 LOADB                            R3 1
       58 SETTABLEKS                       R3 R2 K13 ["canCreateAvatarLook"]
       60 LOADN                            R4 2
       61 JUMPIFLE                         R4 R1 ; [+2]
       63 LOADB                            R3 0 +1
       64 LOADB                            R3 1
       65 SETTABLEKS                       R3 R2 K14 ["canCreateMakeupLook"]
       67 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["useContext"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K1 ["equippedItems"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["useMemo"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K9 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["EquipmentStateContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Flags"]
       45 GETTABLEKS                       R6 R6 K14 ["getFFlagAvatarPreviewerLookComposer"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K15 [PROTO_1]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 RETURN                           R6 1
