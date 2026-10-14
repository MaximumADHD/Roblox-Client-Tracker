PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+21]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["PluginController"]
        6 NAMECALL                         R0 R0 K1 ["getGameInfo"]
        8 CALL                             R0 1 1
        9 GETTABLEKS                       R0 R0 K2 ["Id"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["ExplorerController"]
       14 NAMECALL                         R1 R1 K4 ["getProjectPlacesScope"]
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 2
       18 GETUPVAL                         R3 3
       19 MOVE                             R4 R0
       20 MOVE                             R5 R1
       21 GETUPVAL                         R6 1
       22 CALL                             R2 4 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 1
       25 GETTABLEKS                       R0 R0 K0 ["PluginController"]
       27 NAMECALL                         R0 R0 K5 ["getPlugin"]
       29 CALL                             R0 1 1
       30 LOADK                            R2 K6 ["OnRemovePlace"]
       31 GETUPVAL                         R3 3
       32 NAMECALL                         R0 R0 K7 ["Invoke"]
       34 CALL                             R0 3 0
       35 RETURN                           R0 0

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
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R5 R4 K11 ["ConfirmCallback"]
       35 GETTABLEKS                       R5 R0 K15 ["PluginController"]
       37 MOVE                             R7 R3
       38 MOVE                             R8 R4
       39 NAMECALL                         R5 R5 K16 ["setDialog"]
       41 CALL                             R5 3 0
       42 RETURN                           R0 0

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
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K13 ["Flags"]
       40 GETTABLEKS                       R5 R5 K14 ["getFFlagAmrRemoveAssetManagerServiceDependency"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K15 [PROTO_1]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 RETURN                           R5 1
