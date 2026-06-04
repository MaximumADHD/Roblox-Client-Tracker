PROTO_0:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["Value"]
        4 GETTABLEKS                       R2 R2 K4 ["X"]
        6 GETTABLEKS                       R3 R0 K3 ["Value"]
        8 GETTABLEKS                       R3 R3 K5 ["Y"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["inputs"]
        6 DUPCLOSURE                       R2 K2 [PROTO_0]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePropsById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["inputs"]
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K1 ["onInputChanged"]
        9 MOVE                             R7 R4
       10 GETTABLEKS                       R8 R5 K2 ["Value"]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 2 ; [-8]
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"Value"}]
        5 DUPTABLE                         R4 K5 [{"X", "Y"}]
        6 GETTABLEKS                       R6 R0 K1 ["Value"]
        8 GETTABLEKS                       R6 R6 K3 ["X"]
       10 FASTCALL1                        MATH_RAD R6 ; [+2]
       11 GETIMPORT                        R5 K8 [math.rad]
       13 CALL                             R5 1 1
       14 SETTABLEKS                       R5 R4 K3 ["X"]
       16 GETTABLEKS                       R5 R0 K1 ["Value"]
       18 GETTABLEKS                       R5 R5 K4 ["Y"]
       20 SETTABLEKS                       R5 R4 K4 ["Y"]
       22 SETTABLEKS                       R4 R3 K1 ["Value"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_4]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"Value"}]
        5 DUPTABLE                         R4 K5 [{"X", "Y"}]
        6 GETTABLEKS                       R6 R0 K1 ["Value"]
        8 GETTABLEKS                       R6 R6 K3 ["X"]
       10 FASTCALL1                        MATH_DEG R6 ; [+2]
       11 GETIMPORT                        R5 K8 [math.deg]
       13 CALL                             R5 1 1
       14 SETTABLEKS                       R5 R4 K3 ["X"]
       16 GETTABLEKS                       R5 R0 K1 ["Value"]
       18 GETTABLEKS                       R5 R5 K4 ["Y"]
       20 SETTABLEKS                       R5 R4 K4 ["Y"]
       22 SETTABLEKS                       R4 R3 K1 ["Value"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_6]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R1 R2 ; [+65]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["OnPropertyChanged"]
        6 JUMPIFEQKNIL                     R2 ; [+60]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["PropertyLookup"]
       11 GETTABLEKS                       R3 R4 K2 ["X"]
       13 ORK                              R2 R3 K1 [0]
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R6 R2
       16 GETIMPORT                        R5 K5 [typeof]
       18 CALL                             R5 1 1
       19 JUMPIFEQKS                       R5 K6 ["number"] ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       25 LOADK                            R5 K7 ["X is not a number"]
       26 GETIMPORT                        R3 K9 [assert]
       28 CALL                             R3 2 0
       29 LOADNIL                          R3
       30 GETIMPORT                        R4 K13 [Enum.AnimationNodeBlend2DInputMode.Polar]
       32 JUMPIFNOTEQ                      R1 R4 ; [+12]
       34 FASTCALL1                        MATH_RAD R2 ; [+3]
       35 MOVE                             R5 R2
       36 GETIMPORT                        R4 K16 [math.rad]
       38 CALL                             R4 1 1
       39 MOVE                             R3 R4
       40 GETUPVAL                         R4 2
       41 DUPCLOSURE                       R5 K17 [PROTO_5]
       42 CAPTURE                          UPVAL U3
       43 CALL                             R4 1 0
       44 JUMP                             ; [+10]
       45 FASTCALL1                        MATH_DEG R2 ; [+3]
       46 MOVE                             R5 R2
       47 GETIMPORT                        R4 K19 [math.deg]
       49 CALL                             R4 1 1
       50 MOVE                             R3 R4
       51 GETUPVAL                         R4 2
       52 DUPCLOSURE                       R5 K20 [PROTO_7]
       53 CAPTURE                          UPVAL U3
       54 CALL                             R4 1 0
       55 GETUPVAL                         R4 1
       56 GETTABLEKS                       R4 R4 K0 ["OnPropertyChanged"]
       58 LOADK                            R5 K2 ["X"]
       59 MOVE                             R6 R3
       60 CALL                             R4 2 0
       61 GETUPVAL                         R4 1
       62 GETTABLEKS                       R4 R4 K0 ["OnPropertyChanged"]
       64 LOADK                            R5 K21 ["InputMode"]
       65 MOVE                             R6 R1
       66 CALL                             R4 2 0
       67 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+57]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["isPropertyParameterized"]
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K2 ["X"]
        7 CALL                             R2 2 2
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["isPropertyParameterized"]
       11 GETUPVAL                         R5 1
       12 LOADK                            R6 K3 ["Y"]
       13 CALL                             R4 2 2
       14 JUMPIFNOT                        R2 ; [+9]
       15 JUMPIFNOT                        R3 ; [+8]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K4 ["setParameterOverrideValue"]
       19 MOVE                             R7 R3
       20 GETTABLEKS                       R8 R1 K2 ["X"]
       22 CALL                             R6 2 0
       23 JUMP                             ; [+12]
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K5 ["OnPropertyChanged"]
       27 JUMPIFEQKNIL                     R6 ; [+8]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K5 ["OnPropertyChanged"]
       32 LOADK                            R7 K2 ["X"]
       33 GETTABLEKS                       R8 R1 K2 ["X"]
       35 CALL                             R6 2 0
       36 JUMPIFNOT                        R4 ; [+9]
       37 JUMPIFNOT                        R5 ; [+8]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K4 ["setParameterOverrideValue"]
       41 MOVE                             R7 R5
       42 GETTABLEKS                       R8 R1 K3 ["Y"]
       44 CALL                             R6 2 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K5 ["OnPropertyChanged"]
       49 JUMPIFEQKNIL                     R6 ; [+8]
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R6 R6 K5 ["OnPropertyChanged"]
       54 LOADK                            R7 K3 ["Y"]
       55 GETTABLEKS                       R8 R1 K3 ["Y"]
       57 CALL                             R6 2 0
       58 LOADN                            R2 0
       59 JUMPIFNOTLT                      R2 R0 ; [+15]
       61 GETUPVAL                         R2 4
       62 GETTABLEKS                       R2 R2 K6 ["onInputChanged"]
       64 MOVE                             R3 R0
       65 DUPTABLE                         R4 K7 [{"X", "Y"}]
       66 GETTABLEKS                       R5 R1 K2 ["X"]
       68 SETTABLEKS                       R5 R4 K2 ["X"]
       70 GETTABLEKS                       R5 R1 K3 ["Y"]
       72 SETTABLEKS                       R5 R4 K3 ["Y"]
       74 CALL                             R2 2 0
       75 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isPropertyParameterized"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["X"]
        5 CALL                             R0 2 2
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["isPropertyParameterized"]
        9 GETUPVAL                         R3 1
       10 LOADK                            R4 K2 ["Y"]
       11 CALL                             R2 2 2
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K3 ["parameterOverrides"]
       16 GETTABLE                         R4 R5 R1
       17 JUMPIF                           R4 ; [+7]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K4 ["PropertyLookup"]
       21 GETTABLEKS                       R4 R5 K1 ["X"]
       23 JUMPIF                           R4 ; [+1]
       24 LOADN                            R4 0
       25 JUMPIFNOT                        R3 ; [+5]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K3 ["parameterOverrides"]
       29 GETTABLE                         R5 R6 R3
       30 JUMPIF                           R5 ; [+7]
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K4 ["PropertyLookup"]
       34 GETTABLEKS                       R5 R6 K2 ["Y"]
       36 JUMPIF                           R5 ; [+1]
       37 LOADN                            R5 0
       38 GETIMPORT                        R6 K7 [Vector2.new]
       40 MOVE                             R7 R4
       41 MOVE                             R8 R5
       42 CALL                             R6 2 -1
       43 RETURN                           R6 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GraphContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["ParameterOverrideContext"]
       15 GETTABLEKS                       R3 R3 K2 ["Context"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 2
       19 DUPTABLE                         R4 K6 [{"GraphPayload", "Default"}]
       20 GETTABLEKS                       R5 R0 K4 ["GraphPayload"]
       22 SETTABLEKS                       R5 R4 K4 ["GraphPayload"]
       24 DUPTABLE                         R5 K9 [{"X", "Y"}]
       25 LOADN                            R6 0
       26 SETTABLEKS                       R6 R5 K7 ["X"]
       28 LOADN                            R6 0
       29 SETTABLEKS                       R6 R5 K8 ["Y"]
       31 SETTABLEKS                       R5 R4 K5 ["Default"]
       33 CALL                             R3 1 1
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K10 ["useMemo"]
       37 NEWCLOSURE                       R5 P0
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R3
       40 NEWTABLE                         R6 0 1
       42 GETTABLEKS                       R7 R3 K11 ["inputs"]
       44 SETLIST                          R6 R7 1 [1]
       46 CALL                             R4 2 1
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K10 ["useMemo"]
       50 NEWCLOSURE                       R6 P1
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R7 0 2
       55 GETTABLEKS                       R8 R1 K12 ["observeNodePropsById"]
       57 GETTABLEKS                       R9 R0 K4 ["GraphPayload"]
       59 GETTABLEKS                       R9 R9 K13 ["id"]
       61 SETLIST                          R7 R8 2 [1]
       63 CALL                             R5 2 1
       64 GETUPVAL                         R6 4
       65 GETTABLEKS                       R6 R6 K14 ["useSignalState"]
       67 MOVE                             R7 R5
       68 CALL                             R6 1 1
       69 GETUPVAL                         R7 1
       70 GETTABLEKS                       R7 R7 K15 ["CompositorNodeUtils"]
       72 GETTABLEKS                       R7 R7 K16 ["createPropertyHelpers"]
       74 MOVE                             R8 R0
       75 CALL                             R7 1 1
       76 GETTABLEKS                       R9 R0 K18 ["PropertyLookup"]
       78 GETTABLEKS                       R8 R9 K17 ["InputMode"]
       80 JUMPIF                           R8 ; [+2]
       81 GETIMPORT                        R8 K22 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       83 GETIMPORT                        R10 K24 [Enum.AnimationNodeBlend2DInputMode.Polar]
       85 JUMPIFEQ                         R8 R10 ; [+2]
       87 LOADB                            R9 0 +1
       88 LOADB                            R9 1
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R10 R10 K25 ["useCallback"]
       92 NEWCLOSURE                       R11 P2
       93 CAPTURE                          VAL R3
       94 NEWTABLE                         R12 0 2
       96 GETTABLEKS                       R13 R3 K11 ["inputs"]
       98 GETTABLEKS                       R14 R3 K26 ["onInputChanged"]
      100 SETLIST                          R12 R13 2 [1]
      102 CALL                             R10 2 1
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R11 R11 K25 ["useCallback"]
      106 NEWCLOSURE                       R12 P3
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R10
      110 CAPTURE                          UPVAL U3
      111 NEWTABLE                         R13 0 6
      113 MOVE                             R14 R8
      114 GETTABLEKS                       R15 R3 K11 ["inputs"]
      116 GETTABLEKS                       R16 R0 K27 ["OnPropertyChanged"]
      118 GETTABLEKS                       R17 R0 K18 ["PropertyLookup"]
      120 MOVE                             R18 R10
      121 GETTABLEKS                       R20 R0 K18 ["PropertyLookup"]
      123 GETTABLEKS                       R19 R20 K7 ["X"]
      125 SETLIST                          R13 R14 6 [1]
      127 CALL                             R11 2 1
      128 GETUPVAL                         R12 0
      129 GETTABLEKS                       R12 R12 K25 ["useCallback"]
      131 NEWCLOSURE                       R13 P4
      132 CAPTURE                          UPVAL U5
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R0
      136 CAPTURE                          VAL R3
      137 NEWTABLE                         R14 0 4
      139 MOVE                             R15 R6
      140 MOVE                             R16 R9
      141 GETTABLEKS                       R17 R0 K27 ["OnPropertyChanged"]
      143 GETTABLEKS                       R18 R0 K18 ["PropertyLookup"]
      145 SETLIST                          R14 R15 4 [1]
      147 CALL                             R12 2 1
      148 GETUPVAL                         R13 0
      149 GETTABLEKS                       R13 R13 K10 ["useMemo"]
      151 NEWCLOSURE                       R14 P5
      152 CAPTURE                          UPVAL U5
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R0
      156 NEWTABLE                         R15 0 4
      158 MOVE                             R16 R6
      159 GETTABLEKS                       R17 R2 K28 ["parameterOverrides"]
      161 GETTABLEKS                       R19 R0 K18 ["PropertyLookup"]
      163 GETTABLEKS                       R18 R19 K7 ["X"]
      165 GETTABLEKS                       R20 R0 K18 ["PropertyLookup"]
      167 GETTABLEKS                       R19 R20 K8 ["Y"]
      169 SETLIST                          R15 R16 4 [1]
      171 CALL                             R13 2 1
      172 DUPTABLE                         R14 K35 [{"Property_PhaseSync", "Property_InputMode", "Property_X_Angle", "Property_Y_Magnitude", "Blend2DMap", "InputPanel"}]
      173 GETTABLEKS                       R15 R7 K36 ["nextProperty"]
      175 DUPTABLE                         R16 K42 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
      176 LOADK                            R17 K43 ["PhaseSync"]
      177 SETTABLEKS                       R17 R16 K37 ["Name"]
      179 LOADK                            R17 K44 ["Phase Sync"]
      180 SETTABLEKS                       R17 R16 K38 ["Label"]
      182 LOADK                            R17 K45 ["Enum.AnimationNodePhaseSync"]
      183 SETTABLEKS                       R17 R16 K39 ["Type"]
      185 GETTABLEKS                       R18 R0 K18 ["PropertyLookup"]
      187 GETTABLEKS                       R17 R18 K43 ["PhaseSync"]
      189 SETTABLEKS                       R17 R16 K40 ["Value"]
      191 GETIMPORT                        R17 K48 [Enum.AnimationNodePhaseSync.Synced]
      193 SETTABLEKS                       R17 R16 K41 ["DefaultValue"]
      195 CALL                             R15 1 1
      196 SETTABLEKS                       R15 R14 K29 ["Property_PhaseSync"]
      198 GETTABLEKS                       R15 R7 K36 ["nextProperty"]
      200 DUPTABLE                         R16 K50 [{"Name", "Label", "Type", "Value", "OnChanged"}]
      201 LOADK                            R17 K17 ["InputMode"]
      202 SETTABLEKS                       R17 R16 K37 ["Name"]
      204 LOADK                            R17 K51 ["Input Mode"]
      205 SETTABLEKS                       R17 R16 K38 ["Label"]
      207 LOADK                            R17 K52 ["Enum.AnimationNodeBlend2DInputMode"]
      208 SETTABLEKS                       R17 R16 K39 ["Type"]
      210 SETTABLEKS                       R8 R16 K40 ["Value"]
      212 SETTABLEKS                       R11 R16 K49 ["OnChanged"]
      214 CALL                             R15 1 1
      215 SETTABLEKS                       R15 R14 K30 ["Property_InputMode"]
      217 GETTABLEKS                       R15 R7 K36 ["nextProperty"]
      219 DUPTABLE                         R16 K55 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
      220 LOADK                            R17 K7 ["X"]
      221 SETTABLEKS                       R17 R16 K37 ["Name"]
      223 JUMPIFNOT                        R9 ; [+2]
      224 LOADK                            R17 K56 ["Angle"]
      225 JUMP                             ; [+1]
      226 LOADK                            R17 K7 ["X"]
      227 SETTABLEKS                       R17 R16 K38 ["Label"]
      229 JUMPIFNOT                        R9 ; [+2]
      230 LOADK                            R17 K56 ["Angle"]
      231 JUMP                             ; [+1]
      232 LOADK                            R17 K57 ["Number"]
      233 SETTABLEKS                       R17 R16 K39 ["Type"]
      235 GETTABLEKS                       R18 R0 K18 ["PropertyLookup"]
      237 GETTABLEKS                       R17 R18 K7 ["X"]
      239 SETTABLEKS                       R17 R16 K40 ["Value"]
      241 LOADN                            R17 0
      242 SETTABLEKS                       R17 R16 K5 ["Default"]
      244 GETUPVAL                         R18 6
      245 CALL                             R18 0 1
      246 JUMPIFNOT                        R18 ; [+2]
      247 LOADNIL                          R17
      248 JUMP                             ; [+4]
      249 JUMPIFNOT                        R9 ; [+2]
      250 LOADN                            R17 1
      251 JUMP                             ; [+1]
      252 LOADK                            R17 K58 [0.1]
      253 SETTABLEKS                       R17 R16 K53 ["Step"]
      255 GETUPVAL                         R18 6
      256 CALL                             R18 0 1
      257 JUMPIFNOT                        R18 ; [+2]
      258 LOADNIL                          R17
      259 JUMP                             ; [+5]
      260 GETUPVAL                         R17 7
      261 GETTABLEKS                       R17 R17 K59 ["NUMBER_PRECISION"]
      263 GETTABLEKS                       R17 R17 K60 ["Float"]
      265 SETTABLEKS                       R17 R16 K54 ["Precision"]
      267 CALL                             R15 1 1
      268 SETTABLEKS                       R15 R14 K31 ["Property_X_Angle"]
      270 GETTABLEKS                       R15 R7 K36 ["nextProperty"]
      272 DUPTABLE                         R16 K55 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
      273 LOADK                            R17 K8 ["Y"]
      274 SETTABLEKS                       R17 R16 K37 ["Name"]
      276 JUMPIFNOT                        R9 ; [+2]
      277 LOADK                            R17 K61 ["Magnitude"]
      278 JUMP                             ; [+1]
      279 LOADK                            R17 K8 ["Y"]
      280 SETTABLEKS                       R17 R16 K38 ["Label"]
      282 LOADK                            R17 K57 ["Number"]
      283 SETTABLEKS                       R17 R16 K39 ["Type"]
      285 GETTABLEKS                       R18 R0 K18 ["PropertyLookup"]
      287 GETTABLEKS                       R17 R18 K8 ["Y"]
      289 SETTABLEKS                       R17 R16 K40 ["Value"]
      291 LOADN                            R17 0
      292 SETTABLEKS                       R17 R16 K5 ["Default"]
      294 GETUPVAL                         R18 6
      295 CALL                             R18 0 1
      296 JUMPIFNOT                        R18 ; [+2]
      297 LOADNIL                          R17
      298 JUMP                             ; [+1]
      299 LOADK                            R17 K58 [0.1]
      300 SETTABLEKS                       R17 R16 K53 ["Step"]
      302 GETUPVAL                         R18 6
      303 CALL                             R18 0 1
      304 JUMPIFNOT                        R18 ; [+2]
      305 LOADNIL                          R17
      306 JUMP                             ; [+5]
      307 GETUPVAL                         R17 7
      308 GETTABLEKS                       R17 R17 K59 ["NUMBER_PRECISION"]
      310 GETTABLEKS                       R17 R17 K60 ["Float"]
      312 SETTABLEKS                       R17 R16 K54 ["Precision"]
      314 CALL                             R15 1 1
      315 SETTABLEKS                       R15 R14 K32 ["Property_Y_Magnitude"]
      317 GETUPVAL                         R15 0
      318 GETTABLEKS                       R15 R15 K62 ["createElement"]
      320 GETUPVAL                         R16 8
      321 DUPTABLE                         R17 K67 [{"LayoutOrder", "InputMode", "OnPinDragged", "Position", "Pins"}]
      322 GETTABLEKS                       R18 R7 K68 ["nextOrder"]
      324 CALL                             R18 0 1
      325 SETTABLEKS                       R18 R17 K63 ["LayoutOrder"]
      327 SETTABLEKS                       R8 R17 K17 ["InputMode"]
      329 SETTABLEKS                       R12 R17 K64 ["OnPinDragged"]
      331 SETTABLEKS                       R13 R17 K65 ["Position"]
      333 SETTABLEKS                       R4 R17 K66 ["Pins"]
      335 CALL                             R15 2 1
      336 SETTABLEKS                       R15 R14 K33 ["Blend2DMap"]
      338 GETTABLEKS                       R15 R3 K69 ["makePropertyChild"]
      340 MOVE                             R16 R0
      341 MOVE                             R17 R7
      342 DUPTABLE                         R18 K72 [{"inputBuilder", "inputBuilderProps"}]
      343 GETUPVAL                         R19 9
      344 SETTABLEKS                       R19 R18 K70 ["inputBuilder"]
      346 DUPTABLE                         R19 K73 [{"InputMode"}]
      347 GETUPVAL                         R20 10
      348 GETTABLEKS                       R20 R20 K74 ["enum"]
      350 GETTABLEKS                       R21 R0 K18 ["PropertyLookup"]
      352 GETTABLEKS                       R21 R21 K17 ["InputMode"]
      354 GETIMPORT                        R22 K22 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      356 CALL                             R20 2 1
      357 SETTABLEKS                       R20 R19 K17 ["InputMode"]
      359 SETTABLEKS                       R19 R18 K71 ["inputBuilderProps"]
      361 CALL                             R15 3 1
      362 SETTABLEKS                       R15 R14 K34 ["InputPanel"]
      364 GETUPVAL                         R15 0
      365 GETTABLEKS                       R15 R15 K62 ["createElement"]
      367 GETUPVAL                         R16 1
      368 GETTABLEKS                       R16 R16 K75 ["CompositorNode"]
      370 GETTABLEKS                       R17 R7 K76 ["nodeProps"]
      372 DUPTABLE                         R18 K78 [{"OutputPin"}]
      373 GETTABLEKS                       R19 R7 K79 ["outputPin"]
      375 CALL                             R19 0 1
      376 SETTABLEKS                       R19 R18 K77 ["OutputPin"]
      378 CALL                             R17 1 1
      379 MOVE                             R18 R14
      380 CALL                             R15 3 -1
      381 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeInput"]
       15 GETTABLEKS                       R2 R2 K9 ["Blend2DInput"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Components"]
       22 GETTABLEKS                       R3 R3 K7 ["NodeView"]
       24 GETTABLEKS                       R3 R3 K10 ["CompositorNodeProperty"]
       26 GETTABLEKS                       R3 R3 K11 ["Blend2DMap"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K12 ["Util"]
       33 GETTABLEKS                       R4 R4 K13 ["Constants"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K14 ["Parent"]
       40 GETTABLEKS                       R5 R5 K15 ["Dash"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K12 ["Util"]
       47 GETTABLEKS                       R6 R6 K16 ["ExpectType"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Components"]
       54 GETTABLEKS                       R7 R7 K7 ["NodeView"]
       56 GETTABLEKS                       R7 R7 K8 ["CompositorNodeInput"]
       58 GETTABLEKS                       R7 R7 K17 ["InputPanelTypes"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K14 ["Parent"]
       65 GETTABLEKS                       R8 R8 K18 ["NodeGraphing"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K6 ["Components"]
       72 GETTABLEKS                       R9 R9 K7 ["NodeView"]
       74 GETTABLEKS                       R9 R9 K10 ["CompositorNodeProperty"]
       76 GETTABLEKS                       R9 R9 K19 ["PropertyUtils"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K14 ["Parent"]
       83 GETTABLEKS                       R10 R10 K20 ["React"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K14 ["Parent"]
       90 GETTABLEKS                       R11 R11 K21 ["SignalsReact"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K6 ["Components"]
       97 GETTABLEKS                       R12 R12 K7 ["NodeView"]
       99 GETTABLEKS                       R12 R12 K22 ["CompositorNodes"]
      101 GETTABLEKS                       R12 R12 K23 ["useInputPanelHelper"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R13 R0 K24 ["Flags"]
      108 GETTABLEKS                       R13 R13 K25 ["getFFlagAnimGraphFloatStep003"]
      110 CALL                             R12 1 1
      111 DUPCLOSURE                       R13 K26 [PROTO_11]
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R5
      123 RETURN                           R13 1
