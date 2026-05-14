PROTO_0:
        0 DUPTABLE                         R4 K4 [{"_draggerContext", "_draggerSchema", "_constraintToolModel", "_mouseCursor"}]
        1 SETTABLEKS                       R0 R4 K0 ["_draggerContext"]
        3 SETTABLEKS                       R1 R4 K1 ["_draggerSchema"]
        5 SETTABLEKS                       R2 R4 K2 ["_constraintToolModel"]
        7 LOADK                            R5 K5 [""]
        8 SETTABLEKS                       R5 R4 K3 ["_mouseCursor"]
       10 GETUPVAL                         R5 0
       11 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       13 GETIMPORT                        R3 K7 [setmetatable]
       15 CALL                             R3 2 1
       16 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R3 R2 K1 ["shouldShowTargetGrids"]
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+62]
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
       19 DUPTABLE                         R6 K6 [{"DragTarget", "DraggerContext"}]
       20 SETTABLEKS                       R1 R6 K4 ["DragTarget"]
       22 SETTABLEKS                       R2 R6 K5 ["DraggerContext"]
       24 CALL                             R4 2 -1
       25 RETURN                           R4 -1
       26 NAMECALL                         R5 R2 K7 ["shouldGridSnap"]
       28 CALL                             R5 1 1
       29 JUMPIFNOT                        R5 ; [+4]
       30 NAMECALL                         R4 R2 K8 ["getGridSize"]
       32 CALL                             R4 1 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R4
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K3 ["createElement"]
       38 GETUPVAL                         R6 2
       39 DUPTABLE                         R7 K14 [{"DragTarget", "SourceSize", "Scale", "GridSize", "Color", "PrimaryColor"}]
       40 SETTABLEKS                       R1 R7 K4 ["DragTarget"]
       42 LOADK                            R8 K15 [{0, 0, 0}]
       43 SETTABLEKS                       R8 R7 K9 ["SourceSize"]
       45 GETTABLEKS                       R10 R1 K16 ["targetMatrix"]
       47 GETTABLEKS                       R10 R10 K17 ["Position"]
       49 NAMECALL                         R8 R2 K18 ["getHandleScale"]
       51 CALL                             R8 2 1
       52 SETTABLEKS                       R8 R7 K10 ["Scale"]
       54 SETTABLEKS                       R4 R7 K11 ["GridSize"]
       56 NAMECALL                         R8 R2 K19 ["getGridColor"]
       58 CALL                             R8 1 1
       59 SETTABLEKS                       R8 R7 K12 ["Color"]
       61 NAMECALL                         R8 R2 K20 ["getChosenColor"]
       63 CALL                             R8 1 1
       64 SETTABLEKS                       R8 R7 K13 ["PrimaryColor"]
       66 CALL                             R5 2 -1
       67 RETURN                           R5 -1
       68 LOADNIL                          R3
       69 RETURN                           R3 1

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
       19 GETTABLEKS                       R4 R0 K8 ["Packages"]
       21 GETTABLEKS                       R4 R4 K12 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K11 [require]
       26 GETTABLEKS                       R5 R2 K13 ["Components"]
       28 GETTABLEKS                       R5 R5 K14 ["TargetGridView"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K11 [require]
       33 GETTABLEKS                       R6 R2 K13 ["Components"]
       35 GETTABLEKS                       R6 R6 K15 ["TargetSoftSnapView"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K11 [require]
       40 GETTABLEKS                       R7 R2 K13 ["Components"]
       42 GETTABLEKS                       R7 R7 K16 ["HotkeyUsageInfo"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K11 [require]
       47 GETTABLEKS                       R8 R2 K17 ["Utility"]
       49 GETTABLEKS                       R8 R8 K18 ["HotkeyHelpBuilder"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [game]
       54 LOADK                            R10 K19 ["EnableConstraintToolPartPassthroughFeature"]
       55 NAMECALL                         R8 R8 K20 ["GetFastFlag"]
       57 CALL                             R8 2 1
       58 NEWTABLE                         R9 8 0
       60 SETTABLEKS                       R9 R9 K21 ["__index"]
       62 DUPCLOSURE                       R10 K22 [PROTO_0]
       63 CAPTURE                          VAL R9
       64 SETTABLEKS                       R10 R9 K23 ["new"]
       66 DUPCLOSURE                       R10 K24 [PROTO_1]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R4
       70 SETTABLEKS                       R10 R9 K25 ["_renderSnapTarget"]
       72 DUPCLOSURE                       R10 K26 [PROTO_2]
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R10 R9 K27 ["_renderSnap"]
       76 GETIMPORT                        R10 K30 [table.freeze]
       78 DUPTABLE                         R11 K33 [{"Hotkey", "LabelLocEntry"}]
       79 LOADK                            R12 K34 ["T"]
       80 SETTABLEKS                       R12 R11 K31 ["Hotkey"]
       82 LOADK                            R12 K35 ["DragTilt"]
       83 SETTABLEKS                       R12 R11 K32 ["LabelLocEntry"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K30 [table.freeze]
       88 DUPTABLE                         R12 K33 [{"Hotkey", "LabelLocEntry"}]
       89 LOADK                            R13 K36 ["R"]
       90 SETTABLEKS                       R13 R12 K31 ["Hotkey"]
       92 LOADK                            R13 K37 ["DragRotate"]
       93 SETTABLEKS                       R13 R12 K32 ["LabelLocEntry"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K30 [table.freeze]
       98 NEWTABLE                         R13 2 0
      100 LOADB                            R14 1
      101 DUPTABLE                         R15 K33 [{"Hotkey", "LabelLocEntry"}]
      102 LOADK                            R16 K38 ["G"]
      103 SETTABLEKS                       R16 R15 K31 ["Hotkey"]
      105 LOADK                            R16 K39 ["DisablePartPassthrough"]
      106 SETTABLEKS                       R16 R15 K32 ["LabelLocEntry"]
      108 SETTABLE                         R15 R13 R14
      109 LOADB                            R14 0
      110 DUPTABLE                         R15 K33 [{"Hotkey", "LabelLocEntry"}]
      111 LOADK                            R16 K38 ["G"]
      112 SETTABLEKS                       R16 R15 K31 ["Hotkey"]
      114 LOADK                            R16 K40 ["EnablePartPassthrough"]
      115 SETTABLEKS                       R16 R15 K32 ["LabelLocEntry"]
      117 SETTABLE                         R15 R13 R14
      118 CALL                             R12 1 1
      119 GETIMPORT                        R13 K30 [table.freeze]
      121 NEWTABLE                         R14 2 0
      123 LOADB                            R15 1
      124 DUPTABLE                         R16 K33 [{"Hotkey", "LabelLocEntry"}]
      125 LOADK                            R17 K41 ["M"]
      126 SETTABLEKS                       R17 R16 K31 ["Hotkey"]
      128 LOADK                            R17 K42 ["DisableMultipleConstraintMode"]
      129 SETTABLEKS                       R17 R16 K32 ["LabelLocEntry"]
      131 SETTABLE                         R16 R14 R15
      132 LOADB                            R15 0
      133 DUPTABLE                         R16 K33 [{"Hotkey", "LabelLocEntry"}]
      134 LOADK                            R17 K41 ["M"]
      135 SETTABLEKS                       R17 R16 K31 ["Hotkey"]
      137 LOADK                            R17 K43 ["EnableMultipleConstraintMode"]
      138 SETTABLEKS                       R17 R16 K32 ["LabelLocEntry"]
      140 SETTABLE                         R16 R14 R15
      141 CALL                             R13 1 1
      142 GETIMPORT                        R14 K30 [table.freeze]
      144 NEWTABLE                         R15 2 0
      146 LOADB                            R16 1
      147 DUPTABLE                         R17 K33 [{"Hotkey", "LabelLocEntry"}]
      148 LOADK                            R18 K44 ["Alt+W"]
      149 SETTABLEKS                       R18 R17 K31 ["Hotkey"]
      151 LOADK                            R18 K45 ["DisableWeldVisualization"]
      152 SETTABLEKS                       R18 R17 K32 ["LabelLocEntry"]
      154 SETTABLE                         R17 R15 R16
      155 LOADB                            R16 0
      156 DUPTABLE                         R17 K33 [{"Hotkey", "LabelLocEntry"}]
      157 LOADK                            R18 K44 ["Alt+W"]
      158 SETTABLEKS                       R18 R17 K31 ["Hotkey"]
      160 LOADK                            R18 K46 ["EnableWeldVisualization"]
      161 SETTABLEKS                       R18 R17 K32 ["LabelLocEntry"]
      163 SETTABLE                         R17 R15 R16
      164 CALL                             R14 1 1
      165 GETIMPORT                        R15 K30 [table.freeze]
      167 NEWTABLE                         R16 2 0
      169 LOADB                            R17 1
      170 DUPTABLE                         R18 K33 [{"Hotkey", "LabelLocEntry"}]
      171 LOADK                            R19 K47 ["Alt+D"]
      172 SETTABLEKS                       R19 R18 K31 ["Hotkey"]
      174 LOADK                            R19 K48 ["DisableConstraintVisualization"]
      175 SETTABLEKS                       R19 R18 K32 ["LabelLocEntry"]
      177 SETTABLE                         R18 R16 R17
      178 LOADB                            R17 0
      179 DUPTABLE                         R18 K33 [{"Hotkey", "LabelLocEntry"}]
      180 LOADK                            R19 K47 ["Alt+D"]
      181 SETTABLEKS                       R19 R18 K31 ["Hotkey"]
      183 LOADK                            R19 K49 ["EnableConstraintVisualization"]
      184 SETTABLEKS                       R19 R18 K32 ["LabelLocEntry"]
      186 SETTABLE                         R18 R16 R17
      187 CALL                             R15 1 1
      188 GETIMPORT                        R16 K30 [table.freeze]
      190 DUPTABLE                         R17 K33 [{"Hotkey", "LabelLocEntry"}]
      191 LOADK                            R18 K50 ["Esc"]
      192 SETTABLEKS                       R18 R17 K31 ["Hotkey"]
      194 LOADK                            R18 K51 ["Escape"]
      195 SETTABLEKS                       R18 R17 K32 ["LabelLocEntry"]
      197 CALL                             R16 1 1
      198 DUPCLOSURE                       R17 K52 [PROTO_3]
      199 CAPTURE                          VAL R16
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R15
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R7
      209 SETTABLEKS                       R17 R9 K53 ["_getHotkeyList"]
      211 DUPCLOSURE                       R17 K54 [PROTO_4]
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R6
      214 SETTABLEKS                       R17 R9 K55 ["render"]
      216 RETURN                           R9 1
