PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PluginController"]
        3 NAMECALL                         R0 R0 K1 ["getGameInfo"]
        5 CALL                             R0 1 1
        6 GETTABLEKS                       R0 R0 K2 ["Id"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["ExplorerController"]
       11 NAMECALL                         R1 R1 K4 ["getProjectPlacesScope"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 1
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R0
       17 MOVE                             R5 R1
       18 GETUPVAL                         R6 0
       19 CALL                             R2 4 0
       20 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R3 K3 [{"Title", "Size", "Type"}]
        1 LOADK                            R6 K4 ["ContextMenu"]
        2 LOADK                            R7 K5 ["RemoveFromExperience"]
        3 NAMECALL                         R4 R1 K6 ["getText"]
        5 CALL                             R4 3 1
        6 SETTABLEKS                       R4 R3 K0 ["Title"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K7 ["ConfirmDialogSize"]
       11 SETTABLEKS                       R4 R3 K1 ["Size"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K8 ["DialogType"]
       16 GETTABLEKS                       R4 R4 K9 ["Confirm"]
       18 SETTABLEKS                       R4 R3 K2 ["Type"]
       20 DUPTABLE                         R4 K12 [{"Text", "ConfirmCallback"}]
       21 LOADK                            R7 K13 ["Dialogs"]
       22 LOADK                            R8 K14 ["ConfirmPlaceRemoveHeading"]
       23 NAMECALL                         R5 R1 K6 ["getText"]
       25 CALL                             R5 3 1
       26 SETTABLEKS                       R5 R4 K10 ["Text"]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R5 R4 K11 ["ConfirmCallback"]
       34 GETTABLEKS                       R5 R0 K15 ["PluginController"]
       36 MOVE                             R7 R3
       37 MOVE                             R8 R4
       38 NAMECALL                         R5 R5 K16 ["setDialog"]
       40 CALL                             R5 3 0
       41 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Resources"]
       20 GETTABLEKS                       R3 R3 K9 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["PlaceManagement"]
       31 GETTABLEKS                       R4 R4 K12 ["removePlace"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K13 [PROTO_1]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 RETURN                           R4 1
