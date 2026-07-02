PROTO_0:
        0 LOADK                            R1 K0 [""]
        1 GETIMPORT                        R2 K2 [ipairs]
        3 MOVE                             R3 R0
        4 JUMPIF                           R3 ; [+2]
        5 NEWTABLE                         R3 0 0
        7 CALL                             R2 1 3
        8 FORGPREP_INEXT                   R2
        9 FASTCALL1                        TYPE R6 ; [+3]
       10 MOVE                             R8 R6
       11 GETIMPORT                        R7 K4 [type]
       13 CALL                             R7 1 1
       14 JUMPIFNOTEQKS                    R7 K5 ["number"] ; [+12]
       16 MOVE                             R7 R1
       17 LOADK                            R8 K6 ["["]
       18 FASTCALL1                        TOSTRING R6 ; [+3]
       19 MOVE                             R12 R6
       20 GETIMPORT                        R11 K8 [tostring]
       22 CALL                             R11 1 1
       23 MOVE                             R9 R11
       24 LOADK                            R10 K9 ["]"]
       25 CONCAT                           R1 R7 R10
       26 JUMP                             ; [+13]
       27 LOADN                            R7 1
       28 JUMPIFNOTLT                      R7 R5 ; [+4]
       30 MOVE                             R7 R1
       31 LOADK                            R8 K10 ["."]
       32 CONCAT                           R1 R7 R8
       33 MOVE                             R7 R1
       34 FASTCALL1                        TOSTRING R6 ; [+3]
       35 MOVE                             R9 R6
       36 GETIMPORT                        R8 K8 [tostring]
       38 CALL                             R8 1 1
       39 CONCAT                           R1 R7 R8
       40 FORGLOOP                         R2 2 [inext] ; [-32]
       42 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["state"]
        5 GETTABLEKS                       R2 R2 K2 ["size"]
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["state"]
       11 GETTABLEKS                       R2 R2 K2 ["size"]
       13 JUMPIFEQ                         R1 R2 ; [+8]
       15 GETUPVAL                         R2 0
       16 DUPTABLE                         R4 K3 [{"size"}]
       17 SETTABLEKS                       R1 R4 K2 ["size"]
       19 NAMECALL                         R2 R2 K4 ["setState"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K9 [{[1] = ∞, ["max"] = -∞, ["size"] = , ["frameBufferSize"] = 0, ["timespan"] = 0}]
        1 SETTABLEKS                       R1 R0 K10 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K11 ["onCanvasAbsoluteSizeChanged"]
        7 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R2 R0
        1 MOVE                             R3 R1
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 JUMPIFNOT                        R2 ; [+2]
        6 GETTABLE                         R2 R2 R7
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 FORGLOOP                         R3 2 ; [-5]
       11 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["HistoryField"]
        4 GETTABLEKS                       R4 R2 K2 ["FrameBuffer"]
        6 JUMPIFNOT                        R4 ; [+3]
        7 GETTABLEKS                       R5 R2 K2 ["FrameBuffer"]
        9 GETTABLE                         R4 R5 R1
       10 MOVE                             R5 R4
       11 JUMPIFNOT                        R5 ; [+8]
       12 GETTABLEKS                       R5 R4 K3 ["layerMap"]
       14 JUMPIFNOT                        R5 ; [+5]
       15 GETTABLEKS                       R6 R4 K3 ["layerMap"]
       17 GETTABLEKS                       R7 R3 K4 ["id"]
       19 GETTABLE                         R5 R6 R7
       20 MOVE                             R6 R5
       21 JUMPIFNOT                        R6 ; [+3]
       22 GETTABLEKS                       R7 R3 K5 ["section"]
       24 GETTABLE                         R6 R5 R7
       25 MOVE                             R7 R6
       26 JUMPIFNOT                        R7 ; [+14]
       27 GETTABLEKS                       R8 R3 K6 ["field"]
       29 MOVE                             R9 R6
       30 MOVE                             R10 R8
       31 LOADNIL                          R11
       32 LOADNIL                          R12
       33 FORGPREP                         R10
       34 JUMPIFNOT                        R9 ; [+2]
       35 GETTABLE                         R9 R9 R14
       36 JUMP                             ; [+1]
       37 LOADNIL                          R9
       38 FORGLOOP                         R10 2 ; [-5]
       40 MOVE                             R7 R9
       41 JUMPIF                           R7 ; [+6]
       42 LOADNIL                          R8
       43 NEWTABLE                         R9 0 0
       45 LOADN                            R10 0
       46 LOADNIL                          R11
       47 RETURN                           R8 4
       48 FASTCALL1                        TYPEOF R7 ; [+3]
       49 MOVE                             R9 R7
       50 GETIMPORT                        R8 K8 [typeof]
       52 CALL                             R8 1 1
       53 NEWTABLE                         R9 0 0
       55 NEWTABLE                         R10 0 0
       57 JUMPIFNOTEQKS                    R8 K9 ["number"] ; [+8]
       59 NEWTABLE                         R11 0 1
       61 MOVE                             R12 R7
       62 SETLIST                          R11 R12 1 [1]
       64 MOVE                             R9 R11
       65 JUMP                             ; [+40]
       66 JUMPIFNOTEQKS                    R8 K10 ["Vector2"] ; [+18]
       68 NEWTABLE                         R11 0 2
       70 GETTABLEKS                       R12 R7 K11 ["X"]
       72 GETTABLEKS                       R13 R7 K12 ["Y"]
       74 SETLIST                          R11 R12 2 [1]
       76 MOVE                             R9 R11
       77 NEWTABLE                         R11 0 2
       79 LOADK                            R12 K11 ["X"]
       80 LOADK                            R13 K12 ["Y"]
       81 SETLIST                          R11 R12 2 [1]
       83 MOVE                             R10 R11
       84 JUMP                             ; [+21]
       85 JUMPIFNOTEQKS                    R8 K13 ["Vector3"] ; [+20]
       87 NEWTABLE                         R11 0 3
       89 GETTABLEKS                       R12 R7 K11 ["X"]
       91 GETTABLEKS                       R13 R7 K12 ["Y"]
       93 GETTABLEKS                       R14 R7 K14 ["Z"]
       95 SETLIST                          R11 R12 3 [1]
       97 MOVE                             R9 R11
       98 NEWTABLE                         R11 0 3
      100 LOADK                            R12 K11 ["X"]
      101 LOADK                            R13 K12 ["Y"]
      102 LOADK                            R14 K14 ["Z"]
      103 SETLIST                          R11 R12 3 [1]
      105 MOVE                             R10 R11
      106 MOVE                             R11 R9
      107 MOVE                             R12 R10
      108 GETTABLEKS                       R13 R4 K15 ["timestamp"]
      110 RETURN                           R11 3

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 JUMPIFNOT                        R1 ; [+3]
        5 LOADK                            R3 K1 [∞]
        6 LOADK                            R4 K2 [-∞]
        7 JUMP                             ; [+4]
        8 GETTABLEKS                       R3 R2 K3 ["min"]
       10 GETTABLEKS                       R4 R2 K4 ["max"]
       12 LOADN                            R7 1
       13 GETTABLEKS                       R5 R2 K5 ["frameBufferSize"]
       15 LOADN                            R6 1
       16 FORNPREP                         R5
       17 MOVE                             R10 R7
       18 NAMECALL                         R8 R0 K6 ["getFrameInfo"]
       20 CALL                             R8 2 1
       21 JUMPIFEQKNIL                     R8 ; [+23]
       23 MOVE                             R9 R8
       24 LOADNIL                          R10
       25 LOADNIL                          R11
       26 FORGPREP                         R9
       27 FASTCALL2                        MATH_MIN R3 R13 ; [+5]
       29 MOVE                             R15 R3
       30 MOVE                             R16 R13
       31 GETIMPORT                        R14 K8 [math.min]
       33 CALL                             R14 2 1
       34 MOVE                             R3 R14
       35 FASTCALL2                        MATH_MAX R4 R13 ; [+5]
       37 MOVE                             R15 R4
       38 MOVE                             R16 R13
       39 GETIMPORT                        R14 K9 [math.max]
       41 CALL                             R14 2 1
       42 MOVE                             R4 R14
       43 FORGLOOP                         R9 2 ; [-17]
       45 FORNLOOP                         R5
       46 JUMPIFNOTEQ                      R3 R4 ; [+3]
       48 SUBK                             R3 R3 K10 [0.5]
       49 ADDK                             R4 R4 K10 [0.5]
       50 GETTABLEKS                       R5 R2 K3 ["min"]
       52 JUMPIFNOTEQ                      R3 R5 ; [+5]
       54 GETTABLEKS                       R5 R2 K4 ["max"]
       56 JUMPIFEQ                         R4 R5 ; [+9]
       58 DUPTABLE                         R7 K11 [{"min", "max"}]
       59 SETTABLEKS                       R3 R7 K3 ["min"]
       61 SETTABLEKS                       R4 R7 K4 ["max"]
       63 NAMECALL                         R5 R0 K12 ["setState"]
       65 CALL                             R5 2 0
       66 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R3 1
        1 NAMECALL                         R1 R0 K0 ["calculateExtents"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["HistoryField"]
        4 GETTABLEKS                       R4 R1 K1 ["HistoryField"]
        6 JUMPIFEQ                         R3 R4 ; [+6]
        8 LOADB                            R5 1
        9 NAMECALL                         R3 R0 K2 ["calculateExtents"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R3 R0 K0 ["props"]
       15 GETTABLEKS                       R3 R3 K3 ["FrameBuffer"]
       17 GETTABLEKS                       R4 R1 K3 ["FrameBuffer"]
       19 JUMPIFEQ                         R3 R4 ; [+5]
       21 LOADB                            R5 0
       22 NAMECALL                         R3 R0 K2 ["calculateExtents"]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["FrameBuffer"]
        2 NAMECALL                         R2 R2 K1 ["getSize"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R1 K2 ["frameBufferSize"]
        7 JUMPIFEQ                         R2 R3 ; [+11]
        9 DUPTABLE                         R3 K4 [{"frameBufferSize", "timespan"}]
       10 SETTABLEKS                       R2 R3 K2 ["frameBufferSize"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K5 ["FRAMERATE"]
       15 DIV                              R4 R2 R5
       16 SETTABLEKS                       R4 R3 K3 ["timespan"]
       18 RETURN                           R3 1
       19 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["FrameBuffer"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R3 R1 K2 ["last"]
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETTABLEKS                       R2 R1 K2 ["last"]
       10 GETTABLEKS                       R2 R2 K3 ["timestamp"]
       12 JUMPIF                           R2 ; [+1]
       13 LOADN                            R2 0
       14 RETURN                           R2 1

PROTO_10:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADN                            R2 0
        3 RETURN                           R2 1
        4 FASTCALL1                        MATH_ABS R0 ; [+3]
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K3 [math.abs]
        8 CALL                             R4 1 1
        9 FASTCALL1                        MATH_LOG10 R4 ; [+2]
       10 GETIMPORT                        R3 K5 [math.log10]
       12 CALL                             R3 1 1
       13 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       14 GETIMPORT                        R2 K7 [math.floor]
       16 CALL                             R2 1 1
       17 LOADN                            R4 10
       18 MINUS                            R7 R2
       19 ADD                              R6 R7 R1
       20 SUBK                             R5 R6 K8 [1]
       21 POW                              R3 R4 R5
       22 MUL                              R7 R0 R3
       23 ADDK                             R6 R7 K9 [0.5]
       24 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       25 GETIMPORT                        R5 K7 [math.floor]
       27 CALL                             R5 1 1
       28 DIV                              R4 R5 R3
       29 RETURN                           R4 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R1 K1 ["timespan"]
        4 NEWTABLE                         R3 0 0
        6 NEWTABLE                         R4 0 0
        8 LOADN                            R7 1
        9 SUBK                             R5 R2 K2 [1]
       10 LOADN                            R6 1
       11 FORNPREP                         R5
       12 DIV                              R8 R7 R2
       13 LOADK                            R10 K3 ["time"]
       14 FASTCALL1                        TOSTRING R7 ; [+3]
       15 MOVE                             R12 R7
       16 GETIMPORT                        R11 K5 [tostring]
       18 CALL                             R11 1 1
       19 CONCAT                           R9 R10 R11
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R10 R10 K6 ["createElement"]
       23 GETUPVAL                         R11 1
       24 NEWTABLE                         R12 8 0
       26 GETIMPORT                        R13 K9 [UDim2.new]
       28 LOADN                            R14 0
       29 LOADN                            R15 1
       30 LOADN                            R16 1
       31 LOADN                            R17 0
       32 CALL                             R13 4 1
       33 SETTABLEKS                       R13 R12 K10 ["Size"]
       35 GETIMPORT                        R13 K12 [UDim2.fromScale]
       37 MOVE                             R14 R8
       38 LOADN                            R15 0
       39 CALL                             R13 2 1
       40 SETTABLEKS                       R13 R12 K13 ["Position"]
       42 GETIMPORT                        R13 K15 [Vector2.new]
       44 LOADK                            R14 K16 [0.5]
       45 LOADN                            R15 0
       46 CALL                             R13 2 1
       47 SETTABLEKS                       R13 R12 K17 ["AnchorPoint"]
       49 LOADN                            R13 2
       50 SETTABLEKS                       R13 R12 K18 ["ZIndex"]
       52 GETUPVAL                         R13 0
       53 GETTABLEKS                       R13 R13 K19 ["Tag"]
       55 LOADK                            R14 K20 ["Ruler"]
       56 SETTABLE                         R14 R12 R13
       57 CALL                             R10 2 1
       58 SETTABLE                         R10 R3 R9
       59 FORNLOOP                         R5
       60 GETTABLEKS                       R5 R1 K21 ["min"]
       62 JUMPIFEQKN                       R5 K22 [∞] ; [+184]
       64 GETTABLEKS                       R6 R1 K23 ["max"]
       66 GETTABLEKS                       R7 R1 K21 ["min"]
       68 SUB                              R5 R6 R7
       69 GETTABLEKS                       R7 R1 K21 ["min"]
       71 LOADK                            R9 K24 [0.05]
       72 MUL                              R8 R9 R5
       73 SUB                              R6 R7 R8
       74 GETTABLEKS                       R8 R1 K23 ["max"]
       76 LOADK                            R10 K24 [0.05]
       77 MUL                              R9 R10 R5
       78 ADD                              R7 R8 R9
       79 GETUPVAL                         R8 2
       80 MOVE                             R9 R5
       81 CALL                             R8 1 1
       82 DIV                              R11 R6 R8
       83 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       84 GETIMPORT                        R10 K27 [math.floor]
       86 CALL                             R10 1 1
       87 MUL                              R9 R10 R8
       88 DIV                              R12 R7 R8
       89 FASTCALL1                        MATH_CEIL R12 ; [+2]
       90 GETIMPORT                        R11 K29 [math.ceil]
       92 CALL                             R11 1 1
       93 MUL                              R10 R11 R8
       94 LOADN                            R11 1
       95 MOVE                             R14 R9
       96 MOVE                             R12 R10
       97 MOVE                             R13 R8
       98 FORNPREP                         R12
       99 LOADK                            R18 K31 [0.9]
      100 GETTABLEKS                       R20 R1 K21 ["min"]
      102 SUB                              R19 R14 R20
      103 MUL                              R17 R18 R19
      104 DIV                              R16 R17 R5
      105 SUBRK                            R15 K30 [0.95] R16
      106 LOADN                            R16 0
      107 JUMPIFNOTLE                      R16 R15 ; [+138]
      109 LOADN                            R16 1
      110 JUMPIFNOTLE                      R15 R16 ; [+135]
      112 LOADK                            R17 K32 ["ruler"]
      113 FASTCALL1                        TOSTRING R11 ; [+3]
      114 MOVE                             R19 R11
      115 GETIMPORT                        R18 K5 [tostring]
      117 CALL                             R18 1 1
      118 CONCAT                           R16 R17 R18
      119 GETUPVAL                         R17 0
      120 GETTABLEKS                       R17 R17 K6 ["createElement"]
      122 GETUPVAL                         R18 1
      123 NEWTABLE                         R19 8 0
      125 GETIMPORT                        R20 K15 [Vector2.new]
      127 LOADN                            R21 0
      128 LOADK                            R22 K16 [0.5]
      129 CALL                             R20 2 1
      130 SETTABLEKS                       R20 R19 K17 ["AnchorPoint"]
      132 GETIMPORT                        R20 K9 [UDim2.new]
      134 LOADN                            R21 1
      135 LOADN                            R22 0
      136 LOADN                            R23 0
      137 LOADN                            R24 1
      138 CALL                             R20 4 1
      139 SETTABLEKS                       R20 R19 K10 ["Size"]
      141 GETIMPORT                        R20 K12 [UDim2.fromScale]
      143 LOADN                            R21 0
      144 MOVE                             R22 R15
      145 CALL                             R20 2 1
      146 SETTABLEKS                       R20 R19 K13 ["Position"]
      148 LOADN                            R20 2
      149 SETTABLEKS                       R20 R19 K18 ["ZIndex"]
      151 GETUPVAL                         R20 0
      152 GETTABLEKS                       R20 R20 K19 ["Tag"]
      154 GETUPVAL                         R21 3
      155 LOADK                            R22 K20 ["Ruler"]
      156 JUMPIFNOTEQKN                    R14 K33 [0] ; [+3]
      158 LOADK                            R23 K34 ["Axis"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R23
      161 CALL                             R21 2 1
      162 SETTABLE                         R21 R19 R20
      163 CALL                             R17 2 1
      164 SETTABLE                         R17 R3 R16
      165 LOADK                            R17 K35 ["label"]
      166 FASTCALL1                        TOSTRING R11 ; [+3]
      167 MOVE                             R19 R11
      168 GETIMPORT                        R18 K5 [tostring]
      170 CALL                             R18 1 1
      171 CONCAT                           R16 R17 R18
      172 GETUPVAL                         R17 0
      173 GETTABLEKS                       R17 R17 K6 ["createElement"]
      175 GETUPVAL                         R18 4
      176 DUPTABLE                         R19 K40 [{["AnchorPoint"], ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["Position"], ["Size"], ["ZIndex"] = 2}]
      177 GETIMPORT                        R20 K15 [Vector2.new]
      179 LOADN                            R21 0
      180 LOADK                            R22 K16 [0.5]
      181 CALL                             R20 2 1
      182 SETTABLEKS                       R20 R19 K17 ["AnchorPoint"]
      184 JUMPIFNOTEQKN                    R14 K33 [0] ; [+3]
      186 LOADN                            R21 0
      187 JUMP                             ; [+25]
      188 FASTCALL1                        MATH_ABS R14 ; [+3]
      189 MOVE                             R25 R14
      190 GETIMPORT                        R24 K42 [math.abs]
      192 CALL                             R24 1 1
      193 FASTCALL1                        MATH_LOG10 R24 ; [+2]
      194 GETIMPORT                        R23 K44 [math.log10]
      196 CALL                             R23 1 1
      197 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      198 GETIMPORT                        R22 K27 [math.floor]
      200 CALL                             R22 1 1
      201 LOADN                            R24 10
      202 MINUS                            R27 R22
      203 ADDK                             R26 R27 K45 [3]
      204 SUBK                             R25 R26 K2 [1]
      205 POW                              R23 R24 R25
      206 MUL                              R26 R14 R23
      207 ADDK                             R25 R26 K16 [0.5]
      208 FASTCALL1                        MATH_FLOOR R25 ; [+2]
      209 GETIMPORT                        R24 K27 [math.floor]
      211 CALL                             R24 1 1
      212 DIV                              R21 R24 R23
      213 FASTCALL1                        TOSTRING R21 ; [+2]
      214 GETIMPORT                        R20 K5 [tostring]
      216 CALL                             R20 1 1
      217 SETTABLEKS                       R20 R19 K36 ["Text"]
      219 GETIMPORT                        R20 K48 [Enum.TextXAlignment.Left]
      221 SETTABLEKS                       R20 R19 K37 ["TextXAlignment"]
      223 GETIMPORT                        R20 K50 [Enum.TextYAlignment.Center]
      225 SETTABLEKS                       R20 R19 K38 ["TextYAlignment"]
      227 GETIMPORT                        R20 K9 [UDim2.new]
      229 LOADN                            R21 0
      230 LOADN                            R22 3
      231 MOVE                             R23 R15
      232 LOADN                            R24 0
      233 CALL                             R20 4 1
      234 SETTABLEKS                       R20 R19 K13 ["Position"]
      236 GETIMPORT                        R20 K12 [UDim2.fromScale]
      238 LOADN                            R21 1
      239 LOADN                            R22 1
      240 CALL                             R20 2 1
      241 SETTABLEKS                       R20 R19 K10 ["Size"]
      243 CALL                             R17 2 1
      244 SETTABLE                         R17 R4 R16
      245 ADDK                             R11 R11 K2 [1]
      246 FORNLOOP                         R12
      247 RETURN                           R3 2

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R4 R3 K1 ["min"]
        4 GETTABLEKS                       R5 R3 K2 ["max"]
        6 GETTABLEKS                       R6 R3 K3 ["size"]
        8 GETIMPORT                        R7 K6 [Vector2.new]
       10 GETTABLEKS                       R9 R6 K7 ["X"]
       12 GETTABLEKS                       R11 R3 K8 ["frameBufferSize"]
       14 DIV                              R10 R1 R11
       15 MUL                              R8 R9 R10
       16 GETTABLEKS                       R10 R6 K9 ["Y"]
       18 LOADK                            R14 K11 [0.9]
       19 SUB                              R15 R2 R4
       20 MUL                              R13 R14 R15
       21 SUB                              R14 R5 R4
       22 DIV                              R12 R13 R14
       23 SUBRK                            R11 K10 [0.95] R12
       24 MUL                              R9 R10 R11
       25 CALL                             R7 2 -1
       26 RETURN                           R7 -1

PROTO_13:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K3 ["X"]
        5 LOADN                            R6 1
        6 GETUPVAL                         R9 1
        7 SUB                              R8 R0 R9
        8 GETUPVAL                         R9 2
        9 DIV                              R7 R8 R9
       10 ADD                              R5 R6 R7
       11 MUL                              R3 R4 R5
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K4 ["Y"]
       15 LOADK                            R9 K6 [0.9]
       16 GETUPVAL                         R11 3
       17 SUB                              R10 R1 R11
       18 MUL                              R8 R9 R10
       19 GETUPVAL                         R10 4
       20 GETUPVAL                         R11 3
       21 SUB                              R9 R10 R11
       22 DIV                              R7 R8 R9
       23 SUBRK                            R6 K5 [0.95] R7
       24 MUL                              R4 R5 R6
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R1 K1 ["min"]
        6 GETTABLEKS                       R4 R1 K2 ["max"]
        8 GETTABLEKS                       R5 R1 K3 ["size"]
       10 JUMPIFNOT                        R5 ; [+132]
       11 JUMPIFEQKN                       R3 K4 [∞] ; [+131]
       13 GETTABLEKS                       R6 R1 K5 ["timespan"]
       15 NAMECALL                         R7 R0 K6 ["getLastTimestamp"]
       17 CALL                             R7 1 1
       18 NEWTABLE                         R8 0 0
       20 LOADN                            R9 0
       21 SUB                              R10 R7 R6
       22 NEWCLOSURE                       R11 P0
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R7
       25 CAPTURE                          VAL R6
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 LOADN                            R14 1
       29 GETTABLEKS                       R12 R1 K7 ["frameBufferSize"]
       31 LOADN                            R13 1
       32 FORNPREP                         R12
       33 MOVE                             R17 R14
       34 NAMECALL                         R15 R0 K8 ["getFrameInfo"]
       36 CALL                             R15 2 3
       37 JUMPIFNOT                        R17 ; [+102]
       38 JUMPIFNOTLT                      R10 R17 ; [+101]
       40 JUMPIFNOT                        R15 ; [+99]
       41 JUMPIFNOT                        R8 ; [+98]
       42 MOVE                             R18 R15
       43 LOADNIL                          R19
       44 LOADNIL                          R20
       45 FORGPREP                         R18
       46 GETTABLE                         R23 R8 R21
       47 JUMPIFNOT                        R23 ; [+90]
       48 GETIMPORT                        R24 K11 [Vector2.new]
       50 GETTABLEKS                       R26 R5 K12 ["X"]
       52 LOADN                            R28 1
       53 SUB                              R30 R17 R7
       54 DIV                              R29 R30 R6
       55 ADD                              R27 R28 R29
       56 MUL                              R25 R26 R27
       57 GETTABLEKS                       R27 R5 K13 ["Y"]
       59 LOADK                            R31 K15 [0.9]
       60 SUB                              R32 R22 R3
       61 MUL                              R30 R31 R32
       62 SUB                              R31 R4 R3
       63 DIV                              R29 R30 R31
       64 SUBRK                            R28 K14 [0.95] R29
       65 MUL                              R26 R27 R28
       66 CALL                             R24 2 1
       67 MOVE                             R26 R9
       68 GETIMPORT                        R27 K11 [Vector2.new]
       70 GETTABLEKS                       R29 R5 K12 ["X"]
       72 LOADN                            R31 1
       73 SUB                              R33 R26 R7
       74 DIV                              R32 R33 R6
       75 ADD                              R30 R31 R32
       76 MUL                              R28 R29 R30
       77 GETTABLEKS                       R30 R5 K13 ["Y"]
       79 LOADK                            R34 K15 [0.9]
       80 SUB                              R35 R23 R3
       81 MUL                              R33 R34 R35
       82 SUB                              R34 R4 R3
       83 DIV                              R32 R33 R34
       84 SUBRK                            R31 K14 [0.95] R32
       85 MUL                              R29 R30 R31
       86 CALL                             R27 2 1
       87 MOVE                             R25 R27
       88 LOADK                            R27 K16 ["line"]
       89 FASTCALL1                        TOSTRING R14 ; [+3]
       90 MOVE                             R32 R14
       91 GETIMPORT                        R31 K18 [tostring]
       93 CALL                             R31 1 1
       94 MOVE                             R28 R31
       95 LOADK                            R29 K19 ["-"]
       96 FASTCALL1                        TOSTRING R21 ; [+3]
       97 MOVE                             R31 R21
       98 GETIMPORT                        R30 K18 [tostring]
      100 CALL                             R30 1 1
      101 CONCAT                           R26 R27 R30
      102 GETUPVAL                         R27 0
      103 GETTABLEKS                       R27 R27 K20 ["createElement"]
      105 GETUPVAL                         R28 1
      106 NEWTABLE                         R29 8 0
      108 SETTABLEKS                       R25 R29 K21 ["From"]
      110 SETTABLEKS                       R24 R29 K22 ["To"]
      112 LOADN                            R30 2
      113 SETTABLEKS                       R30 R29 K23 ["Width"]
      115 LOADN                            R31 3
      116 ADD                              R30 R31 R21
      117 SETTABLEKS                       R30 R29 K24 ["ZIndex"]
      119 GETUPVAL                         R30 0
      120 GETTABLEKS                       R30 R30 K25 ["Tag"]
      122 LOADK                            R32 K26 ["GraphColor"]
      123 LENGTH                           R34 R15
      124 LOADN                            R35 1
      125 JUMPIFNOTLT                      R35 R34 ; [+7]
      127 FASTCALL1                        TOSTRING R21 ; [+3]
      128 MOVE                             R34 R21
      129 GETIMPORT                        R33 K18 [tostring]
      131 CALL                             R33 1 1
      132 JUMP                             ; [+1]
      133 LOADK                            R33 K27 [""]
      134 CONCAT                           R31 R32 R33
      135 SETTABLE                         R31 R29 R30
      136 CALL                             R27 2 1
      137 SETTABLE                         R27 R2 R26
      138 FORGLOOP                         R18 2 ; [-93]
      140 MOVE                             R8 R15
      141 MOVE                             R9 R17
      142 FORNLOOP                         R12
      143 GETIMPORT                        R7 K29 [next]
      145 MOVE                             R8 R2
      146 CALL                             R7 1 1
      147 JUMPIFNOT                        R7 ; [+2]
      148 MOVE                             R6 R2
      149 RETURN                           R6 1
      150 LOADNIL                          R6
      151 RETURN                           R6 1

PROTO_15:
        0 LOADN                            R3 1
        1 NAMECALL                         R1 R0 K0 ["getFrameInfo"]
        3 CALL                             R1 2 3
        4 LENGTH                           R4 R2
        5 LOADN                            R5 1
        6 JUMPIFNOTLE                      R4 R5 ; [+3]
        8 LOADNIL                          R4
        9 RETURN                           R4 1
       10 NEWTABLE                         R4 0 0
       12 MOVE                             R5 R2
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R10 R10 K1 ["createElement"]
       19 GETUPVAL                         R11 1
       20 DUPTABLE                         R12 K4 [{"Size", "LayoutOrder"}]
       21 GETIMPORT                        R13 K7 [UDim2.fromScale]
       23 LENGTH                           R15 R2
       24 DIVRK                            R14 K8 [1] R15
       25 LOADN                            R15 1
       26 CALL                             R13 2 1
       27 SETTABLEKS                       R13 R12 K2 ["Size"]
       29 SETTABLEKS                       R8 R12 K3 ["LayoutOrder"]
       31 DUPTABLE                         R13 K10 [{"Label"}]
       32 GETUPVAL                         R14 0
       33 GETTABLEKS                       R14 R14 K1 ["createElement"]
       35 GETUPVAL                         R15 2
       36 NEWTABLE                         R16 2 0
       38 SETTABLEKS                       R9 R16 K11 ["Text"]
       40 GETUPVAL                         R17 0
       41 GETTABLEKS                       R17 R17 K12 ["Tag"]
       43 LOADK                            R19 K13 ["LegendColor"]
       44 MOVE                             R20 R8
       45 CONCAT                           R18 R19 R20
       46 SETTABLE                         R18 R16 R17
       47 CALL                             R14 2 1
       48 SETTABLEKS                       R14 R13 K9 ["Label"]
       50 CALL                             R10 3 1
       51 SETTABLE                         R10 R4 R9
       52 FORGLOOP                         R5 2 ; [-37]
       54 RETURN                           R4 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["HistoryField"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R5 R3 K3 ["field"]
        9 CALL                             R4 1 1
       10 NAMECALL                         R5 R0 K4 ["getHistoryGraph"]
       12 CALL                             R5 1 1
       13 NAMECALL                         R6 R0 K5 ["getRulers"]
       15 CALL                             R6 1 2
       16 NAMECALL                         R8 R0 K6 ["getLegendBar"]
       18 CALL                             R8 1 1
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R9 R9 K7 ["createElement"]
       22 GETUPVAL                         R10 2
       23 NEWTABLE                         R11 4 0
       25 GETTABLEKS                       R12 R1 K8 ["Size"]
       27 SETTABLEKS                       R12 R11 K8 ["Size"]
       29 GETTABLEKS                       R12 R1 K9 ["Position"]
       31 SETTABLEKS                       R12 R11 K9 ["Position"]
       33 GETUPVAL                         R12 1
       34 GETTABLEKS                       R12 R12 K10 ["Tag"]
       36 LOADK                            R13 K11 ["History X-Fill"]
       37 SETTABLE                         R13 R11 R12
       38 DUPTABLE                         R12 K15 [{"Title", "Graph", "LegendBar"}]
       39 GETUPVAL                         R13 1
       40 GETTABLEKS                       R13 R13 K7 ["createElement"]
       42 GETUPVAL                         R14 2
       43 LOADNIL                          R15
       44 DUPTABLE                         R16 K17 [{"FieldName"}]
       45 GETUPVAL                         R17 1
       46 GETTABLEKS                       R17 R17 K7 ["createElement"]
       48 GETUPVAL                         R18 3
       49 DUPTABLE                         R19 K19 [{"Text"}]
       50 SETTABLEKS                       R4 R19 K18 ["Text"]
       52 CALL                             R17 2 1
       53 SETTABLEKS                       R17 R16 K16 ["FieldName"]
       55 CALL                             R13 3 1
       56 SETTABLEKS                       R13 R12 K12 ["Title"]
       58 GETUPVAL                         R13 1
       59 GETTABLEKS                       R13 R13 K7 ["createElement"]
       61 GETUPVAL                         R14 2
       62 LOADNIL                          R15
       63 DUPTABLE                         R16 K24 [{"Border", "Rulers", "Scale", "Canvas"}]
       64 GETUPVAL                         R17 1
       65 GETTABLEKS                       R17 R17 K7 ["createElement"]
       67 GETUPVAL                         R18 2
       68 DUPTABLE                         R19 K27 [{["ZIndex"] = 1}]
       69 CALL                             R17 2 1
       70 SETTABLEKS                       R17 R16 K20 ["Border"]
       72 JUMPIFEQKNIL                     R5 ; [+9]
       74 GETUPVAL                         R17 1
       75 GETTABLEKS                       R17 R17 K7 ["createElement"]
       77 GETUPVAL                         R18 2
       78 DUPTABLE                         R19 K29 [{["ZIndex"] = 2}]
       79 MOVE                             R20 R6
       80 CALL                             R17 3 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R17
       83 SETTABLEKS                       R17 R16 K21 ["Rulers"]
       85 JUMPIFEQKNIL                     R5 ; [+9]
       87 GETUPVAL                         R17 1
       88 GETTABLEKS                       R17 R17 K7 ["createElement"]
       90 GETUPVAL                         R18 2
       91 DUPTABLE                         R19 K31 [{["ZIndex"] = 3}]
       92 MOVE                             R20 R7
       93 CALL                             R17 3 1
       94 JUMP                             ; [+1]
       95 LOADNIL                          R17
       96 SETTABLEKS                       R17 R16 K22 ["Scale"]
       98 GETUPVAL                         R17 1
       99 GETTABLEKS                       R17 R17 K7 ["createElement"]
      101 GETUPVAL                         R18 2
      102 NEWTABLE                         R19 2 0
      104 LOADN                            R20 4
      105 SETTABLEKS                       R20 R19 K25 ["ZIndex"]
      107 GETUPVAL                         R20 1
      108 GETTABLEKS                       R20 R20 K32 ["Change"]
      110 GETTABLEKS                       R20 R20 K33 ["AbsoluteSize"]
      112 GETTABLEKS                       R21 R0 K34 ["onCanvasAbsoluteSizeChanged"]
      114 SETTABLE                         R21 R19 R20
      115 MOVE                             R20 R5
      116 JUMPIF                           R20 ; [+16]
      117 DUPTABLE                         R20 K36 [{"NoHistoryData"}]
      118 GETUPVAL                         R21 1
      119 GETTABLEKS                       R21 R21 K7 ["createElement"]
      121 GETUPVAL                         R22 3
      122 DUPTABLE                         R23 K19 [{"Text"}]
      123 LOADK                            R26 K37 ["History"]
      124 LOADK                            R27 K35 ["NoHistoryData"]
      125 NAMECALL                         R24 R2 K38 ["getText"]
      127 CALL                             R24 3 1
      128 SETTABLEKS                       R24 R23 K18 ["Text"]
      130 CALL                             R21 2 1
      131 SETTABLEKS                       R21 R20 K35 ["NoHistoryData"]
      133 CALL                             R17 3 1
      134 SETTABLEKS                       R17 R16 K23 ["Canvas"]
      136 CALL                             R13 3 1
      137 SETTABLEKS                       R13 R12 K13 ["Graph"]
      139 JUMPIFNOT                        R8 ; [+14]
      140 GETUPVAL                         R13 1
      141 GETTABLEKS                       R13 R13 K7 ["createElement"]
      143 GETUPVAL                         R14 2
      144 NEWTABLE                         R15 1 0
      146 GETUPVAL                         R16 1
      147 GETTABLEKS                       R16 R16 K10 ["Tag"]
      149 LOADK                            R17 K39 ["X-Row"]
      150 SETTABLE                         R17 R15 R16
      151 MOVE                             R16 R8
      152 CALL                             R13 3 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R13
      155 SETTABLEKS                       R13 R12 K14 ["LegendBar"]
      157 CALL                             R9 3 -1
      158 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R3 K11 ["Analytics"]
       27 GETTABLEKS                       R6 R3 K12 ["Localization"]
       29 GETTABLEKS                       R7 R1 K13 ["Styling"]
       31 GETTABLEKS                       R8 R7 K14 ["joinTags"]
       33 GETTABLEKS                       R9 R1 K15 ["UI"]
       35 GETTABLEKS                       R10 R9 K16 ["Pane"]
       37 GETTABLEKS                       R11 R9 K17 ["TextLabel"]
       39 GETIMPORT                        R12 K5 [require]
       41 GETTABLEKS                       R13 R0 K18 ["Src"]
       43 GETTABLEKS                       R13 R13 K19 ["Types"]
       45 CALL                             R12 1 1
       46 GETTABLEKS                       R13 R0 K18 ["Src"]
       48 GETTABLEKS                       R13 R13 K20 ["Components"]
       50 GETIMPORT                        R14 K5 [require]
       52 GETTABLEKS                       R15 R13 K21 ["Line"]
       54 CALL                             R14 1 1
       55 GETTABLEKS                       R15 R0 K18 ["Src"]
       57 GETTABLEKS                       R15 R15 K22 ["Util"]
       59 GETIMPORT                        R16 K5 [require]
       61 GETTABLEKS                       R17 R15 K23 ["Constants"]
       63 CALL                             R16 1 1
       64 GETIMPORT                        R17 K5 [require]
       66 GETTABLEKS                       R18 R15 K24 ["findInterval"]
       68 CALL                             R17 1 1
       69 GETTABLEKS                       R18 R2 K25 ["PureComponent"]
       71 LOADK                            R20 K26 ["HistoryGraph"]
       72 NAMECALL                         R18 R18 K27 ["extend"]
       74 CALL                             R18 2 1
       75 DUPCLOSURE                       R19 K28 [PROTO_0]
       76 DUPCLOSURE                       R20 K29 [PROTO_2]
       77 SETTABLEKS                       R20 R18 K30 ["init"]
       79 DUPCLOSURE                       R20 K31 [PROTO_3]
       80 DUPCLOSURE                       R21 K32 [PROTO_4]
       81 SETTABLEKS                       R21 R18 K33 ["getFrameInfo"]
       83 DUPCLOSURE                       R21 K34 [PROTO_5]
       84 SETTABLEKS                       R21 R18 K35 ["calculateExtents"]
       86 DUPCLOSURE                       R21 K36 [PROTO_6]
       87 SETTABLEKS                       R21 R18 K37 ["didMount"]
       89 DUPCLOSURE                       R21 K38 [PROTO_7]
       90 SETTABLEKS                       R21 R18 K39 ["didUpdate"]
       92 DUPCLOSURE                       R21 K40 [PROTO_8]
       93 CAPTURE                          VAL R16
       94 SETTABLEKS                       R21 R18 K41 ["getDerivedStateFromProps"]
       96 DUPCLOSURE                       R21 K42 [PROTO_9]
       97 SETTABLEKS                       R21 R18 K43 ["getLastTimestamp"]
       99 DUPCLOSURE                       R21 K44 [PROTO_10]
      100 DUPCLOSURE                       R22 K45 [PROTO_11]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R11
      106 SETTABLEKS                       R22 R18 K46 ["getRulers"]
      108 DUPCLOSURE                       R22 K47 [PROTO_12]
      109 SETTABLEKS                       R22 R18 K48 ["makePos"]
      111 DUPCLOSURE                       R22 K49 [PROTO_14]
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R14
      114 SETTABLEKS                       R22 R18 K50 ["getHistoryGraph"]
      116 DUPCLOSURE                       R22 K51 [PROTO_15]
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R11
      120 SETTABLEKS                       R22 R18 K52 ["getLegendBar"]
      122 DUPCLOSURE                       R22 K53 [PROTO_16]
      123 CAPTURE                          VAL R19
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R11
      127 SETTABLEKS                       R22 R18 K54 ["render"]
      129 MOVE                             R22 R4
      130 DUPTABLE                         R23 K55 [{"Analytics", "Localization"}]
      131 SETTABLEKS                       R5 R23 K11 ["Analytics"]
      133 SETTABLEKS                       R6 R23 K12 ["Localization"]
      135 CALL                             R22 1 1
      136 MOVE                             R23 R18
      137 CALL                             R22 1 1
      138 MOVE                             R18 R22
      139 RETURN                           R18 1
