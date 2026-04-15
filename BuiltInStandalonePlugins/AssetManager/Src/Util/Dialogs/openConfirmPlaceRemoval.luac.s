PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getPlugin"]
        3 CALL                             R0 1 1
        4 LOADK                            R3 K1 ["OnRemovePlace"]
        5 GETUPVAL                         R4 1
        6 NAMECALL                         R1 R0 K2 ["Invoke"]
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R3 K3 [{"Title", "Size", "Type"}]
        1 LOADK                            R6 K4 ["ContextMenu"]
        2 LOADK                            R7 K5 ["RemoveFromExperience"]
        3 NAMECALL                         R4 R1 K6 ["getText"]
        5 CALL                             R4 3 1
        6 SETTABLEKS                       R4 R3 K0 ["Title"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K7 ["ConfirmDialogSize"]
       11 SETTABLEKS                       R4 R3 K1 ["Size"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K8 ["DialogType"]
       16 GETTABLEKS                       R4 R5 K9 ["Confirm"]
       18 SETTABLEKS                       R4 R3 K2 ["Type"]
       20 DUPTABLE                         R4 K12 [{"Text", "ConfirmCallback"}]
       21 LOADK                            R7 K13 ["Dialogs"]
       22 LOADK                            R8 K14 ["ConfirmPlaceRemoveHeading"]
       23 NAMECALL                         R5 R1 K6 ["getText"]
       25 CALL                             R5 3 1
       26 SETTABLEKS                       R5 R4 K10 ["Text"]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R5 R4 K11 ["ConfirmCallback"]
       33 MOVE                             R7 R3
       34 MOVE                             R8 R4
       35 NAMECALL                         R5 R0 K15 ["setDialog"]
       37 CALL                             R5 3 0
       38 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Resources"]
       20 GETTABLEKS                       R3 R4 K9 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_1]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
