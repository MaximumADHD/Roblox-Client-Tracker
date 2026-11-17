PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["join"]
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K2 [{"ChangeHistoryServiceRecording"}]
        5 GETTABLEKS                       R6 R1 K3 ["Recording"]
        7 JUMPIFNOT                        R6 ; [+3]
        8 GETTABLEKS                       R5 R1 K3 ["Recording"]
       10 JUMP                             ; [+3]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["None"]
       14 SETTABLEKS                       R5 R4 K1 ["ChangeHistoryServiceRecording"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["join"]
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K2 [{"AddPointSubMode"}]
        5 GETTABLEKS                       R5 R1 K3 ["SubMode"]
        7 SETTABLEKS                       R5 R4 K1 ["AddPointSubMode"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["join"]
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K2 [{"IsDraggingPoint"}]
        5 GETTABLEKS                       R5 R1 K3 ["Dragging"]
        7 SETTABLEKS                       R5 R4 K1 ["IsDraggingPoint"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["join"]
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K3 [{"IsDraggingPoint", "ToolbarHovered"}]
        5 GETTABLEKS                       R6 R1 K4 ["Hovered"]
        7 JUMPIFNOT                        R6 ; [+2]
        8 LOADB                            R5 0
        9 JUMP                             ; [+1]
       10 LOADNIL                          R5
       11 SETTABLEKS                       R5 R4 K1 ["IsDraggingPoint"]
       13 GETTABLEKS                       R5 R1 K4 ["Hovered"]
       15 SETTABLEKS                       R5 R4 K2 ["ToolbarHovered"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Path2DToolMode"]
        2 JUMPIFNOTEQKS                    R2 K1 ["DoneEditing"] ; [+3]
        4 LOADK                            R1 K2 ["Move"]
        5 JUMP                             ; [+1]
        6 LOADK                            R1 K1 ["DoneEditing"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["join"]
       10 MOVE                             R3 R0
       11 DUPTABLE                         R4 K4 [{"Path2DToolMode"}]
       12 SETTABLEKS                       R1 R4 K0 ["Path2DToolMode"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K3 [{["Path2DToolMode"] = "Move"}]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["ControlPoints"]
        2 LENGTH                           R2 R3
        3 LOADN                            R3 2
        4 JUMPIFNOTLT                      R2 R3 ; [+3]
        6 LOADK                            R1 K1 ["Append"]
        7 JUMP                             ; [+1]
        8 LOADK                            R1 K2 ["Unselected"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["join"]
       12 MOVE                             R3 R0
       13 DUPTABLE                         R4 K9 [{["Path2DToolMode"] = "AddPoint", ["AddPointSubMode"], ["SelectedControlPointIndex"] = 0}]
       14 SETTABLEKS                       R1 R4 K6 ["AddPointSubMode"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K3 [{["Path2DToolMode"] = "AddTangent"}]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["SelectedObject"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 1
        5 GETTABLEKS                       R3 R1 K1 ["PropChanged"]
        7 JUMPIFNOTEQKS                    R3 K2 ["Parent"] ; [+6]
        9 GETUPVAL                         R3 0
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R0 1
       14 NAMECALL                         R3 R2 K3 ["GetControlPoints"]
       16 CALL                             R3 1 1
       17 LOADNIL                          R4
       18 NAMECALL                         R6 R2 K3 ["GetControlPoints"]
       20 CALL                             R6 1 1
       21 LENGTH                           R5 R6
       22 GETTABLEKS                       R7 R0 K4 ["ControlPointStates"]
       24 LENGTH                           R6 R7
       25 JUMPIFEQ                         R5 R6 ; [+5]
       27 GETUPVAL                         R5 1
       28 MOVE                             R6 R3
       29 CALL                             R5 1 1
       30 MOVE                             R4 R5
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R6 R2 K2 ["Parent"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R2 K2 ["Parent"]
       37 GETTABLEKS                       R6 R6 K5 ["AbsoluteSize"]
       39 GETUPVAL                         R8 3
       40 GETTABLEKS                       R9 R2 K2 ["Parent"]
       42 LOADK                            R10 K6 ["AbsoluteRotation"]
       43 CALL                             R8 2 1
       44 JUMPIFNOT                        R8 ; [+5]
       45 GETTABLEKS                       R7 R2 K2 ["Parent"]
       47 GETTABLEKS                       R7 R7 K6 ["AbsoluteRotation"]
       49 JUMP                             ; [+1]
       50 LOADN                            R7 0
       51 GETUPVAL                         R8 4
       52 GETTABLEKS                       R8 R8 K7 ["join"]
       54 MOVE                             R9 R0
       55 DUPTABLE                         R10 K15 [{"Refreshed", "ControlPoints", "ControlPointStates", "ParentAbsPos", "ParentAbsSize", "Path2DToolMode", "ParentAbsRotation", "SelectedObjectGui"}]
       56 GETIMPORT                        R11 K17 [tick]
       58 CALL                             R11 0 1
       59 SETTABLEKS                       R11 R10 K8 ["Refreshed"]
       61 SETTABLEKS                       R3 R10 K9 ["ControlPoints"]
       63 SETTABLEKS                       R4 R10 K4 ["ControlPointStates"]
       65 SETTABLEKS                       R5 R10 K10 ["ParentAbsPos"]
       67 SETTABLEKS                       R6 R10 K11 ["ParentAbsSize"]
       69 LENGTH                           R12 R3
       70 GETUPVAL                         R13 5
       71 GETTABLEKS                       R13 R13 K18 ["MaxControlPoints"]
       73 JUMPIFNOTLE                      R13 R12 ; [+7]
       75 GETTABLEKS                       R12 R0 K12 ["Path2DToolMode"]
       77 JUMPIFNOTEQKS                    R12 K19 ["AddPoint"] ; [+3]
       79 LOADK                            R11 K20 ["Move"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R11
       82 SETTABLEKS                       R11 R10 K12 ["Path2DToolMode"]
       84 SETTABLEKS                       R7 R10 K13 ["ParentAbsRotation"]
       86 GETUPVAL                         R11 6
       87 MOVE                             R12 R2
       88 CALL                             R11 1 1
       89 SETTABLEKS                       R11 R10 K14 ["SelectedObjectGui"]
       91 CALL                             R8 2 -1
       92 RETURN                           R8 -1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["object"]
        2 GETTABLEKS                       R3 R0 K1 ["SelectedObject"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+2]
        6 RETURN                           R0 1
        7 GETTABLEKS                       R2 R1 K0 ["object"]
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 RETURN                           R0 1
       12 NAMECALL                         R3 R2 K2 ["GetControlPoints"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R5 R2 K3 ["Parent"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R2 K3 ["Parent"]
       21 GETTABLEKS                       R5 R5 K4 ["AbsoluteSize"]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R8 R2 K3 ["Parent"]
       26 LOADK                            R9 K5 ["AbsoluteRotation"]
       27 CALL                             R7 2 1
       28 JUMPIFNOT                        R7 ; [+5]
       29 GETTABLEKS                       R6 R2 K3 ["Parent"]
       31 GETTABLEKS                       R6 R6 K5 ["AbsoluteRotation"]
       33 JUMP                             ; [+1]
       34 LOADN                            R6 0
       35 LENGTH                           R8 R3
       36 LOADN                            R9 1
       37 JUMPIFNOTLT                      R9 R8 ; [+3]
       39 LOADK                            R7 K6 ["DoneEditing"]
       40 JUMP                             ; [+1]
       41 LOADK                            R7 K7 ["AddPoint"]
       42 LENGTH                           R9 R3
       43 LOADN                            R10 1
       44 JUMPIFNOTLT                      R10 R9 ; [+3]
       46 LOADK                            R8 K8 ["Unselected"]
       47 JUMP                             ; [+1]
       48 LOADK                            R8 K9 ["Append"]
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R9 R9 K10 ["join"]
       52 MOVE                             R10 R0
       53 DUPTABLE                         R11 K21 [{["SelectedObject"], ["SelectedObjectGui"], ["ControlPoints"], ["ControlPointStates"], ["SelectedControlPointIndex"] = 0, ["ParentAbsPos"], ["ParentAbsSize"], ["ParentAbsRotation"], ["Path2DToolMode"], ["AddPointSubMode"]}]
       54 SETTABLEKS                       R2 R11 K1 ["SelectedObject"]
       56 GETUPVAL                         R12 3
       57 MOVE                             R13 R2
       58 CALL                             R12 1 1
       59 SETTABLEKS                       R12 R11 K11 ["SelectedObjectGui"]
       61 SETTABLEKS                       R3 R11 K12 ["ControlPoints"]
       63 GETUPVAL                         R12 4
       64 MOVE                             R13 R3
       65 CALL                             R12 1 1
       66 SETTABLEKS                       R12 R11 K13 ["ControlPointStates"]
       68 SETTABLEKS                       R4 R11 K16 ["ParentAbsPos"]
       70 SETTABLEKS                       R5 R11 K17 ["ParentAbsSize"]
       72 SETTABLEKS                       R6 R11 K18 ["ParentAbsRotation"]
       74 SETTABLEKS                       R7 R11 K19 ["Path2DToolMode"]
       76 SETTABLEKS                       R8 R11 K20 ["AddPointSubMode"]
       78 CALL                             R9 2 -1
       79 RETURN                           R9 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["join"]
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K10 [{["SelectedObject"], ["ControlPoints"], ["ControlPointStates"], ["SelectedControlPointIndex"] = 0, ["LockSelectedControlPoint"] = False, ["Path2DToolMode"] = "DoneEditing"}]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K11 ["None"]
        8 SETTABLEKS                       R5 R4 K1 ["SelectedObject"]
       10 NEWTABLE                         R5 0 0
       12 SETTABLEKS                       R5 R4 K2 ["ControlPoints"]
       14 NEWTABLE                         R5 0 0
       16 SETTABLEKS                       R5 R4 K3 ["ControlPointStates"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["DeselectedControlPointIndex"]
        2 GETTABLEKS                       R3 R1 K1 ["Index"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+2]
        6 LOADN                            R2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["join"]
       10 MOVE                             R4 R0
       11 DUPTABLE                         R5 K4 [{"SelectedControlPointIndex", "DeselectedControlPointIndex"}]
       12 GETTABLEKS                       R6 R1 K1 ["Index"]
       14 SETTABLEKS                       R6 R5 K3 ["SelectedControlPointIndex"]
       16 SETTABLEKS                       R2 R5 K0 ["DeselectedControlPointIndex"]
       18 CALL                             R3 2 -1
       19 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["join"]
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K2 [{"SelectedTangentSide"}]
        5 GETTABLEKS                       R6 R1 K3 ["Side"]
        7 JUMPIFNOT                        R6 ; [+3]
        8 GETTABLEKS                       R5 R1 K3 ["Side"]
       10 JUMP                             ; [+3]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["None"]
       14 SETTABLEKS                       R5 R4 K1 ["SelectedTangentSide"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["join"]
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K4 [{["SelectedControlPointIndex"] = 0, ["DeselectedControlPointIndex"]}]
        5 GETTABLEKS                       R5 R0 K1 ["SelectedControlPointIndex"]
        7 SETTABLEKS                       R5 R4 K3 ["DeselectedControlPointIndex"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["SelectedControlPointIndex"]
        2 GETTABLEKS                       R3 R0 K1 ["ControlPoints"]
        4 GETTABLEKS                       R4 R0 K0 ["SelectedControlPointIndex"]
        6 LOADN                            R5 0
        7 JUMPIFLE                         R4 R5 ; [+8]
        9 GETTABLEKS                       R4 R0 K0 ["SelectedControlPointIndex"]
       11 GETTABLEKS                       R6 R0 K1 ["ControlPoints"]
       13 LENGTH                           R5 R6
       14 JUMPIFNOTLT                      R5 R4 ; [+4]
       16 LOADB                            R4 0
       17 SETTABLEKS                       R4 R1 K2 ["Locked"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K3 ["join"]
       22 MOVE                             R5 R0
       23 DUPTABLE                         R6 K6 [{"LockSelectedControlPoint", "LockedPoint"}]
       24 GETTABLEKS                       R7 R1 K2 ["Locked"]
       26 SETTABLEKS                       R7 R6 K4 ["LockSelectedControlPoint"]
       28 GETTABLEKS                       R8 R1 K2 ["Locked"]
       30 JUMPIFNOT                        R8 ; [+2]
       31 GETTABLE                         R7 R3 R2
       32 JUMP                             ; [+1]
       33 LOADNIL                          R7
       34 SETTABLEKS                       R7 R6 K5 ["LockedPoint"]
       36 CALL                             R4 2 -1
       37 RETURN                           R4 -1

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["Index"]
        2 GETIMPORT                        R3 K3 [table.clone]
        4 GETTABLEKS                       R4 R0 K4 ["ControlPointStates"]
        6 CALL                             R3 1 1
        7 GETIMPORT                        R4 K3 [table.clone]
        9 GETTABLE                         R5 R3 R2
       10 CALL                             R4 1 1
       11 SETTABLE                         R4 R3 R2
       12 GETTABLE                         R4 R3 R2
       13 GETTABLE                         R6 R3 R2
       14 GETTABLEKS                       R6 R6 K5 ["Mirrored"]
       16 NOT                              R5 R6
       17 SETTABLEKS                       R5 R4 K5 ["Mirrored"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K6 ["join"]
       22 MOVE                             R5 R0
       23 DUPTABLE                         R6 K7 [{"ControlPointStates"}]
       24 SETTABLEKS                       R3 R6 K4 ["ControlPointStates"]
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["Index"]
        2 GETIMPORT                        R3 K3 [table.clone]
        4 GETTABLEKS                       R4 R0 K4 ["ControlPointStates"]
        6 CALL                             R3 1 1
        7 GETIMPORT                        R4 K3 [table.clone]
        9 GETTABLE                         R5 R3 R2
       10 CALL                             R4 1 1
       11 SETTABLE                         R4 R3 R2
       12 GETTABLE                         R4 R3 R2
       13 GETTABLE                         R6 R3 R2
       14 GETTABLEKS                       R6 R6 K5 ["Sharp"]
       16 NOT                              R5 R6
       17 SETTABLEKS                       R5 R4 K5 ["Sharp"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K6 ["join"]
       22 MOVE                             R5 R0
       23 DUPTABLE                         R6 K7 [{"ControlPointStates"}]
       24 SETTABLEKS                       R3 R6 K4 ["ControlPointStates"]
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1

PROTO_17:
        0 GETTABLEKS                       R2 R1 K0 ["Index"]
        2 GETIMPORT                        R3 K3 [table.clone]
        4 GETTABLEKS                       R4 R0 K4 ["ControlPointStates"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R1 K5 ["State"]
        9 SETTABLE                         R4 R3 R2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K6 ["join"]
       13 MOVE                             R5 R0
       14 DUPTABLE                         R6 K7 [{"ControlPointStates"}]
       15 SETTABLEKS                       R3 R6 K4 ["ControlPointStates"]
       17 CALL                             R4 2 -1
       18 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["Dash"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Resources"]
       36 GETTABLEKS                       R5 R5 K11 ["Constants"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R0 K5 ["Src"]
       41 GETTABLEKS                       R5 R5 K12 ["Actions"]
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R7 R5 K13 ["ChangeControlPointState"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R8 R5 K14 ["ClearPathSelection"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R9 R5 K15 ["DeselectControlPoint"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K4 [require]
       60 GETTABLEKS                       R10 R5 K16 ["LockSelectedControlPoint"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K4 [require]
       65 GETTABLEKS                       R11 R5 K17 ["PathChanged"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K4 [require]
       70 GETTABLEKS                       R12 R5 K18 ["SelectControlPoint"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K4 [require]
       75 GETTABLEKS                       R13 R5 K19 ["SelectPath"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K4 [require]
       80 GETTABLEKS                       R14 R5 K20 ["SelectTangentSide"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K4 [require]
       85 GETTABLEKS                       R15 R5 K21 ["SetAddPointSubMode"]
       87 CALL                             R14 1 1
       88 GETIMPORT                        R15 K4 [require]
       90 GETTABLEKS                       R16 R5 K22 ["SetIsDraggingPoint"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K4 [require]
       95 GETTABLEKS                       R17 R5 K23 ["SetRecording"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K4 [require]
      100 GETTABLEKS                       R18 R5 K24 ["ToggleAddPointTool"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K4 [require]
      105 GETTABLEKS                       R19 R5 K25 ["ToggleAddTangentTool"]
      107 CALL                             R18 1 1
      108 GETIMPORT                        R19 K4 [require]
      110 GETTABLEKS                       R20 R5 K26 ["ToggleDone"]
      112 CALL                             R19 1 1
      113 GETIMPORT                        R20 K4 [require]
      115 GETTABLEKS                       R21 R5 K27 ["ToggleMirrored"]
      117 CALL                             R20 1 1
      118 GETIMPORT                        R21 K4 [require]
      120 GETTABLEKS                       R22 R5 K28 ["ToggleMoveTool"]
      122 CALL                             R21 1 1
      123 GETIMPORT                        R22 K4 [require]
      125 GETTABLEKS                       R23 R5 K29 ["ToggleSharp"]
      127 CALL                             R22 1 1
      128 GETIMPORT                        R23 K4 [require]
      130 GETTABLEKS                       R24 R5 K30 ["ToolbarHovered"]
      132 CALL                             R23 1 1
      133 GETTABLEKS                       R24 R0 K5 ["Src"]
      135 GETTABLEKS                       R24 R24 K31 ["Util"]
      137 GETIMPORT                        R25 K4 [require]
      139 GETTABLEKS                       R26 R24 K32 ["findTopLevelGui"]
      141 CALL                             R25 1 1
      142 GETIMPORT                        R26 K4 [require]
      144 GETTABLEKS                       R27 R24 K33 ["getControlPointStates"]
      146 CALL                             R26 1 1
      147 GETIMPORT                        R27 K4 [require]
      149 GETTABLEKS                       R28 R24 K34 ["getAbsolutePosition"]
      151 CALL                             R27 1 1
      152 GETIMPORT                        R28 K4 [require]
      154 GETTABLEKS                       R29 R24 K35 ["isHierarchyValidForPath2D"]
      156 CALL                             R28 1 1
      157 GETIMPORT                        R29 K4 [require]
      159 GETTABLEKS                       R30 R24 K36 ["hasProperty"]
      161 CALL                             R29 1 1
      162 GETTABLEKS                       R30 R2 K37 ["createReducer"]
      164 DUPTABLE                         R31 K55 [{["AddPointSubMode"] = "Unselected", ["ControlPoints"], ["ControlPointStates"], ["DeselectedControlPointIndex"] = 0, ["IsDraggingPoint"] = False, ["LockSelectedControlPoint"] = False, ["ParentAbsPos"], ["ParentAbsSize"], ["ParentAbsRotation"] = 0, ["Path2DToolMode"] = "DoneEditing", ["Refreshed"] = 0, ["ScalePositionMode"] = True, ["SelectedControlPointIndex"] = 0, ["ToolbarHovered"] = False}]
      165 NEWTABLE                         R32 0 0
      167 SETTABLEKS                       R32 R31 K40 ["ControlPoints"]
      169 NEWTABLE                         R32 0 0
      171 SETTABLEKS                       R32 R31 K41 ["ControlPointStates"]
      173 GETIMPORT                        R32 K58 [Vector2.zero]
      175 SETTABLEKS                       R32 R31 K46 ["ParentAbsPos"]
      177 GETIMPORT                        R32 K58 [Vector2.zero]
      179 SETTABLEKS                       R32 R31 K47 ["ParentAbsSize"]
      181 NEWTABLE                         R32 32 0
      183 GETTABLEKS                       R33 R16 K59 ["name"]
      185 DUPCLOSURE                       R34 K60 [PROTO_0]
      186 CAPTURE                          VAL R3
      187 SETTABLE                         R34 R32 R33
      188 GETTABLEKS                       R33 R14 K59 ["name"]
      190 DUPCLOSURE                       R34 K61 [PROTO_1]
      191 CAPTURE                          VAL R3
      192 SETTABLE                         R34 R32 R33
      193 GETTABLEKS                       R33 R15 K59 ["name"]
      195 DUPCLOSURE                       R34 K62 [PROTO_2]
      196 CAPTURE                          VAL R3
      197 SETTABLE                         R34 R32 R33
      198 GETTABLEKS                       R33 R23 K59 ["name"]
      200 DUPCLOSURE                       R34 K63 [PROTO_3]
      201 CAPTURE                          VAL R3
      202 SETTABLE                         R34 R32 R33
      203 GETTABLEKS                       R33 R19 K59 ["name"]
      205 DUPCLOSURE                       R34 K64 [PROTO_4]
      206 CAPTURE                          VAL R3
      207 SETTABLE                         R34 R32 R33
      208 GETTABLEKS                       R33 R21 K59 ["name"]
      210 DUPCLOSURE                       R34 K65 [PROTO_5]
      211 CAPTURE                          VAL R3
      212 SETTABLE                         R34 R32 R33
      213 GETTABLEKS                       R33 R17 K59 ["name"]
      215 DUPCLOSURE                       R34 K66 [PROTO_6]
      216 CAPTURE                          VAL R3
      217 SETTABLE                         R34 R32 R33
      218 GETTABLEKS                       R33 R18 K59 ["name"]
      220 DUPCLOSURE                       R34 K67 [PROTO_7]
      221 CAPTURE                          VAL R3
      222 SETTABLE                         R34 R32 R33
      223 GETTABLEKS                       R33 R10 K59 ["name"]
      225 DUPCLOSURE                       R34 K68 [PROTO_8]
      226 CAPTURE                          VAL R28
      227 CAPTURE                          VAL R26
      228 CAPTURE                          VAL R27
      229 CAPTURE                          VAL R29
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R4
      232 CAPTURE                          VAL R25
      233 SETTABLE                         R34 R32 R33
      234 GETTABLEKS                       R33 R12 K59 ["name"]
      236 DUPCLOSURE                       R34 K69 [PROTO_9]
      237 CAPTURE                          VAL R27
      238 CAPTURE                          VAL R29
      239 CAPTURE                          VAL R3
      240 CAPTURE                          VAL R25
      241 CAPTURE                          VAL R26
      242 SETTABLE                         R34 R32 R33
      243 GETTABLEKS                       R33 R7 K59 ["name"]
      245 DUPCLOSURE                       R34 K70 [PROTO_10]
      246 CAPTURE                          VAL R3
      247 SETTABLE                         R34 R32 R33
      248 GETTABLEKS                       R33 R11 K59 ["name"]
      250 DUPCLOSURE                       R34 K71 [PROTO_11]
      251 CAPTURE                          VAL R3
      252 SETTABLE                         R34 R32 R33
      253 GETTABLEKS                       R33 R13 K59 ["name"]
      255 DUPCLOSURE                       R34 K72 [PROTO_12]
      256 CAPTURE                          VAL R3
      257 SETTABLE                         R34 R32 R33
      258 GETTABLEKS                       R33 R8 K59 ["name"]
      260 DUPCLOSURE                       R34 K73 [PROTO_13]
      261 CAPTURE                          VAL R3
      262 SETTABLE                         R34 R32 R33
      263 GETTABLEKS                       R33 R9 K59 ["name"]
      265 DUPCLOSURE                       R34 K74 [PROTO_14]
      266 CAPTURE                          VAL R3
      267 SETTABLE                         R34 R32 R33
      268 GETTABLEKS                       R33 R20 K59 ["name"]
      270 DUPCLOSURE                       R34 K75 [PROTO_15]
      271 CAPTURE                          VAL R3
      272 SETTABLE                         R34 R32 R33
      273 GETTABLEKS                       R33 R22 K59 ["name"]
      275 DUPCLOSURE                       R34 K76 [PROTO_16]
      276 CAPTURE                          VAL R3
      277 SETTABLE                         R34 R32 R33
      278 GETTABLEKS                       R33 R6 K59 ["name"]
      280 DUPCLOSURE                       R34 K77 [PROTO_17]
      281 CAPTURE                          VAL R3
      282 SETTABLE                         R34 R32 R33
      283 CALL                             R30 2 1
      284 RETURN                           R30 1
