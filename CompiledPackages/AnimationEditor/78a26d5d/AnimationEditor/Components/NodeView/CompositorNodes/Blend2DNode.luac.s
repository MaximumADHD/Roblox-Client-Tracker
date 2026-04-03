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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setParameterOverrideValueAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K1 ["X"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setParameterOverrideValueAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K1 ["Y"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_10:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+61]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["isPropertyParameterized"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["GraphPayload"]
        8 LOADK                            R4 K3 ["X"]
        9 CALL                             R2 2 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["isPropertyParameterized"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K2 ["GraphPayload"]
       16 LOADK                            R6 K4 ["Y"]
       17 CALL                             R4 2 2
       18 JUMPIFNOT                        R2 ; [+9]
       19 JUMPIFNOT                        R3 ; [+8]
       20 GETIMPORT                        R6 K7 [task.spawn]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R1
       26 CALL                             R6 1 0
       27 JUMP                             ; [+12]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K8 ["OnPropertyChanged"]
       31 JUMPIFEQKNIL                     R6 ; [+8]
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R6 R7 K8 ["OnPropertyChanged"]
       36 LOADK                            R7 K3 ["X"]
       37 GETTABLEKS                       R8 R1 K3 ["X"]
       39 CALL                             R6 2 0
       40 JUMPIFNOT                        R4 ; [+9]
       41 JUMPIFNOT                        R5 ; [+8]
       42 GETIMPORT                        R6 K7 [task.spawn]
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R1
       48 CALL                             R6 1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R6 R7 K8 ["OnPropertyChanged"]
       53 JUMPIFEQKNIL                     R6 ; [+8]
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R6 R7 K8 ["OnPropertyChanged"]
       58 LOADK                            R7 K4 ["Y"]
       59 GETTABLEKS                       R8 R1 K4 ["Y"]
       61 CALL                             R6 2 0
       62 LOADN                            R2 0
       63 JUMPIFNOTLT                      R2 R0 ; [+15]
       65 GETUPVAL                         R3 3
       66 GETTABLEKS                       R2 R3 K9 ["onInputChanged"]
       68 MOVE                             R3 R0
       69 DUPTABLE                         R4 K10 [{"X", "Y"}]
       70 GETTABLEKS                       R5 R1 K3 ["X"]
       72 SETTABLEKS                       R5 R4 K3 ["X"]
       74 GETTABLEKS                       R5 R1 K4 ["Y"]
       76 SETTABLEKS                       R5 R4 K4 ["Y"]
       78 CALL                             R2 2 0
       79 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isPropertyParameterized"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["GraphPayload"]
        6 LOADK                            R2 K2 ["X"]
        7 CALL                             R0 2 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["isPropertyParameterized"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K1 ["GraphPayload"]
       14 LOADK                            R4 K3 ["Y"]
       15 CALL                             R2 2 2
       16 JUMPIFNOT                        R1 ; [+5]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K4 ["parameterOverrides"]
       20 GETTABLE                         R4 R5 R1
       21 JUMPIF                           R4 ; [+7]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K5 ["PropertyLookup"]
       25 GETTABLEKS                       R4 R5 K2 ["X"]
       27 JUMPIF                           R4 ; [+1]
       28 LOADN                            R4 0
       29 JUMPIFNOT                        R3 ; [+5]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R6 R7 K4 ["parameterOverrides"]
       33 GETTABLE                         R5 R6 R3
       34 JUMPIF                           R5 ; [+7]
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R6 R7 K5 ["PropertyLookup"]
       38 GETTABLEKS                       R5 R6 K3 ["Y"]
       40 JUMPIF                           R5 ; [+1]
       41 LOADN                            R5 0
       42 GETIMPORT                        R6 K8 [Vector2.new]
       44 MOVE                             R7 R4
       45 MOVE                             R8 R5
       46 CALL                             R6 2 -1
       47 RETURN                           R6 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K4 [{"GraphPayload", "Default"}]
        9 GETTABLEKS                       R4 R0 K2 ["GraphPayload"]
       11 SETTABLEKS                       R4 R3 K2 ["GraphPayload"]
       13 DUPTABLE                         R4 K7 [{"X", "Y"}]
       14 LOADN                            R5 0
       15 SETTABLEKS                       R5 R4 K5 ["X"]
       17 LOADN                            R5 0
       18 SETTABLEKS                       R5 R4 K6 ["Y"]
       20 SETTABLEKS                       R4 R3 K3 ["Default"]
       22 CALL                             R2 1 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K8 ["useMemo"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R5 0 1
       31 GETTABLEKS                       R6 R2 K9 ["inputs"]
       33 SETLIST                          R5 R6 1 [1]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R4 R5 K10 ["createPropertyHelpers"]
       39 MOVE                             R5 R0
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R6 R0 K12 ["PropertyLookup"]
       43 GETTABLEKS                       R5 R6 K11 ["InputMode"]
       45 JUMPIF                           R5 ; [+2]
       46 GETIMPORT                        R5 K16 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       48 GETIMPORT                        R7 K18 [Enum.AnimationNodeBlend2DInputMode.Polar]
       50 JUMPIFEQ                         R5 R7 ; [+2]
       52 LOADB                            R6 0 +1
       53 LOADB                            R6 1
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R7 R8 K19 ["useCallback"]
       57 NEWCLOSURE                       R8 P1
       58 CAPTURE                          VAL R2
       59 NEWTABLE                         R9 0 2
       61 GETTABLEKS                       R10 R2 K9 ["inputs"]
       63 GETTABLEKS                       R11 R2 K20 ["onInputChanged"]
       65 SETLIST                          R9 R10 2 [1]
       67 CALL                             R7 2 1
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R8 R9 K19 ["useCallback"]
       71 NEWCLOSURE                       R9 P2
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R7
       75 CAPTURE                          UPVAL U3
       76 NEWTABLE                         R10 0 6
       78 MOVE                             R11 R5
       79 GETTABLEKS                       R12 R2 K9 ["inputs"]
       81 GETTABLEKS                       R13 R0 K21 ["OnPropertyChanged"]
       83 GETTABLEKS                       R14 R0 K12 ["PropertyLookup"]
       85 MOVE                             R15 R7
       86 GETTABLEKS                       R17 R0 K12 ["PropertyLookup"]
       88 GETTABLEKS                       R16 R17 K5 ["X"]
       90 SETLIST                          R10 R11 6 [1]
       92 CALL                             R8 2 1
       93 GETUPVAL                         R10 0
       94 GETTABLEKS                       R9 R10 K19 ["useCallback"]
       96 NEWCLOSURE                       R10 P3
       97 CAPTURE                          UPVAL U5
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R2
      101 NEWTABLE                         R11 0 3
      103 MOVE                             R12 R6
      104 GETTABLEKS                       R13 R0 K21 ["OnPropertyChanged"]
      106 GETTABLEKS                       R14 R0 K12 ["PropertyLookup"]
      108 SETLIST                          R11 R12 3 [1]
      110 CALL                             R9 2 1
      111 GETUPVAL                         R11 0
      112 GETTABLEKS                       R10 R11 K8 ["useMemo"]
      114 NEWCLOSURE                       R11 P4
      115 CAPTURE                          UPVAL U5
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R1
      118 NEWTABLE                         R12 0 4
      120 GETTABLEKS                       R13 R0 K2 ["GraphPayload"]
      122 GETTABLEKS                       R14 R1 K22 ["parameterOverrides"]
      124 GETTABLEKS                       R16 R0 K12 ["PropertyLookup"]
      126 GETTABLEKS                       R15 R16 K5 ["X"]
      128 GETTABLEKS                       R17 R0 K12 ["PropertyLookup"]
      130 GETTABLEKS                       R16 R17 K6 ["Y"]
      132 SETLIST                          R12 R13 4 [1]
      134 CALL                             R10 2 1
      135 DUPTABLE                         R11 K29 [{"Property_PhaseSync", "Property_InputMode", "Property_X_Angle", "Property_Y_Magnitude", "Blend2DMap", "InputPanel"}]
      136 GETTABLEKS                       R12 R4 K30 ["nextProperty"]
      138 DUPTABLE                         R13 K36 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
      139 LOADK                            R14 K37 ["PhaseSync"]
      140 SETTABLEKS                       R14 R13 K31 ["Name"]
      142 LOADK                            R14 K38 ["Phase Sync"]
      143 SETTABLEKS                       R14 R13 K32 ["Label"]
      145 LOADK                            R14 K39 ["Enum.AnimationNodePhaseSync"]
      146 SETTABLEKS                       R14 R13 K33 ["Type"]
      148 GETTABLEKS                       R15 R0 K12 ["PropertyLookup"]
      150 GETTABLEKS                       R14 R15 K37 ["PhaseSync"]
      152 SETTABLEKS                       R14 R13 K34 ["Value"]
      154 GETIMPORT                        R14 K42 [Enum.AnimationNodePhaseSync.Synced]
      156 SETTABLEKS                       R14 R13 K35 ["DefaultValue"]
      158 CALL                             R12 1 1
      159 SETTABLEKS                       R12 R11 K23 ["Property_PhaseSync"]
      161 GETTABLEKS                       R12 R4 K30 ["nextProperty"]
      163 DUPTABLE                         R13 K44 [{"Name", "Label", "Type", "Value", "OnChanged"}]
      164 LOADK                            R14 K11 ["InputMode"]
      165 SETTABLEKS                       R14 R13 K31 ["Name"]
      167 LOADK                            R14 K45 ["Input Mode"]
      168 SETTABLEKS                       R14 R13 K32 ["Label"]
      170 LOADK                            R14 K46 ["Enum.AnimationNodeBlend2DInputMode"]
      171 SETTABLEKS                       R14 R13 K33 ["Type"]
      173 SETTABLEKS                       R5 R13 K34 ["Value"]
      175 SETTABLEKS                       R8 R13 K43 ["OnChanged"]
      177 CALL                             R12 1 1
      178 SETTABLEKS                       R12 R11 K24 ["Property_InputMode"]
      180 GETTABLEKS                       R12 R4 K30 ["nextProperty"]
      182 DUPTABLE                         R13 K49 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
      183 LOADK                            R14 K5 ["X"]
      184 SETTABLEKS                       R14 R13 K31 ["Name"]
      186 JUMPIFNOT                        R6 ; [+2]
      187 LOADK                            R14 K50 ["Angle"]
      188 JUMP                             ; [+1]
      189 LOADK                            R14 K5 ["X"]
      190 SETTABLEKS                       R14 R13 K32 ["Label"]
      192 JUMPIFNOT                        R6 ; [+2]
      193 LOADK                            R14 K50 ["Angle"]
      194 JUMP                             ; [+1]
      195 LOADK                            R14 K51 ["Number"]
      196 SETTABLEKS                       R14 R13 K33 ["Type"]
      198 GETTABLEKS                       R15 R0 K12 ["PropertyLookup"]
      200 GETTABLEKS                       R14 R15 K5 ["X"]
      202 SETTABLEKS                       R14 R13 K34 ["Value"]
      204 LOADN                            R14 0
      205 SETTABLEKS                       R14 R13 K3 ["Default"]
      207 JUMPIFNOT                        R6 ; [+2]
      208 LOADN                            R14 1
      209 JUMP                             ; [+1]
      210 LOADK                            R14 K52 [0.1]
      211 SETTABLEKS                       R14 R13 K47 ["Step"]
      213 LOADN                            R14 2
      214 SETTABLEKS                       R14 R13 K48 ["Precision"]
      216 CALL                             R12 1 1
      217 SETTABLEKS                       R12 R11 K25 ["Property_X_Angle"]
      219 GETTABLEKS                       R12 R4 K30 ["nextProperty"]
      221 DUPTABLE                         R13 K49 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
      222 LOADK                            R14 K6 ["Y"]
      223 SETTABLEKS                       R14 R13 K31 ["Name"]
      225 JUMPIFNOT                        R6 ; [+2]
      226 LOADK                            R14 K53 ["Magnitude"]
      227 JUMP                             ; [+1]
      228 LOADK                            R14 K6 ["Y"]
      229 SETTABLEKS                       R14 R13 K32 ["Label"]
      231 LOADK                            R14 K51 ["Number"]
      232 SETTABLEKS                       R14 R13 K33 ["Type"]
      234 GETTABLEKS                       R15 R0 K12 ["PropertyLookup"]
      236 GETTABLEKS                       R14 R15 K6 ["Y"]
      238 SETTABLEKS                       R14 R13 K34 ["Value"]
      240 LOADN                            R14 0
      241 SETTABLEKS                       R14 R13 K3 ["Default"]
      243 LOADK                            R14 K52 [0.1]
      244 SETTABLEKS                       R14 R13 K47 ["Step"]
      246 LOADN                            R14 2
      247 SETTABLEKS                       R14 R13 K48 ["Precision"]
      249 CALL                             R12 1 1
      250 SETTABLEKS                       R12 R11 K26 ["Property_Y_Magnitude"]
      252 GETUPVAL                         R13 0
      253 GETTABLEKS                       R12 R13 K54 ["createElement"]
      255 GETUPVAL                         R13 6
      256 DUPTABLE                         R14 K59 [{"LayoutOrder", "InputMode", "OnPinDragged", "Position", "Pins"}]
      257 GETTABLEKS                       R15 R4 K60 ["nextOrder"]
      259 CALL                             R15 0 1
      260 SETTABLEKS                       R15 R14 K55 ["LayoutOrder"]
      262 SETTABLEKS                       R5 R14 K11 ["InputMode"]
      264 SETTABLEKS                       R9 R14 K56 ["OnPinDragged"]
      266 SETTABLEKS                       R10 R14 K57 ["Position"]
      268 SETTABLEKS                       R3 R14 K58 ["Pins"]
      270 CALL                             R12 2 1
      271 SETTABLEKS                       R12 R11 K27 ["Blend2DMap"]
      273 GETTABLEKS                       R12 R4 K61 ["nextInputPanel"]
      275 DUPTABLE                         R13 K69 [{"InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      276 GETUPVAL                         R14 7
      277 SETTABLEKS                       R14 R13 K62 ["InputBuilder"]
      279 DUPTABLE                         R14 K70 [{"InputMode"}]
      280 GETTABLEKS                       R16 R0 K12 ["PropertyLookup"]
      282 GETTABLEKS                       R15 R16 K11 ["InputMode"]
      284 SETTABLEKS                       R15 R14 K11 ["InputMode"]
      286 SETTABLEKS                       R14 R13 K63 ["InputBuilderProps"]
      288 GETTABLEKS                       R15 R0 K2 ["GraphPayload"]
      290 GETTABLEKS                       R14 R15 K71 ["id"]
      292 SETTABLEKS                       R14 R13 K64 ["NodeId"]
      294 GETTABLEKS                       R14 R2 K9 ["inputs"]
      296 SETTABLEKS                       R14 R13 K65 ["Inputs"]
      298 GETTABLEKS                       R14 R2 K72 ["newInputDefaultValue"]
      300 SETTABLEKS                       R14 R13 K66 ["NewInputDefaultValue"]
      302 GETTABLEKS                       R14 R2 K20 ["onInputChanged"]
      304 SETTABLEKS                       R14 R13 K67 ["OnInputChanged"]
      306 GETTABLEKS                       R14 R2 K73 ["onInputReordered"]
      308 SETTABLEKS                       R14 R13 K68 ["OnInputReordered"]
      310 CALL                             R12 1 1
      311 SETTABLEKS                       R12 R11 K28 ["InputPanel"]
      313 GETUPVAL                         R13 0
      314 GETTABLEKS                       R12 R13 K54 ["createElement"]
      316 GETUPVAL                         R13 8
      317 GETTABLEKS                       R14 R4 K74 ["nodeProps"]
      319 DUPTABLE                         R15 K76 [{"OutputPin"}]
      320 GETTABLEKS                       R16 R4 K77 ["outputPin"]
      322 CALL                             R16 0 1
      323 SETTABLEKS                       R16 R15 K75 ["OutputPin"]
      325 CALL                             R14 1 1
      326 MOVE                             R15 R11
      327 CALL                             R12 3 -1
      328 RETURN                           R12 -1

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
       76 GETTABLEKS                       R10 R0 K21 ["Contexts"]
       78 GETTABLEKS                       R9 R10 K22 ["ParameterOverrideContext"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R13 R0 K8 ["Components"]
       85 GETTABLEKS                       R12 R13 K9 ["NodeView"]
       87 GETTABLEKS                       R11 R12 K12 ["CompositorNodeProperty"]
       89 GETTABLEKS                       R10 R11 K23 ["PropertyUtils"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K5 [require]
       94 GETTABLEKS                       R14 R0 K8 ["Components"]
       96 GETTABLEKS                       R13 R14 K9 ["NodeView"]
       98 GETTABLEKS                       R12 R13 K14 ["CompositorNodes"]
      100 GETTABLEKS                       R11 R12 K24 ["useInputPanelHelper"]
      102 CALL                             R10 1 1
      103 DUPCLOSURE                       R11 K25 [PROTO_12]
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R4
      113 RETURN                           R11 1
