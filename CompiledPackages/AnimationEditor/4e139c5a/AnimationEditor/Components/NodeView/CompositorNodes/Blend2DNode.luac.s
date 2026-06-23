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
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["inputs"]
        6 DUPCLOSURE                       R2 K2 [PROTO_2]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePropsById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_6]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_8]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_10:
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
       41 DUPCLOSURE                       R5 K17 [PROTO_7]
       42 CAPTURE                          UPVAL U3
       43 CALL                             R4 1 0
       44 JUMP                             ; [+10]
       45 FASTCALL1                        MATH_DEG R2 ; [+3]
       46 MOVE                             R5 R2
       47 GETIMPORT                        R4 K19 [math.deg]
       49 CALL                             R4 1 1
       50 MOVE                             R3 R4
       51 GETUPVAL                         R4 2
       52 DUPCLOSURE                       R5 K20 [PROTO_9]
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
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          VAL R3
       53 NEWTABLE                         R7 0 1
       55 GETTABLEKS                       R8 R3 K11 ["inputs"]
       57 SETLIST                          R7 R8 1 [1]
       59 CALL                             R5 2 1
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K10 ["useMemo"]
       63 NEWCLOSURE                       R7 P2
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R0
       66 NEWTABLE                         R8 0 2
       68 GETTABLEKS                       R9 R1 K12 ["observeNodePropsById"]
       70 GETTABLEKS                       R10 R0 K4 ["GraphPayload"]
       72 GETTABLEKS                       R10 R10 K13 ["id"]
       74 SETLIST                          R8 R9 2 [1]
       76 CALL                             R6 2 1
       77 GETUPVAL                         R7 4
       78 GETTABLEKS                       R7 R7 K14 ["useSignalState"]
       80 MOVE                             R8 R6
       81 CALL                             R7 1 1
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R8 R8 K15 ["CompositorNodeUtils"]
       85 GETTABLEKS                       R8 R8 K16 ["createPropertyHelpers"]
       87 MOVE                             R9 R0
       88 CALL                             R8 1 1
       89 GETTABLEKS                       R10 R0 K18 ["PropertyLookup"]
       91 GETTABLEKS                       R9 R10 K17 ["InputMode"]
       93 JUMPIF                           R9 ; [+2]
       94 GETIMPORT                        R9 K22 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       96 GETIMPORT                        R11 K24 [Enum.AnimationNodeBlend2DInputMode.Polar]
       98 JUMPIFEQ                         R9 R11 ; [+2]
      100 LOADB                            R10 0 +1
      101 LOADB                            R10 1
      102 GETUPVAL                         R11 0
      103 GETTABLEKS                       R11 R11 K25 ["useCallback"]
      105 NEWCLOSURE                       R12 P3
      106 CAPTURE                          VAL R3
      107 NEWTABLE                         R13 0 2
      109 GETTABLEKS                       R14 R3 K11 ["inputs"]
      111 GETTABLEKS                       R15 R3 K26 ["onInputChanged"]
      113 SETLIST                          R13 R14 2 [1]
      115 CALL                             R11 2 1
      116 GETUPVAL                         R12 0
      117 GETTABLEKS                       R12 R12 K25 ["useCallback"]
      119 NEWCLOSURE                       R13 P4
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R11
      123 CAPTURE                          UPVAL U3
      124 NEWTABLE                         R14 0 6
      126 MOVE                             R15 R9
      127 GETTABLEKS                       R16 R3 K11 ["inputs"]
      129 GETTABLEKS                       R17 R0 K27 ["OnPropertyChanged"]
      131 GETTABLEKS                       R18 R0 K18 ["PropertyLookup"]
      133 MOVE                             R19 R11
      134 GETTABLEKS                       R21 R0 K18 ["PropertyLookup"]
      136 GETTABLEKS                       R20 R21 K7 ["X"]
      138 SETLIST                          R14 R15 6 [1]
      140 CALL                             R12 2 1
      141 GETUPVAL                         R13 0
      142 GETTABLEKS                       R13 R13 K25 ["useCallback"]
      144 NEWCLOSURE                       R14 P5
      145 CAPTURE                          UPVAL U5
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R3
      150 NEWTABLE                         R15 0 4
      152 MOVE                             R16 R7
      153 MOVE                             R17 R10
      154 GETTABLEKS                       R18 R0 K27 ["OnPropertyChanged"]
      156 GETTABLEKS                       R19 R0 K18 ["PropertyLookup"]
      158 SETLIST                          R15 R16 4 [1]
      160 CALL                             R13 2 1
      161 GETUPVAL                         R14 0
      162 GETTABLEKS                       R14 R14 K10 ["useMemo"]
      164 NEWCLOSURE                       R15 P6
      165 CAPTURE                          UPVAL U5
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R0
      169 NEWTABLE                         R16 0 4
      171 MOVE                             R17 R7
      172 GETTABLEKS                       R18 R2 K28 ["parameterOverrides"]
      174 GETTABLEKS                       R20 R0 K18 ["PropertyLookup"]
      176 GETTABLEKS                       R19 R20 K7 ["X"]
      178 GETTABLEKS                       R21 R0 K18 ["PropertyLookup"]
      180 GETTABLEKS                       R20 R21 K8 ["Y"]
      182 SETLIST                          R16 R17 4 [1]
      184 CALL                             R14 2 1
      185 DUPTABLE                         R15 K35 [{"Property_PhaseSync", "Property_InputMode", "Property_X_Angle", "Property_Y_Magnitude", "Blend2DMap", "InputPanel"}]
      186 GETTABLEKS                       R16 R8 K36 ["nextProperty"]
      188 DUPTABLE                         R17 K42 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
      189 LOADK                            R18 K43 ["PhaseSync"]
      190 SETTABLEKS                       R18 R17 K37 ["Name"]
      192 LOADK                            R18 K44 ["Phase Sync"]
      193 SETTABLEKS                       R18 R17 K38 ["Label"]
      195 LOADK                            R18 K45 ["Enum.AnimationNodePhaseSync"]
      196 SETTABLEKS                       R18 R17 K39 ["Type"]
      198 GETTABLEKS                       R19 R0 K18 ["PropertyLookup"]
      200 GETTABLEKS                       R18 R19 K43 ["PhaseSync"]
      202 SETTABLEKS                       R18 R17 K40 ["Value"]
      204 GETIMPORT                        R18 K48 [Enum.AnimationNodePhaseSync.Synced]
      206 SETTABLEKS                       R18 R17 K41 ["DefaultValue"]
      208 CALL                             R16 1 1
      209 SETTABLEKS                       R16 R15 K29 ["Property_PhaseSync"]
      211 GETTABLEKS                       R16 R8 K36 ["nextProperty"]
      213 DUPTABLE                         R17 K50 [{"Name", "Label", "Type", "Value", "OnChanged"}]
      214 LOADK                            R18 K17 ["InputMode"]
      215 SETTABLEKS                       R18 R17 K37 ["Name"]
      217 LOADK                            R18 K51 ["Input Mode"]
      218 SETTABLEKS                       R18 R17 K38 ["Label"]
      220 LOADK                            R18 K52 ["Enum.AnimationNodeBlend2DInputMode"]
      221 SETTABLEKS                       R18 R17 K39 ["Type"]
      223 SETTABLEKS                       R9 R17 K40 ["Value"]
      225 SETTABLEKS                       R12 R17 K49 ["OnChanged"]
      227 CALL                             R16 1 1
      228 SETTABLEKS                       R16 R15 K30 ["Property_InputMode"]
      230 GETTABLEKS                       R16 R8 K36 ["nextProperty"]
      232 DUPTABLE                         R17 K55 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
      233 LOADK                            R18 K7 ["X"]
      234 SETTABLEKS                       R18 R17 K37 ["Name"]
      236 JUMPIFNOT                        R10 ; [+2]
      237 LOADK                            R18 K56 ["Angle"]
      238 JUMP                             ; [+1]
      239 LOADK                            R18 K7 ["X"]
      240 SETTABLEKS                       R18 R17 K38 ["Label"]
      242 JUMPIFNOT                        R10 ; [+2]
      243 LOADK                            R18 K56 ["Angle"]
      244 JUMP                             ; [+1]
      245 LOADK                            R18 K57 ["Number"]
      246 SETTABLEKS                       R18 R17 K39 ["Type"]
      248 GETTABLEKS                       R19 R0 K18 ["PropertyLookup"]
      250 GETTABLEKS                       R18 R19 K7 ["X"]
      252 SETTABLEKS                       R18 R17 K40 ["Value"]
      254 LOADN                            R18 0
      255 SETTABLEKS                       R18 R17 K5 ["Default"]
      257 GETUPVAL                         R19 6
      258 CALL                             R19 0 1
      259 JUMPIFNOT                        R19 ; [+2]
      260 LOADNIL                          R18
      261 JUMP                             ; [+4]
      262 JUMPIFNOT                        R10 ; [+2]
      263 LOADN                            R18 1
      264 JUMP                             ; [+1]
      265 LOADK                            R18 K58 [0.1]
      266 SETTABLEKS                       R18 R17 K53 ["Step"]
      268 GETUPVAL                         R19 6
      269 CALL                             R19 0 1
      270 JUMPIFNOT                        R19 ; [+2]
      271 LOADNIL                          R18
      272 JUMP                             ; [+5]
      273 GETUPVAL                         R18 7
      274 GETTABLEKS                       R18 R18 K59 ["NUMBER_PRECISION"]
      276 GETTABLEKS                       R18 R18 K60 ["Float"]
      278 SETTABLEKS                       R18 R17 K54 ["Precision"]
      280 CALL                             R16 1 1
      281 SETTABLEKS                       R16 R15 K31 ["Property_X_Angle"]
      283 GETTABLEKS                       R16 R8 K36 ["nextProperty"]
      285 DUPTABLE                         R17 K62 [{"Name", "Label", "Type", "Value", "Default", "ExtraProps", "Step", "Precision"}]
      286 LOADK                            R18 K8 ["Y"]
      287 SETTABLEKS                       R18 R17 K37 ["Name"]
      289 JUMPIFNOT                        R10 ; [+2]
      290 LOADK                            R18 K63 ["Magnitude"]
      291 JUMP                             ; [+1]
      292 LOADK                            R18 K8 ["Y"]
      293 SETTABLEKS                       R18 R17 K38 ["Label"]
      295 LOADK                            R18 K57 ["Number"]
      296 SETTABLEKS                       R18 R17 K39 ["Type"]
      298 GETTABLEKS                       R19 R0 K18 ["PropertyLookup"]
      300 GETTABLEKS                       R18 R19 K8 ["Y"]
      302 SETTABLEKS                       R18 R17 K40 ["Value"]
      304 LOADN                            R18 0
      305 SETTABLEKS                       R18 R17 K5 ["Default"]
      307 GETUPVAL                         R19 8
      308 JUMPIFNOT                        R19 ; [+5]
      309 DUPTABLE                         R18 K65 [{"Minimum"}]
      310 LOADN                            R19 0
      311 SETTABLEKS                       R19 R18 K64 ["Minimum"]
      313 JUMP                             ; [+1]
      314 LOADNIL                          R18
      315 SETTABLEKS                       R18 R17 K61 ["ExtraProps"]
      317 GETUPVAL                         R19 6
      318 CALL                             R19 0 1
      319 JUMPIFNOT                        R19 ; [+2]
      320 LOADNIL                          R18
      321 JUMP                             ; [+1]
      322 LOADK                            R18 K58 [0.1]
      323 SETTABLEKS                       R18 R17 K53 ["Step"]
      325 GETUPVAL                         R19 6
      326 CALL                             R19 0 1
      327 JUMPIFNOT                        R19 ; [+2]
      328 LOADNIL                          R18
      329 JUMP                             ; [+5]
      330 GETUPVAL                         R18 7
      331 GETTABLEKS                       R18 R18 K59 ["NUMBER_PRECISION"]
      333 GETTABLEKS                       R18 R18 K60 ["Float"]
      335 SETTABLEKS                       R18 R17 K54 ["Precision"]
      337 CALL                             R16 1 1
      338 SETTABLEKS                       R16 R15 K32 ["Property_Y_Magnitude"]
      340 GETUPVAL                         R16 0
      341 GETTABLEKS                       R16 R16 K66 ["createElement"]
      343 GETUPVAL                         R17 9
      344 DUPTABLE                         R18 K72 [{"LayoutOrder", "InputMode", "OnPinDragged", "PinLabels", "Position", "Pins"}]
      345 GETTABLEKS                       R19 R8 K73 ["nextOrder"]
      347 CALL                             R19 0 1
      348 SETTABLEKS                       R19 R18 K67 ["LayoutOrder"]
      350 SETTABLEKS                       R9 R18 K17 ["InputMode"]
      352 SETTABLEKS                       R13 R18 K68 ["OnPinDragged"]
      354 GETUPVAL                         R20 10
      355 CALL                             R20 0 1
      356 JUMPIFNOT                        R20 ; [+2]
      357 MOVE                             R19 R5
      358 JUMP                             ; [+1]
      359 LOADNIL                          R19
      360 SETTABLEKS                       R19 R18 K69 ["PinLabels"]
      362 SETTABLEKS                       R14 R18 K70 ["Position"]
      364 SETTABLEKS                       R4 R18 K71 ["Pins"]
      366 CALL                             R16 2 1
      367 SETTABLEKS                       R16 R15 K33 ["Blend2DMap"]
      369 GETTABLEKS                       R16 R3 K74 ["makePropertyChild"]
      371 MOVE                             R17 R0
      372 MOVE                             R18 R8
      373 DUPTABLE                         R19 K77 [{"inputBuilder", "inputBuilderProps"}]
      374 GETUPVAL                         R20 11
      375 SETTABLEKS                       R20 R19 K75 ["inputBuilder"]
      377 DUPTABLE                         R20 K78 [{"InputMode"}]
      378 GETUPVAL                         R21 12
      379 GETTABLEKS                       R21 R21 K79 ["enum"]
      381 GETTABLEKS                       R22 R0 K18 ["PropertyLookup"]
      383 GETTABLEKS                       R22 R22 K17 ["InputMode"]
      385 GETIMPORT                        R23 K22 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      387 CALL                             R21 2 1
      388 SETTABLEKS                       R21 R20 K17 ["InputMode"]
      390 SETTABLEKS                       R20 R19 K76 ["inputBuilderProps"]
      392 CALL                             R16 3 1
      393 SETTABLEKS                       R16 R15 K34 ["InputPanel"]
      395 GETUPVAL                         R16 0
      396 GETTABLEKS                       R16 R16 K66 ["createElement"]
      398 GETUPVAL                         R17 1
      399 GETTABLEKS                       R17 R17 K80 ["CompositorNode"]
      401 GETTABLEKS                       R18 R8 K81 ["nodeProps"]
      403 DUPTABLE                         R19 K83 [{"OutputPin"}]
      404 GETTABLEKS                       R20 R8 K84 ["outputPin"]
      406 CALL                             R20 0 1
      407 SETTABLEKS                       R20 R19 K82 ["OutputPin"]
      409 CALL                             R18 1 1
      410 MOVE                             R19 R15
      411 CALL                             R16 3 -1
      412 RETURN                           R16 -1

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
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K24 ["Flags"]
      115 GETTABLEKS                       R14 R14 K26 ["getFFlagAnimGraphUIBlendMapPinTooltip"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K28 [game]
      120 LOADK                            R16 K29 ["AnimGraphUIClampMagnitude"]
      121 LOADB                            R17 0
      122 NAMECALL                         R14 R14 K30 ["DefineFastFlag"]
      124 CALL                             R14 3 1
      125 DUPCLOSURE                       R15 K31 [PROTO_13]
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R5
      139 RETURN                           R15 1
