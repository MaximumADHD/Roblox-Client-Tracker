PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["form"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 LOADB                            R8 0
       12 GETTABLEKS                       R9 R7 K1 ["Children"]
       14 LOADNIL                          R10
       15 LOADNIL                          R11
       16 FORGPREP                         R9
       17 GETTABLEKS                       R14 R13 K2 ["Hidden"]
       19 JUMPIF                           R14 ; [+1]
       20 LOADB                            R8 1
       21 FORGLOOP                         R9 2 ; [-5]
       23 JUMPIFNOT                        R8 ; [+1]
       24 SETTABLE                         R7 R2 R6
       25 FORGLOOP                         R3 2 ; [-15]
       27 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_overrides"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["UpgradeSettings"]
        6 GETTABLE                         R2 R3 R4
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["SmoothVoxels"]
       10 GETTABLE                         R1 R2 R3
       11 NOT                              R2 R0
       12 SETTABLEKS                       R2 R1 K3 ["Hidden"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K4 ["OnInternalsChanged"]
       17 NAMECALL                         R1 R1 K5 ["Fire"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getPayload"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["_localization"]
        9 LOADK                            R5 K2 ["Operations"]
       10 LOADK                            R7 K3 ["%*Name"]
       11 GETUPVAL                         R9 2
       12 GETTABLEKS                       R9 R9 K4 ["SmoothVoxels"]
       14 NAMECALL                         R7 R7 K5 ["format"]
       16 CALL                             R7 2 1
       17 MOVE                             R6 R7
       18 NAMECALL                         R3 R3 K6 ["getText"]
       20 CALL                             R3 3 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K1 ["_localization"]
       24 LOADK                            R6 K2 ["Operations"]
       25 LOADK                            R8 K7 ["%*Description"]
       26 GETUPVAL                         R10 2
       27 GETTABLEKS                       R10 R10 K4 ["SmoothVoxels"]
       29 NAMECALL                         R8 R8 K5 ["format"]
       31 CALL                             R8 2 1
       32 MOVE                             R7 R8
       33 NAMECALL                         R4 R4 K6 ["getText"]
       35 CALL                             R4 3 1
       36 GETUPVAL                         R5 3
       37 NEWCLOSURE                       R6 P0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U2
       41 CALL                             R2 4 1
       42 SETTABLEKS                       R2 R1 K8 ["_operation"]
       44 GETUPVAL                         R1 0
       45 GETTABLEKS                       R1 R1 K8 ["_operation"]
       47 DUPTABLE                         R3 K10 [{"Payload"}]
       48 SETTABLEKS                       R0 R3 K9 ["Payload"]
       50 NAMECALL                         R1 R1 K11 ["start"]
       52 CALL                             R1 2 0
       53 GETUPVAL                         R1 0
       54 GETTABLEKS                       R1 R1 K12 ["OnOperationChanged"]
       56 NAMECALL                         R1 R1 K13 ["Fire"]
       58 CALL                             R1 1 0
       59 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 NEWTABLE                         R3 1 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K1 ["UpgradeSettings"]
       12 NEWTABLE                         R5 1 0
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K2 ["SmoothVoxels"]
       17 GETUPVAL                         R8 3
       18 CALL                             R8 0 1
       19 JUMPIFNOT                        R8 ; [+29]
       20 DUPTABLE                         R7 K10 [{["Hidden"], ["Label"] = "", ["Layout"], ["Schema"], ["Value"] = True}]
       21 GETTABLEKS                       R9 R2 K11 ["Terrain"]
       23 NOT                              R8 R9
       24 JUMPIF                           R8 ; [+6]
       25 GETTABLEKS                       R9 R2 K11 ["Terrain"]
       27 NAMECALL                         R9 R9 K12 ["CanSmoothVoxelsBeUpgraded"]
       29 CALL                             R9 1 1
       30 NOT                              R8 R9
       31 SETTABLEKS                       R8 R7 K3 ["Hidden"]
       33 GETIMPORT                        R8 K16 [Enum.FillDirection.Vertical]
       35 SETTABLEKS                       R8 R7 K6 ["Layout"]
       37 DUPTABLE                         R8 K18 [{"OnClick"}]
       38 NEWCLOSURE                       R9 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R2
       43 CAPTURE                          UPVAL U1
       44 SETTABLEKS                       R9 R8 K17 ["OnClick"]
       46 SETTABLEKS                       R8 R7 K7 ["Schema"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R7
       50 SETTABLE                         R7 R5 R6
       51 SETTABLE                         R5 R3 R4
       52 SETTABLEKS                       R3 R0 K19 ["_overrides"]
       54 NAMECALL                         R3 R0 K20 ["createConnections"]
       56 CALL                             R3 1 0
       57 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_operation"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+26]
        3 GETTABLEKS                       R3 R0 K0 ["_overrides"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["UpgradeSettings"]
        8 GETTABLE                         R2 R3 R4
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["SmoothVoxels"]
       12 GETTABLE                         R1 R2 R3
       13 GETTABLEKS                       R3 R0 K3 ["_services"]
       15 GETTABLEKS                       R3 R3 K4 ["Terrain"]
       17 NOT                              R2 R3
       18 JUMPIF                           R2 ; [+8]
       19 GETTABLEKS                       R3 R0 K3 ["_services"]
       21 GETTABLEKS                       R3 R3 K4 ["Terrain"]
       23 NAMECALL                         R3 R3 K5 ["CanSmoothVoxelsBeUpgraded"]
       25 CALL                             R3 1 1
       26 NOT                              R2 R3
       27 SETTABLEKS                       R2 R1 K6 ["Hidden"]
       29 GETTABLEKS                       R1 R0 K7 ["OnInternalsChanged"]
       31 NAMECALL                         R1 R1 K8 ["Fire"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["updateUpgrades"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["updateUpgrades"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_services"]
        2 GETTABLEKS                       R1 R1 K1 ["ChangeHistoryService"]
        4 GETTABLEKS                       R1 R1 K2 ["OnUndo"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R1 R1 K3 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K4 ["_changeHistoryOnUndoConnection"]
       13 GETTABLEKS                       R1 R0 K0 ["_services"]
       15 GETTABLEKS                       R1 R1 K1 ["ChangeHistoryService"]
       17 GETTABLEKS                       R1 R1 K5 ["OnRedo"]
       19 NEWCLOSURE                       R3 P1
       20 CAPTURE                          VAL R0
       21 NAMECALL                         R1 R1 K3 ["Connect"]
       23 CALL                             R1 2 1
       24 SETTABLEKS                       R1 R0 K6 ["_changeHistoryOnRedoConnection"]
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["activate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 NAMECALL                         R1 R0 K1 ["createConnections"]
        7 CALL                             R1 1 0
        8 NAMECALL                         R1 R0 K2 ["updateUpgrades"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deactivate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["_changeHistoryOnUndoConnection"]
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETTABLEKS                       R1 R0 K1 ["_changeHistoryOnUndoConnection"]
       10 NAMECALL                         R1 R1 K2 ["Disconnect"]
       12 CALL                             R1 1 0
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K1 ["_changeHistoryOnUndoConnection"]
       16 GETTABLEKS                       R1 R0 K3 ["_changeHistoryOnRedoConnection"]
       18 JUMPIFNOT                        R1 ; [+8]
       19 GETTABLEKS                       R1 R0 K3 ["_changeHistoryOnRedoConnection"]
       21 NAMECALL                         R1 R1 K2 ["Disconnect"]
       23 CALL                             R1 1 0
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K3 ["_changeHistoryOnRedoConnection"]
       27 RETURN                           R0 0

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
       25 GETTABLEKS                       R4 R2 K11 ["Tab"]
       27 GETTABLEKS                       R5 R2 K12 ["Tool"]
       29 GETTABLEKS                       R6 R2 K13 ["UpgradeSettings"]
       31 GETTABLEKS                       R7 R0 K8 ["Src"]
       33 GETTABLEKS                       R7 R7 K14 ["Util"]
       35 GETTABLEKS                       R7 R7 K15 ["Operations"]
       37 GETIMPORT                        R8 K5 [require]
       39 GETTABLEKS                       R9 R7 K16 ["SmoothVoxelsOperation"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K8 ["Src"]
       46 GETTABLEKS                       R10 R10 K17 ["Flags"]
       48 GETTABLEKS                       R10 R10 K18 ["getFFlagSmoothVoxels_Tooling"]
       50 CALL                             R9 1 1
       51 NEWTABLE                         R10 0 1
       53 DUPTABLE                         R11 K21 [{"Defaults", "Id"}]
       54 NEWTABLE                         R12 0 0
       56 SETTABLEKS                       R12 R11 K19 ["Defaults"]
       58 GETTABLEKS                       R12 R3 K13 ["UpgradeSettings"]
       60 SETTABLEKS                       R12 R11 K20 ["Id"]
       62 SETLIST                          R10 R11 1 [1]
       64 NEWTABLE                         R11 0 0
       66 GETTABLEKS                       R14 R5 K22 ["Empty"]
       68 GETTABLEKS                       R15 R4 K23 ["None"]
       70 MOVE                             R16 R10
       71 MOVE                             R17 R11
       72 NAMECALL                         R12 R1 K24 ["new"]
       74 CALL                             R12 5 1
       75 DUPCLOSURE                       R13 K25 [PROTO_0]
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R13 R12 K26 ["form"]
       79 DUPCLOSURE                       R13 K27 [PROTO_3]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R8
       85 SETTABLEKS                       R13 R12 K28 ["init"]
       87 DUPCLOSURE                       R13 K29 [PROTO_4]
       88 SETTABLEKS                       R13 R12 K30 ["operation"]
       90 DUPCLOSURE                       R13 K31 [PROTO_5]
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R13 R12 K32 ["updateUpgrades"]
       96 DUPCLOSURE                       R13 K33 [PROTO_8]
       97 SETTABLEKS                       R13 R12 K34 ["createConnections"]
       99 DUPCLOSURE                       R13 K35 [PROTO_9]
      100 CAPTURE                          VAL R1
      101 SETTABLEKS                       R13 R12 K36 ["activate"]
      103 DUPCLOSURE                       R13 K37 [PROTO_10]
      104 CAPTURE                          VAL R1
      105 SETTABLEKS                       R13 R12 K38 ["deactivate"]
      107 RETURN                           R12 1
