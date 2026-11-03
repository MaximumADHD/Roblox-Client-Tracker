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
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagAnimGraphUI_ValueNodeDebugOutputs"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+16]
        5 GETIMPORT                        R0 K3 [Vector2.new]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K6 ["PropertyLookup"]
       10 GETTABLEKS                       R2 R3 K5 ["X"]
       12 ORK                              R1 R2 K4 [0]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K6 ["PropertyLookup"]
       16 GETTABLEKS                       R3 R4 K7 ["Y"]
       18 ORK                              R2 R3 K4 [0]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1
       21 GETUPVAL                         R0 2
       22 GETTABLEKS                       R0 R0 K8 ["isPropertyParameterized"]
       24 GETUPVAL                         R1 3
       25 LOADK                            R2 K5 ["X"]
       26 CALL                             R0 2 2
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K8 ["isPropertyParameterized"]
       30 GETUPVAL                         R3 3
       31 LOADK                            R4 K7 ["Y"]
       32 CALL                             R2 2 2
       33 JUMPIFNOT                        R1 ; [+5]
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R5 R5 K9 ["parameterOverrides"]
       37 GETTABLE                         R4 R5 R1
       38 JUMPIF                           R4 ; [+7]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K6 ["PropertyLookup"]
       42 GETTABLEKS                       R4 R5 K5 ["X"]
       44 JUMPIF                           R4 ; [+1]
       45 LOADN                            R4 0
       46 JUMPIFNOT                        R3 ; [+5]
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R6 R6 K9 ["parameterOverrides"]
       50 GETTABLE                         R5 R6 R3
       51 JUMPIF                           R5 ; [+7]
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R6 R6 K6 ["PropertyLookup"]
       55 GETTABLEKS                       R5 R6 K7 ["Y"]
       57 JUMPIF                           R5 ; [+1]
       58 LOADN                            R5 0
       59 GETIMPORT                        R6 K3 [Vector2.new]
       61 MOVE                             R7 R4
       62 MOVE                             R8 R5
       63 CALL                             R6 2 -1
       64 RETURN                           R6 -1

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
       24 DUPTABLE                         R5 K10 [{["X"] = 0, ["Y"] = 0}]
       25 SETTABLEKS                       R5 R4 K5 ["Default"]
       27 CALL                             R3 1 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K11 ["useMemo"]
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R6 0 1
       36 GETTABLEKS                       R7 R3 K12 ["inputs"]
       38 SETLIST                          R6 R7 1 [1]
       40 CALL                             R4 2 1
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K11 ["useMemo"]
       44 NEWCLOSURE                       R6 P1
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R3
       47 NEWTABLE                         R7 0 1
       49 GETTABLEKS                       R8 R3 K12 ["inputs"]
       51 SETLIST                          R7 R8 1 [1]
       53 CALL                             R5 2 1
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K11 ["useMemo"]
       57 NEWCLOSURE                       R7 P2
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R0
       60 NEWTABLE                         R8 0 2
       62 GETTABLEKS                       R9 R1 K13 ["observeNodePropsById"]
       64 GETTABLEKS                       R10 R0 K4 ["GraphPayload"]
       66 GETTABLEKS                       R10 R10 K14 ["id"]
       68 SETLIST                          R8 R9 2 [1]
       70 CALL                             R6 2 1
       71 GETUPVAL                         R7 4
       72 GETTABLEKS                       R7 R7 K15 ["useSignalState"]
       74 MOVE                             R8 R6
       75 CALL                             R7 1 1
       76 GETUPVAL                         R8 1
       77 GETTABLEKS                       R8 R8 K16 ["CompositorNodeUtils"]
       79 GETTABLEKS                       R8 R8 K17 ["createPropertyHelpers"]
       81 MOVE                             R9 R0
       82 CALL                             R8 1 1
       83 GETTABLEKS                       R10 R0 K19 ["PropertyLookup"]
       85 GETTABLEKS                       R9 R10 K18 ["InputMode"]
       87 JUMPIF                           R9 ; [+2]
       88 GETIMPORT                        R9 K23 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       90 GETIMPORT                        R11 K25 [Enum.AnimationNodeBlend2DInputMode.Polar]
       92 JUMPIFEQ                         R9 R11 ; [+2]
       94 LOADB                            R10 0 +1
       95 LOADB                            R10 1
       96 GETUPVAL                         R11 0
       97 GETTABLEKS                       R11 R11 K26 ["useCallback"]
       99 NEWCLOSURE                       R12 P3
      100 CAPTURE                          VAL R3
      101 NEWTABLE                         R13 0 2
      103 GETTABLEKS                       R14 R3 K12 ["inputs"]
      105 GETTABLEKS                       R15 R3 K27 ["onInputChanged"]
      107 SETLIST                          R13 R14 2 [1]
      109 CALL                             R11 2 1
      110 GETUPVAL                         R12 0
      111 GETTABLEKS                       R12 R12 K26 ["useCallback"]
      113 NEWCLOSURE                       R13 P4
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R0
      116 CAPTURE                          VAL R11
      117 CAPTURE                          UPVAL U3
      118 NEWTABLE                         R14 0 6
      120 MOVE                             R15 R9
      121 GETTABLEKS                       R16 R3 K12 ["inputs"]
      123 GETTABLEKS                       R17 R0 K28 ["OnPropertyChanged"]
      125 GETTABLEKS                       R18 R0 K19 ["PropertyLookup"]
      127 MOVE                             R19 R11
      128 GETTABLEKS                       R21 R0 K19 ["PropertyLookup"]
      130 GETTABLEKS                       R20 R21 K7 ["X"]
      132 SETLIST                          R14 R15 6 [1]
      134 CALL                             R12 2 1
      135 GETUPVAL                         R13 0
      136 GETTABLEKS                       R13 R13 K26 ["useCallback"]
      138 NEWCLOSURE                       R14 P5
      139 CAPTURE                          UPVAL U5
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R3
      144 NEWTABLE                         R15 0 4
      146 MOVE                             R16 R7
      147 MOVE                             R17 R10
      148 GETTABLEKS                       R18 R0 K28 ["OnPropertyChanged"]
      150 GETTABLEKS                       R19 R0 K19 ["PropertyLookup"]
      152 SETLIST                          R15 R16 4 [1]
      154 CALL                             R13 2 1
      155 GETUPVAL                         R14 0
      156 GETTABLEKS                       R14 R14 K11 ["useMemo"]
      158 NEWCLOSURE                       R15 P6
      159 CAPTURE                          UPVAL U1
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U5
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R2
      164 NEWTABLE                         R16 0 4
      166 MOVE                             R17 R7
      167 GETTABLEKS                       R18 R2 K29 ["parameterOverrides"]
      169 GETTABLEKS                       R20 R0 K19 ["PropertyLookup"]
      171 GETTABLEKS                       R19 R20 K7 ["X"]
      173 GETTABLEKS                       R21 R0 K19 ["PropertyLookup"]
      175 GETTABLEKS                       R20 R21 K9 ["Y"]
      177 SETLIST                          R16 R17 4 [1]
      179 CALL                             R14 2 1
      180 DUPTABLE                         R15 K36 [{"Property_PhaseSync", "Property_InputMode", "Property_X_Angle", "Property_Y_Magnitude", "Blend2DMap", "InputPanel"}]
      181 GETTABLEKS                       R16 R8 K37 ["nextProperty"]
      183 DUPTABLE                         R17 K46 [{["Name"] = "PhaseSync", ["Label"] = "Phase Sync", ["Type"] = "Enum.AnimationNodePhaseSync", ["Value"], ["DefaultValue"]}]
      184 GETTABLEKS                       R19 R0 K19 ["PropertyLookup"]
      186 GETTABLEKS                       R18 R19 K39 ["PhaseSync"]
      188 SETTABLEKS                       R18 R17 K44 ["Value"]
      190 GETIMPORT                        R18 K49 [Enum.AnimationNodePhaseSync.Synced]
      192 SETTABLEKS                       R18 R17 K45 ["DefaultValue"]
      194 CALL                             R16 1 1
      195 SETTABLEKS                       R16 R15 K30 ["Property_PhaseSync"]
      197 GETTABLEKS                       R16 R8 K37 ["nextProperty"]
      199 DUPTABLE                         R17 K53 [{["Name"] = "InputMode", ["Label"] = "Input Mode", ["Type"] = "Enum.AnimationNodeBlend2DInputMode", ["Value"], ["OnChanged"]}]
      200 SETTABLEKS                       R9 R17 K44 ["Value"]
      202 SETTABLEKS                       R12 R17 K52 ["OnChanged"]
      204 CALL                             R16 1 1
      205 SETTABLEKS                       R16 R15 K31 ["Property_InputMode"]
      207 GETTABLEKS                       R16 R8 K37 ["nextProperty"]
      209 DUPTABLE                         R17 K54 [{["Name"] = "X", ["Label"], ["Type"], ["Value"], ["Default"] = 0}]
      210 JUMPIFNOT                        R10 ; [+2]
      211 LOADK                            R18 K55 ["Angle"]
      212 JUMP                             ; [+1]
      213 LOADK                            R18 K7 ["X"]
      214 SETTABLEKS                       R18 R17 K40 ["Label"]
      216 JUMPIFNOT                        R10 ; [+2]
      217 LOADK                            R18 K55 ["Angle"]
      218 JUMP                             ; [+1]
      219 LOADK                            R18 K56 ["Number"]
      220 SETTABLEKS                       R18 R17 K42 ["Type"]
      222 GETTABLEKS                       R19 R0 K19 ["PropertyLookup"]
      224 GETTABLEKS                       R18 R19 K7 ["X"]
      226 SETTABLEKS                       R18 R17 K44 ["Value"]
      228 CALL                             R16 1 1
      229 SETTABLEKS                       R16 R15 K32 ["Property_X_Angle"]
      231 GETTABLEKS                       R16 R8 K37 ["nextProperty"]
      233 DUPTABLE                         R17 K58 [{["Name"] = "Y", ["Label"], ["Type"] = "Number", ["Value"], ["Default"] = 0, ["ExtraProps"]}]
      234 JUMPIFNOT                        R10 ; [+2]
      235 LOADK                            R18 K59 ["Magnitude"]
      236 JUMP                             ; [+1]
      237 LOADK                            R18 K9 ["Y"]
      238 SETTABLEKS                       R18 R17 K40 ["Label"]
      240 GETTABLEKS                       R19 R0 K19 ["PropertyLookup"]
      242 GETTABLEKS                       R18 R19 K9 ["Y"]
      244 SETTABLEKS                       R18 R17 K44 ["Value"]
      246 JUMPIFNOT                        R10 ; [+2]
      247 DUPTABLE                         R18 K61 [{["Minimum"] = 0}]
      248 JUMP                             ; [+1]
      249 LOADNIL                          R18
      250 SETTABLEKS                       R18 R17 K57 ["ExtraProps"]
      252 CALL                             R16 1 1
      253 SETTABLEKS                       R16 R15 K33 ["Property_Y_Magnitude"]
      255 GETUPVAL                         R16 0
      256 GETTABLEKS                       R16 R16 K62 ["createElement"]
      258 GETUPVAL                         R17 6
      259 DUPTABLE                         R18 K68 [{"LayoutOrder", "InputMode", "OnPinDragged", "PinLabels", "Position", "Pins"}]
      260 GETTABLEKS                       R19 R8 K69 ["nextOrder"]
      262 CALL                             R19 0 1
      263 SETTABLEKS                       R19 R18 K63 ["LayoutOrder"]
      265 SETTABLEKS                       R9 R18 K18 ["InputMode"]
      267 SETTABLEKS                       R13 R18 K64 ["OnPinDragged"]
      269 GETUPVAL                         R20 7
      270 CALL                             R20 0 1
      271 JUMPIFNOT                        R20 ; [+2]
      272 MOVE                             R19 R5
      273 JUMP                             ; [+1]
      274 LOADNIL                          R19
      275 SETTABLEKS                       R19 R18 K65 ["PinLabels"]
      277 SETTABLEKS                       R14 R18 K66 ["Position"]
      279 SETTABLEKS                       R4 R18 K67 ["Pins"]
      281 CALL                             R16 2 1
      282 SETTABLEKS                       R16 R15 K34 ["Blend2DMap"]
      284 GETTABLEKS                       R16 R3 K70 ["makePropertyChild"]
      286 MOVE                             R17 R0
      287 MOVE                             R18 R8
      288 DUPTABLE                         R19 K73 [{"inputBuilder", "inputBuilderProps"}]
      289 GETUPVAL                         R20 8
      290 SETTABLEKS                       R20 R19 K71 ["inputBuilder"]
      292 DUPTABLE                         R20 K74 [{"InputMode"}]
      293 GETUPVAL                         R21 9
      294 GETTABLEKS                       R21 R21 K75 ["enum"]
      296 GETTABLEKS                       R22 R0 K19 ["PropertyLookup"]
      298 GETTABLEKS                       R22 R22 K18 ["InputMode"]
      300 GETIMPORT                        R23 K23 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      302 CALL                             R21 2 1
      303 SETTABLEKS                       R21 R20 K18 ["InputMode"]
      305 SETTABLEKS                       R20 R19 K72 ["inputBuilderProps"]
      307 CALL                             R16 3 1
      308 SETTABLEKS                       R16 R15 K35 ["InputPanel"]
      310 GETUPVAL                         R16 0
      311 GETTABLEKS                       R16 R16 K62 ["createElement"]
      313 GETUPVAL                         R17 1
      314 GETTABLEKS                       R17 R17 K76 ["CompositorNode"]
      316 GETTABLEKS                       R18 R8 K77 ["nodeProps"]
      318 DUPTABLE                         R19 K81 [{"ContextToolbar", "OutputPin", "MinimumWidth"}]
      319 GETTABLEKS                       R20 R8 K82 ["spotlightButton"]
      321 CALL                             R20 0 1
      322 SETTABLEKS                       R20 R19 K78 ["ContextToolbar"]
      324 GETTABLEKS                       R20 R8 K83 ["outputPin"]
      326 CALL                             R20 0 1
      327 SETTABLEKS                       R20 R19 K79 ["OutputPin"]
      329 GETUPVAL                         R21 10
      330 CALL                             R21 0 1
      331 JUMPIFNOT                        R21 ; [+2]
      332 LOADN                            R20 260
      333 JUMP                             ; [+1]
      334 LOADNIL                          R20
      335 SETTABLEKS                       R20 R19 K80 ["MinimumWidth"]
      337 CALL                             R18 1 1
      338 MOVE                             R19 R15
      339 CALL                             R16 3 -1
      340 RETURN                           R16 -1

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
       31 GETTABLEKS                       R4 R0 K12 ["Parent"]
       33 GETTABLEKS                       R4 R4 K13 ["Dash"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K14 ["Util"]
       40 GETTABLEKS                       R5 R5 K15 ["ExpectType"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Components"]
       47 GETTABLEKS                       R6 R6 K7 ["NodeView"]
       49 GETTABLEKS                       R6 R6 K8 ["CompositorNodeInput"]
       51 GETTABLEKS                       R6 R6 K16 ["InputPanelTypes"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K12 ["Parent"]
       58 GETTABLEKS                       R7 R7 K17 ["NodeGraphing"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Components"]
       65 GETTABLEKS                       R8 R8 K7 ["NodeView"]
       67 GETTABLEKS                       R8 R8 K10 ["CompositorNodeProperty"]
       69 GETTABLEKS                       R8 R8 K18 ["PropertyUtils"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K12 ["Parent"]
       76 GETTABLEKS                       R9 R9 K19 ["React"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K12 ["Parent"]
       83 GETTABLEKS                       R10 R10 K20 ["SignalsReact"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K6 ["Components"]
       90 GETTABLEKS                       R11 R11 K7 ["NodeView"]
       92 GETTABLEKS                       R11 R11 K21 ["CompositorNodes"]
       94 GETTABLEKS                       R11 R11 K22 ["useInputPanelHelper"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R12 R0 K23 ["Flags"]
      101 GETTABLEKS                       R12 R12 K24 ["getFFlagAnimGraphUIBlendMapPinTooltip"]
      103 CALL                             R11 1 1
      104 GETTABLEKS                       R12 R6 K25 ["getFFlagAnimGraphUINodeFieldLayout"]
      106 DUPCLOSURE                       R13 K26 [PROTO_13]
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R12
      118 RETURN                           R13 1
