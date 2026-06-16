PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["addSort"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 LOADK                            R9 K0 [""]
        7 JUMPIFNOT                        R1 ; [+22]
        8 GETTABLEKS                       R10 R1 K1 ["Key"]
       10 JUMPIFNOTEQ                      R10 R8 ; [+19]
       12 GETTABLEKS                       R10 R1 K2 ["IsAscending"]
       14 JUMPIFNOT                        R10 ; [+8]
       15 GETUPVAL                         R10 1
       16 GETTABLEKS                       R10 R10 K3 ["Enums"]
       18 GETTABLEKS                       R10 R10 K4 ["IconName"]
       20 GETTABLEKS                       R9 R10 K5 ["ChevronLargeUp"]
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R10 R10 K3 ["Enums"]
       26 GETTABLEKS                       R10 R10 K4 ["IconName"]
       28 GETTABLEKS                       R9 R10 K6 ["ChevronLargeDown"]
       30 DUPTABLE                         R12 K11 [{"id", "icon", "text", "onActivated"}]
       31 SETTABLEKS                       R8 R12 K7 ["id"]
       33 SETTABLEKS                       R9 R12 K8 ["icon"]
       35 GETUPVAL                         R14 2
       36 GETTABLEKS                       R14 R14 K12 ["AssetInfoField"]
       38 GETTABLEKS                       R14 R14 K13 ["AssetType"]
       40 JUMPIFNOTEQ                      R8 R14 ; [+7]
       42 LOADK                            R15 K14 ["ItemProperty"]
       43 LOADK                            R16 K15 ["ItemType"]
       44 NAMECALL                         R13 R2 K16 ["getText"]
       46 CALL                             R13 3 1
       47 JUMP                             ; [+5]
       48 LOADK                            R15 K17 ["AssetProperty"]
       49 MOVE                             R16 R8
       50 NAMECALL                         R13 R2 K16 ["getText"]
       52 CALL                             R13 3 1
       53 SETTABLEKS                       R13 R12 K9 ["text"]
       55 NEWCLOSURE                       R13 P0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R8
       58 SETTABLEKS                       R13 R12 K10 ["onActivated"]
       60 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       62 MOVE                             R11 R3
       63 GETIMPORT                        R10 K20 [table.insert]
       65 CALL                             R10 2 0
       66 FORGLOOP                         R4 2 ; [-61]
       68 RETURN                           R3 1

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
       21 NEWTABLE                         R3 0 4
       23 GETTABLEKS                       R4 R2 K10 ["AssetInfoField"]
       25 GETTABLEKS                       R4 R4 K11 ["DisplayName"]
       27 GETTABLEKS                       R5 R2 K10 ["AssetInfoField"]
       29 GETTABLEKS                       R5 R5 K12 ["Created"]
       31 GETTABLEKS                       R6 R2 K10 ["AssetInfoField"]
       33 GETTABLEKS                       R6 R6 K13 ["Modified"]
       35 GETTABLEKS                       R7 R2 K10 ["AssetInfoField"]
       37 GETTABLEKS                       R7 R7 K14 ["AssetType"]
       39 SETLIST                          R3 R4 4 [1]
       41 DUPCLOSURE                       R4 K15 [PROTO_1]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 RETURN                           R4 1
