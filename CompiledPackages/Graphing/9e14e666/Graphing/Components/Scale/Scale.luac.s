PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["SIDE_TOP"]
        4 JUMPIFEQ                         R0 R2 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["SIDE_BOTTOM"]
        9 JUMPIFEQ                         R0 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Size"]
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["SCALE_SIZE"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useContext"]
        9 GETUPVAL                         R3 2
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R5 R0 K3 ["Side"]
       13 LOADB                            R4 1
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K4 ["SIDE_TOP"]
       17 JUMPIFEQ                         R5 R6 ; [+8]
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K5 ["SIDE_BOTTOM"]
       22 JUMPIFEQ                         R5 R6 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 JUMPIFNOT                        R4 ; [+4]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K6 ["AXIS_X"]
       30 JUMP                             ; [+3]
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K7 ["AXIS_Y"]
       34 GETIMPORT                        R4 K10 [UDim2.fromScale]
       36 LOADN                            R5 0
       37 LOADN                            R6 0
       38 CALL                             R4 2 1
       39 GETTABLEKS                       R5 R0 K3 ["Side"]
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R6 R6 K11 ["SIDE_LEFT"]
       44 JUMPIFNOTEQ                      R5 R6 ; [+12]
       46 GETIMPORT                        R5 K13 [UDim2.new]
       48 MINUS                            R6 R1
       49 GETIMPORT                        R7 K15 [UDim.new]
       51 LOADN                            R8 0
       52 LOADN                            R9 0
       53 CALL                             R7 2 -1
       54 CALL                             R5 -1 1
       55 MOVE                             R4 R5
       56 JUMP                             ; [+59]
       57 GETTABLEKS                       R5 R0 K3 ["Side"]
       59 GETUPVAL                         R6 3
       60 GETTABLEKS                       R6 R6 K16 ["SIDE_RIGHT"]
       62 JUMPIFNOTEQ                      R5 R6 ; [+8]
       64 GETIMPORT                        R5 K10 [UDim2.fromScale]
       66 LOADN                            R6 1
       67 LOADN                            R7 0
       68 CALL                             R5 2 1
       69 MOVE                             R4 R5
       70 JUMP                             ; [+45]
       71 GETTABLEKS                       R5 R0 K3 ["Side"]
       73 GETUPVAL                         R6 3
       74 GETTABLEKS                       R6 R6 K4 ["SIDE_TOP"]
       76 JUMPIFNOTEQ                      R5 R6 ; [+12]
       78 GETIMPORT                        R5 K13 [UDim2.new]
       80 GETIMPORT                        R6 K15 [UDim.new]
       82 LOADN                            R7 0
       83 LOADN                            R8 0
       84 CALL                             R6 2 1
       85 MINUS                            R7 R1
       86 CALL                             R5 2 1
       87 MOVE                             R4 R5
       88 JUMP                             ; [+27]
       89 GETTABLEKS                       R5 R0 K3 ["Side"]
       91 GETUPVAL                         R6 3
       92 GETTABLEKS                       R6 R6 K5 ["SIDE_BOTTOM"]
       94 JUMPIFNOTEQ                      R5 R6 ; [+8]
       96 GETIMPORT                        R5 K10 [UDim2.fromScale]
       98 LOADN                            R6 0
       99 LOADN                            R7 1
      100 CALL                             R5 2 1
      101 MOVE                             R4 R5
      102 JUMP                             ; [+13]
      103 LOADB                            R6 0
      104 LOADK                            R8 K17 ["Invalid side %*"]
      105 GETTABLEKS                       R10 R0 K3 ["Side"]
      107 NAMECALL                         R8 R8 K18 ["format"]
      109 CALL                             R8 2 1
      110 MOVE                             R7 R8
      111 FASTCALL2                        ASSERT R6 R7 ; [+3]
      113 GETIMPORT                        R5 K20 [assert]
      115 CALL                             R5 2 0
      116 GETTABLEKS                       R7 R0 K3 ["Side"]
      118 LOADB                            R6 1
      119 GETUPVAL                         R8 3
      120 GETTABLEKS                       R8 R8 K4 ["SIDE_TOP"]
      122 JUMPIFEQ                         R7 R8 ; [+8]
      124 GETUPVAL                         R8 3
      125 GETTABLEKS                       R8 R8 K5 ["SIDE_BOTTOM"]
      127 JUMPIFEQ                         R7 R8 ; [+2]
      129 LOADB                            R6 0 +1
      130 LOADB                            R6 1
      131 JUMPIFNOT                        R6 ; [+10]
      132 GETIMPORT                        R5 K13 [UDim2.new]
      134 GETIMPORT                        R6 K15 [UDim.new]
      136 LOADN                            R7 1
      137 LOADN                            R8 0
      138 CALL                             R6 2 1
      139 MOVE                             R7 R1
      140 CALL                             R5 2 1
      141 JUMP                             ; [+9]
      142 GETIMPORT                        R5 K13 [UDim2.new]
      144 MOVE                             R6 R1
      145 GETIMPORT                        R7 K15 [UDim.new]
      147 LOADN                            R8 1
      148 LOADN                            R9 0
      149 CALL                             R7 2 -1
      150 CALL                             R5 -1 1
      151 GETUPVAL                         R6 4
      152 GETTABLEKS                       R6 R6 K21 ["getValues"]
      154 MOVE                             R7 R3
      155 GETTABLEKS                       R8 R0 K22 ["Schema"]
      157 MOVE                             R9 R2
      158 CALL                             R6 3 1
      159 GETTABLEKS                       R8 R0 K23 ["SchemaMinor"]
      161 JUMPIFNOT                        R8 ; [+10]
      162 GETUPVAL                         R7 4
      163 GETTABLEKS                       R7 R7 K21 ["getValues"]
      165 MOVE                             R8 R3
      166 GETTABLEKS                       R9 R0 K23 ["SchemaMinor"]
      168 MOVE                             R10 R2
      169 MOVE                             R11 R6
      170 CALL                             R7 4 1
      171 JUMP                             ; [+2]
      172 NEWTABLE                         R7 0 0
      174 GETTABLEKS                       R8 R0 K24 ["Formatter"]
      176 JUMPIF                           R8 ; [+3]
      177 GETUPVAL                         R8 4
      178 GETTABLEKS                       R8 R8 K25 ["trimRoundingError"]
      180 GETTABLEKS                       R9 R0 K26 ["TickLength"]
      182 JUMPIF                           R9 ; [+3]
      183 GETUPVAL                         R9 0
      184 GETTABLEKS                       R9 R9 K27 ["SCALE_TICK_LENGTH"]
      186 GETTABLEKS                       R10 R0 K28 ["TickLengthMinor"]
      188 JUMPIF                           R10 ; [+3]
      189 GETUPVAL                         R10 0
      190 GETTABLEKS                       R10 R10 K29 ["SCALE_TICK_LENGTH_MINOR"]
      192 NEWTABLE                         R11 0 0
      194 MOVE                             R12 R6
      195 LOADNIL                          R13
      196 LOADNIL                          R14
      197 FORGPREP                         R12
      198 LOADK                            R18 K30 ["Tick%*"]
      199 MOVE                             R20 R16
      200 NAMECALL                         R18 R18 K18 ["format"]
      202 CALL                             R18 2 1
      203 MOVE                             R17 R18
      204 GETUPVAL                         R18 1
      205 GETTABLEKS                       R18 R18 K31 ["createElement"]
      207 GETUPVAL                         R19 5
      208 DUPTABLE                         R20 K36 [{"Side", "Value", "Length", "Thickness", "TextPadding", "Formatter"}]
      209 GETTABLEKS                       R21 R0 K3 ["Side"]
      211 SETTABLEKS                       R21 R20 K3 ["Side"]
      213 SETTABLEKS                       R16 R20 K32 ["Value"]
      215 SETTABLEKS                       R9 R20 K33 ["Length"]
      217 GETTABLEKS                       R21 R0 K37 ["TickThickness"]
      219 SETTABLEKS                       R21 R20 K34 ["Thickness"]
      221 GETTABLEKS                       R21 R0 K38 ["TickTextPadding"]
      223 SETTABLEKS                       R21 R20 K35 ["TextPadding"]
      225 SETTABLEKS                       R8 R20 K24 ["Formatter"]
      227 CALL                             R18 2 1
      228 SETTABLE                         R18 R11 R17
      229 FORGLOOP                         R12 2 ; [-32]
      231 MOVE                             R12 R7
      232 LOADNIL                          R13
      233 LOADNIL                          R14
      234 FORGPREP                         R12
      235 LOADK                            R18 K39 ["TickM%*"]
      236 MOVE                             R20 R16
      237 NAMECALL                         R18 R18 K18 ["format"]
      239 CALL                             R18 2 1
      240 MOVE                             R17 R18
      241 GETUPVAL                         R18 1
      242 GETTABLEKS                       R18 R18 K31 ["createElement"]
      244 GETUPVAL                         R19 5
      245 DUPTABLE                         R20 K42 [{["Side"], ["Value"], ["Length"], ["Thickness"], ["TextPadding"], ["HasLabel"] = False}]
      246 GETTABLEKS                       R21 R0 K3 ["Side"]
      248 SETTABLEKS                       R21 R20 K3 ["Side"]
      250 SETTABLEKS                       R16 R20 K32 ["Value"]
      252 SETTABLEKS                       R10 R20 K33 ["Length"]
      254 GETTABLEKS                       R21 R0 K37 ["TickThickness"]
      256 SETTABLEKS                       R21 R20 K34 ["Thickness"]
      258 GETTABLEKS                       R21 R0 K38 ["TickTextPadding"]
      260 SETTABLEKS                       R21 R20 K35 ["TextPadding"]
      262 CALL                             R18 2 1
      263 SETTABLE                         R18 R11 R17
      264 FORGLOOP                         R12 2 ; [-30]
      266 GETTABLEKS                       R12 R0 K43 ["children"]
      268 JUMPIFNOT                        R12 ; [+12]
      269 GETUPVAL                         R12 1
      270 GETTABLEKS                       R12 R12 K31 ["createElement"]
      272 GETUPVAL                         R13 1
      273 GETTABLEKS                       R13 R13 K44 ["Fragment"]
      275 LOADNIL                          R14
      276 GETTABLEKS                       R15 R0 K43 ["children"]
      278 CALL                             R12 3 1
      279 SETTABLEKS                       R12 R11 K45 ["Children"]
      281 GETUPVAL                         R12 1
      282 GETTABLEKS                       R12 R12 K31 ["createElement"]
      284 LOADK                            R13 K46 ["Frame"]
      285 DUPTABLE                         R14 K53 [{["Position"], [2], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["ZIndex"]}]
      286 SETTABLEKS                       R4 R14 K47 ["Position"]
      288 SETTABLEKS                       R5 R14 K0 ["Size"]
      290 GETTABLEKS                       R15 R0 K48 ["BackgroundColor3"]
      292 JUMPIF                           R15 ; [+3]
      293 GETUPVAL                         R15 0
      294 GETTABLEKS                       R15 R15 K54 ["SCALE_BACKGROUND_COLOR3"]
      296 SETTABLEKS                       R15 R14 K48 ["BackgroundColor3"]
      298 GETTABLEKS                       R15 R0 K49 ["BackgroundTransparency"]
      300 JUMPIF                           R15 ; [+3]
      301 GETUPVAL                         R15 0
      302 GETTABLEKS                       R15 R15 K55 ["SCALE_BACKGROUND_TRANSPARENCY"]
      304 SETTABLEKS                       R15 R14 K49 ["BackgroundTransparency"]
      306 GETTABLEKS                       R15 R0 K52 ["ZIndex"]
      308 SETTABLEKS                       R15 R14 K52 ["ZIndex"]
      310 MOVE                             R15 R11
      311 CALL                             R12 3 -1
      312 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["CanvasContext"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Types"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["ScaleTick"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Util"]
       35 GETTABLEKS                       R7 R7 K13 ["GridUtil"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K12 ["Util"]
       42 GETTABLEKS                       R8 R8 K14 ["StyleUtil"]
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K15 [PROTO_0]
       46 CAPTURE                          VAL R4
       47 DUPCLOSURE                       R9 K16 [PROTO_1]
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R5
       54 SETGLOBAL                        R9 K17 ["Scale"]
       56 GETGLOBAL                        R9 K17 ["Scale"]
       58 RETURN                           R9 1
