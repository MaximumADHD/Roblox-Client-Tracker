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
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K3 ["useSignalState"]
       14 GETTABLEKS                       R4 R2 K4 ["viewportRectGetter"]
       16 CALL                             R3 1 0
       17 GETTABLEKS                       R5 R0 K5 ["Side"]
       19 LOADB                            R4 1
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R6 R6 K6 ["SIDE_TOP"]
       23 JUMPIFEQ                         R5 R6 ; [+8]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K7 ["SIDE_BOTTOM"]
       28 JUMPIFEQ                         R5 R6 ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 JUMPIFNOT                        R4 ; [+4]
       33 GETUPVAL                         R3 4
       34 GETTABLEKS                       R3 R3 K8 ["AXIS_X"]
       36 JUMP                             ; [+3]
       37 GETUPVAL                         R3 4
       38 GETTABLEKS                       R3 R3 K9 ["AXIS_Y"]
       40 GETIMPORT                        R4 K12 [UDim2.fromScale]
       42 LOADN                            R5 0
       43 LOADN                            R6 0
       44 CALL                             R4 2 1
       45 GETTABLEKS                       R5 R0 K5 ["Side"]
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R6 R6 K13 ["SIDE_LEFT"]
       50 JUMPIFNOTEQ                      R5 R6 ; [+12]
       52 GETIMPORT                        R5 K15 [UDim2.new]
       54 MINUS                            R6 R1
       55 GETIMPORT                        R7 K17 [UDim.new]
       57 LOADN                            R8 0
       58 LOADN                            R9 0
       59 CALL                             R7 2 -1
       60 CALL                             R5 -1 1
       61 MOVE                             R4 R5
       62 JUMP                             ; [+59]
       63 GETTABLEKS                       R5 R0 K5 ["Side"]
       65 GETUPVAL                         R6 4
       66 GETTABLEKS                       R6 R6 K18 ["SIDE_RIGHT"]
       68 JUMPIFNOTEQ                      R5 R6 ; [+8]
       70 GETIMPORT                        R5 K12 [UDim2.fromScale]
       72 LOADN                            R6 1
       73 LOADN                            R7 0
       74 CALL                             R5 2 1
       75 MOVE                             R4 R5
       76 JUMP                             ; [+45]
       77 GETTABLEKS                       R5 R0 K5 ["Side"]
       79 GETUPVAL                         R6 4
       80 GETTABLEKS                       R6 R6 K6 ["SIDE_TOP"]
       82 JUMPIFNOTEQ                      R5 R6 ; [+12]
       84 GETIMPORT                        R5 K15 [UDim2.new]
       86 GETIMPORT                        R6 K17 [UDim.new]
       88 LOADN                            R7 0
       89 LOADN                            R8 0
       90 CALL                             R6 2 1
       91 MINUS                            R7 R1
       92 CALL                             R5 2 1
       93 MOVE                             R4 R5
       94 JUMP                             ; [+27]
       95 GETTABLEKS                       R5 R0 K5 ["Side"]
       97 GETUPVAL                         R6 4
       98 GETTABLEKS                       R6 R6 K7 ["SIDE_BOTTOM"]
      100 JUMPIFNOTEQ                      R5 R6 ; [+8]
      102 GETIMPORT                        R5 K12 [UDim2.fromScale]
      104 LOADN                            R6 0
      105 LOADN                            R7 1
      106 CALL                             R5 2 1
      107 MOVE                             R4 R5
      108 JUMP                             ; [+13]
      109 LOADB                            R6 0
      110 LOADK                            R8 K19 ["Invalid side %*"]
      111 GETTABLEKS                       R10 R0 K5 ["Side"]
      113 NAMECALL                         R8 R8 K20 ["format"]
      115 CALL                             R8 2 1
      116 MOVE                             R7 R8
      117 FASTCALL2                        ASSERT R6 R7 ; [+3]
      119 GETIMPORT                        R5 K22 [assert]
      121 CALL                             R5 2 0
      122 GETTABLEKS                       R7 R0 K5 ["Side"]
      124 LOADB                            R6 1
      125 GETUPVAL                         R8 4
      126 GETTABLEKS                       R8 R8 K6 ["SIDE_TOP"]
      128 JUMPIFEQ                         R7 R8 ; [+8]
      130 GETUPVAL                         R8 4
      131 GETTABLEKS                       R8 R8 K7 ["SIDE_BOTTOM"]
      133 JUMPIFEQ                         R7 R8 ; [+2]
      135 LOADB                            R6 0 +1
      136 LOADB                            R6 1
      137 JUMPIFNOT                        R6 ; [+10]
      138 GETIMPORT                        R5 K15 [UDim2.new]
      140 GETIMPORT                        R6 K17 [UDim.new]
      142 LOADN                            R7 1
      143 LOADN                            R8 0
      144 CALL                             R6 2 1
      145 MOVE                             R7 R1
      146 CALL                             R5 2 1
      147 JUMP                             ; [+9]
      148 GETIMPORT                        R5 K15 [UDim2.new]
      150 MOVE                             R6 R1
      151 GETIMPORT                        R7 K17 [UDim.new]
      153 LOADN                            R8 1
      154 LOADN                            R9 0
      155 CALL                             R7 2 -1
      156 CALL                             R5 -1 1
      157 GETUPVAL                         R6 5
      158 GETTABLEKS                       R6 R6 K23 ["getValues"]
      160 MOVE                             R7 R3
      161 GETTABLEKS                       R8 R0 K24 ["Schema"]
      163 MOVE                             R9 R2
      164 CALL                             R6 3 1
      165 GETTABLEKS                       R8 R0 K25 ["SchemaMinor"]
      167 JUMPIFNOT                        R8 ; [+10]
      168 GETUPVAL                         R7 5
      169 GETTABLEKS                       R7 R7 K23 ["getValues"]
      171 MOVE                             R8 R3
      172 GETTABLEKS                       R9 R0 K25 ["SchemaMinor"]
      174 MOVE                             R10 R2
      175 MOVE                             R11 R6
      176 CALL                             R7 4 1
      177 JUMP                             ; [+2]
      178 NEWTABLE                         R7 0 0
      180 GETTABLEKS                       R8 R0 K26 ["Formatter"]
      182 JUMPIF                           R8 ; [+3]
      183 GETUPVAL                         R8 5
      184 GETTABLEKS                       R8 R8 K27 ["trimRoundingError"]
      186 GETTABLEKS                       R9 R0 K28 ["TickLength"]
      188 JUMPIF                           R9 ; [+3]
      189 GETUPVAL                         R9 0
      190 GETTABLEKS                       R9 R9 K29 ["SCALE_TICK_LENGTH"]
      192 GETTABLEKS                       R10 R0 K30 ["TickLengthMinor"]
      194 JUMPIF                           R10 ; [+3]
      195 GETUPVAL                         R10 0
      196 GETTABLEKS                       R10 R10 K31 ["SCALE_TICK_LENGTH_MINOR"]
      198 NEWTABLE                         R11 1 0
      200 MOVE                             R12 R6
      201 LOADNIL                          R13
      202 LOADNIL                          R14
      203 FORGPREP                         R12
      204 LOADK                            R18 K32 ["Tick%*"]
      205 MOVE                             R20 R16
      206 NAMECALL                         R18 R18 K20 ["format"]
      208 CALL                             R18 2 1
      209 MOVE                             R17 R18
      210 GETUPVAL                         R18 1
      211 GETTABLEKS                       R18 R18 K33 ["createElement"]
      213 GETUPVAL                         R19 6
      214 DUPTABLE                         R20 K40 [{"Side", "Position", "Length", "Thickness", "TextPadding", "TextSize", "Color3", "Formatter"}]
      215 GETTABLEKS                       R21 R0 K5 ["Side"]
      217 SETTABLEKS                       R21 R20 K5 ["Side"]
      219 SETTABLEKS                       R16 R20 K34 ["Position"]
      221 SETTABLEKS                       R9 R20 K35 ["Length"]
      223 GETTABLEKS                       R21 R0 K41 ["TickThickness"]
      225 SETTABLEKS                       R21 R20 K36 ["Thickness"]
      227 GETTABLEKS                       R21 R0 K42 ["TickTextPadding"]
      229 SETTABLEKS                       R21 R20 K37 ["TextPadding"]
      231 GETTABLEKS                       R21 R0 K43 ["TickTextSize"]
      233 SETTABLEKS                       R21 R20 K38 ["TextSize"]
      235 GETTABLEKS                       R21 R0 K44 ["TickColor"]
      237 SETTABLEKS                       R21 R20 K39 ["Color3"]
      239 SETTABLEKS                       R8 R20 K26 ["Formatter"]
      241 CALL                             R18 2 1
      242 SETTABLE                         R18 R11 R17
      243 FORGLOOP                         R12 2 ; [-40]
      245 MOVE                             R12 R7
      246 LOADNIL                          R13
      247 LOADNIL                          R14
      248 FORGPREP                         R12
      249 LOADK                            R18 K45 ["TickM%*"]
      250 MOVE                             R20 R16
      251 NAMECALL                         R18 R18 K20 ["format"]
      253 CALL                             R18 2 1
      254 MOVE                             R17 R18
      255 GETUPVAL                         R18 1
      256 GETTABLEKS                       R18 R18 K33 ["createElement"]
      258 GETUPVAL                         R19 6
      259 DUPTABLE                         R20 K48 [{["Side"], ["Position"], ["Length"], ["Thickness"], ["TextPadding"], ["Color3"], ["HasLabel"] = False}]
      260 GETTABLEKS                       R21 R0 K5 ["Side"]
      262 SETTABLEKS                       R21 R20 K5 ["Side"]
      264 SETTABLEKS                       R16 R20 K34 ["Position"]
      266 SETTABLEKS                       R10 R20 K35 ["Length"]
      268 GETTABLEKS                       R21 R0 K41 ["TickThickness"]
      270 SETTABLEKS                       R21 R20 K36 ["Thickness"]
      272 GETTABLEKS                       R21 R0 K42 ["TickTextPadding"]
      274 SETTABLEKS                       R21 R20 K37 ["TextPadding"]
      276 GETTABLEKS                       R21 R0 K44 ["TickColor"]
      278 SETTABLEKS                       R21 R20 K39 ["Color3"]
      280 CALL                             R18 2 1
      281 SETTABLE                         R18 R11 R17
      282 FORGLOOP                         R12 2 ; [-34]
      284 GETUPVAL                         R12 1
      285 GETTABLEKS                       R12 R12 K33 ["createElement"]
      287 LOADK                            R13 K49 ["Frame"]
      288 DUPTABLE                         R14 K56 [{["Position"], [2], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["ZIndex"] = -1}]
      289 SETTABLEKS                       R4 R14 K34 ["Position"]
      291 SETTABLEKS                       R5 R14 K0 ["Size"]
      293 GETTABLEKS                       R15 R0 K50 ["BackgroundColor3"]
      295 JUMPIF                           R15 ; [+3]
      296 GETUPVAL                         R15 0
      297 GETTABLEKS                       R15 R15 K57 ["SCALE_BACKGROUND_COLOR3"]
      299 SETTABLEKS                       R15 R14 K50 ["BackgroundColor3"]
      301 GETTABLEKS                       R15 R0 K51 ["BackgroundTransparency"]
      303 JUMPIF                           R15 ; [+3]
      304 GETUPVAL                         R15 0
      305 GETTABLEKS                       R15 R15 K58 ["SCALE_BACKGROUND_TRANSPARENCY"]
      307 SETTABLEKS                       R15 R14 K51 ["BackgroundTransparency"]
      309 GETTABLEKS                       R15 R0 K59 ["children"]
      311 CALL                             R12 3 1
      312 SETTABLEKS                       R12 R11 K60 ["Body"]
      314 GETUPVAL                         R12 1
      315 GETTABLEKS                       R12 R12 K33 ["createElement"]
      317 LOADK                            R13 K49 ["Frame"]
      318 DUPTABLE                         R14 K62 [{[1], ["BackgroundTransparency"] = 1, ["ZIndex"]}]
      319 GETIMPORT                        R15 K12 [UDim2.fromScale]
      321 LOADN                            R16 1
      322 LOADN                            R17 1
      323 CALL                             R15 2 1
      324 SETTABLEKS                       R15 R14 K0 ["Size"]
      326 GETTABLEKS                       R15 R0 K54 ["ZIndex"]
      328 SETTABLEKS                       R15 R14 K54 ["ZIndex"]
      330 MOVE                             R15 R11
      331 CALL                             R12 3 -1
      332 RETURN                           R12 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["SignalsReact"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["CanvasContext"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Types"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Components"]
       33 GETTABLEKS                       R7 R7 K12 ["ScaleTick"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Util"]
       40 GETTABLEKS                       R8 R8 K14 ["GridUtil"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K13 ["Util"]
       47 GETTABLEKS                       R9 R9 K15 ["StyleUtil"]
       49 CALL                             R8 1 1
       50 DUPCLOSURE                       R9 K16 [PROTO_0]
       51 CAPTURE                          VAL R5
       52 DUPCLOSURE                       R10 K17 [PROTO_1]
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R6
       60 SETGLOBAL                        R10 K18 ["Scale"]
       62 GETGLOBAL                        R10 K18 ["Scale"]
       64 RETURN                           R10 1
