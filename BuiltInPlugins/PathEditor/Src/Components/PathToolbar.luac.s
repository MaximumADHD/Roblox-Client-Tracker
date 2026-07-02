PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Move"] ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["dispatchToggleMoveTool"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K2 ["AddPoint"] ; [+6]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["dispatchToggleAddPointTool"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 JUMPIFNOTEQKS                    R0 K4 ["AddTangent"] ; [+5]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K5 ["dispatchToggleAddTangentTool"]
       19 CALL                             R1 0 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["PathToolbar"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 LOADNIL                          R4
        9 GETTABLEKS                       R5 R1 K4 ["SelectedObject"]
       11 JUMPIF                           R5 ; [+2]
       12 LOADNIL                          R5
       13 RETURN                           R5 1
       14 GETTABLEKS                       R5 R1 K4 ["SelectedObject"]
       16 NAMECALL                         R5 R5 K5 ["GetControlPoints"]
       18 CALL                             R5 1 1
       19 LENGTH                           R4 R5
       20 NEWTABLE                         R5 0 1
       22 DUPTABLE                         R6 K11 [{["Type"] = "Radio", ["Value"], ["OnChange"], ["Items"]}]
       23 GETTABLEKS                       R7 R1 K12 ["Path2DToolMode"]
       25 SETTABLEKS                       R7 R6 K8 ["Value"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R7 R6 K9 ["OnChange"]
       31 NEWTABLE                         R7 0 3
       33 DUPTABLE                         R8 K17 [{["Id"] = "Move", ["Tooltip"], ["Icon"]}]
       34 LOADK                            R10 K18 ["%* (%*)"]
       35 LOADK                            R14 K19 ["Info"]
       36 LOADK                            R15 K20 ["Select"]
       37 NAMECALL                         R12 R3 K21 ["getText"]
       39 CALL                             R12 3 1
       40 GETUPVAL                         R13 0
       41 GETTABLEKS                       R13 R13 K14 ["Move"]
       43 NAMECALL                         R10 R10 K22 ["format"]
       45 CALL                             R10 3 1
       46 MOVE                             R9 R10
       47 SETTABLEKS                       R9 R8 K15 ["Tooltip"]
       49 GETTABLEKS                       R9 R2 K23 ["MoveImage"]
       51 SETTABLEKS                       R9 R8 K16 ["Icon"]
       53 GETUPVAL                         R10 1
       54 GETTABLEKS                       R10 R10 K24 ["MaxControlPoints"]
       56 JUMPIFNOTLT                      R4 R10 ; [+22]
       58 DUPTABLE                         R9 K26 [{["Id"] = "AddPoint", ["Tooltip"], ["Icon"]}]
       59 LOADK                            R11 K18 ["%* (%*)"]
       60 LOADK                            R15 K19 ["Info"]
       61 LOADK                            R16 K27 ["AddPointTool"]
       62 NAMECALL                         R13 R3 K21 ["getText"]
       64 CALL                             R13 3 1
       65 GETUPVAL                         R14 0
       66 GETTABLEKS                       R14 R14 K25 ["AddPoint"]
       68 NAMECALL                         R11 R11 K22 ["format"]
       70 CALL                             R11 3 1
       71 MOVE                             R10 R11
       72 SETTABLEKS                       R10 R9 K15 ["Tooltip"]
       74 GETTABLEKS                       R10 R2 K28 ["AddPointImage"]
       76 SETTABLEKS                       R10 R9 K16 ["Icon"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R9
       80 DUPTABLE                         R10 K30 [{["Id"] = "AddTangent", ["Tooltip"], ["Icon"]}]
       81 LOADK                            R12 K18 ["%* (%*)"]
       82 LOADK                            R16 K19 ["Info"]
       83 LOADK                            R17 K31 ["AddTangentTool"]
       84 NAMECALL                         R14 R3 K21 ["getText"]
       86 CALL                             R14 3 1
       87 GETUPVAL                         R15 0
       88 GETTABLEKS                       R15 R15 K29 ["AddTangent"]
       90 NAMECALL                         R12 R12 K22 ["format"]
       92 CALL                             R12 3 1
       93 MOVE                             R11 R12
       94 SETTABLEKS                       R11 R10 K15 ["Tooltip"]
       96 GETTABLEKS                       R11 R2 K32 ["AddTangentImage"]
       98 SETTABLEKS                       R11 R10 K16 ["Icon"]
      100 SETLIST                          R7 R8 3 [1]
      102 SETTABLEKS                       R7 R6 K10 ["Items"]
      104 SETLIST                          R5 R6 1 [1]
      106 GETTABLEKS                       R6 R1 K12 ["Path2DToolMode"]
      108 JUMPIFEQKS                       R6 K33 ["DoneEditing"] ; [+19]
      110 DUPTABLE                         R8 K37 [{["Type"] = "TextButton", ["Text"], ["OnClick"]}]
      111 LOADK                            R11 K19 ["Info"]
      112 LOADK                            R12 K38 ["Done"]
      113 NAMECALL                         R9 R3 K21 ["getText"]
      115 CALL                             R9 3 1
      116 SETTABLEKS                       R9 R8 K35 ["Text"]
      118 GETTABLEKS                       R9 R1 K39 ["dispatchToggleDone"]
      120 SETTABLEKS                       R9 R8 K36 ["OnClick"]
      122 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      124 MOVE                             R7 R5
      125 GETIMPORT                        R6 K42 [table.insert]
      127 CALL                             R6 2 0
      128 GETUPVAL                         R6 2
      129 GETTABLEKS                       R6 R6 K43 ["createElement"]
      131 GETUPVAL                         R7 3
      132 DUPTABLE                         R8 K47 [{["DisplayOrder"] = 4, ["HorizontalItems"]}]
      133 SETTABLEKS                       R5 R8 K46 ["HorizontalItems"]
      135 CALL                             R6 2 -1
      136 RETURN                           R6 -1

PROTO_2:
        0 DUPTABLE                         R2 K5 [{"ControlPointStates", "SelectedObject", "Path2DToolMode", "SelectedControlPointIndex", "SelectedTangentSide"}]
        1 GETTABLEKS                       R3 R0 K6 ["PathReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["ControlPointStates"]
        5 SETTABLEKS                       R3 R2 K0 ["ControlPointStates"]
        7 GETTABLEKS                       R3 R0 K6 ["PathReducer"]
        9 GETTABLEKS                       R3 R3 K1 ["SelectedObject"]
       11 SETTABLEKS                       R3 R2 K1 ["SelectedObject"]
       13 GETTABLEKS                       R3 R0 K6 ["PathReducer"]
       15 GETTABLEKS                       R3 R3 K2 ["Path2DToolMode"]
       17 SETTABLEKS                       R3 R2 K2 ["Path2DToolMode"]
       19 GETTABLEKS                       R3 R0 K6 ["PathReducer"]
       21 GETTABLEKS                       R3 R3 K3 ["SelectedControlPointIndex"]
       23 SETTABLEKS                       R3 R2 K3 ["SelectedControlPointIndex"]
       25 GETTABLEKS                       R3 R0 K6 ["PathReducer"]
       27 GETTABLEKS                       R3 R3 K4 ["SelectedTangentSide"]
       29 SETTABLEKS                       R3 R2 K4 ["SelectedTangentSide"]
       31 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["addPointModeCount"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["addPointModeCount"]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["addTangentModeCount"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["addTangentModeCount"]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["selectModeCount"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["selectModeCount"]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 LOADK                            R4 K0 ["Left"]
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 LOADK                            R4 K1 ["Right"]
       10 CALL                             R2 2 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K10 [{"dispatchToggleAddPointTool", "dispatchToggleAddTangentTool", "dispatchToggleDone", "dispatchToggleMoveTool", "dispatchRemoveControlPoint", "dispatchClearControlPointTangent", "dispatchClearControlPointTangents", "dispatchToolbarHovered", "dispatchAddControlPointTangent", "dispatchToggleMirrored"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["dispatchToggleAddPointTool"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R2 R1 K1 ["dispatchToggleAddTangentTool"]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 SETTABLEKS                       R2 R1 K2 ["dispatchToggleDone"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 SETTABLEKS                       R2 R1 K3 ["dispatchToggleMoveTool"]
       24 NEWCLOSURE                       R2 P4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U5
       27 SETTABLEKS                       R2 R1 K4 ["dispatchRemoveControlPoint"]
       29 NEWCLOSURE                       R2 P5
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U6
       32 SETTABLEKS                       R2 R1 K5 ["dispatchClearControlPointTangent"]
       34 NEWCLOSURE                       R2 P6
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U6
       37 SETTABLEKS                       R2 R1 K6 ["dispatchClearControlPointTangents"]
       39 NEWCLOSURE                       R2 P7
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U7
       42 SETTABLEKS                       R2 R1 K7 ["dispatchToolbarHovered"]
       44 NEWCLOSURE                       R2 P8
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U8
       47 SETTABLEKS                       R2 R1 K8 ["dispatchAddControlPointTangent"]
       49 NEWCLOSURE                       R2 P9
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U9
       52 SETTABLEKS                       R2 R1 K9 ["dispatchToggleMirrored"]
       54 RETURN                           R1 1

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
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K7 ["Packages"]
       41 GETTABLEKS                       R6 R6 K11 ["ViewportToolingFramework"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R4 K12 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K13 ["withContext"]
       48 GETTABLEKS                       R8 R6 K14 ["Mouse"]
       50 GETTABLEKS                       R9 R6 K15 ["Plugin"]
       52 GETTABLEKS                       R10 R6 K16 ["Stylizer"]
       54 GETTABLEKS                       R11 R6 K17 ["Localization"]
       56 GETTABLEKS                       R12 R5 K18 ["Toolbar"]
       58 GETTABLEKS                       R13 R0 K5 ["Src"]
       60 GETTABLEKS                       R13 R13 K19 ["Actions"]
       62 GETIMPORT                        R14 K4 [require]
       64 GETTABLEKS                       R15 R13 K20 ["ToggleAddPointTool"]
       66 CALL                             R14 1 1
       67 GETIMPORT                        R15 K4 [require]
       69 GETTABLEKS                       R16 R13 K21 ["ToggleAddTangentTool"]
       71 CALL                             R15 1 1
       72 GETIMPORT                        R16 K4 [require]
       74 GETTABLEKS                       R17 R13 K22 ["ToggleDone"]
       76 CALL                             R16 1 1
       77 GETIMPORT                        R17 K4 [require]
       79 GETTABLEKS                       R18 R13 K23 ["ToggleMirrored"]
       81 CALL                             R17 1 1
       82 GETIMPORT                        R18 K4 [require]
       84 GETTABLEKS                       R19 R13 K24 ["ToggleMoveTool"]
       86 CALL                             R18 1 1
       87 GETIMPORT                        R19 K4 [require]
       89 GETTABLEKS                       R20 R13 K25 ["ToolbarHovered"]
       91 CALL                             R19 1 1
       92 GETTABLEKS                       R20 R0 K5 ["Src"]
       94 GETTABLEKS                       R20 R20 K26 ["Thunks"]
       96 GETIMPORT                        R21 K4 [require]
       98 GETTABLEKS                       R22 R20 K27 ["AddControlPointTangent"]
      100 CALL                             R21 1 1
      101 GETIMPORT                        R22 K4 [require]
      103 GETTABLEKS                       R23 R20 K28 ["ClearControlPointTangent"]
      105 CALL                             R22 1 1
      106 GETIMPORT                        R23 K4 [require]
      108 GETTABLEKS                       R24 R20 K29 ["RemoveControlPoint"]
      110 CALL                             R23 1 1
      111 GETIMPORT                        R24 K4 [require]
      113 GETTABLEKS                       R25 R0 K5 ["Src"]
      115 GETTABLEKS                       R25 R25 K30 ["Util"]
      117 GETTABLEKS                       R25 R25 K31 ["getShortcuts"]
      119 CALL                             R24 1 1
      120 CALL                             R24 0 1
      121 GETIMPORT                        R25 K4 [require]
      123 GETTABLEKS                       R26 R0 K5 ["Src"]
      125 GETTABLEKS                       R26 R26 K30 ["Util"]
      127 GETTABLEKS                       R26 R26 K32 ["TelemetryGlobals"]
      129 CALL                             R25 1 1
      130 GETIMPORT                        R26 K4 [require]
      132 GETTABLEKS                       R27 R0 K5 ["Src"]
      134 GETTABLEKS                       R27 R27 K33 ["Resources"]
      136 GETTABLEKS                       R27 R27 K34 ["Constants"]
      138 CALL                             R26 1 1
      139 GETTABLEKS                       R27 R2 K35 ["PureComponent"]
      141 LOADK                            R29 K36 ["PathToolbar"]
      142 NAMECALL                         R27 R27 K37 ["extend"]
      144 CALL                             R27 2 1
      145 DUPCLOSURE                       R28 K38 [PROTO_1]
      146 CAPTURE                          VAL R24
      147 CAPTURE                          VAL R26
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R12
      150 SETTABLEKS                       R28 R27 K39 ["render"]
      152 MOVE                             R28 R7
      153 DUPTABLE                         R29 K40 [{"Mouse", "Plugin", "Stylizer", "Localization"}]
      154 SETTABLEKS                       R8 R29 K14 ["Mouse"]
      156 SETTABLEKS                       R9 R29 K15 ["Plugin"]
      158 SETTABLEKS                       R10 R29 K16 ["Stylizer"]
      160 SETTABLEKS                       R11 R29 K17 ["Localization"]
      162 CALL                             R28 1 1
      163 MOVE                             R29 R27
      164 CALL                             R28 1 1
      165 MOVE                             R27 R28
      166 GETTABLEKS                       R28 R3 K41 ["connect"]
      168 DUPCLOSURE                       R29 K42 [PROTO_2]
      169 DUPCLOSURE                       R30 K43 [PROTO_13]
      170 CAPTURE                          VAL R25
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R23
      176 CAPTURE                          VAL R22
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R21
      179 CAPTURE                          VAL R17
      180 CALL                             R28 2 1
      181 MOVE                             R29 R27
      182 CALL                             R28 1 -1
      183 RETURN                           R28 -1
