PROTO_0:
        0 DUPTABLE                         R4 K5 [{[1], ["_draggerSchema"], ["_constraintToolModel"], ["_mouseCursor"] = ""}]
        1 SETTABLEKS                       R0 R4 K0 ["_draggerContext"]
        3 SETTABLEKS                       R1 R4 K1 ["_draggerSchema"]
        5 SETTABLEKS                       R2 R4 K2 ["_constraintToolModel"]
        7 GETUPVAL                         R5 0
        8 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       10 GETIMPORT                        R3 K7 [setmetatable]
       12 CALL                             R3 2 1
       13 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R3 R2 K1 ["shouldShowTargetGrids"]
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+59]
        6 GETTABLEKS                       R5 R1 K2 ["softSnaps"]
        8 LENGTH                           R4 R5
        9 LOADN                            R5 0
       10 JUMPIFLT                         R5 R4 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 JUMPIFNOT                        R3 ; [+11]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K3 ["createElement"]
       18 GETUPVAL                         R5 1
       19 DUPTABLE                         R6 K8 [{["DragTarget"], ["DraggerContext"], ["UseBoundingBoxes"] = }]
       20 SETTABLEKS                       R1 R6 K4 ["DragTarget"]
       22 SETTABLEKS                       R2 R6 K5 ["DraggerContext"]
       24 CALL                             R4 2 -1
       25 RETURN                           R4 -1
       26 NAMECALL                         R5 R2 K9 ["shouldGridSnap"]
       28 CALL                             R5 1 1
       29 JUMPIFNOT                        R5 ; [+4]
       30 NAMECALL                         R4 R2 K10 ["getGridSize"]
       32 CALL                             R4 1 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R4
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K3 ["createElement"]
       38 GETUPVAL                         R6 2
       39 DUPTABLE                         R7 K17 [{["DragTarget"], ["SourceSize"] = {0, 0, 0}, ["Scale"], ["GridSize"], ["Color"], ["PrimaryColor"]}]
       40 SETTABLEKS                       R1 R7 K4 ["DragTarget"]
       42 GETTABLEKS                       R10 R1 K18 ["targetMatrix"]
       44 GETTABLEKS                       R10 R10 K19 ["Position"]
       46 NAMECALL                         R8 R2 K20 ["getHandleScale"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K13 ["Scale"]
       51 SETTABLEKS                       R4 R7 K14 ["GridSize"]
       53 NAMECALL                         R8 R2 K21 ["getGridColor"]
       55 CALL                             R8 1 1
       56 SETTABLEKS                       R8 R7 K15 ["Color"]
       58 NAMECALL                         R8 R2 K22 ["getChosenColor"]
       60 CALL                             R8 1 1
       61 SETTABLEKS                       R8 R7 K16 ["PrimaryColor"]
       63 CALL                             R5 2 -1
       64 RETURN                           R5 -1
       65 LOADNIL                          R3
       66 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_constraintToolModel"]
        2 GETTABLEKS                       R1 R1 K1 ["_lastDragTarget"]
        4 GETTABLEKS                       R2 R0 K2 ["_draggerContext"]
        6 NAMECALL                         R2 R2 K3 ["areConstraintsEnabled"]
        8 CALL                             R2 1 1
        9 JUMPIF                           R2 ; [+13]
       10 JUMPIFNOT                        R1 ; [+12]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K4 ["createFragment"]
       14 DUPTABLE                         R3 K6 [{"SnapTarget"}]
       15 MOVE                             R6 R1
       16 NAMECALL                         R4 R0 K7 ["_renderSnapTarget"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K5 ["SnapTarget"]
       21 CALL                             R2 1 -1
       22 RETURN                           R2 -1
       23 LOADNIL                          R2
       24 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NEWTABLE                         R2 0 5
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 GETUPVAL                         R7 3
        8 GETUPVAL                         R8 4
        9 GETTABLEKS                       R8 R8 K1 ["ShowWeldDetails"]
       11 GETTABLE                         R6 R7 R8
       12 GETUPVAL                         R8 5
       13 GETUPVAL                         R9 4
       14 GETTABLEKS                       R9 R9 K2 ["ShowConstraintDetails"]
       16 GETTABLE                         R7 R8 R9
       17 SETLIST                          R2 R3 5 [1]
       19 GETUPVAL                         R3 6
       20 JUMPIFNOT                        R3 ; [+12]
       21 GETUPVAL                         R6 7
       22 GETTABLEKS                       R7 R0 K3 ["_constraintToolModel"]
       24 GETTABLEKS                       R7 R7 K4 ["_partPassthroughEnabled"]
       26 GETTABLE                         R5 R6 R7
       27 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       29 MOVE                             R4 R2
       30 GETIMPORT                        R3 K7 [table.insert]
       32 CALL                             R3 2 0
       33 GETUPVAL                         R6 8
       34 GETTABLEKS                       R7 R0 K3 ["_constraintToolModel"]
       36 GETTABLEKS                       R7 R7 K8 ["_addMultipleConstraintsEnabled"]
       38 GETTABLE                         R5 R6 R7
       39 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       41 MOVE                             R4 R2
       42 GETIMPORT                        R3 K7 [table.insert]
       44 CALL                             R3 2 0
       45 GETUPVAL                         R3 9
       46 GETTABLEKS                       R3 R3 K9 ["addGridSnap"]
       48 MOVE                             R4 R2
       49 MOVE                             R5 R1
       50 CALL                             R3 2 0
       51 GETUPVAL                         R3 9
       52 GETTABLEKS                       R3 R3 K10 ["addHelp"]
       54 MOVE                             R4 R2
       55 CALL                             R3 1 0
       56 RETURN                           R2 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["_renderSnap"]
        2 CALL                             R1 1 1
        3 LOADNIL                          R2
        4 GETTABLEKS                       R3 R0 K1 ["_draggerContext"]
        6 LOADK                            R5 K2 ["HotkeyUsageHidden"]
        7 NAMECALL                         R3 R3 K3 ["getSetting"]
        9 CALL                             R3 2 1
       10 JUMPIF                           R3 ; [+16]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["createElement"]
       14 GETUPVAL                         R4 1
       15 DUPTABLE                         R5 K7 [{"DraggerContext", "HotkeyList"}]
       16 GETTABLEKS                       R6 R0 K1 ["_draggerContext"]
       18 SETTABLEKS                       R6 R5 K5 ["DraggerContext"]
       20 NAMECALL                         R6 R0 K8 ["_getHotkeyList"]
       22 CALL                             R6 1 1
       23 SETTABLEKS                       R6 R5 K6 ["HotkeyList"]
       25 CALL                             R3 2 1
       26 MOVE                             R2 R3
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K9 ["createFragment"]
       30 DUPTABLE                         R4 K12 [{"DraggerElements", "HotkeyUsageInfo"}]
       31 SETTABLEKS                       R1 R4 K10 ["DraggerElements"]
       33 SETTABLEKS                       R2 R4 K11 ["HotkeyUsageInfo"]
       35 CALL                             R3 1 -1
       36 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConstraintTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StudioService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["DraggerFramework"]
       17 GETIMPORT                        R3 K11 [require]
       19 GETTABLEKS                       R4 R2 K12 ["Types"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K11 [require]
       24 GETTABLEKS                       R5 R2 K13 ["Utility"]
       26 GETTABLEKS                       R5 R5 K14 ["DragHelper"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K11 [require]
       31 GETTABLEKS                       R6 R0 K8 ["Packages"]
       33 GETTABLEKS                       R6 R6 K15 ["Roact"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K11 [require]
       38 GETTABLEKS                       R7 R2 K16 ["Components"]
       40 GETTABLEKS                       R7 R7 K17 ["TargetGridView"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K11 [require]
       45 GETTABLEKS                       R8 R2 K16 ["Components"]
       47 GETTABLEKS                       R8 R8 K18 ["TargetSoftSnapView"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K11 [require]
       52 GETTABLEKS                       R9 R2 K16 ["Components"]
       54 GETTABLEKS                       R9 R9 K19 ["HotkeyUsageInfo"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K11 [require]
       59 GETTABLEKS                       R10 R2 K13 ["Utility"]
       61 GETTABLEKS                       R10 R10 K20 ["HotkeyHelpBuilder"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [game]
       66 LOADK                            R12 K21 ["EnableConstraintToolPartPassthroughFeature"]
       67 NAMECALL                         R10 R10 K22 ["GetFastFlag"]
       69 CALL                             R10 2 1
       70 NEWTABLE                         R11 8 0
       72 SETTABLEKS                       R11 R11 K23 ["__index"]
       74 DUPCLOSURE                       R12 K24 [PROTO_0]
       75 CAPTURE                          VAL R11
       76 SETTABLEKS                       R12 R11 K25 ["new"]
       78 DUPCLOSURE                       R12 K26 [PROTO_1]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R6
       82 SETTABLEKS                       R12 R11 K27 ["_renderSnapTarget"]
       84 DUPCLOSURE                       R12 K28 [PROTO_2]
       85 CAPTURE                          VAL R5
       86 SETTABLEKS                       R12 R11 K29 ["_renderSnap"]
       88 GETIMPORT                        R12 K32 [table.freeze]
       90 DUPTABLE                         R13 K37 [{["Hotkey"] = "T", ["LabelLocEntry"] = "DragTilt"}]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K32 [table.freeze]
       94 DUPTABLE                         R14 K40 [{["Hotkey"] = "R", ["LabelLocEntry"] = "DragRotate"}]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K32 [table.freeze]
       98 NEWTABLE                         R15 2 0
      100 LOADB                            R16 1
      101 DUPTABLE                         R17 K43 [{["Hotkey"] = "G", ["LabelLocEntry"] = "DisablePartPassthrough"}]
      102 SETTABLE                         R17 R15 R16
      103 LOADB                            R16 0
      104 DUPTABLE                         R17 K45 [{["Hotkey"] = "G", ["LabelLocEntry"] = "EnablePartPassthrough"}]
      105 SETTABLE                         R17 R15 R16
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K32 [table.freeze]
      109 NEWTABLE                         R16 2 0
      111 LOADB                            R17 1
      112 DUPTABLE                         R18 K48 [{["Hotkey"] = "M", ["LabelLocEntry"] = "DisableMultipleConstraintMode"}]
      113 SETTABLE                         R18 R16 R17
      114 LOADB                            R17 0
      115 DUPTABLE                         R18 K50 [{["Hotkey"] = "M", ["LabelLocEntry"] = "EnableMultipleConstraintMode"}]
      116 SETTABLE                         R18 R16 R17
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K32 [table.freeze]
      120 NEWTABLE                         R17 2 0
      122 LOADB                            R18 1
      123 DUPTABLE                         R19 K53 [{["Hotkey"] = "Alt+W", ["LabelLocEntry"] = "DisableWeldVisualization"}]
      124 SETTABLE                         R19 R17 R18
      125 LOADB                            R18 0
      126 DUPTABLE                         R19 K55 [{["Hotkey"] = "Alt+W", ["LabelLocEntry"] = "EnableWeldVisualization"}]
      127 SETTABLE                         R19 R17 R18
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K32 [table.freeze]
      131 NEWTABLE                         R18 2 0
      133 LOADB                            R19 1
      134 DUPTABLE                         R20 K58 [{["Hotkey"] = "Alt+D", ["LabelLocEntry"] = "DisableConstraintVisualization"}]
      135 SETTABLE                         R20 R18 R19
      136 LOADB                            R19 0
      137 DUPTABLE                         R20 K60 [{["Hotkey"] = "Alt+D", ["LabelLocEntry"] = "EnableConstraintVisualization"}]
      138 SETTABLE                         R20 R18 R19
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K32 [table.freeze]
      142 DUPTABLE                         R19 K63 [{["Hotkey"] = "Esc", ["LabelLocEntry"] = "Escape"}]
      143 CALL                             R18 1 1
      144 DUPCLOSURE                       R19 K64 [PROTO_3]
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R9
      155 SETTABLEKS                       R19 R11 K65 ["_getHotkeyList"]
      157 DUPCLOSURE                       R19 K66 [PROTO_4]
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R8
      160 SETTABLEKS                       R19 R11 K67 ["render"]
      162 RETURN                           R11 1
