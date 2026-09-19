PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["CFrame"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Missing required proprty CFrame"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R3 R1 K4 ["Size"]
       10 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       12 LOADK                            R4 K5 ["Missing required proprty Size"]
       13 GETIMPORT                        R2 K3 [assert]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R3 R1 K6 ["DraggerContext"]
       18 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       20 LOADK                            R4 K7 ["Missing required proprty DraggerContext"]
       21 GETIMPORT                        R2 K3 [assert]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["DraggerContext"]
        4 GETTABLEKS                       R3 R1 K2 ["CFrame"]
        6 GETTABLEKS                       R5 R1 K4 ["Size"]
        8 DIVK                             R4 R5 K3 [2]
        9 MINUS                            R5 R4
       10 NEWTABLE                         R6 0 8
       12 GETTABLEKS                       R8 R5 K5 ["X"]
       14 GETTABLEKS                       R9 R5 K6 ["Y"]
       16 GETTABLEKS                       R10 R5 K7 ["Z"]
       18 FASTCALL                         VECTOR ; [+2]
       19 GETIMPORT                        R7 K10 [Vector3.new]
       21 CALL                             R7 3 1
       22 GETTABLEKS                       R9 R5 K5 ["X"]
       24 GETTABLEKS                       R10 R4 K6 ["Y"]
       26 GETTABLEKS                       R11 R5 K7 ["Z"]
       28 FASTCALL                         VECTOR ; [+2]
       29 GETIMPORT                        R8 K10 [Vector3.new]
       31 CALL                             R8 3 1
       32 GETTABLEKS                       R10 R5 K5 ["X"]
       34 GETTABLEKS                       R11 R4 K6 ["Y"]
       36 GETTABLEKS                       R12 R4 K7 ["Z"]
       38 FASTCALL                         VECTOR ; [+2]
       39 GETIMPORT                        R9 K10 [Vector3.new]
       41 CALL                             R9 3 1
       42 GETTABLEKS                       R11 R5 K5 ["X"]
       44 GETTABLEKS                       R12 R5 K6 ["Y"]
       46 GETTABLEKS                       R13 R4 K7 ["Z"]
       48 FASTCALL                         VECTOR ; [+2]
       49 GETIMPORT                        R10 K10 [Vector3.new]
       51 CALL                             R10 3 1
       52 GETTABLEKS                       R12 R4 K5 ["X"]
       54 GETTABLEKS                       R13 R5 K6 ["Y"]
       56 GETTABLEKS                       R14 R5 K7 ["Z"]
       58 FASTCALL                         VECTOR ; [+2]
       59 GETIMPORT                        R11 K10 [Vector3.new]
       61 CALL                             R11 3 1
       62 GETTABLEKS                       R13 R4 K5 ["X"]
       64 GETTABLEKS                       R14 R4 K6 ["Y"]
       66 GETTABLEKS                       R15 R5 K7 ["Z"]
       68 FASTCALL                         VECTOR ; [+2]
       69 GETIMPORT                        R12 K10 [Vector3.new]
       71 CALL                             R12 3 1
       72 GETTABLEKS                       R14 R4 K5 ["X"]
       74 GETTABLEKS                       R15 R4 K6 ["Y"]
       76 GETTABLEKS                       R16 R4 K7 ["Z"]
       78 FASTCALL                         VECTOR ; [+2]
       79 GETIMPORT                        R13 K10 [Vector3.new]
       81 CALL                             R13 3 1
       82 GETTABLEKS                       R15 R4 K5 ["X"]
       84 GETTABLEKS                       R16 R5 K6 ["Y"]
       86 GETTABLEKS                       R17 R4 K7 ["Z"]
       88 FASTCALL                         VECTOR ; [+2]
       89 GETIMPORT                        R14 K10 [Vector3.new]
       91 CALL                             R14 3 1
       92 SETLIST                          R6 R7 8 [1]
       94 NEWTABLE                         R7 0 0
       96 LOADK                            R8 K11 [-∞]
       97 LOADK                            R9 K11 [-∞]
       98 LOADN                            R12 1
       99 LENGTH                           R10 R6
      100 LOADN                            R11 1
      101 FORNPREP                         R10
      102 GETTABLE                         R15 R6 R12
      103 NAMECALL                         R13 R3 K12 ["PointToWorldSpace"]
      105 CALL                             R13 2 1
      106 MOVE                             R16 R13
      107 NAMECALL                         R14 R2 K13 ["worldToViewportPoint"]
      109 CALL                             R14 2 2
      110 GETIMPORT                        R16 K15 [Vector2.new]
      112 GETTABLEKS                       R17 R14 K5 ["X"]
      114 GETTABLEKS                       R18 R14 K6 ["Y"]
      116 CALL                             R16 2 1
      117 DUPTABLE                         R19 K18 [{"point", "onScreen"}]
      118 SETTABLEKS                       R16 R19 K16 ["point"]
      120 SETTABLEKS                       R15 R19 K17 ["onScreen"]
      122 FASTCALL2                        TABLE_INSERT R7 R19 ; [+4]
      124 MOVE                             R18 R7
      125 GETIMPORT                        R17 K21 [table.insert]
      127 CALL                             R17 2 0
      128 GETTABLEKS                       R19 R16 K5 ["X"]
      130 FASTCALL2                        MATH_MAX R8 R19 ; [+4]
      132 MOVE                             R18 R8
      133 GETIMPORT                        R17 K24 [math.max]
      135 CALL                             R17 2 1
      136 MOVE                             R8 R17
      137 GETTABLEKS                       R19 R16 K6 ["Y"]
      139 FASTCALL2                        MATH_MAX R9 R19 ; [+4]
      141 MOVE                             R18 R9
      142 GETIMPORT                        R17 K24 [math.max]
      144 CALL                             R17 2 1
      145 MOVE                             R9 R17
      146 FORNLOOP                         R10
      147 GETIMPORT                        R10 K15 [Vector2.new]
      149 MOVE                             R11 R8
      150 MOVE                             R12 R9
      151 CALL                             R10 2 1
      152 LOADK                            R11 K25 [∞]
      153 LOADB                            R12 0
      154 LOADNIL                          R13
      155 LOADN                            R16 1
      156 LENGTH                           R14 R7
      157 LOADN                            R15 1
      158 FORNPREP                         R14
      159 GETTABLE                         R17 R7 R16
      160 GETTABLEKS                       R17 R17 K16 ["point"]
      162 SUB                              R18 R17 R10
      163 GETTABLEKS                       R18 R18 K26 ["Magnitude"]
      165 JUMPIFNOTLT                      R18 R11 ; [+6]
      167 MOVE                             R11 R18
      168 MOVE                             R13 R17
      169 GETTABLE                         R19 R7 R16
      170 GETTABLEKS                       R12 R19 K17 ["onScreen"]
      172 FORNLOOP                         R14
      173 JUMPIF                           R12 ; [+2]
      174 LOADNIL                          R14
      175 RETURN                           R14 1
      176 GETTABLEKS                       R15 R1 K28 ["TextSize"]
      178 ADDK                             R14 R15 K27 [6]
      179 GETUPVAL                         R15 0
      180 GETTABLEKS                       R15 R15 K29 ["createElement"]
      182 LOADK                            R16 K30 ["ScreenGui"]
      183 NEWTABLE                         R17 0 0
      185 NEWTABLE                         R18 0 1
      187 GETUPVAL                         R19 0
      188 GETTABLEKS                       R19 R19 K29 ["createElement"]
      190 LOADK                            R20 K31 ["TextLabel"]
      191 DUPTABLE                         R21 K42 [{["BackgroundTransparency"], ["Position"], ["Size"], ["Font"], ["TextSize"], ["Text"] = "L", ["TextColor3"], ["TextStrokeColor3"], ["TextStrokeTransparency"], ["Selectable"] = False}]
      192 GETTABLEKS                       R22 R1 K32 ["BackgroundTransparency"]
      194 SETTABLEKS                       R22 R21 K32 ["BackgroundTransparency"]
      196 GETIMPORT                        R22 K45 [UDim2.fromOffset]
      198 GETTABLEKS                       R23 R13 K5 ["X"]
      200 GETTABLEKS                       R24 R13 K6 ["Y"]
      202 CALL                             R22 2 1
      203 SETTABLEKS                       R22 R21 K33 ["Position"]
      205 GETIMPORT                        R22 K45 [UDim2.fromOffset]
      207 MOVE                             R23 R14
      208 MOVE                             R24 R14
      209 CALL                             R22 2 1
      210 SETTABLEKS                       R22 R21 K4 ["Size"]
      212 GETTABLEKS                       R22 R1 K34 ["Font"]
      214 SETTABLEKS                       R22 R21 K34 ["Font"]
      216 GETTABLEKS                       R22 R1 K28 ["TextSize"]
      218 SETTABLEKS                       R22 R21 K28 ["TextSize"]
      220 GETTABLEKS                       R22 R1 K37 ["TextColor3"]
      222 SETTABLEKS                       R22 R21 K37 ["TextColor3"]
      224 GETTABLEKS                       R22 R1 K38 ["TextStrokeColor3"]
      226 SETTABLEKS                       R22 R21 K38 ["TextStrokeColor3"]
      228 GETTABLEKS                       R22 R1 K39 ["TextStrokeTransparency"]
      230 SETTABLEKS                       R22 R21 K39 ["TextStrokeTransparency"]
      232 CALL                             R19 2 -1
      233 SETLIST                          R18 R19 -1 [1]
      235 CALL                             R15 3 -1
      236 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Packages"]
       15 GETTABLEKS                       R3 R3 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K7 ["Component"]
       20 LOADK                            R5 K8 ["LocalSpaceIndicator"]
       21 NAMECALL                         R3 R3 K9 ["extend"]
       23 CALL                             R3 2 1
       24 DUPTABLE                         R4 K19 [{["BackgroundTransparency"] = 1, ["Font"], ["TextSize"] = 16, ["TextColor3"], ["TextStrokeColor3"], ["TextStrokeTransparency"] = 0}]
       25 GETIMPORT                        R5 K22 [Enum.Font.ArialBold]
       27 SETTABLEKS                       R5 R4 K12 ["Font"]
       29 GETIMPORT                        R5 K25 [Color3.new]
       31 LOADN                            R6 1
       32 LOADN                            R7 1
       33 LOADN                            R8 1
       34 CALL                             R5 3 1
       35 SETTABLEKS                       R5 R4 K15 ["TextColor3"]
       37 GETIMPORT                        R5 K25 [Color3.new]
       39 LOADN                            R6 0
       40 LOADN                            R7 0
       41 LOADN                            R8 0
       42 CALL                             R5 3 1
       43 SETTABLEKS                       R5 R4 K16 ["TextStrokeColor3"]
       45 SETTABLEKS                       R4 R3 K26 ["defaultProps"]
       47 DUPCLOSURE                       R4 K27 [PROTO_0]
       48 SETTABLEKS                       R4 R3 K28 ["init"]
       50 DUPCLOSURE                       R4 K29 [PROTO_1]
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R4 R3 K30 ["render"]
       54 RETURN                           R3 1
