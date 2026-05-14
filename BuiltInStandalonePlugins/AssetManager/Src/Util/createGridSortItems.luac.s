PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 LOADK                            R8 K0 [""]
        7 JUMPIFNOT                        R0 ; [+22]
        8 GETTABLEKS                       R9 R0 K1 ["Key"]
       10 JUMPIFNOTEQ                      R9 R7 ; [+19]
       12 GETTABLEKS                       R9 R0 K2 ["IsAscending"]
       14 JUMPIFNOT                        R9 ; [+8]
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R9 R9 K3 ["Enums"]
       18 GETTABLEKS                       R9 R9 K4 ["IconName"]
       20 GETTABLEKS                       R8 R9 K5 ["ChevronLargeUp"]
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K3 ["Enums"]
       26 GETTABLEKS                       R9 R9 K4 ["IconName"]
       28 GETTABLEKS                       R8 R9 K6 ["ChevronLargeDown"]
       30 DUPTABLE                         R11 K10 [{"id", "icon", "text"}]
       31 SETTABLEKS                       R7 R11 K7 ["id"]
       33 SETTABLEKS                       R8 R11 K8 ["icon"]
       35 GETUPVAL                         R13 2
       36 CALL                             R13 0 1
       37 JUMPIFNOT                        R13 ; [+13]
       38 GETUPVAL                         R13 3
       39 GETTABLEKS                       R13 R13 K11 ["AssetInfoField"]
       41 GETTABLEKS                       R13 R13 K12 ["AssetType"]
       43 JUMPIFNOTEQ                      R7 R13 ; [+7]
       45 LOADK                            R14 K13 ["ItemProperty"]
       46 LOADK                            R15 K14 ["ItemType"]
       47 NAMECALL                         R12 R1 K15 ["getText"]
       49 CALL                             R12 3 1
       50 JUMP                             ; [+5]
       51 LOADK                            R14 K16 ["AssetProperty"]
       52 MOVE                             R15 R7
       53 NAMECALL                         R12 R1 K15 ["getText"]
       55 CALL                             R12 3 1
       56 SETTABLEKS                       R12 R11 K9 ["text"]
       58 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       60 MOVE                             R10 R2
       61 GETIMPORT                        R9 K19 [table.insert]
       63 CALL                             R9 2 0
       64 FORGLOOP                         R3 2 ; [-59]
       66 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 GETTABLEKS                       R4 R4 K11 ["getFFlagAmrAssetIdAndTypeRename"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 0 4
       32 GETTABLEKS                       R5 R2 K12 ["AssetInfoField"]
       34 GETTABLEKS                       R5 R5 K13 ["DisplayName"]
       36 GETTABLEKS                       R6 R2 K12 ["AssetInfoField"]
       38 GETTABLEKS                       R6 R6 K14 ["Created"]
       40 GETTABLEKS                       R7 R2 K12 ["AssetInfoField"]
       42 GETTABLEKS                       R7 R7 K15 ["Modified"]
       44 GETTABLEKS                       R8 R2 K12 ["AssetInfoField"]
       46 GETTABLEKS                       R8 R8 K16 ["AssetType"]
       48 SETLIST                          R4 R5 4 [1]
       50 DUPCLOSURE                       R5 K17 [PROTO_0]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R2
       55 RETURN                           R5 1
