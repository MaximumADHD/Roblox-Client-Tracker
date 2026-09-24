PROTO_0:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getStepFromSpread"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["Extents"]
        8 GETTABLEKS                       R2 R2 K2 ["Width"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["getStepFromSpread"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K1 ["Extents"]
       17 GETTABLEKS                       R3 R3 K3 ["Height"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K1 ["Extents"]
       23 GETTABLEKS                       R6 R6 K4 ["Min"]
       25 GETTABLEKS                       R6 R6 K5 ["X"]
       27 DIV                              R5 R6 R1
       28 FASTCALL1                        MATH_CEIL R5 ; [+2]
       29 GETIMPORT                        R4 K8 [math.ceil]
       31 CALL                             R4 1 1
       32 MUL                              R3 R4 R1
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R7 R7 K1 ["Extents"]
       36 GETTABLEKS                       R7 R7 K4 ["Min"]
       38 GETTABLEKS                       R7 R7 K9 ["Y"]
       40 DIV                              R6 R7 R2
       41 FASTCALL1                        MATH_CEIL R6 ; [+2]
       42 GETIMPORT                        R5 K8 [math.ceil]
       44 CALL                             R5 1 1
       45 MUL                              R4 R5 R2
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R8 R8 K1 ["Extents"]
       49 GETTABLEKS                       R8 R8 K10 ["Max"]
       51 GETTABLEKS                       R8 R8 K5 ["X"]
       53 DIV                              R7 R8 R1
       54 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       55 GETIMPORT                        R6 K12 [math.floor]
       57 CALL                             R6 1 1
       58 MUL                              R5 R6 R1
       59 GETUPVAL                         R9 1
       60 GETTABLEKS                       R9 R9 K1 ["Extents"]
       62 GETTABLEKS                       R9 R9 K10 ["Max"]
       64 GETTABLEKS                       R9 R9 K9 ["Y"]
       66 DIV                              R8 R9 R2
       67 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       68 GETIMPORT                        R7 K12 [math.floor]
       70 CALL                             R7 1 1
       71 MUL                              R6 R7 R2
       72 MOVE                             R9 R3
       73 MOVE                             R7 R5
       74 MOVE                             R8 R1
       75 FORNPREP                         R7
       76 LOADK                            R11 K13 ["x-axis-"]
       77 FASTCALL1                        TOSTRING R9 ; [+3]
       78 MOVE                             R13 R9
       79 GETIMPORT                        R12 K15 [tostring]
       81 CALL                             R12 1 1
       82 CONCAT                           R10 R11 R12
       83 GETUPVAL                         R11 2
       84 GETTABLEKS                       R11 R11 K16 ["createElement"]
       86 GETUPVAL                         R12 3
       87 GETTABLEKS                       R12 R12 K17 ["Curve"]
       89 DUPTABLE                         R13 K23 [{"Points", "Color3", "Thickness", "ObserveThickness", "ZIndex"}]
       90 NEWTABLE                         R14 0 2
       92 DUPTABLE                         R15 K25 [{"Position"}]
       93 GETIMPORT                        R16 K28 [Vector2.new]
       95 MOVE                             R17 R9
       96 GETUPVAL                         R18 1
       97 GETTABLEKS                       R18 R18 K1 ["Extents"]
       99 GETTABLEKS                       R18 R18 K4 ["Min"]
      101 GETTABLEKS                       R18 R18 K9 ["Y"]
      103 CALL                             R16 2 1
      104 SETTABLEKS                       R16 R15 K24 ["Position"]
      106 DUPTABLE                         R16 K25 [{"Position"}]
      107 GETIMPORT                        R17 K28 [Vector2.new]
      109 MOVE                             R18 R9
      110 GETUPVAL                         R19 1
      111 GETTABLEKS                       R19 R19 K1 ["Extents"]
      113 GETTABLEKS                       R19 R19 K10 ["Max"]
      115 GETTABLEKS                       R19 R19 K9 ["Y"]
      117 CALL                             R17 2 1
      118 SETTABLEKS                       R17 R16 K24 ["Position"]
      120 SETLIST                          R14 R15 2 [1]
      122 SETTABLEKS                       R14 R13 K18 ["Points"]
      124 JUMPIFNOTEQKN                    R9 K29 [0] ; [+5]
      126 GETUPVAL                         R14 1
      127 GETTABLEKS                       R14 R14 K30 ["AxisColor"]
      129 JUMP                             ; [+3]
      130 GETUPVAL                         R14 1
      131 GETTABLEKS                       R14 R14 K31 ["GridColor"]
      133 SETTABLEKS                       R14 R13 K19 ["Color3"]
      135 GETUPVAL                         R14 1
      136 GETTABLEKS                       R14 R14 K20 ["Thickness"]
      138 SETTABLEKS                       R14 R13 K20 ["Thickness"]
      140 GETUPVAL                         R14 1
      141 GETTABLEKS                       R14 R14 K21 ["ObserveThickness"]
      143 SETTABLEKS                       R14 R13 K21 ["ObserveThickness"]
      145 JUMPIFNOTEQKN                    R9 K29 [0] ; [+3]
      147 LOADN                            R14 2
      148 JUMP                             ; [+1]
      149 LOADN                            R14 1
      150 SETTABLEKS                       R14 R13 K22 ["ZIndex"]
      152 CALL                             R11 2 1
      153 SETTABLE                         R11 R0 R10
      154 FORNLOOP                         R7
      155 MOVE                             R9 R4
      156 MOVE                             R7 R6
      157 MOVE                             R8 R2
      158 FORNPREP                         R7
      159 LOADK                            R11 K32 ["y-axis-"]
      160 FASTCALL1                        TOSTRING R9 ; [+3]
      161 MOVE                             R13 R9
      162 GETIMPORT                        R12 K15 [tostring]
      164 CALL                             R12 1 1
      165 CONCAT                           R10 R11 R12
      166 GETUPVAL                         R11 2
      167 GETTABLEKS                       R11 R11 K16 ["createElement"]
      169 GETUPVAL                         R12 3
      170 GETTABLEKS                       R12 R12 K17 ["Curve"]
      172 DUPTABLE                         R13 K23 [{"Points", "Color3", "Thickness", "ObserveThickness", "ZIndex"}]
      173 NEWTABLE                         R14 0 2
      175 DUPTABLE                         R15 K25 [{"Position"}]
      176 GETIMPORT                        R16 K28 [Vector2.new]
      178 GETUPVAL                         R17 1
      179 GETTABLEKS                       R17 R17 K1 ["Extents"]
      181 GETTABLEKS                       R17 R17 K4 ["Min"]
      183 GETTABLEKS                       R17 R17 K5 ["X"]
      185 MOVE                             R18 R9
      186 CALL                             R16 2 1
      187 SETTABLEKS                       R16 R15 K24 ["Position"]
      189 DUPTABLE                         R16 K25 [{"Position"}]
      190 GETIMPORT                        R17 K28 [Vector2.new]
      192 GETUPVAL                         R18 1
      193 GETTABLEKS                       R18 R18 K1 ["Extents"]
      195 GETTABLEKS                       R18 R18 K10 ["Max"]
      197 GETTABLEKS                       R18 R18 K5 ["X"]
      199 MOVE                             R19 R9
      200 CALL                             R17 2 1
      201 SETTABLEKS                       R17 R16 K24 ["Position"]
      203 SETLIST                          R14 R15 2 [1]
      205 SETTABLEKS                       R14 R13 K18 ["Points"]
      207 JUMPIFNOTEQKN                    R9 K29 [0] ; [+5]
      209 GETUPVAL                         R14 1
      210 GETTABLEKS                       R14 R14 K30 ["AxisColor"]
      212 JUMP                             ; [+3]
      213 GETUPVAL                         R14 1
      214 GETTABLEKS                       R14 R14 K31 ["GridColor"]
      216 SETTABLEKS                       R14 R13 K19 ["Color3"]
      218 GETUPVAL                         R14 1
      219 GETTABLEKS                       R14 R14 K20 ["Thickness"]
      221 SETTABLEKS                       R14 R13 K20 ["Thickness"]
      223 GETUPVAL                         R14 1
      224 GETTABLEKS                       R14 R14 K21 ["ObserveThickness"]
      226 SETTABLEKS                       R14 R13 K21 ["ObserveThickness"]
      228 JUMPIFNOTEQKN                    R9 K29 [0] ; [+3]
      230 LOADN                            R14 2
      231 JUMP                             ; [+1]
      232 LOADN                            R14 1
      233 SETTABLEKS                       R14 R13 K22 ["ZIndex"]
      235 CALL                             R11 2 1
      236 SETTABLE                         R11 R0 R10
      237 FORNLOOP                         R7
      238 GETUPVAL                         R7 2
      239 GETTABLEKS                       R7 R7 K16 ["createElement"]
      241 GETUPVAL                         R8 3
      242 GETTABLEKS                       R8 R8 K17 ["Curve"]
      244 DUPTABLE                         R9 K34 [{["Points"], ["Color3"], ["Thickness"], ["ObserveThickness"], ["ZIndex"] = 1}]
      245 NEWTABLE                         R10 0 5
      247 DUPTABLE                         R11 K25 [{"Position"}]
      248 GETIMPORT                        R12 K28 [Vector2.new]
      250 GETUPVAL                         R13 1
      251 GETTABLEKS                       R13 R13 K1 ["Extents"]
      253 GETTABLEKS                       R13 R13 K4 ["Min"]
      255 GETTABLEKS                       R13 R13 K5 ["X"]
      257 GETUPVAL                         R14 1
      258 GETTABLEKS                       R14 R14 K1 ["Extents"]
      260 GETTABLEKS                       R14 R14 K4 ["Min"]
      262 GETTABLEKS                       R14 R14 K9 ["Y"]
      264 CALL                             R12 2 1
      265 SETTABLEKS                       R12 R11 K24 ["Position"]
      267 DUPTABLE                         R12 K25 [{"Position"}]
      268 GETIMPORT                        R13 K28 [Vector2.new]
      270 GETUPVAL                         R14 1
      271 GETTABLEKS                       R14 R14 K1 ["Extents"]
      273 GETTABLEKS                       R14 R14 K10 ["Max"]
      275 GETTABLEKS                       R14 R14 K5 ["X"]
      277 GETUPVAL                         R15 1
      278 GETTABLEKS                       R15 R15 K1 ["Extents"]
      280 GETTABLEKS                       R15 R15 K4 ["Min"]
      282 GETTABLEKS                       R15 R15 K9 ["Y"]
      284 CALL                             R13 2 1
      285 SETTABLEKS                       R13 R12 K24 ["Position"]
      287 DUPTABLE                         R13 K25 [{"Position"}]
      288 GETIMPORT                        R14 K28 [Vector2.new]
      290 GETUPVAL                         R15 1
      291 GETTABLEKS                       R15 R15 K1 ["Extents"]
      293 GETTABLEKS                       R15 R15 K10 ["Max"]
      295 GETTABLEKS                       R15 R15 K5 ["X"]
      297 GETUPVAL                         R16 1
      298 GETTABLEKS                       R16 R16 K1 ["Extents"]
      300 GETTABLEKS                       R16 R16 K10 ["Max"]
      302 GETTABLEKS                       R16 R16 K9 ["Y"]
      304 CALL                             R14 2 1
      305 SETTABLEKS                       R14 R13 K24 ["Position"]
      307 DUPTABLE                         R14 K25 [{"Position"}]
      308 GETIMPORT                        R15 K28 [Vector2.new]
      310 GETUPVAL                         R16 1
      311 GETTABLEKS                       R16 R16 K1 ["Extents"]
      313 GETTABLEKS                       R16 R16 K4 ["Min"]
      315 GETTABLEKS                       R16 R16 K5 ["X"]
      317 GETUPVAL                         R17 1
      318 GETTABLEKS                       R17 R17 K1 ["Extents"]
      320 GETTABLEKS                       R17 R17 K10 ["Max"]
      322 GETTABLEKS                       R17 R17 K9 ["Y"]
      324 CALL                             R15 2 1
      325 SETTABLEKS                       R15 R14 K24 ["Position"]
      327 DUPTABLE                         R15 K25 [{"Position"}]
      328 GETIMPORT                        R16 K28 [Vector2.new]
      330 GETUPVAL                         R17 1
      331 GETTABLEKS                       R17 R17 K1 ["Extents"]
      333 GETTABLEKS                       R17 R17 K4 ["Min"]
      335 GETTABLEKS                       R17 R17 K5 ["X"]
      337 GETUPVAL                         R18 1
      338 GETTABLEKS                       R18 R18 K1 ["Extents"]
      340 GETTABLEKS                       R18 R18 K4 ["Min"]
      342 GETTABLEKS                       R18 R18 K9 ["Y"]
      344 CALL                             R16 2 1
      345 SETTABLEKS                       R16 R15 K24 ["Position"]
      347 SETLIST                          R10 R11 5 [1]
      349 SETTABLEKS                       R10 R9 K18 ["Points"]
      351 GETUPVAL                         R10 1
      352 GETTABLEKS                       R10 R10 K31 ["GridColor"]
      354 SETTABLEKS                       R10 R9 K19 ["Color3"]
      356 GETUPVAL                         R10 1
      357 GETTABLEKS                       R10 R10 K20 ["Thickness"]
      359 SETTABLEKS                       R10 R9 K20 ["Thickness"]
      361 GETUPVAL                         R10 1
      362 GETTABLEKS                       R10 R10 K21 ["ObserveThickness"]
      364 SETTABLEKS                       R10 R9 K21 ["ObserveThickness"]
      366 CALL                             R7 2 1
      367 SETTABLEKS                       R7 R0 K35 ["extents"]
      369 GETUPVAL                         R7 2
      370 GETTABLEKS                       R7 R7 K16 ["createElement"]
      372 GETUPVAL                         R8 2
      373 GETTABLEKS                       R8 R8 K36 ["Fragment"]
      375 NEWTABLE                         R9 0 0
      377 MOVE                             R10 R0
      378 CALL                             R7 3 -1
      379 RETURN                           R7 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R3 0 5
       10 GETTABLEKS                       R4 R0 K1 ["Extents"]
       12 GETTABLEKS                       R5 R0 K2 ["GridColor"]
       14 GETTABLEKS                       R6 R0 K3 ["AxisColor"]
       16 GETTABLEKS                       R7 R0 K4 ["Thickness"]
       18 GETTABLEKS                       R8 R0 K5 ["ObserveThickness"]
       20 SETLIST                          R3 R4 5 [1]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Signals"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Graphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K12 ["CompositorNodeProperty"]
       36 GETTABLEKS                       R5 R5 K13 ["PropertyUtils"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_1]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 RETURN                           R5 1
