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
        0 GETTABLEKS                       R1 R0 K0 ["Length"]
        2 GETIMPORT                        R2 K3 [UDim.new]
        4 LOADN                            R3 0
        5 GETTABLEKS                       R4 R0 K4 ["Thickness"]
        7 JUMPIF                           R4 ; [+3]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K5 ["SCALE_TICK_THICKNESS"]
       11 CALL                             R2 2 1
       12 GETIMPORT                        R3 K3 [UDim.new]
       14 LOADN                            R4 0
       15 GETTABLEKS                       R5 R0 K6 ["TextPadding"]
       17 JUMPIF                           R5 ; [+3]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K7 ["SCALE_TICK_LABEL_PADDING"]
       21 CALL                             R3 2 1
       22 LOADB                            R4 1
       23 GETTABLEKS                       R5 R0 K8 ["HasLabel"]
       25 JUMPIFEQKNIL                     R5 ; [+3]
       27 GETTABLEKS                       R4 R0 K8 ["HasLabel"]
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K9 ["useContext"]
       32 GETUPVAL                         R6 2
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R8 R0 K10 ["Side"]
       36 LOADB                            R7 1
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R9 R9 K11 ["SIDE_TOP"]
       40 JUMPIFEQ                         R8 R9 ; [+8]
       42 GETUPVAL                         R9 3
       43 GETTABLEKS                       R9 R9 K12 ["SIDE_BOTTOM"]
       45 JUMPIFEQ                         R8 R9 ; [+2]
       47 LOADB                            R7 0 +1
       48 LOADB                            R7 1
       49 JUMPIFNOT                        R7 ; [+6]
       50 GETTABLEKS                       R6 R5 K13 ["isPointInViewportX"]
       52 GETTABLEKS                       R7 R0 K14 ["Value"]
       54 CALL                             R6 1 1
       55 JUMP                             ; [+5]
       56 GETTABLEKS                       R6 R5 K15 ["isPointInViewportY"]
       58 GETTABLEKS                       R7 R0 K14 ["Value"]
       60 CALL                             R6 1 1
       61 LOADN                            R7 0
       62 LOADN                            R8 0
       63 LOADN                            R9 0
       64 LOADN                            R10 0
       65 GETIMPORT                        R11 K19 [Enum.TextXAlignment.Center]
       67 GETIMPORT                        R12 K21 [Enum.TextYAlignment.Center]
       69 GETIMPORT                        R13 K24 [UDim2.fromOffset]
       71 LOADN                            R14 0
       72 LOADN                            R15 0
       73 CALL                             R13 2 1
       74 GETIMPORT                        R14 K24 [UDim2.fromOffset]
       76 LOADN                            R15 0
       77 LOADN                            R16 0
       78 CALL                             R14 2 1
       79 GETTABLEKS                       R16 R0 K10 ["Side"]
       81 LOADB                            R15 1
       82 GETUPVAL                         R17 3
       83 GETTABLEKS                       R17 R17 K11 ["SIDE_TOP"]
       85 JUMPIFEQ                         R16 R17 ; [+8]
       87 GETUPVAL                         R17 3
       88 GETTABLEKS                       R17 R17 K12 ["SIDE_BOTTOM"]
       90 JUMPIFEQ                         R16 R17 ; [+2]
       92 LOADB                            R15 0 +1
       93 LOADB                            R15 1
       94 JUMPIFNOT                        R15 ; [+68]
       95 GETIMPORT                        R15 K25 [UDim2.new]
       97 MOVE                             R16 R2
       98 MOVE                             R17 R1
       99 CALL                             R15 2 1
      100 MOVE                             R13 R15
      101 GETTABLEKS                       R15 R5 K26 ["plotToViewX"]
      103 GETTABLEKS                       R16 R0 K14 ["Value"]
      105 CALL                             R15 1 1
      106 MOVE                             R9 R15
      107 LOADK                            R7 K27 [0.5]
      108 GETTABLEKS                       R15 R0 K10 ["Side"]
      110 GETUPVAL                         R16 3
      111 GETTABLEKS                       R16 R16 K11 ["SIDE_TOP"]
      113 JUMPIFNOTEQ                      R15 R16 ; [+14]
      115 GETIMPORT                        R15 K25 [UDim2.new]
      117 GETUPVAL                         R16 4
      118 GETUPVAL                         R19 4
      119 SUB                              R18 R19 R3
      120 SUB                              R17 R18 R1
      121 CALL                             R15 2 1
      122 MOVE                             R14 R15
      123 LOADN                            R10 1
      124 LOADN                            R8 1
      125 GETIMPORT                        R12 K29 [Enum.TextYAlignment.Bottom]
      127 JUMP                             ; [+97]
      128 GETTABLEKS                       R15 R0 K10 ["Side"]
      130 GETUPVAL                         R16 3
      131 GETTABLEKS                       R16 R16 K12 ["SIDE_BOTTOM"]
      133 JUMPIFNOTEQ                      R15 R16 ; [+15]
      135 GETIMPORT                        R15 K25 [UDim2.new]
      137 GETUPVAL                         R16 4
      138 GETIMPORT                        R18 K3 [UDim.new]
      140 LOADN                            R19 0
      141 LOADN                            R20 4
      142 CALL                             R18 2 1
      143 ADD                              R17 R18 R1
      144 CALL                             R15 2 1
      145 MOVE                             R14 R15
      146 GETIMPORT                        R12 K31 [Enum.TextYAlignment.Top]
      148 JUMP                             ; [+76]
      149 LOADB                            R16 0
      150 LOADK                            R18 K32 ["Unsupported side %*"]
      151 GETTABLEKS                       R20 R0 K10 ["Side"]
      153 NAMECALL                         R18 R18 K33 ["format"]
      155 CALL                             R18 2 1
      156 MOVE                             R17 R18
      157 FASTCALL2                        ASSERT R16 R17 ; [+3]
      159 GETIMPORT                        R15 K35 [assert]
      161 CALL                             R15 2 0
      162 JUMP                             ; [+62]
      163 GETIMPORT                        R15 K25 [UDim2.new]
      165 MOVE                             R16 R1
      166 MOVE                             R17 R2
      167 CALL                             R15 2 1
      168 MOVE                             R13 R15
      169 GETTABLEKS                       R15 R5 K36 ["plotToViewY"]
      171 GETTABLEKS                       R16 R0 K14 ["Value"]
      173 CALL                             R15 1 1
      174 MOVE                             R10 R15
      175 LOADK                            R8 K27 [0.5]
      176 GETTABLEKS                       R15 R0 K10 ["Side"]
      178 GETUPVAL                         R16 3
      179 GETTABLEKS                       R16 R16 K37 ["SIDE_LEFT"]
      181 JUMPIFNOTEQ                      R15 R16 ; [+14]
      183 GETIMPORT                        R15 K25 [UDim2.new]
      185 GETUPVAL                         R18 4
      186 SUB                              R17 R18 R3
      187 SUB                              R16 R17 R1
      188 GETUPVAL                         R17 4
      189 CALL                             R15 2 1
      190 MOVE                             R14 R15
      191 LOADN                            R9 1
      192 LOADN                            R7 1
      193 GETIMPORT                        R11 K39 [Enum.TextXAlignment.Right]
      195 JUMP                             ; [+29]
      196 GETTABLEKS                       R15 R0 K10 ["Side"]
      198 GETUPVAL                         R16 3
      199 GETTABLEKS                       R16 R16 K40 ["SIDE_RIGHT"]
      201 JUMPIFNOTEQ                      R15 R16 ; [+10]
      203 GETIMPORT                        R15 K25 [UDim2.new]
      205 ADD                              R16 R3 R1
      206 GETUPVAL                         R17 4
      207 CALL                             R15 2 1
      208 MOVE                             R14 R15
      209 GETIMPORT                        R11 K42 [Enum.TextXAlignment.Left]
      211 JUMP                             ; [+13]
      212 LOADB                            R16 0
      213 LOADK                            R18 K32 ["Unsupported side %*"]
      214 GETTABLEKS                       R20 R0 K10 ["Side"]
      216 NAMECALL                         R18 R18 K33 ["format"]
      218 CALL                             R18 2 1
      219 MOVE                             R17 R18
      220 FASTCALL2                        ASSERT R16 R17 ; [+3]
      222 GETIMPORT                        R15 K35 [assert]
      224 CALL                             R15 2 0
      225 MOVE                             R15 R6
      226 JUMPIFNOT                        R15 ; [+112]
      227 GETUPVAL                         R15 1
      228 GETTABLEKS                       R15 R15 K43 ["createElement"]
      230 GETUPVAL                         R16 1
      231 GETTABLEKS                       R16 R16 K44 ["Fragment"]
      233 NEWTABLE                         R17 0 0
      235 DUPTABLE                         R18 K47 [{"Tick", "Label"}]
      236 GETUPVAL                         R19 1
      237 GETTABLEKS                       R19 R19 K43 ["createElement"]
      239 LOADK                            R20 K48 ["Frame"]
      240 DUPTABLE                         R21 K56 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["ZIndex"]}]
      241 GETIMPORT                        R22 K58 [Vector2.new]
      243 MOVE                             R23 R7
      244 MOVE                             R24 R8
      245 CALL                             R22 2 1
      246 SETTABLEKS                       R22 R21 K49 ["AnchorPoint"]
      248 GETIMPORT                        R22 K60 [UDim2.fromScale]
      250 MOVE                             R23 R9
      251 MOVE                             R24 R10
      252 CALL                             R22 2 1
      253 SETTABLEKS                       R22 R21 K50 ["Position"]
      255 SETTABLEKS                       R13 R21 K51 ["Size"]
      257 GETTABLEKS                       R22 R0 K61 ["Color3"]
      259 JUMPIF                           R22 ; [+3]
      260 GETUPVAL                         R22 0
      261 GETTABLEKS                       R22 R22 K62 ["SCALE_TICK_COLOR3"]
      263 SETTABLEKS                       R22 R21 K52 ["BackgroundColor3"]
      265 GETTABLEKS                       R22 R0 K55 ["ZIndex"]
      267 SETTABLEKS                       R22 R21 K55 ["ZIndex"]
      269 CALL                             R19 2 1
      270 SETTABLEKS                       R19 R18 K45 ["Tick"]
      272 MOVE                             R19 R4
      273 JUMPIFNOT                        R19 ; [+62]
      274 GETUPVAL                         R19 1
      275 GETTABLEKS                       R19 R19 K43 ["createElement"]
      277 LOADK                            R20 K63 ["TextLabel"]
      278 DUPTABLE                         R21 K69 [{["AnchorPoint"], ["Position"], ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["TextSize"], ["ZIndex"]}]
      279 GETIMPORT                        R22 K58 [Vector2.new]
      281 MOVE                             R23 R7
      282 MOVE                             R24 R8
      283 CALL                             R22 2 1
      284 SETTABLEKS                       R22 R21 K49 ["AnchorPoint"]
      286 GETIMPORT                        R23 K60 [UDim2.fromScale]
      288 MOVE                             R24 R9
      289 MOVE                             R25 R10
      290 CALL                             R23 2 1
      291 ADD                              R22 R23 R14
      292 SETTABLEKS                       R22 R21 K50 ["Position"]
      294 GETTABLEKS                       R23 R0 K70 ["Formatter"]
      296 JUMPIFNOT                        R23 ; [+6]
      297 GETTABLEKS                       R22 R0 K70 ["Formatter"]
      299 GETTABLEKS                       R23 R0 K14 ["Value"]
      301 CALL                             R22 1 1
      302 JUMP                             ; [+6]
      303 GETTABLEKS                       R23 R0 K14 ["Value"]
      305 FASTCALL1                        TOSTRING R23 ; [+2]
      306 GETIMPORT                        R22 K72 [tostring]
      308 CALL                             R22 1 1
      309 SETTABLEKS                       R22 R21 K64 ["Text"]
      311 SETTABLEKS                       R11 R21 K17 ["TextXAlignment"]
      313 SETTABLEKS                       R12 R21 K20 ["TextYAlignment"]
      315 GETTABLEKS                       R22 R0 K61 ["Color3"]
      317 JUMPIF                           R22 ; [+3]
      318 GETUPVAL                         R22 0
      319 GETTABLEKS                       R22 R22 K73 ["SCALE_TICK_LABEL_COLOR3"]
      321 SETTABLEKS                       R22 R21 K67 ["TextColor3"]
      323 GETTABLEKS                       R22 R0 K68 ["TextSize"]
      325 JUMPIF                           R22 ; [+3]
      326 GETUPVAL                         R22 0
      327 GETTABLEKS                       R22 R22 K74 ["SCALE_TICK_LABEL_SIZE"]
      329 SETTABLEKS                       R22 R21 K68 ["TextSize"]
      331 GETTABLEKS                       R22 R0 K55 ["ZIndex"]
      333 SETTABLEKS                       R22 R21 K55 ["ZIndex"]
      335 CALL                             R19 2 1
      336 SETTABLEKS                       R19 R18 K46 ["Label"]
      338 CALL                             R15 3 1
      339 RETURN                           R15 1

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
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R5 K10 ["StyleUtil"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Types"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K14 [UDim.new]
       33 LOADN                            R7 0
       34 LOADN                            R8 0
       35 CALL                             R6 2 1
       36 DUPCLOSURE                       R7 K15 [PROTO_0]
       37 CAPTURE                          VAL R5
       38 DUPCLOSURE                       R8 K16 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 SETGLOBAL                        R8 K17 ["ScaleTick"]
       46 GETGLOBAL                        R8 K17 ["ScaleTick"]
       48 RETURN                           R8 1
