PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["resumeAsync"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R5 K0 ["InsertObjectDataModelController"]
        1 NAMECALL                         R3 R0 K1 ["GetPluginComponent"]
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 0
        5 NEWTABLE                         R6 0 1
        7 MOVE                             R7 R1
        8 SETLIST                          R6 R7 1 [1]
       10 NAMECALL                         R4 R4 K2 ["Set"]
       12 CALL                             R4 2 0
       13 GETUPVAL                         R4 1
       14 CALL                             R4 0 1
       15 LOADNIL                          R5
       16 GETTABLEKS                       R6 R3 K3 ["ClosedPopup"]
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          REF R5
       21 CAPTURE                          VAL R4
       22 NAMECALL                         R6 R6 K4 ["Connect"]
       24 CALL                             R6 2 1
       25 MOVE                             R5 R6
       26 DUPTABLE                         R8 K7 [{"TargetWidgetUri", "Offset"}]
       27 GETUPVAL                         R9 2
       28 SETTABLEKS                       R9 R8 K5 ["TargetWidgetUri"]
       30 SETTABLEKS                       R2 R8 K6 ["Offset"]
       32 MOVE                             R9 R1
       33 NAMECALL                         R6 R3 K8 ["OpenPopupAsync"]
       35 CALL                             R6 3 0
       36 GETTABLEKS                       R6 R4 K9 ["awaitAsync"]
       38 CALL                             R6 0 0
       39 CLOSEUPVALS                      R5
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ExplorerPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Util"]
       19 GETTABLEKS                       R3 R4 K12 ["ExplorerGuiUri"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R6 R1 K10 ["Src"]
       26 GETTABLEKS                       R5 R6 K11 ["Util"]
       28 GETTABLEKS                       R4 R5 K13 ["createAsyncFence"]
       30 CALL                             R3 1 1
       31 DUPCLOSURE                       R4 K14 [PROTO_1]
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 RETURN                           R4 1
