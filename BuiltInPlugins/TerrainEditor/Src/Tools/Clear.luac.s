PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Terrain"]
        3 NAMECALL                         R0 R0 K1 ["Clear"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["ChangeHistoryService"]
        9 LOADK                            R2 K3 ["Cleared Terrain"]
       10 NAMECALL                         R0 R0 K4 ["SetWaypoint"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K5 ["_overrides"]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K6 ["ClearSettings"]
       19 GETTABLE                         R1 R2 R3
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K1 ["Clear"]
       23 GETTABLE                         R0 R1 R2
       24 LOADB                            R1 1
       25 SETTABLEKS                       R1 R0 K7 ["Disabled"]
       27 GETUPVAL                         R0 1
       28 GETTABLEKS                       R0 R0 K8 ["OnInternalsChanged"]
       30 NAMECALL                         R0 R0 K9 ["Fire"]
       32 CALL                             R0 1 0
       33 GETUPVAL                         R0 1
       34 GETTABLEKS                       R0 R0 K10 ["_analytics"]
       36 LOADK                            R2 K11 ["Usage"]
       37 GETUPVAL                         R3 4
       38 GETTABLEKS                       R3 R3 K1 ["Clear"]
       40 LOADN                            R4 1
       41 NAMECALL                         R0 R0 K12 ["report"]
       43 CALL                             R0 4 0
       44 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 NEWTABLE                         R3 1 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K1 ["ClearSettings"]
       12 NEWTABLE                         R5 1 0
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K2 ["Clear"]
       17 DUPTABLE                         R7 K11 [{["Disabled"], ["Hidden"] = False, ["Label"] = "", ["Schema"], ["Value"] = True}]
       18 GETTABLEKS                       R9 R2 K12 ["Terrain"]
       20 NAMECALL                         R9 R9 K13 ["CountCells"]
       22 CALL                             R9 1 1
       23 JUMPIFEQKN                       R9 K14 [0] ; [+2]
       25 LOADB                            R8 0 +1
       26 LOADB                            R8 1
       27 SETTABLEKS                       R8 R7 K3 ["Disabled"]
       29 DUPTABLE                         R8 K16 [{"OnClick"}]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U3
       36 SETTABLEKS                       R9 R8 K15 ["OnClick"]
       38 SETTABLEKS                       R8 R7 K8 ["Schema"]
       40 SETTABLE                         R7 R5 R6
       41 SETTABLE                         R5 R3 R4
       42 SETTABLEKS                       R3 R0 K17 ["_overrides"]
       44 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getPayload"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R0 K1 ["_services"]
        5 GETTABLEKS                       R3 R3 K2 ["Terrain"]
        7 NAMECALL                         R3 R3 K3 ["CountCells"]
        9 CALL                             R3 1 1
       10 JUMPIFEQKN                       R3 K4 [0] ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 GETTABLEKS                       R5 R0 K5 ["_overrides"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K6 ["ClearSettings"]
       19 GETTABLE                         R4 R5 R6
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K7 ["Clear"]
       23 GETTABLE                         R3 R4 R5
       24 GETTABLEKS                       R3 R3 K8 ["Disabled"]
       26 JUMPIFEQ                         R3 R2 ; [+18]
       28 GETTABLEKS                       R5 R0 K5 ["_overrides"]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K6 ["ClearSettings"]
       33 GETTABLE                         R4 R5 R6
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K7 ["Clear"]
       37 GETTABLE                         R3 R4 R5
       38 SETTABLEKS                       R2 R3 K8 ["Disabled"]
       40 GETTABLEKS                       R3 R0 K9 ["OnInternalsChanged"]
       42 NAMECALL                         R3 R3 K10 ["Fire"]
       44 CALL                             R3 1 0
       45 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_overrides"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["ClearSettings"]
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["Clear"]
        9 GETTABLE                         R1 R2 R3
       10 GETTABLEKS                       R3 R0 K3 ["_services"]
       12 GETTABLEKS                       R3 R3 K4 ["Terrain"]
       14 NAMECALL                         R3 R3 K5 ["CountCells"]
       16 CALL                             R3 1 1
       17 JUMPIFEQKN                       R3 K6 [0] ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 SETTABLEKS                       R2 R1 K7 ["Disabled"]
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["setDisabledState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["setDisabledState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["activate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 NAMECALL                         R1 R0 K1 ["setDisabledState"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["_services"]
       10 GETTABLEKS                       R1 R1 K3 ["ChangeHistoryService"]
       12 GETTABLEKS                       R1 R1 K4 ["OnUndo"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R1 R1 K5 ["Connect"]
       18 CALL                             R1 2 1
       19 SETTABLEKS                       R1 R0 K6 ["_undo"]
       21 GETTABLEKS                       R1 R0 K2 ["_services"]
       23 GETTABLEKS                       R1 R1 K3 ["ChangeHistoryService"]
       25 GETTABLEKS                       R1 R1 K7 ["OnRedo"]
       27 NEWCLOSURE                       R3 P1
       28 CAPTURE                          VAL R0
       29 NAMECALL                         R1 R1 K5 ["Connect"]
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K8 ["_redo"]
       34 GETTABLEKS                       R1 R0 K9 ["_analytics"]
       36 LOADK                            R3 K10 ["Activated"]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K11 ["Clear"]
       40 NAMECALL                         R1 R1 K12 ["report"]
       42 CALL                             R1 3 0
       43 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deactivate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["_undo"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R1 R0 K1 ["_undo"]
       10 NAMECALL                         R1 R1 K2 ["Disconnect"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K3 ["_redo"]
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETTABLEKS                       R1 R0 K3 ["_redo"]
       18 NAMECALL                         R1 R1 K2 ["Disconnect"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["BaseTool"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Category"]
       25 GETTABLEKS                       R4 R2 K11 ["ClearSettings"]
       27 GETTABLEKS                       R5 R2 K12 ["Tab"]
       29 GETTABLEKS                       R6 R2 K13 ["Tool"]
       31 NEWTABLE                         R7 0 1
       33 DUPTABLE                         R8 K16 [{"Defaults", "Id"}]
       34 NEWTABLE                         R9 0 0
       36 SETTABLEKS                       R9 R8 K14 ["Defaults"]
       38 GETTABLEKS                       R9 R3 K11 ["ClearSettings"]
       40 SETTABLEKS                       R9 R8 K15 ["Id"]
       42 SETLIST                          R7 R8 1 [1]
       44 NEWTABLE                         R8 0 0
       46 GETTABLEKS                       R11 R6 K17 ["Clear"]
       48 GETTABLEKS                       R12 R5 K18 ["Create"]
       50 MOVE                             R13 R7
       51 MOVE                             R14 R8
       52 NAMECALL                         R9 R1 K19 ["new"]
       54 CALL                             R9 5 1
       55 DUPCLOSURE                       R10 K20 [PROTO_1]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 SETTABLEKS                       R10 R9 K21 ["init"]
       62 DUPCLOSURE                       R10 K22 [PROTO_2]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R10 R9 K23 ["setDisabledState"]
       67 DUPCLOSURE                       R10 K24 [PROTO_3]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 SETTABLEKS                       R10 R9 K25 ["updateDisabled"]
       72 DUPCLOSURE                       R10 K26 [PROTO_6]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R6
       75 SETTABLEKS                       R10 R9 K27 ["activate"]
       77 DUPCLOSURE                       R10 K28 [PROTO_7]
       78 CAPTURE                          VAL R1
       79 SETTABLEKS                       R10 R9 K29 ["deactivate"]
       81 RETURN                           R9 1
