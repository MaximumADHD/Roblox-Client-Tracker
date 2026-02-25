PROTO_0:
        0 JUMPIFNOT                        R1 ; [+24]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R1 K0 ["Enabled"]
        4 GETTABLEKS                       R4 R0 K1 ["Actions"]
        6 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
        8 MOVE                             R5 R1
        9 GETIMPORT                        R3 K4 [table.insert]
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R4 R0 K5 ["Connections"]
       14 GETTABLEKS                       R5 R1 K6 ["Triggered"]
       16 MOVE                             R7 R2
       17 NAMECALL                         R5 R5 K7 ["Connect"]
       19 CALL                             R5 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R3 K4 [table.insert]
       23 CALL                             R3 -1 0
       24 RETURN                           R1 1
       25 LOADNIL                          R3
       26 RETURN                           R3 1

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+10]
        1 GETIMPORT                        R2 K1 [ipairs]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 3
        5 FORGPREP_INEXT                   R2
        6 LOADB                            R7 1
        7 SETTABLEKS                       R7 R6 K2 ["Enabled"]
        9 FORGLOOP                         R2 2 [inext] ; [-4]
       11 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+10]
        1 GETIMPORT                        R2 K1 [ipairs]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 3
        5 FORGPREP_INEXT                   R2
        6 LOADB                            R7 0
        7 SETTABLEKS                       R7 R6 K2 ["Enabled"]
        9 FORGLOOP                         R2 2 [inext] ; [-4]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Path2DToolMode"]
        5 JUMPIFNOTEQKS                    R0 K2 ["AddTangent"] ; [+32]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["props"]
       10 GETTABLEKS                       R0 R1 K3 ["SelectedControlPointIndex"]
       12 JUMPIFEQKN                       R0 K4 [0] ; [+31]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K0 ["props"]
       17 GETTABLEKS                       R0 R1 K5 ["SelectedTangentSide"]
       19 JUMPIFEQKNIL                     R0 ; [+24]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K0 ["props"]
       24 GETTABLEKS                       R0 R1 K6 ["dispatchClearControlPointTangent"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K0 ["props"]
       29 GETTABLEKS                       R1 R2 K3 ["SelectedControlPointIndex"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K0 ["props"]
       34 GETTABLEKS                       R2 R3 K5 ["SelectedTangentSide"]
       36 CALL                             R0 2 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R1 R2 K0 ["props"]
       41 GETTABLEKS                       R0 R1 K7 ["dispatchRemoveControlPoint"]
       43 CALL                             R0 0 0
       44 RETURN                           R0 0

PROTO_4:
        0 JUMPIFEQKS                       R0 K0 ["AbsolutePosition"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["AbsoluteSize"] ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K2 ["dispatchPathChanged"]
        7 LOADK                            R2 K3 ["Position"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["LogUsageReport"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K1 ["dispatchSelectPathCleared"]
        9 CALL                             R0 0 0
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K2 ["Actions"]
       14 NAMECALL                         R0 R0 K3 ["disableActions"]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K4 ["state"]
       20 GETTABLEKS                       R0 R1 K5 ["selectedObjectChangedConn"]
       22 JUMPIFEQKNIL                     R0 ; [+9]
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R1 R2 K4 ["state"]
       27 GETTABLEKS                       R0 R1 K5 ["selectedObjectChangedConn"]
       29 NAMECALL                         R0 R0 K6 ["Disconnect"]
       31 CALL                             R0 1 0
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R1 R2 K4 ["state"]
       35 GETTABLEKS                       R0 R1 K7 ["selectedObjectParentChangedConn"]
       37 JUMPIFEQKNIL                     R0 ; [+9]
       39 GETUPVAL                         R2 2
       40 GETTABLEKS                       R1 R2 K4 ["state"]
       42 GETTABLEKS                       R0 R1 K7 ["selectedObjectParentChangedConn"]
       44 NAMECALL                         R0 R0 K6 ["Disconnect"]
       46 CALL                             R0 1 0
       47 GETUPVAL                         R0 2
       48 LOADNIL                          R1
       49 SETTABLEKS                       R1 R0 K8 ["selectedObject"]
       51 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["selectedObject"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 JUMPIFEQKS                       R0 K1 ["Parent"] ; [+7]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["dispatchPathChanged"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["state"]
       17 GETTABLEKS                       R1 R2 K4 ["selectedObjectParentChangedConn"]
       19 JUMPIFEQKNIL                     R1 ; [+9]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K3 ["state"]
       24 GETTABLEKS                       R1 R2 K4 ["selectedObjectParentChangedConn"]
       26 NAMECALL                         R1 R1 K5 ["Disconnect"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 0
       30 DUPTABLE                         R3 K6 [{"selectedObjectParentChangedConn"}]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K0 ["selectedObject"]
       34 GETTABLEKS                       R5 R6 K1 ["Parent"]
       36 GETTABLEKS                       R4 R5 K7 ["Changed"]
       38 GETUPVAL                         R6 2
       39 NAMECALL                         R4 R4 K8 ["Connect"]
       41 CALL                             R4 2 1
       42 SETTABLEKS                       R4 R3 K4 ["selectedObjectParentChangedConn"]
       44 NAMECALL                         R1 R1 K9 ["setState"]
       46 CALL                             R1 2 0
       47 GETUPVAL                         R1 3
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R2 R3 K0 ["selectedObject"]
       51 CALL                             R1 1 1
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R3 R4 K10 ["props"]
       55 GETTABLEKS                       R2 R3 K11 ["SelectedObject"]
       57 JUMPIFEQKNIL                     R2 ; [+11]
       59 JUMPIF                           R1 ; [+9]
       60 GETUPVAL                         R3 1
       61 GETTABLEKS                       R2 R3 K12 ["dispatchSelectPathCleared"]
       63 CALL                             R2 0 0
       64 GETUPVAL                         R2 0
       65 NAMECALL                         R2 R2 K13 ["disableActions"]
       67 CALL                             R2 1 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R3 R4 K10 ["props"]
       72 GETTABLEKS                       R2 R3 K11 ["SelectedObject"]
       74 JUMPIFNOTEQKNIL                  R2 ; [+17]
       76 JUMPIFNOT                        R1 ; [+15]
       77 GETUPVAL                         R3 1
       78 GETTABLEKS                       R2 R3 K14 ["dispatchSelectPath"]
       80 GETUPVAL                         R4 0
       81 GETTABLEKS                       R3 R4 K0 ["selectedObject"]
       83 CALL                             R2 1 0
       84 GETUPVAL                         R2 0
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R4 R5 K15 ["UniversalActions"]
       88 NAMECALL                         R2 R2 K16 ["enableActions"]
       90 CALL                             R2 2 0
       91 RETURN                           R0 0
       92 GETUPVAL                         R3 1
       93 GETTABLEKS                       R2 R3 K2 ["dispatchPathChanged"]
       95 MOVE                             R3 R0
       96 CALL                             R2 1 0
       97 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [1] ; [+63]
        7 GETIMPORT                        R1 K3 [pairs]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 3
       11 FORGPREP_NEXT                    R1
       12 LOADK                            R8 K4 ["Path2D"]
       13 NAMECALL                         R6 R5 K5 ["IsA"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+47]
       17 GETTABLEKS                       R6 R5 K6 ["Parent"]
       19 JUMPIFEQKNIL                     R6 ; [+44]
       21 GETUPVAL                         R6 1
       22 MOVE                             R7 R5
       23 CALL                             R6 1 1
       24 JUMPIFNOT                        R6 ; [+12]
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R7 R8 K7 ["dispatchSelectPath"]
       28 MOVE                             R8 R5
       29 CALL                             R7 1 0
       30 GETUPVAL                         R7 3
       31 GETUPVAL                         R10 3
       32 GETTABLEKS                       R9 R10 K8 ["UniversalActions"]
       34 NAMECALL                         R7 R7 K9 ["enableActions"]
       36 CALL                             R7 2 0
       37 GETUPVAL                         R7 3
       38 SETTABLEKS                       R5 R7 K10 ["selectedObject"]
       40 GETUPVAL                         R7 3
       41 DUPTABLE                         R9 K13 [{"selectedObjectChangedConn", "selectedObjectParentChangedConn"}]
       42 GETTABLEKS                       R10 R5 K14 ["Changed"]
       44 GETUPVAL                         R12 4
       45 NAMECALL                         R10 R10 K15 ["Connect"]
       47 CALL                             R10 2 1
       48 SETTABLEKS                       R10 R9 K11 ["selectedObjectChangedConn"]
       50 GETTABLEKS                       R11 R5 K6 ["Parent"]
       52 GETTABLEKS                       R10 R11 K14 ["Changed"]
       54 GETUPVAL                         R12 5
       55 NAMECALL                         R10 R10 K15 ["Connect"]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K12 ["selectedObjectParentChangedConn"]
       60 NAMECALL                         R7 R7 K16 ["setState"]
       62 CALL                             R7 2 0
       63 JUMP                             ; [+2]
       64 GETUPVAL                         R6 6
       65 CALL                             R6 0 0
       66 FORGLOOP                         R1 2 ; [-55]
       68 RETURN                           R0 0
       69 GETUPVAL                         R1 6
       70 CALL                             R1 0 0
       71 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R2 R0 K1 ["delete"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R3 P2
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R0
       12 NEWCLOSURE                       R4 P3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K2 ["SelectionChanged"]
       20 NEWCLOSURE                       R7 P4
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 NAMECALL                         R5 R5 K3 ["Connect"]
       30 CALL                             R5 2 1
       31 DUPTABLE                         R8 K5 [{"selectionChangedConn"}]
       32 SETTABLEKS                       R5 R8 K4 ["selectionChangedConn"]
       34 NAMECALL                         R6 R0 K6 ["setState"]
       36 CALL                             R6 2 0
       37 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["PluginActions"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R0 K2 ["Connections"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R0 K3 ["Actions"]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R0 K4 ["EditingActions"]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R0 K5 ["UniversalActions"]
       20 GETTABLEKS                       R3 R0 K4 ["EditingActions"]
       22 LOADK                            R8 K6 ["DoneEditing"]
       23 NAMECALL                         R6 R1 K7 ["get"]
       25 CALL                             R6 2 1
       26 GETTABLEKS                       R8 R0 K0 ["props"]
       28 GETTABLEKS                       R7 R8 K8 ["dispatchToggleDone"]
       30 NAMECALL                         R4 R0 K9 ["addAction"]
       32 CALL                             R4 3 -1
       33 FASTCALL                         TABLE_INSERT ; [+2]
       34 GETIMPORT                        R2 K12 [table.insert]
       36 CALL                             R2 -1 0
       37 GETTABLEKS                       R3 R0 K5 ["UniversalActions"]
       39 LOADK                            R8 K13 ["MoveTool"]
       40 NAMECALL                         R6 R1 K7 ["get"]
       42 CALL                             R6 2 1
       43 GETTABLEKS                       R8 R0 K0 ["props"]
       45 GETTABLEKS                       R7 R8 K14 ["dispatchToggleMoveTool"]
       47 NAMECALL                         R4 R0 K9 ["addAction"]
       49 CALL                             R4 3 -1
       50 FASTCALL                         TABLE_INSERT ; [+2]
       51 GETIMPORT                        R2 K12 [table.insert]
       53 CALL                             R2 -1 0
       54 GETTABLEKS                       R3 R0 K5 ["UniversalActions"]
       56 LOADK                            R8 K15 ["AddPointMode"]
       57 NAMECALL                         R6 R1 K7 ["get"]
       59 CALL                             R6 2 1
       60 GETTABLEKS                       R8 R0 K0 ["props"]
       62 GETTABLEKS                       R7 R8 K16 ["dispatchToggleAddPointTool"]
       64 NAMECALL                         R4 R0 K9 ["addAction"]
       66 CALL                             R4 3 -1
       67 FASTCALL                         TABLE_INSERT ; [+2]
       68 GETIMPORT                        R2 K12 [table.insert]
       70 CALL                             R2 -1 0
       71 GETTABLEKS                       R3 R0 K5 ["UniversalActions"]
       73 LOADK                            R8 K17 ["AddTangentMode"]
       74 NAMECALL                         R6 R1 K7 ["get"]
       76 CALL                             R6 2 1
       77 GETTABLEKS                       R8 R0 K0 ["props"]
       79 GETTABLEKS                       R7 R8 K18 ["dispatchToggleAddTangentTool"]
       81 NAMECALL                         R4 R0 K9 ["addAction"]
       83 CALL                             R4 3 -1
       84 FASTCALL                         TABLE_INSERT ; [+2]
       85 GETIMPORT                        R2 K12 [table.insert]
       87 CALL                             R2 -1 0
       88 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R2 K1 ["selectionChangedConn"]
        4 JUMPIFEQKNIL                     R1 ; [+8]
        6 GETTABLEKS                       R2 R0 K0 ["state"]
        8 GETTABLEKS                       R1 R2 K1 ["selectionChangedConn"]
       10 NAMECALL                         R1 R1 K2 ["Disconnect"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R2 R0 K0 ["state"]
       15 GETTABLEKS                       R1 R2 K3 ["selectedObjectChangedConn"]
       17 JUMPIFEQKNIL                     R1 ; [+8]
       19 GETTABLEKS                       R2 R0 K0 ["state"]
       21 GETTABLEKS                       R1 R2 K3 ["selectedObjectChangedConn"]
       23 NAMECALL                         R1 R1 K2 ["Disconnect"]
       25 CALL                             R1 1 0
       26 GETTABLEKS                       R2 R0 K0 ["state"]
       28 GETTABLEKS                       R1 R2 K4 ["selectedObjectParentChangedConn"]
       30 JUMPIFEQKNIL                     R1 ; [+8]
       32 GETTABLEKS                       R2 R0 K0 ["state"]
       34 GETTABLEKS                       R1 R2 K4 ["selectedObjectParentChangedConn"]
       36 NAMECALL                         R1 R1 K2 ["Disconnect"]
       38 CALL                             R1 1 0
       39 GETTABLEKS                       R1 R0 K5 ["Connections"]
       41 JUMPIFNOT                        R1 ; [+15]
       42 GETIMPORT                        R1 K7 [ipairs]
       44 GETTABLEKS                       R2 R0 K5 ["Connections"]
       46 CALL                             R1 1 3
       47 FORGPREP_INEXT                   R1
       48 NAMECALL                         R6 R5 K2 ["Disconnect"]
       50 CALL                             R6 1 0
       51 FORGLOOP                         R1 2 [inext] ; [-4]
       53 NEWTABLE                         R1 0 0
       55 SETTABLEKS                       R1 R0 K5 ["Connections"]
       57 GETTABLEKS                       R1 R0 K8 ["Actions"]
       59 JUMPIFNOT                        R1 ; [+11]
       60 GETIMPORT                        R1 K7 [ipairs]
       62 GETTABLEKS                       R2 R0 K8 ["Actions"]
       64 CALL                             R1 1 3
       65 FORGPREP_INEXT                   R1
       66 LOADB                            R6 0
       67 SETTABLEKS                       R6 R5 K9 ["Enabled"]
       69 FORGLOOP                         R1 2 [inext] ; [-4]
       71 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["lastToolingMode"]
        4 GETTABLEKS                       R3 R1 K2 ["Path2DToolMode"]
        6 JUMPIFEQ                         R2 R3 ; [+20]
        8 GETTABLEKS                       R2 R1 K2 ["Path2DToolMode"]
       10 SETTABLEKS                       R2 R0 K1 ["lastToolingMode"]
       12 GETTABLEKS                       R2 R0 K1 ["lastToolingMode"]
       14 JUMPIFNOTEQKS                    R2 K3 ["DoneEditing"] ; [+7]
       16 GETTABLEKS                       R4 R0 K4 ["EditingActions"]
       18 NAMECALL                         R2 R0 K5 ["disableActions"]
       20 CALL                             R2 2 0
       21 JUMP                             ; [+5]
       22 GETTABLEKS                       R4 R0 K4 ["EditingActions"]
       24 NAMECALL                         R2 R0 K6 ["enableActions"]
       26 CALL                             R2 2 0
       27 LOADNIL                          R2
       28 RETURN                           R2 1

PROTO_12:
        0 DUPTABLE                         R2 K4 [{"SelectedObject", "SelectedControlPointIndex", "SelectedTangentSide", "Path2DToolMode"}]
        1 GETTABLEKS                       R4 R0 K5 ["PathReducer"]
        3 GETTABLEKS                       R3 R4 K0 ["SelectedObject"]
        5 SETTABLEKS                       R3 R2 K0 ["SelectedObject"]
        7 GETTABLEKS                       R4 R0 K5 ["PathReducer"]
        9 GETTABLEKS                       R3 R4 K1 ["SelectedControlPointIndex"]
       11 SETTABLEKS                       R3 R2 K1 ["SelectedControlPointIndex"]
       13 GETTABLEKS                       R4 R0 K5 ["PathReducer"]
       15 GETTABLEKS                       R3 R4 K2 ["SelectedTangentSide"]
       17 SETTABLEKS                       R3 R2 K2 ["SelectedTangentSide"]
       19 GETTABLEKS                       R4 R0 K5 ["PathReducer"]
       21 GETTABLEKS                       R3 R4 K3 ["Path2DToolMode"]
       23 SETTABLEKS                       R3 R2 K3 ["Path2DToolMode"]
       25 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["addPointModeCount"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["addPointModeCount"]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["addTangentModeCount"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["addTangentModeCount"]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["selectModeCount"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["selectModeCount"]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R1 K8 [{"dispatchToggleDone", "dispatchToggleAddPointTool", "dispatchToggleAddTangentTool", "dispatchToggleMoveTool", "dispatchPathChanged", "dispatchSelectPath", "dispatchSelectPathCleared", "dispatchRemoveControlPoint"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchToggleDone"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R2 R1 K1 ["dispatchToggleAddPointTool"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 SETTABLEKS                       R2 R1 K2 ["dispatchToggleAddTangentTool"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 SETTABLEKS                       R2 R1 K3 ["dispatchToggleMoveTool"]
       24 NEWCLOSURE                       R2 P4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U5
       27 SETTABLEKS                       R2 R1 K4 ["dispatchPathChanged"]
       29 NEWCLOSURE                       R2 P5
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U6
       32 SETTABLEKS                       R2 R1 K5 ["dispatchSelectPath"]
       34 NEWCLOSURE                       R2 P6
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U7
       37 SETTABLEKS                       R2 R1 K6 ["dispatchSelectPathCleared"]
       39 NEWCLOSURE                       R2 P7
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U8
       42 SETTABLEKS                       R2 R1 K7 ["dispatchRemoveControlPoint"]
       44 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R4 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R5 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R6 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K12 [game]
       39 LOADK                            R7 K13 ["Selection"]
       40 NAMECALL                         R5 R5 K14 ["GetService"]
       42 CALL                             R5 2 1
       43 GETTABLEKS                       R6 R4 K15 ["ContextServices"]
       45 GETTABLEKS                       R7 R6 K16 ["withContext"]
       47 GETTABLEKS                       R9 R0 K5 ["Src"]
       49 GETTABLEKS                       R8 R9 K17 ["Actions"]
       51 GETIMPORT                        R9 K4 [require]
       53 GETTABLEKS                       R10 R8 K18 ["SelectPath"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K4 [require]
       58 GETTABLEKS                       R11 R8 K19 ["ClearPathSelection"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K4 [require]
       63 GETTABLEKS                       R12 R8 K20 ["PathChanged"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K4 [require]
       68 GETTABLEKS                       R13 R8 K21 ["ToggleAddPointTool"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K4 [require]
       73 GETTABLEKS                       R14 R8 K22 ["ToggleMoveTool"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K4 [require]
       78 GETTABLEKS                       R15 R8 K23 ["ToggleAddTangentTool"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K4 [require]
       83 GETTABLEKS                       R16 R8 K24 ["ToggleDone"]
       85 CALL                             R15 1 1
       86 GETTABLEKS                       R17 R0 K5 ["Src"]
       88 GETTABLEKS                       R16 R17 K25 ["Thunks"]
       90 GETIMPORT                        R17 K4 [require]
       92 GETTABLEKS                       R18 R16 K26 ["RemoveControlPoint"]
       94 CALL                             R17 1 1
       95 GETTABLEKS                       R19 R0 K5 ["Src"]
       97 GETTABLEKS                       R18 R19 K27 ["Util"]
       99 GETIMPORT                        R19 K4 [require]
      101 GETTABLEKS                       R20 R18 K28 ["TelemetryGlobals"]
      103 CALL                             R19 1 1
      104 GETIMPORT                        R20 K4 [require]
      106 GETTABLEKS                       R21 R18 K29 ["isHierarchyValidForPath2D"]
      108 CALL                             R20 1 1
      109 GETIMPORT                        R21 K12 [game]
      111 LOADK                            R23 K30 ["PathEditorRBXTelemetryFixes"]
      112 NAMECALL                         R21 R21 K31 ["GetFastFlag"]
      114 CALL                             R21 2 1
      115 GETTABLEKS                       R22 R2 K32 ["PureComponent"]
      117 LOADK                            R24 K33 ["SelectionListener"]
      118 NAMECALL                         R22 R22 K34 ["extend"]
      120 CALL                             R22 2 1
      121 DUPCLOSURE                       R23 K35 [PROTO_0]
      122 SETTABLEKS                       R23 R22 K36 ["addAction"]
      124 DUPCLOSURE                       R23 K37 [PROTO_1]
      125 SETTABLEKS                       R23 R22 K38 ["enableActions"]
      127 DUPCLOSURE                       R23 K39 [PROTO_2]
      128 SETTABLEKS                       R23 R22 K40 ["disableActions"]
      130 DUPCLOSURE                       R23 K41 [PROTO_8]
      131 CAPTURE                          VAL R21
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R5
      134 SETTABLEKS                       R23 R22 K42 ["init"]
      136 DUPCLOSURE                       R23 K43 [PROTO_9]
      137 SETTABLEKS                       R23 R22 K44 ["didMount"]
      139 DUPCLOSURE                       R23 K45 [PROTO_10]
      140 SETTABLEKS                       R23 R22 K46 ["willUnmount"]
      142 DUPCLOSURE                       R23 K47 [PROTO_11]
      143 SETTABLEKS                       R23 R22 K48 ["render"]
      145 MOVE                             R23 R7
      146 DUPTABLE                         R24 K51 [{"PluginActions", "Mouse"}]
      147 GETTABLEKS                       R25 R6 K49 ["PluginActions"]
      149 SETTABLEKS                       R25 R24 K49 ["PluginActions"]
      151 GETTABLEKS                       R25 R6 K50 ["Mouse"]
      153 SETTABLEKS                       R25 R24 K50 ["Mouse"]
      155 CALL                             R23 1 1
      156 MOVE                             R24 R22
      157 CALL                             R23 1 1
      158 MOVE                             R22 R23
      159 GETTABLEKS                       R23 R3 K52 ["connect"]
      161 DUPCLOSURE                       R24 K53 [PROTO_12]
      162 DUPCLOSURE                       R25 K54 [PROTO_21]
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R17
      172 CALL                             R23 2 1
      173 MOVE                             R24 R22
      174 CALL                             R23 1 -1
      175 RETURN                           R23 -1
