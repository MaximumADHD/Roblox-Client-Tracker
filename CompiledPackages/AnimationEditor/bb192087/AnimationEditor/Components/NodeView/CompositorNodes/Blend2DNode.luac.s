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
        1 JUMPIFEQ                         R1 R2 ; [+54]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["OnPropertyChanged"]
        6 JUMPIFEQKNIL                     R2 ; [+49]
        8 LOADNIL                          R2
        9 GETIMPORT                        R3 K4 [Enum.AnimationNodeBlend2DInputMode.Polar]
       11 JUMPIFNOTEQ                      R1 R3 ; [+17]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K7 ["PropertyLookup"]
       16 GETTABLEKS                       R5 R6 K6 ["X"]
       18 ORK                              R4 R5 K5 [0]
       19 FASTCALL1                        MATH_RAD R4 ; [+2]
       20 GETIMPORT                        R3 K10 [math.rad]
       22 CALL                             R3 1 1
       23 MOVE                             R2 R3
       24 GETUPVAL                         R3 2
       25 DUPCLOSURE                       R4 K11 [PROTO_5]
       26 CAPTURE                          UPVAL U3
       27 CALL                             R3 1 0
       28 JUMP                             ; [+15]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K7 ["PropertyLookup"]
       32 GETTABLEKS                       R5 R6 K6 ["X"]
       34 ORK                              R4 R5 K5 [0]
       35 FASTCALL1                        MATH_DEG R4 ; [+2]
       36 GETIMPORT                        R3 K13 [math.deg]
       38 CALL                             R3 1 1
       39 MOVE                             R2 R3
       40 GETUPVAL                         R3 2
       41 DUPCLOSURE                       R4 K14 [PROTO_7]
       42 CAPTURE                          UPVAL U3
       43 CALL                             R3 1 0
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       47 LOADK                            R4 K6 ["X"]
       48 MOVE                             R5 R2
       49 CALL                             R3 2 0
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       53 LOADK                            R4 K15 ["InputMode"]
       54 MOVE                             R5 R1
       55 CALL                             R3 2 0
       56 RETURN                           R0 0

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
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 DUPTABLE                         R4 K4 [{"GraphPayload", "Default"}]
       16 GETTABLEKS                       R5 R0 K2 ["GraphPayload"]
       18 SETTABLEKS                       R5 R4 K2 ["GraphPayload"]
       20 DUPTABLE                         R5 K7 [{"X", "Y"}]
       21 LOADN                            R6 0
       22 SETTABLEKS                       R6 R5 K5 ["X"]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K6 ["Y"]
       27 SETTABLEKS                       R5 R4 K3 ["Default"]
       29 CALL                             R3 1 1
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K8 ["useMemo"]
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R3
       36 NEWTABLE                         R6 0 1
       38 GETTABLEKS                       R7 R3 K9 ["inputs"]
       40 SETLIST                          R6 R7 1 [1]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K8 ["useMemo"]
       46 NEWCLOSURE                       R6 P1
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R7 0 2
       51 GETTABLEKS                       R8 R1 K10 ["observeNodePropsById"]
       53 GETTABLEKS                       R9 R0 K2 ["GraphPayload"]
       55 GETTABLEKS                       R9 R9 K11 ["id"]
       57 SETLIST                          R7 R8 2 [1]
       59 CALL                             R5 2 1
       60 GETUPVAL                         R6 5
       61 GETTABLEKS                       R6 R6 K12 ["useSignalState"]
       63 MOVE                             R7 R5
       64 CALL                             R6 1 1
       65 GETUPVAL                         R7 6
       66 GETTABLEKS                       R7 R7 K13 ["createPropertyHelpers"]
       68 MOVE                             R8 R0
       69 CALL                             R7 1 1
       70 GETTABLEKS                       R9 R0 K15 ["PropertyLookup"]
       72 GETTABLEKS                       R8 R9 K14 ["InputMode"]
       74 JUMPIF                           R8 ; [+2]
       75 GETIMPORT                        R8 K19 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       77 GETIMPORT                        R10 K21 [Enum.AnimationNodeBlend2DInputMode.Polar]
       79 JUMPIFEQ                         R8 R10 ; [+2]
       81 LOADB                            R9 0 +1
       82 LOADB                            R9 1
       83 GETUPVAL                         R10 0
       84 GETTABLEKS                       R10 R10 K22 ["useCallback"]
       86 NEWCLOSURE                       R11 P2
       87 CAPTURE                          VAL R3
       88 NEWTABLE                         R12 0 2
       90 GETTABLEKS                       R13 R3 K9 ["inputs"]
       92 GETTABLEKS                       R14 R3 K23 ["onInputChanged"]
       94 SETLIST                          R12 R13 2 [1]
       96 CALL                             R10 2 1
       97 GETUPVAL                         R11 0
       98 GETTABLEKS                       R11 R11 K22 ["useCallback"]
      100 NEWCLOSURE                       R12 P3
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R10
      104 CAPTURE                          UPVAL U4
      105 NEWTABLE                         R13 0 6
      107 MOVE                             R14 R8
      108 GETTABLEKS                       R15 R3 K9 ["inputs"]
      110 GETTABLEKS                       R16 R0 K24 ["OnPropertyChanged"]
      112 GETTABLEKS                       R17 R0 K15 ["PropertyLookup"]
      114 MOVE                             R18 R10
      115 GETTABLEKS                       R20 R0 K15 ["PropertyLookup"]
      117 GETTABLEKS                       R19 R20 K5 ["X"]
      119 SETLIST                          R13 R14 6 [1]
      121 CALL                             R11 2 1
      122 GETUPVAL                         R12 0
      123 GETTABLEKS                       R12 R12 K22 ["useCallback"]
      125 NEWCLOSURE                       R13 P4
      126 CAPTURE                          UPVAL U7
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R0
      130 CAPTURE                          VAL R3
      131 NEWTABLE                         R14 0 4
      133 MOVE                             R15 R6
      134 MOVE                             R16 R9
      135 GETTABLEKS                       R17 R0 K24 ["OnPropertyChanged"]
      137 GETTABLEKS                       R18 R0 K15 ["PropertyLookup"]
      139 SETLIST                          R14 R15 4 [1]
      141 CALL                             R12 2 1
      142 GETUPVAL                         R13 0
      143 GETTABLEKS                       R13 R13 K8 ["useMemo"]
      145 NEWCLOSURE                       R14 P5
      146 CAPTURE                          UPVAL U7
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R0
      150 NEWTABLE                         R15 0 4
      152 MOVE                             R16 R6
      153 GETTABLEKS                       R17 R2 K25 ["parameterOverrides"]
      155 GETTABLEKS                       R19 R0 K15 ["PropertyLookup"]
      157 GETTABLEKS                       R18 R19 K5 ["X"]
      159 GETTABLEKS                       R20 R0 K15 ["PropertyLookup"]
      161 GETTABLEKS                       R19 R20 K6 ["Y"]
      163 SETLIST                          R15 R16 4 [1]
      165 CALL                             R13 2 1
      166 DUPTABLE                         R14 K32 [{"Property_PhaseSync", "Property_InputMode", "Property_X_Angle", "Property_Y_Magnitude", "Blend2DMap", "InputPanel"}]
      167 GETTABLEKS                       R15 R7 K33 ["nextProperty"]
      169 DUPTABLE                         R16 K39 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
      170 LOADK                            R17 K40 ["PhaseSync"]
      171 SETTABLEKS                       R17 R16 K34 ["Name"]
      173 LOADK                            R17 K41 ["Phase Sync"]
      174 SETTABLEKS                       R17 R16 K35 ["Label"]
      176 LOADK                            R17 K42 ["Enum.AnimationNodePhaseSync"]
      177 SETTABLEKS                       R17 R16 K36 ["Type"]
      179 GETTABLEKS                       R18 R0 K15 ["PropertyLookup"]
      181 GETTABLEKS                       R17 R18 K40 ["PhaseSync"]
      183 SETTABLEKS                       R17 R16 K37 ["Value"]
      185 GETIMPORT                        R17 K45 [Enum.AnimationNodePhaseSync.Synced]
      187 SETTABLEKS                       R17 R16 K38 ["DefaultValue"]
      189 CALL                             R15 1 1
      190 SETTABLEKS                       R15 R14 K26 ["Property_PhaseSync"]
      192 GETTABLEKS                       R15 R7 K33 ["nextProperty"]
      194 DUPTABLE                         R16 K47 [{"Name", "Label", "Type", "Value", "OnChanged"}]
      195 LOADK                            R17 K14 ["InputMode"]
      196 SETTABLEKS                       R17 R16 K34 ["Name"]
      198 LOADK                            R17 K48 ["Input Mode"]
      199 SETTABLEKS                       R17 R16 K35 ["Label"]
      201 LOADK                            R17 K49 ["Enum.AnimationNodeBlend2DInputMode"]
      202 SETTABLEKS                       R17 R16 K36 ["Type"]
      204 SETTABLEKS                       R8 R16 K37 ["Value"]
      206 SETTABLEKS                       R11 R16 K46 ["OnChanged"]
      208 CALL                             R15 1 1
      209 SETTABLEKS                       R15 R14 K27 ["Property_InputMode"]
      211 GETTABLEKS                       R15 R7 K33 ["nextProperty"]
      213 DUPTABLE                         R16 K52 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
      214 LOADK                            R17 K5 ["X"]
      215 SETTABLEKS                       R17 R16 K34 ["Name"]
      217 JUMPIFNOT                        R9 ; [+2]
      218 LOADK                            R17 K53 ["Angle"]
      219 JUMP                             ; [+1]
      220 LOADK                            R17 K5 ["X"]
      221 SETTABLEKS                       R17 R16 K35 ["Label"]
      223 JUMPIFNOT                        R9 ; [+2]
      224 LOADK                            R17 K53 ["Angle"]
      225 JUMP                             ; [+1]
      226 LOADK                            R17 K54 ["Number"]
      227 SETTABLEKS                       R17 R16 K36 ["Type"]
      229 GETTABLEKS                       R18 R0 K15 ["PropertyLookup"]
      231 GETTABLEKS                       R17 R18 K5 ["X"]
      233 SETTABLEKS                       R17 R16 K37 ["Value"]
      235 LOADN                            R17 0
      236 SETTABLEKS                       R17 R16 K3 ["Default"]
      238 GETUPVAL                         R18 8
      239 CALL                             R18 0 1
      240 JUMPIFNOT                        R18 ; [+2]
      241 LOADNIL                          R17
      242 JUMP                             ; [+4]
      243 JUMPIFNOT                        R9 ; [+2]
      244 LOADN                            R17 1
      245 JUMP                             ; [+1]
      246 LOADK                            R17 K55 [0.1]
      247 SETTABLEKS                       R17 R16 K50 ["Step"]
      249 GETUPVAL                         R18 8
      250 CALL                             R18 0 1
      251 JUMPIFNOT                        R18 ; [+2]
      252 LOADNIL                          R17
      253 JUMP                             ; [+5]
      254 GETUPVAL                         R17 9
      255 GETTABLEKS                       R17 R17 K56 ["NUMBER_PRECISION"]
      257 GETTABLEKS                       R17 R17 K57 ["Float"]
      259 SETTABLEKS                       R17 R16 K51 ["Precision"]
      261 CALL                             R15 1 1
      262 SETTABLEKS                       R15 R14 K28 ["Property_X_Angle"]
      264 GETTABLEKS                       R15 R7 K33 ["nextProperty"]
      266 DUPTABLE                         R16 K52 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
      267 LOADK                            R17 K6 ["Y"]
      268 SETTABLEKS                       R17 R16 K34 ["Name"]
      270 JUMPIFNOT                        R9 ; [+2]
      271 LOADK                            R17 K58 ["Magnitude"]
      272 JUMP                             ; [+1]
      273 LOADK                            R17 K6 ["Y"]
      274 SETTABLEKS                       R17 R16 K35 ["Label"]
      276 LOADK                            R17 K54 ["Number"]
      277 SETTABLEKS                       R17 R16 K36 ["Type"]
      279 GETTABLEKS                       R18 R0 K15 ["PropertyLookup"]
      281 GETTABLEKS                       R17 R18 K6 ["Y"]
      283 SETTABLEKS                       R17 R16 K37 ["Value"]
      285 LOADN                            R17 0
      286 SETTABLEKS                       R17 R16 K3 ["Default"]
      288 GETUPVAL                         R18 8
      289 CALL                             R18 0 1
      290 JUMPIFNOT                        R18 ; [+2]
      291 LOADNIL                          R17
      292 JUMP                             ; [+1]
      293 LOADK                            R17 K55 [0.1]
      294 SETTABLEKS                       R17 R16 K50 ["Step"]
      296 GETUPVAL                         R18 8
      297 CALL                             R18 0 1
      298 JUMPIFNOT                        R18 ; [+2]
      299 LOADNIL                          R17
      300 JUMP                             ; [+5]
      301 GETUPVAL                         R17 9
      302 GETTABLEKS                       R17 R17 K56 ["NUMBER_PRECISION"]
      304 GETTABLEKS                       R17 R17 K57 ["Float"]
      306 SETTABLEKS                       R17 R16 K51 ["Precision"]
      308 CALL                             R15 1 1
      309 SETTABLEKS                       R15 R14 K29 ["Property_Y_Magnitude"]
      311 GETUPVAL                         R15 0
      312 GETTABLEKS                       R15 R15 K59 ["createElement"]
      314 GETUPVAL                         R16 10
      315 DUPTABLE                         R17 K64 [{"LayoutOrder", "InputMode", "OnPinDragged", "Position", "Pins"}]
      316 GETTABLEKS                       R18 R7 K65 ["nextOrder"]
      318 CALL                             R18 0 1
      319 SETTABLEKS                       R18 R17 K60 ["LayoutOrder"]
      321 SETTABLEKS                       R8 R17 K14 ["InputMode"]
      323 SETTABLEKS                       R12 R17 K61 ["OnPinDragged"]
      325 SETTABLEKS                       R13 R17 K62 ["Position"]
      327 SETTABLEKS                       R4 R17 K63 ["Pins"]
      329 CALL                             R15 2 1
      330 SETTABLEKS                       R15 R14 K30 ["Blend2DMap"]
      332 GETTABLEKS                       R15 R7 K66 ["nextInputPanel"]
      334 DUPTABLE                         R16 K74 [{"InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      335 GETUPVAL                         R17 11
      336 SETTABLEKS                       R17 R16 K67 ["InputBuilder"]
      338 DUPTABLE                         R17 K75 [{"InputMode"}]
      339 GETTABLEKS                       R18 R0 K15 ["PropertyLookup"]
      341 GETTABLEKS                       R18 R18 K14 ["InputMode"]
      343 SETTABLEKS                       R18 R17 K14 ["InputMode"]
      345 SETTABLEKS                       R17 R16 K68 ["InputBuilderProps"]
      347 GETTABLEKS                       R17 R0 K2 ["GraphPayload"]
      349 GETTABLEKS                       R17 R17 K11 ["id"]
      351 SETTABLEKS                       R17 R16 K69 ["NodeId"]
      353 GETTABLEKS                       R17 R3 K9 ["inputs"]
      355 SETTABLEKS                       R17 R16 K70 ["Inputs"]
      357 GETTABLEKS                       R17 R3 K76 ["newInputDefaultValue"]
      359 SETTABLEKS                       R17 R16 K71 ["NewInputDefaultValue"]
      361 GETTABLEKS                       R17 R3 K23 ["onInputChanged"]
      363 SETTABLEKS                       R17 R16 K72 ["OnInputChanged"]
      365 GETTABLEKS                       R17 R3 K77 ["onInputReordered"]
      367 SETTABLEKS                       R17 R16 K73 ["OnInputReordered"]
      369 CALL                             R15 1 1
      370 SETTABLEKS                       R15 R14 K31 ["InputPanel"]
      372 GETUPVAL                         R15 0
      373 GETTABLEKS                       R15 R15 K59 ["createElement"]
      375 GETUPVAL                         R16 12
      376 GETTABLEKS                       R17 R7 K78 ["nodeProps"]
      378 DUPTABLE                         R18 K80 [{"OutputPin"}]
      379 GETTABLEKS                       R19 R7 K81 ["outputPin"]
      381 CALL                             R19 0 1
      382 SETTABLEKS                       R19 R18 K79 ["OutputPin"]
      384 CALL                             R17 1 1
      385 MOVE                             R18 R14
      386 CALL                             R15 3 -1
      387 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K11 ["CompositorNodeInput"]
       29 GETTABLEKS                       R4 R4 K12 ["Blend2DInput"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Components"]
       36 GETTABLEKS                       R5 R5 K10 ["NodeView"]
       38 GETTABLEKS                       R5 R5 K13 ["CompositorNodeProperty"]
       40 GETTABLEKS                       R5 R5 K14 ["Blend2DMap"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Components"]
       47 GETTABLEKS                       R6 R6 K10 ["NodeView"]
       49 GETTABLEKS                       R6 R6 K15 ["CompositorNodes"]
       51 GETTABLEKS                       R6 R6 K16 ["CompositorNode"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K17 ["Util"]
       58 GETTABLEKS                       R7 R7 K18 ["Nodes"]
       60 GETTABLEKS                       R7 R7 K19 ["CompositorNodeUtils"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K17 ["Util"]
       67 GETTABLEKS                       R8 R8 K20 ["Constants"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K9 ["Components"]
       74 GETTABLEKS                       R9 R9 K10 ["NodeView"]
       76 GETTABLEKS                       R9 R9 K11 ["CompositorNodeInput"]
       78 GETTABLEKS                       R9 R9 K21 ["InputPanelTypes"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K22 ["Contexts"]
       85 GETTABLEKS                       R10 R10 K23 ["NativeGraphContext"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K22 ["Contexts"]
       92 GETTABLEKS                       R11 R11 K24 ["ParameterOverrideContext"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R12 R0 K9 ["Components"]
       99 GETTABLEKS                       R12 R12 K10 ["NodeView"]
      101 GETTABLEKS                       R12 R12 K13 ["CompositorNodeProperty"]
      103 GETTABLEKS                       R12 R12 K25 ["PropertyUtils"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K5 [require]
      108 GETTABLEKS                       R13 R0 K6 ["Parent"]
      110 GETTABLEKS                       R13 R13 K26 ["SignalsReact"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R14 R0 K9 ["Components"]
      117 GETTABLEKS                       R14 R14 K10 ["NodeView"]
      119 GETTABLEKS                       R14 R14 K15 ["CompositorNodes"]
      121 GETTABLEKS                       R14 R14 K27 ["useInputPanelHelper"]
      123 CALL                             R13 1 1
      124 GETIMPORT                        R14 K5 [require]
      126 GETTABLEKS                       R15 R0 K28 ["Flags"]
      128 GETTABLEKS                       R15 R15 K29 ["getFFlagAnimGraphFloatStep003"]
      130 CALL                             R14 1 1
      131 DUPCLOSURE                       R15 K30 [PROTO_13]
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R5
      145 RETURN                           R15 1
