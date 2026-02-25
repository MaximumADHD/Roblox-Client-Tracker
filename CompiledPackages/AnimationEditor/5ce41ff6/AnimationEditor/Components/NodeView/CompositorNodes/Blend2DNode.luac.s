PROTO_0:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["Value"]
        4 GETTABLEKS                       R2 R3 K4 ["X"]
        6 GETTABLEKS                       R4 R0 K3 ["Value"]
        8 GETTABLEKS                       R3 R4 K5 ["Y"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["map"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["inputs"]
        6 DUPCLOSURE                       R2 K2 [PROTO_0]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R2 R4 K0 ["inputs"]
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K1 ["onInputChanged"]
        9 MOVE                             R7 R4
       10 GETTABLEKS                       R8 R5 K2 ["Value"]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 2 ; [-8]
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"Value"}]
        5 DUPTABLE                         R4 K5 [{"X", "Y"}]
        6 GETTABLEKS                       R7 R0 K1 ["Value"]
        8 GETTABLEKS                       R6 R7 K3 ["X"]
       10 FASTCALL1                        MATH_RAD R6 ; [+2]
       11 GETIMPORT                        R5 K8 [math.rad]
       13 CALL                             R5 1 1
       14 SETTABLEKS                       R5 R4 K3 ["X"]
       16 GETTABLEKS                       R6 R0 K1 ["Value"]
       18 GETTABLEKS                       R5 R6 K4 ["Y"]
       20 SETTABLEKS                       R5 R4 K4 ["Y"]
       22 SETTABLEKS                       R4 R3 K1 ["Value"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_3]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"Value"}]
        5 DUPTABLE                         R4 K5 [{"X", "Y"}]
        6 GETTABLEKS                       R7 R0 K1 ["Value"]
        8 GETTABLEKS                       R6 R7 K3 ["X"]
       10 FASTCALL1                        MATH_DEG R6 ; [+2]
       11 GETIMPORT                        R5 K8 [math.deg]
       13 CALL                             R5 1 1
       14 SETTABLEKS                       R5 R4 K3 ["X"]
       16 GETTABLEKS                       R6 R0 K1 ["Value"]
       18 GETTABLEKS                       R5 R6 K4 ["Y"]
       20 SETTABLEKS                       R5 R4 K4 ["Y"]
       22 SETTABLEKS                       R4 R3 K1 ["Value"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_5]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R1 R2 ; [+54]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
        6 JUMPIFEQKNIL                     R2 ; [+49]
        8 LOADNIL                          R2
        9 GETIMPORT                        R3 K4 [Enum.AnimationNodeBlend2DInputMode.Polar]
       11 JUMPIFNOTEQ                      R1 R3 ; [+17]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K7 ["PropertyLookup"]
       16 GETTABLEKS                       R5 R6 K6 ["X"]
       18 ORK                              R4 R5 K5 [0]
       19 FASTCALL1                        MATH_RAD R4 ; [+2]
       20 GETIMPORT                        R3 K10 [math.rad]
       22 CALL                             R3 1 1
       23 MOVE                             R2 R3
       24 GETUPVAL                         R3 2
       25 DUPCLOSURE                       R4 K11 [PROTO_4]
       26 CAPTURE                          UPVAL U3
       27 CALL                             R3 1 0
       28 JUMP                             ; [+15]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K7 ["PropertyLookup"]
       32 GETTABLEKS                       R5 R6 K6 ["X"]
       34 ORK                              R4 R5 K5 [0]
       35 FASTCALL1                        MATH_DEG R4 ; [+2]
       36 GETIMPORT                        R3 K13 [math.deg]
       38 CALL                             R3 1 1
       39 MOVE                             R2 R3
       40 GETUPVAL                         R3 2
       41 DUPCLOSURE                       R4 K14 [PROTO_6]
       42 CAPTURE                          UPVAL U3
       43 CALL                             R3 1 0
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R3 R4 K0 ["OnPropertyChanged"]
       47 LOADK                            R4 K6 ["X"]
       48 MOVE                             R5 R2
       49 CALL                             R3 2 0
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R3 R4 K0 ["OnPropertyChanged"]
       53 LOADK                            R4 K15 ["InputMode"]
       54 MOVE                             R5 R1
       55 CALL                             R3 2 0
       56 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+20]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["OnPropertyChanged"]
        5 JUMPIFEQKNIL                     R2 ; [+15]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["OnPropertyChanged"]
       10 LOADK                            R3 K2 ["X"]
       11 GETTABLEKS                       R4 R1 K2 ["X"]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K1 ["OnPropertyChanged"]
       17 LOADK                            R3 K3 ["Y"]
       18 GETTABLEKS                       R4 R1 K3 ["Y"]
       20 CALL                             R2 2 0
       21 LOADN                            R2 0
       22 JUMPIFNOTLT                      R2 R0 ; [+15]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K4 ["onInputChanged"]
       27 MOVE                             R3 R0
       28 DUPTABLE                         R4 K5 [{"X", "Y"}]
       29 GETTABLEKS                       R5 R1 K2 ["X"]
       31 SETTABLEKS                       R5 R4 K2 ["X"]
       33 GETTABLEKS                       R5 R1 K3 ["Y"]
       35 SETTABLEKS                       R5 R4 K3 ["Y"]
       37 CALL                             R2 2 0
       38 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"GraphPayload", "Default"}]
        2 GETTABLEKS                       R3 R0 K0 ["GraphPayload"]
        4 SETTABLEKS                       R3 R2 K0 ["GraphPayload"]
        6 DUPTABLE                         R3 K5 [{"X", "Y"}]
        7 LOADN                            R4 0
        8 SETTABLEKS                       R4 R3 K3 ["X"]
       10 LOADN                            R4 0
       11 SETTABLEKS                       R4 R3 K4 ["Y"]
       13 SETTABLEKS                       R3 R2 K1 ["Default"]
       15 CALL                             R1 1 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K6 ["useMemo"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R1
       22 NEWTABLE                         R4 0 1
       24 GETTABLEKS                       R5 R1 K7 ["inputs"]
       26 SETLIST                          R4 R5 1 [1]
       28 CALL                             R2 2 1
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R3 R4 K8 ["createPropertyHelpers"]
       32 MOVE                             R4 R0
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R5 R0 K10 ["PropertyLookup"]
       36 GETTABLEKS                       R4 R5 K9 ["InputMode"]
       38 JUMPIF                           R4 ; [+2]
       39 GETIMPORT                        R4 K14 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       41 GETIMPORT                        R6 K16 [Enum.AnimationNodeBlend2DInputMode.Polar]
       43 JUMPIFEQ                         R4 R6 ; [+2]
       45 LOADB                            R5 0 +1
       46 LOADB                            R5 1
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R6 R7 K17 ["useCallback"]
       50 NEWCLOSURE                       R7 P1
       51 CAPTURE                          VAL R1
       52 NEWTABLE                         R8 0 2
       54 GETTABLEKS                       R9 R1 K7 ["inputs"]
       56 GETTABLEKS                       R10 R1 K18 ["onInputChanged"]
       58 SETLIST                          R8 R9 2 [1]
       60 CALL                             R6 2 1
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R7 R8 K17 ["useCallback"]
       64 NEWCLOSURE                       R8 P2
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R6
       68 CAPTURE                          UPVAL U2
       69 NEWTABLE                         R9 0 6
       71 MOVE                             R10 R4
       72 GETTABLEKS                       R11 R1 K7 ["inputs"]
       74 GETTABLEKS                       R12 R0 K19 ["OnPropertyChanged"]
       76 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
       78 MOVE                             R14 R6
       79 GETTABLEKS                       R16 R0 K10 ["PropertyLookup"]
       81 GETTABLEKS                       R15 R16 K3 ["X"]
       83 SETLIST                          R9 R10 6 [1]
       85 CALL                             R7 2 1
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R8 R9 K17 ["useCallback"]
       89 NEWCLOSURE                       R9 P3
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R1
       92 NEWTABLE                         R10 0 3
       94 MOVE                             R11 R5
       95 GETTABLEKS                       R12 R0 K19 ["OnPropertyChanged"]
       97 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
       99 SETLIST                          R10 R11 3 [1]
      101 CALL                             R8 2 1
      102 DUPTABLE                         R9 K25 [{"Property_InputMode", "Property_X_Angle", "Property_Y_Magnitude", "Blend2DMap", "Input"}]
      103 GETTABLEKS                       R10 R3 K26 ["nextProperty"]
      105 DUPTABLE                         R11 K32 [{"Name", "Label", "Type", "Value", "OnChanged"}]
      106 LOADK                            R12 K9 ["InputMode"]
      107 SETTABLEKS                       R12 R11 K27 ["Name"]
      109 LOADK                            R12 K33 ["Input Mode"]
      110 SETTABLEKS                       R12 R11 K28 ["Label"]
      112 LOADK                            R12 K34 ["Enum.AnimationNodeBlend2DInputMode"]
      113 SETTABLEKS                       R12 R11 K29 ["Type"]
      115 SETTABLEKS                       R4 R11 K30 ["Value"]
      117 SETTABLEKS                       R7 R11 K31 ["OnChanged"]
      119 CALL                             R10 1 1
      120 SETTABLEKS                       R10 R9 K20 ["Property_InputMode"]
      122 GETTABLEKS                       R10 R3 K26 ["nextProperty"]
      124 DUPTABLE                         R11 K35 [{"Name", "Label", "Type", "Value", "Default"}]
      125 LOADK                            R12 K3 ["X"]
      126 SETTABLEKS                       R12 R11 K27 ["Name"]
      128 JUMPIFNOT                        R5 ; [+2]
      129 LOADK                            R12 K36 ["Angle"]
      130 JUMP                             ; [+1]
      131 LOADK                            R12 K3 ["X"]
      132 SETTABLEKS                       R12 R11 K28 ["Label"]
      134 JUMPIFNOT                        R5 ; [+2]
      135 LOADK                            R12 K36 ["Angle"]
      136 JUMP                             ; [+1]
      137 LOADK                            R12 K37 ["Number"]
      138 SETTABLEKS                       R12 R11 K29 ["Type"]
      140 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
      142 GETTABLEKS                       R12 R13 K3 ["X"]
      144 SETTABLEKS                       R12 R11 K30 ["Value"]
      146 LOADN                            R12 0
      147 SETTABLEKS                       R12 R11 K1 ["Default"]
      149 CALL                             R10 1 1
      150 SETTABLEKS                       R10 R9 K21 ["Property_X_Angle"]
      152 GETTABLEKS                       R10 R3 K26 ["nextProperty"]
      154 DUPTABLE                         R11 K35 [{"Name", "Label", "Type", "Value", "Default"}]
      155 LOADK                            R12 K4 ["Y"]
      156 SETTABLEKS                       R12 R11 K27 ["Name"]
      158 JUMPIFNOT                        R5 ; [+2]
      159 LOADK                            R12 K38 ["Magnitude"]
      160 JUMP                             ; [+1]
      161 LOADK                            R12 K4 ["Y"]
      162 SETTABLEKS                       R12 R11 K28 ["Label"]
      164 LOADK                            R12 K37 ["Number"]
      165 SETTABLEKS                       R12 R11 K29 ["Type"]
      167 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
      169 GETTABLEKS                       R12 R13 K4 ["Y"]
      171 SETTABLEKS                       R12 R11 K30 ["Value"]
      173 LOADN                            R12 0
      174 SETTABLEKS                       R12 R11 K1 ["Default"]
      176 CALL                             R10 1 1
      177 SETTABLEKS                       R10 R9 K22 ["Property_Y_Magnitude"]
      179 GETUPVAL                         R11 1
      180 GETTABLEKS                       R10 R11 K39 ["createElement"]
      182 GETUPVAL                         R11 4
      183 DUPTABLE                         R12 K44 [{"LayoutOrder", "InputMode", "OnPinDragged", "Position", "Pins"}]
      184 GETTABLEKS                       R13 R3 K45 ["nextOrder"]
      186 CALL                             R13 0 1
      187 SETTABLEKS                       R13 R12 K40 ["LayoutOrder"]
      189 SETTABLEKS                       R4 R12 K9 ["InputMode"]
      191 SETTABLEKS                       R8 R12 K41 ["OnPinDragged"]
      193 GETIMPORT                        R13 K48 [Vector2.new]
      195 GETTABLEKS                       R16 R0 K10 ["PropertyLookup"]
      197 GETTABLEKS                       R15 R16 K3 ["X"]
      199 ORK                              R14 R15 K49 [0]
      200 GETTABLEKS                       R17 R0 K10 ["PropertyLookup"]
      202 GETTABLEKS                       R16 R17 K4 ["Y"]
      204 ORK                              R15 R16 K49 [0]
      205 CALL                             R13 2 1
      206 SETTABLEKS                       R13 R12 K42 ["Position"]
      208 SETTABLEKS                       R2 R12 K43 ["Pins"]
      210 CALL                             R10 2 1
      211 SETTABLEKS                       R10 R9 K23 ["Blend2DMap"]
      213 GETTABLEKS                       R10 R3 K50 ["nextInputPanel"]
      215 DUPTABLE                         R11 K58 [{"InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      216 GETUPVAL                         R12 5
      217 SETTABLEKS                       R12 R11 K51 ["InputBuilder"]
      219 DUPTABLE                         R12 K59 [{"InputMode"}]
      220 GETTABLEKS                       R14 R0 K10 ["PropertyLookup"]
      222 GETTABLEKS                       R13 R14 K9 ["InputMode"]
      224 SETTABLEKS                       R13 R12 K9 ["InputMode"]
      226 SETTABLEKS                       R12 R11 K52 ["InputBuilderProps"]
      228 GETTABLEKS                       R13 R0 K0 ["GraphPayload"]
      230 GETTABLEKS                       R12 R13 K60 ["id"]
      232 SETTABLEKS                       R12 R11 K53 ["NodeId"]
      234 GETTABLEKS                       R12 R1 K7 ["inputs"]
      236 SETTABLEKS                       R12 R11 K54 ["Inputs"]
      238 GETTABLEKS                       R12 R1 K61 ["newInputDefaultValue"]
      240 SETTABLEKS                       R12 R11 K55 ["NewInputDefaultValue"]
      242 GETTABLEKS                       R12 R1 K18 ["onInputChanged"]
      244 SETTABLEKS                       R12 R11 K56 ["OnInputChanged"]
      246 GETTABLEKS                       R12 R1 K62 ["onInputReordered"]
      248 SETTABLEKS                       R12 R11 K57 ["OnInputReordered"]
      250 CALL                             R10 1 1
      251 SETTABLEKS                       R10 R9 K24 ["Input"]
      253 GETUPVAL                         R11 1
      254 GETTABLEKS                       R10 R11 K39 ["createElement"]
      256 GETUPVAL                         R11 6
      257 GETTABLEKS                       R12 R3 K63 ["nodeProps"]
      259 DUPTABLE                         R13 K65 [{"OutputPin"}]
      260 GETTABLEKS                       R14 R3 K66 ["outputPin"]
      262 CALL                             R14 0 1
      263 SETTABLEKS                       R14 R13 K64 ["OutputPin"]
      265 CALL                             R12 1 1
      266 MOVE                             R13 R9
      267 CALL                             R10 3 -1
      268 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodeInput"]
       22 GETTABLEKS                       R3 R4 K11 ["Blend2DInput"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R7 R0 K8 ["Components"]
       29 GETTABLEKS                       R6 R7 K9 ["NodeView"]
       31 GETTABLEKS                       R5 R6 K12 ["CompositorNodeProperty"]
       33 GETTABLEKS                       R4 R5 K13 ["Blend2DMap"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R8 R0 K8 ["Components"]
       40 GETTABLEKS                       R7 R8 K9 ["NodeView"]
       42 GETTABLEKS                       R6 R7 K14 ["CompositorNodes"]
       44 GETTABLEKS                       R5 R6 K15 ["CompositorNode"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R8 R0 K16 ["Util"]
       51 GETTABLEKS                       R7 R8 K17 ["Nodes"]
       53 GETTABLEKS                       R6 R7 K18 ["CompositorNodeUtils"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R8 R0 K6 ["Parent"]
       60 GETTABLEKS                       R7 R8 K19 ["Dash"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Components"]
       67 GETTABLEKS                       R10 R11 K9 ["NodeView"]
       69 GETTABLEKS                       R9 R10 K10 ["CompositorNodeInput"]
       71 GETTABLEKS                       R8 R9 K20 ["InputPanelTypes"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R12 R0 K8 ["Components"]
       78 GETTABLEKS                       R11 R12 K9 ["NodeView"]
       80 GETTABLEKS                       R10 R11 K14 ["CompositorNodes"]
       82 GETTABLEKS                       R9 R10 K21 ["useInputPanelHelper"]
       84 CALL                             R8 1 1
       85 DUPCLOSURE                       R9 K22 [PROTO_9]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R4
       93 RETURN                           R9 1
