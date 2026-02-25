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
       15 GETUPVAL                         R11 1
       16 GETTABLEKS                       R10 R11 K3 ["Enums"]
       18 GETTABLEKS                       R9 R10 K4 ["IconName"]
       20 GETTABLEKS                       R8 R9 K5 ["ChevronLargeUp"]
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R11 1
       24 GETTABLEKS                       R10 R11 K3 ["Enums"]
       26 GETTABLEKS                       R9 R10 K4 ["IconName"]
       28 GETTABLEKS                       R8 R9 K6 ["ChevronLargeDown"]
       30 DUPTABLE                         R11 K10 [{"id", "icon", "text"}]
       31 SETTABLEKS                       R7 R11 K7 ["id"]
       33 SETTABLEKS                       R8 R11 K8 ["icon"]
       35 LOADK                            R14 K11 ["AssetProperty"]
       36 MOVE                             R15 R7
       37 NAMECALL                         R12 R1 K12 ["getText"]
       39 CALL                             R12 3 1
       40 SETTABLEKS                       R12 R11 K9 ["text"]
       42 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       44 MOVE                             R10 R2
       45 GETIMPORT                        R9 K15 [table.insert]
       47 CALL                             R9 2 0
       48 FORGLOOP                         R3 2 ; [-43]
       50 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 0 4
       23 GETTABLEKS                       R5 R2 K10 ["AssetInfoField"]
       25 GETTABLEKS                       R4 R5 K11 ["DisplayName"]
       27 GETTABLEKS                       R6 R2 K10 ["AssetInfoField"]
       29 GETTABLEKS                       R5 R6 K12 ["Created"]
       31 GETTABLEKS                       R7 R2 K10 ["AssetInfoField"]
       33 GETTABLEKS                       R6 R7 K13 ["Modified"]
       35 GETTABLEKS                       R8 R2 K10 ["AssetInfoField"]
       37 GETTABLEKS                       R7 R8 K14 ["AssetType"]
       39 SETLIST                          R3 R4 4 [1]
       41 DUPCLOSURE                       R4 K15 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R1
       44 RETURN                           R4 1
