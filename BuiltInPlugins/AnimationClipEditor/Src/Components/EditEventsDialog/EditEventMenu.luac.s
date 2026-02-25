PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnMenuItemClicked"]
        3 GETTABLEKS                       R2 R0 K1 ["Data"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 NEWTABLE                         R3 0 0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R2
        6 DUPTABLE                         R7 K4 [{"Text", "Data", "OnItemClicked"}]
        7 LOADK                            R10 K5 ["ContextMenu"]
        8 LOADK                            R11 K6 ["EditEventName"]
        9 NAMECALL                         R8 R1 K7 ["getText"]
       11 CALL                             R8 3 1
       12 SETTABLEKS                       R8 R7 K1 ["Text"]
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R9 R10 K8 ["ACTION_KEYS"]
       17 GETTABLEKS                       R8 R9 K9 ["Edit"]
       19 SETTABLEKS                       R8 R7 K2 ["Data"]
       21 SETTABLEKS                       R4 R7 K3 ["OnItemClicked"]
       23 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       25 MOVE                             R6 R3
       26 GETIMPORT                        R5 K12 [table.insert]
       28 CALL                             R5 2 0
       29 DUPTABLE                         R7 K4 [{"Text", "Data", "OnItemClicked"}]
       30 LOADK                            R10 K5 ["ContextMenu"]
       31 LOADK                            R11 K13 ["DeleteAllSameEvents"]
       32 NAMECALL                         R8 R1 K7 ["getText"]
       34 CALL                             R8 3 1
       35 SETTABLEKS                       R8 R7 K1 ["Text"]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R9 R10 K8 ["ACTION_KEYS"]
       40 GETTABLEKS                       R8 R9 K14 ["Delete"]
       42 SETTABLEKS                       R8 R7 K2 ["Data"]
       44 SETTABLEKS                       R4 R7 K3 ["OnItemClicked"]
       46 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       48 MOVE                             R6 R3
       49 GETIMPORT                        R5 K12 [table.insert]
       51 CALL                             R5 2 0
       52 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["ShowMenu"]
        8 JUMPIFNOT                        R3 ; [+17]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K3 ["createElement"]
       12 GETUPVAL                         R5 1
       13 DUPTABLE                         R6 K6 [{"Actions", "OnMenuOpened"}]
       14 MOVE                             R9 R1
       15 NAMECALL                         R7 R0 K7 ["makeMenuActions"]
       17 CALL                             R7 2 1
       18 SETTABLEKS                       R7 R6 K4 ["Actions"]
       20 GETTABLEKS                       R7 R2 K5 ["OnMenuOpened"]
       22 SETTABLEKS                       R7 R6 K5 ["OnMenuOpened"]
       24 CALL                             R4 2 1
       25 JUMPIF                           R4 ; [+1]
       26 LOADNIL                          R4
       27 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R9 R0 K9 ["Src"]
       38 GETTABLEKS                       R8 R9 K14 ["Components"]
       40 GETTABLEKS                       R7 R8 K15 ["ContextMenu"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R1 K16 ["PureComponent"]
       45 LOADK                            R9 K17 ["EditEventMenu"]
       46 NAMECALL                         R7 R7 K18 ["extend"]
       48 CALL                             R7 2 1
       49 DUPCLOSURE                       R8 K19 [PROTO_1]
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R8 R7 K20 ["makeMenuActions"]
       53 DUPCLOSURE                       R8 K21 [PROTO_2]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R6
       56 SETTABLEKS                       R8 R7 K22 ["render"]
       58 MOVE                             R8 R5
       59 DUPTABLE                         R9 K24 [{"Localization"}]
       60 GETTABLEKS                       R10 R4 K23 ["Localization"]
       62 SETTABLEKS                       R10 R9 K23 ["Localization"]
       64 CALL                             R8 1 1
       65 MOVE                             R9 R7
       66 CALL                             R8 1 1
       67 MOVE                             R7 R8
       68 RETURN                           R7 1
