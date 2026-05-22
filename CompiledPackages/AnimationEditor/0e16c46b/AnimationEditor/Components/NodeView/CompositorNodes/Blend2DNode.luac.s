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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setParameterOverrideValueAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["X"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setParameterOverrideValueAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["Y"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_11:
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
       16 GETIMPORT                        R6 K6 [task.spawn]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R1
       22 CALL                             R6 1 0
       23 JUMP                             ; [+12]
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K7 ["OnPropertyChanged"]
       27 JUMPIFEQKNIL                     R6 ; [+8]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K7 ["OnPropertyChanged"]
       32 LOADK                            R7 K2 ["X"]
       33 GETTABLEKS                       R8 R1 K2 ["X"]
       35 CALL                             R6 2 0
       36 JUMPIFNOT                        R4 ; [+9]
       37 JUMPIFNOT                        R5 ; [+8]
       38 GETIMPORT                        R6 K6 [task.spawn]
       40 NEWCLOSURE                       R7 P1
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R1
       44 CALL                             R6 1 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K7 ["OnPropertyChanged"]
       49 JUMPIFEQKNIL                     R6 ; [+8]
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R6 R6 K7 ["OnPropertyChanged"]
       54 LOADK                            R7 K3 ["Y"]
       55 GETTABLEKS                       R8 R1 K3 ["Y"]
       57 CALL                             R6 2 0
       58 LOADN                            R2 0
       59 JUMPIFNOTLT                      R2 R0 ; [+15]
       61 GETUPVAL                         R2 4
       62 GETTABLEKS                       R2 R2 K8 ["onInputChanged"]
       64 MOVE                             R3 R0
       65 DUPTABLE                         R4 K9 [{"X", "Y"}]
       66 GETTABLEKS                       R5 R1 K2 ["X"]
       68 SETTABLEKS                       R5 R4 K2 ["X"]
       70 GETTABLEKS                       R5 R1 K3 ["Y"]
       72 SETTABLEKS                       R5 R4 K3 ["Y"]
       74 CALL                             R2 2 0
       75 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GraphContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["Context"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 3
       17 DUPTABLE                         R4 K5 [{"GraphPayload", "Default"}]
       18 GETTABLEKS                       R5 R0 K3 ["GraphPayload"]
       20 SETTABLEKS                       R5 R4 K3 ["GraphPayload"]
       22 DUPTABLE                         R5 K8 [{"X", "Y"}]
       23 LOADN                            R6 0
       24 SETTABLEKS                       R6 R5 K6 ["X"]
       26 LOADN                            R6 0
       27 SETTABLEKS                       R6 R5 K7 ["Y"]
       29 SETTABLEKS                       R5 R4 K4 ["Default"]
       31 CALL                             R3 1 1
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K9 ["useMemo"]
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          VAL R3
       38 NEWTABLE                         R6 0 1
       40 GETTABLEKS                       R7 R3 K10 ["inputs"]
       42 SETLIST                          R6 R7 1 [1]
       44 CALL                             R4 2 1
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       48 NEWCLOSURE                       R6 P1
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R7 0 2
       53 GETTABLEKS                       R8 R1 K11 ["observeNodePropsById"]
       55 GETTABLEKS                       R9 R0 K3 ["GraphPayload"]
       57 GETTABLEKS                       R9 R9 K12 ["id"]
       59 SETLIST                          R7 R8 2 [1]
       61 CALL                             R5 2 1
       62 GETUPVAL                         R6 5
       63 GETTABLEKS                       R6 R6 K13 ["useSignalState"]
       65 MOVE                             R7 R5
       66 CALL                             R6 1 1
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K14 ["CompositorNodeUtils"]
       70 GETTABLEKS                       R7 R7 K15 ["createPropertyHelpers"]
       72 MOVE                             R8 R0
       73 CALL                             R7 1 1
       74 GETTABLEKS                       R9 R0 K17 ["PropertyLookup"]
       76 GETTABLEKS                       R8 R9 K16 ["InputMode"]
       78 JUMPIF                           R8 ; [+2]
       79 GETIMPORT                        R8 K21 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       81 GETIMPORT                        R10 K23 [Enum.AnimationNodeBlend2DInputMode.Polar]
       83 JUMPIFEQ                         R8 R10 ; [+2]
       85 LOADB                            R9 0 +1
       86 LOADB                            R9 1
       87 GETUPVAL                         R10 0
       88 GETTABLEKS                       R10 R10 K24 ["useCallback"]
       90 NEWCLOSURE                       R11 P2
       91 CAPTURE                          VAL R3
       92 NEWTABLE                         R12 0 2
       94 GETTABLEKS                       R13 R3 K10 ["inputs"]
       96 GETTABLEKS                       R14 R3 K25 ["onInputChanged"]
       98 SETLIST                          R12 R13 2 [1]
      100 CALL                             R10 2 1
      101 GETUPVAL                         R11 0
      102 GETTABLEKS                       R11 R11 K24 ["useCallback"]
      104 NEWCLOSURE                       R12 P3
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R10
      108 CAPTURE                          UPVAL U4
      109 NEWTABLE                         R13 0 6
      111 MOVE                             R14 R8
      112 GETTABLEKS                       R15 R3 K10 ["inputs"]
      114 GETTABLEKS                       R16 R0 K26 ["OnPropertyChanged"]
      116 GETTABLEKS                       R17 R0 K17 ["PropertyLookup"]
      118 MOVE                             R18 R10
      119 GETTABLEKS                       R20 R0 K17 ["PropertyLookup"]
      121 GETTABLEKS                       R19 R20 K6 ["X"]
      123 SETLIST                          R13 R14 6 [1]
      125 CALL                             R11 2 1
      126 GETUPVAL                         R12 0
      127 GETTABLEKS                       R12 R12 K24 ["useCallback"]
      129 NEWCLOSURE                       R13 P4
      130 CAPTURE                          UPVAL U6
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R0
      134 CAPTURE                          VAL R3
      135 NEWTABLE                         R14 0 4
      137 MOVE                             R15 R6
      138 MOVE                             R16 R9
      139 GETTABLEKS                       R17 R0 K26 ["OnPropertyChanged"]
      141 GETTABLEKS                       R18 R0 K17 ["PropertyLookup"]
      143 SETLIST                          R14 R15 4 [1]
      145 CALL                             R12 2 1
      146 GETUPVAL                         R13 0
      147 GETTABLEKS                       R13 R13 K9 ["useMemo"]
      149 NEWCLOSURE                       R14 P5
      150 CAPTURE                          UPVAL U6
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R0
      154 NEWTABLE                         R15 0 4
      156 MOVE                             R16 R6
      157 GETTABLEKS                       R17 R2 K27 ["parameterOverrides"]
      159 GETTABLEKS                       R19 R0 K17 ["PropertyLookup"]
      161 GETTABLEKS                       R18 R19 K6 ["X"]
      163 GETTABLEKS                       R20 R0 K17 ["PropertyLookup"]
      165 GETTABLEKS                       R19 R20 K7 ["Y"]
      167 SETLIST                          R15 R16 4 [1]
      169 CALL                             R13 2 1
      170 DUPTABLE                         R14 K34 [{"Property_PhaseSync", "Property_InputMode", "Property_X_Angle", "Property_Y_Magnitude", "Blend2DMap", "InputPanel"}]
      171 GETTABLEKS                       R15 R7 K35 ["nextProperty"]
      173 DUPTABLE                         R16 K41 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
      174 LOADK                            R17 K42 ["PhaseSync"]
      175 SETTABLEKS                       R17 R16 K36 ["Name"]
      177 LOADK                            R17 K43 ["Phase Sync"]
      178 SETTABLEKS                       R17 R16 K37 ["Label"]
      180 LOADK                            R17 K44 ["Enum.AnimationNodePhaseSync"]
      181 SETTABLEKS                       R17 R16 K38 ["Type"]
      183 GETTABLEKS                       R18 R0 K17 ["PropertyLookup"]
      185 GETTABLEKS                       R17 R18 K42 ["PhaseSync"]
      187 SETTABLEKS                       R17 R16 K39 ["Value"]
      189 GETIMPORT                        R17 K47 [Enum.AnimationNodePhaseSync.Synced]
      191 SETTABLEKS                       R17 R16 K40 ["DefaultValue"]
      193 CALL                             R15 1 1
      194 SETTABLEKS                       R15 R14 K28 ["Property_PhaseSync"]
      196 GETTABLEKS                       R15 R7 K35 ["nextProperty"]
      198 DUPTABLE                         R16 K49 [{"Name", "Label", "Type", "Value", "OnChanged"}]
      199 LOADK                            R17 K16 ["InputMode"]
      200 SETTABLEKS                       R17 R16 K36 ["Name"]
      202 LOADK                            R17 K50 ["Input Mode"]
      203 SETTABLEKS                       R17 R16 K37 ["Label"]
      205 LOADK                            R17 K51 ["Enum.AnimationNodeBlend2DInputMode"]
      206 SETTABLEKS                       R17 R16 K38 ["Type"]
      208 SETTABLEKS                       R8 R16 K39 ["Value"]
      210 SETTABLEKS                       R11 R16 K48 ["OnChanged"]
      212 CALL                             R15 1 1
      213 SETTABLEKS                       R15 R14 K29 ["Property_InputMode"]
      215 GETTABLEKS                       R15 R7 K35 ["nextProperty"]
      217 DUPTABLE                         R16 K54 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
      218 LOADK                            R17 K6 ["X"]
      219 SETTABLEKS                       R17 R16 K36 ["Name"]
      221 JUMPIFNOT                        R9 ; [+2]
      222 LOADK                            R17 K55 ["Angle"]
      223 JUMP                             ; [+1]
      224 LOADK                            R17 K6 ["X"]
      225 SETTABLEKS                       R17 R16 K37 ["Label"]
      227 JUMPIFNOT                        R9 ; [+2]
      228 LOADK                            R17 K55 ["Angle"]
      229 JUMP                             ; [+1]
      230 LOADK                            R17 K56 ["Number"]
      231 SETTABLEKS                       R17 R16 K38 ["Type"]
      233 GETTABLEKS                       R18 R0 K17 ["PropertyLookup"]
      235 GETTABLEKS                       R17 R18 K6 ["X"]
      237 SETTABLEKS                       R17 R16 K39 ["Value"]
      239 LOADN                            R17 0
      240 SETTABLEKS                       R17 R16 K4 ["Default"]
      242 GETUPVAL                         R18 7
      243 CALL                             R18 0 1
      244 JUMPIFNOT                        R18 ; [+2]
      245 LOADNIL                          R17
      246 JUMP                             ; [+4]
      247 JUMPIFNOT                        R9 ; [+2]
      248 LOADN                            R17 1
      249 JUMP                             ; [+1]
      250 LOADK                            R17 K57 [0.1]
      251 SETTABLEKS                       R17 R16 K52 ["Step"]
      253 GETUPVAL                         R18 7
      254 CALL                             R18 0 1
      255 JUMPIFNOT                        R18 ; [+2]
      256 LOADNIL                          R17
      257 JUMP                             ; [+5]
      258 GETUPVAL                         R17 8
      259 GETTABLEKS                       R17 R17 K58 ["NUMBER_PRECISION"]
      261 GETTABLEKS                       R17 R17 K59 ["Float"]
      263 SETTABLEKS                       R17 R16 K53 ["Precision"]
      265 CALL                             R15 1 1
      266 SETTABLEKS                       R15 R14 K30 ["Property_X_Angle"]
      268 GETTABLEKS                       R15 R7 K35 ["nextProperty"]
      270 DUPTABLE                         R16 K54 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
      271 LOADK                            R17 K7 ["Y"]
      272 SETTABLEKS                       R17 R16 K36 ["Name"]
      274 JUMPIFNOT                        R9 ; [+2]
      275 LOADK                            R17 K60 ["Magnitude"]
      276 JUMP                             ; [+1]
      277 LOADK                            R17 K7 ["Y"]
      278 SETTABLEKS                       R17 R16 K37 ["Label"]
      280 LOADK                            R17 K56 ["Number"]
      281 SETTABLEKS                       R17 R16 K38 ["Type"]
      283 GETTABLEKS                       R18 R0 K17 ["PropertyLookup"]
      285 GETTABLEKS                       R17 R18 K7 ["Y"]
      287 SETTABLEKS                       R17 R16 K39 ["Value"]
      289 LOADN                            R17 0
      290 SETTABLEKS                       R17 R16 K4 ["Default"]
      292 GETUPVAL                         R18 7
      293 CALL                             R18 0 1
      294 JUMPIFNOT                        R18 ; [+2]
      295 LOADNIL                          R17
      296 JUMP                             ; [+1]
      297 LOADK                            R17 K57 [0.1]
      298 SETTABLEKS                       R17 R16 K52 ["Step"]
      300 GETUPVAL                         R18 7
      301 CALL                             R18 0 1
      302 JUMPIFNOT                        R18 ; [+2]
      303 LOADNIL                          R17
      304 JUMP                             ; [+5]
      305 GETUPVAL                         R17 8
      306 GETTABLEKS                       R17 R17 K58 ["NUMBER_PRECISION"]
      308 GETTABLEKS                       R17 R17 K59 ["Float"]
      310 SETTABLEKS                       R17 R16 K53 ["Precision"]
      312 CALL                             R15 1 1
      313 SETTABLEKS                       R15 R14 K31 ["Property_Y_Magnitude"]
      315 GETUPVAL                         R15 0
      316 GETTABLEKS                       R15 R15 K61 ["createElement"]
      318 GETUPVAL                         R16 9
      319 DUPTABLE                         R17 K66 [{"LayoutOrder", "InputMode", "OnPinDragged", "Position", "Pins"}]
      320 GETTABLEKS                       R18 R7 K67 ["nextOrder"]
      322 CALL                             R18 0 1
      323 SETTABLEKS                       R18 R17 K62 ["LayoutOrder"]
      325 SETTABLEKS                       R8 R17 K16 ["InputMode"]
      327 SETTABLEKS                       R12 R17 K63 ["OnPinDragged"]
      329 SETTABLEKS                       R13 R17 K64 ["Position"]
      331 SETTABLEKS                       R4 R17 K65 ["Pins"]
      333 CALL                             R15 2 1
      334 SETTABLEKS                       R15 R14 K32 ["Blend2DMap"]
      336 GETTABLEKS                       R15 R3 K68 ["makePropertyChild"]
      338 MOVE                             R16 R0
      339 MOVE                             R17 R7
      340 DUPTABLE                         R18 K71 [{"inputBuilder", "inputBuilderProps"}]
      341 GETUPVAL                         R19 10
      342 SETTABLEKS                       R19 R18 K69 ["inputBuilder"]
      344 DUPTABLE                         R19 K72 [{"InputMode"}]
      345 GETUPVAL                         R20 11
      346 GETTABLEKS                       R20 R20 K73 ["enum"]
      348 GETTABLEKS                       R21 R0 K17 ["PropertyLookup"]
      350 GETTABLEKS                       R21 R21 K16 ["InputMode"]
      352 GETIMPORT                        R22 K21 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      354 CALL                             R20 2 1
      355 SETTABLEKS                       R20 R19 K16 ["InputMode"]
      357 SETTABLEKS                       R19 R18 K70 ["inputBuilderProps"]
      359 CALL                             R15 3 1
      360 SETTABLEKS                       R15 R14 K33 ["InputPanel"]
      362 GETUPVAL                         R15 0
      363 GETTABLEKS                       R15 R15 K61 ["createElement"]
      365 GETUPVAL                         R16 1
      366 GETTABLEKS                       R16 R16 K74 ["CompositorNode"]
      368 GETTABLEKS                       R17 R7 K75 ["nodeProps"]
      370 DUPTABLE                         R18 K77 [{"OutputPin"}]
      371 GETTABLEKS                       R19 R7 K78 ["outputPin"]
      373 CALL                             R19 0 1
      374 SETTABLEKS                       R19 R18 K76 ["OutputPin"]
      376 CALL                             R17 1 1
      377 MOVE                             R18 R14
      378 CALL                             R15 3 -1
      379 RETURN                           R15 -1

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
       70 GETTABLEKS                       R9 R0 K19 ["Contexts"]
       72 GETTABLEKS                       R9 R9 K20 ["ParameterOverrideContext"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K6 ["Components"]
       79 GETTABLEKS                       R10 R10 K7 ["NodeView"]
       81 GETTABLEKS                       R10 R10 K10 ["CompositorNodeProperty"]
       83 GETTABLEKS                       R10 R10 K21 ["PropertyUtils"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K14 ["Parent"]
       90 GETTABLEKS                       R11 R11 K22 ["React"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K14 ["Parent"]
       97 GETTABLEKS                       R12 R12 K23 ["SignalsReact"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K6 ["Components"]
      104 GETTABLEKS                       R13 R13 K7 ["NodeView"]
      106 GETTABLEKS                       R13 R13 K24 ["CompositorNodes"]
      108 GETTABLEKS                       R13 R13 K25 ["useInputPanelHelper"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K26 ["Flags"]
      115 GETTABLEKS                       R14 R14 K27 ["getFFlagAnimGraphFloatStep003"]
      117 CALL                             R13 1 1
      118 DUPCLOSURE                       R14 K28 [PROTO_13]
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R5
      131 RETURN                           R14 1
