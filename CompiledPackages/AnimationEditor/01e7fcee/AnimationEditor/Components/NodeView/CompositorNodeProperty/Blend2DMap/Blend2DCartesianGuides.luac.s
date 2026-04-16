PROTO_0:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["getStepFromSpread"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["Extents"]
        8 GETTABLEKS                       R2 R3 K2 ["Width"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["getStepFromSpread"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K1 ["Extents"]
       17 GETTABLEKS                       R3 R4 K3 ["Height"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R9 1
       21 GETTABLEKS                       R8 R9 K1 ["Extents"]
       23 GETTABLEKS                       R7 R8 K4 ["Min"]
       25 GETTABLEKS                       R6 R7 K5 ["X"]
       27 DIV                              R5 R6 R1
       28 FASTCALL1                        MATH_CEIL R5 ; [+2]
       29 GETIMPORT                        R4 K8 [math.ceil]
       31 CALL                             R4 1 1
       32 MUL                              R3 R4 R1
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R9 R10 K1 ["Extents"]
       36 GETTABLEKS                       R8 R9 K4 ["Min"]
       38 GETTABLEKS                       R7 R8 K9 ["Y"]
       40 DIV                              R6 R7 R2
       41 FASTCALL1                        MATH_CEIL R6 ; [+2]
       42 GETIMPORT                        R5 K8 [math.ceil]
       44 CALL                             R5 1 1
       45 MUL                              R4 R5 R2
       46 GETUPVAL                         R11 1
       47 GETTABLEKS                       R10 R11 K1 ["Extents"]
       49 GETTABLEKS                       R9 R10 K10 ["Max"]
       51 GETTABLEKS                       R8 R9 K5 ["X"]
       53 DIV                              R7 R8 R1
       54 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       55 GETIMPORT                        R6 K12 [math.floor]
       57 CALL                             R6 1 1
       58 MUL                              R5 R6 R1
       59 GETUPVAL                         R12 1
       60 GETTABLEKS                       R11 R12 K1 ["Extents"]
       62 GETTABLEKS                       R10 R11 K10 ["Max"]
       64 GETTABLEKS                       R9 R10 K9 ["Y"]
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
       83 GETUPVAL                         R12 2
       84 GETTABLEKS                       R11 R12 K16 ["createElement"]
       86 GETUPVAL                         R13 3
       87 GETTABLEKS                       R12 R13 K17 ["Curve"]
       89 DUPTABLE                         R13 K22 [{"Points", "Color3", "Thickness", "ZIndex"}]
       90 NEWTABLE                         R14 0 2
       92 DUPTABLE                         R15 K24 [{"Position"}]
       93 GETIMPORT                        R16 K27 [Vector2.new]
       95 MOVE                             R17 R9
       96 GETUPVAL                         R21 1
       97 GETTABLEKS                       R20 R21 K1 ["Extents"]
       99 GETTABLEKS                       R19 R20 K4 ["Min"]
      101 GETTABLEKS                       R18 R19 K9 ["Y"]
      103 CALL                             R16 2 1
      104 SETTABLEKS                       R16 R15 K23 ["Position"]
      106 DUPTABLE                         R16 K24 [{"Position"}]
      107 GETIMPORT                        R17 K27 [Vector2.new]
      109 MOVE                             R18 R9
      110 GETUPVAL                         R22 1
      111 GETTABLEKS                       R21 R22 K1 ["Extents"]
      113 GETTABLEKS                       R20 R21 K10 ["Max"]
      115 GETTABLEKS                       R19 R20 K9 ["Y"]
      117 CALL                             R17 2 1
      118 SETTABLEKS                       R17 R16 K23 ["Position"]
      120 SETLIST                          R14 R15 2 [1]
      122 SETTABLEKS                       R14 R13 K18 ["Points"]
      124 JUMPIFNOTEQKN                    R9 K28 [0] ; [+5]
      126 GETUPVAL                         R15 1
      127 GETTABLEKS                       R14 R15 K29 ["AxisColor"]
      129 JUMP                             ; [+3]
      130 GETUPVAL                         R15 1
      131 GETTABLEKS                       R14 R15 K30 ["GridColor"]
      133 SETTABLEKS                       R14 R13 K19 ["Color3"]
      135 GETUPVAL                         R15 1
      136 GETTABLEKS                       R14 R15 K20 ["Thickness"]
      138 SETTABLEKS                       R14 R13 K20 ["Thickness"]
      140 JUMPIFNOTEQKN                    R9 K28 [0] ; [+3]
      142 LOADN                            R14 2
      143 JUMP                             ; [+1]
      144 LOADN                            R14 1
      145 SETTABLEKS                       R14 R13 K21 ["ZIndex"]
      147 CALL                             R11 2 1
      148 SETTABLE                         R11 R0 R10
      149 FORNLOOP                         R7
      150 MOVE                             R9 R4
      151 MOVE                             R7 R6
      152 MOVE                             R8 R2
      153 FORNPREP                         R7
      154 LOADK                            R11 K31 ["y-axis-"]
      155 FASTCALL1                        TOSTRING R9 ; [+3]
      156 MOVE                             R13 R9
      157 GETIMPORT                        R12 K15 [tostring]
      159 CALL                             R12 1 1
      160 CONCAT                           R10 R11 R12
      161 GETUPVAL                         R12 2
      162 GETTABLEKS                       R11 R12 K16 ["createElement"]
      164 GETUPVAL                         R13 3
      165 GETTABLEKS                       R12 R13 K17 ["Curve"]
      167 DUPTABLE                         R13 K22 [{"Points", "Color3", "Thickness", "ZIndex"}]
      168 NEWTABLE                         R14 0 2
      170 DUPTABLE                         R15 K24 [{"Position"}]
      171 GETIMPORT                        R16 K27 [Vector2.new]
      173 GETUPVAL                         R20 1
      174 GETTABLEKS                       R19 R20 K1 ["Extents"]
      176 GETTABLEKS                       R18 R19 K4 ["Min"]
      178 GETTABLEKS                       R17 R18 K5 ["X"]
      180 MOVE                             R18 R9
      181 CALL                             R16 2 1
      182 SETTABLEKS                       R16 R15 K23 ["Position"]
      184 DUPTABLE                         R16 K24 [{"Position"}]
      185 GETIMPORT                        R17 K27 [Vector2.new]
      187 GETUPVAL                         R21 1
      188 GETTABLEKS                       R20 R21 K1 ["Extents"]
      190 GETTABLEKS                       R19 R20 K10 ["Max"]
      192 GETTABLEKS                       R18 R19 K5 ["X"]
      194 MOVE                             R19 R9
      195 CALL                             R17 2 1
      196 SETTABLEKS                       R17 R16 K23 ["Position"]
      198 SETLIST                          R14 R15 2 [1]
      200 SETTABLEKS                       R14 R13 K18 ["Points"]
      202 JUMPIFNOTEQKN                    R9 K28 [0] ; [+5]
      204 GETUPVAL                         R15 1
      205 GETTABLEKS                       R14 R15 K29 ["AxisColor"]
      207 JUMP                             ; [+3]
      208 GETUPVAL                         R15 1
      209 GETTABLEKS                       R14 R15 K30 ["GridColor"]
      211 SETTABLEKS                       R14 R13 K19 ["Color3"]
      213 GETUPVAL                         R15 1
      214 GETTABLEKS                       R14 R15 K20 ["Thickness"]
      216 SETTABLEKS                       R14 R13 K20 ["Thickness"]
      218 JUMPIFNOTEQKN                    R9 K28 [0] ; [+3]
      220 LOADN                            R14 2
      221 JUMP                             ; [+1]
      222 LOADN                            R14 1
      223 SETTABLEKS                       R14 R13 K21 ["ZIndex"]
      225 CALL                             R11 2 1
      226 SETTABLE                         R11 R0 R10
      227 FORNLOOP                         R7
      228 GETUPVAL                         R8 2
      229 GETTABLEKS                       R7 R8 K16 ["createElement"]
      231 GETUPVAL                         R9 3
      232 GETTABLEKS                       R8 R9 K17 ["Curve"]
      234 DUPTABLE                         R9 K22 [{"Points", "Color3", "Thickness", "ZIndex"}]
      235 NEWTABLE                         R10 0 5
      237 DUPTABLE                         R11 K24 [{"Position"}]
      238 GETIMPORT                        R12 K27 [Vector2.new]
      240 GETUPVAL                         R16 1
      241 GETTABLEKS                       R15 R16 K1 ["Extents"]
      243 GETTABLEKS                       R14 R15 K4 ["Min"]
      245 GETTABLEKS                       R13 R14 K5 ["X"]
      247 GETUPVAL                         R17 1
      248 GETTABLEKS                       R16 R17 K1 ["Extents"]
      250 GETTABLEKS                       R15 R16 K4 ["Min"]
      252 GETTABLEKS                       R14 R15 K9 ["Y"]
      254 CALL                             R12 2 1
      255 SETTABLEKS                       R12 R11 K23 ["Position"]
      257 DUPTABLE                         R12 K24 [{"Position"}]
      258 GETIMPORT                        R13 K27 [Vector2.new]
      260 GETUPVAL                         R17 1
      261 GETTABLEKS                       R16 R17 K1 ["Extents"]
      263 GETTABLEKS                       R15 R16 K10 ["Max"]
      265 GETTABLEKS                       R14 R15 K5 ["X"]
      267 GETUPVAL                         R18 1
      268 GETTABLEKS                       R17 R18 K1 ["Extents"]
      270 GETTABLEKS                       R16 R17 K4 ["Min"]
      272 GETTABLEKS                       R15 R16 K9 ["Y"]
      274 CALL                             R13 2 1
      275 SETTABLEKS                       R13 R12 K23 ["Position"]
      277 DUPTABLE                         R13 K24 [{"Position"}]
      278 GETIMPORT                        R14 K27 [Vector2.new]
      280 GETUPVAL                         R18 1
      281 GETTABLEKS                       R17 R18 K1 ["Extents"]
      283 GETTABLEKS                       R16 R17 K10 ["Max"]
      285 GETTABLEKS                       R15 R16 K5 ["X"]
      287 GETUPVAL                         R19 1
      288 GETTABLEKS                       R18 R19 K1 ["Extents"]
      290 GETTABLEKS                       R17 R18 K10 ["Max"]
      292 GETTABLEKS                       R16 R17 K9 ["Y"]
      294 CALL                             R14 2 1
      295 SETTABLEKS                       R14 R13 K23 ["Position"]
      297 DUPTABLE                         R14 K24 [{"Position"}]
      298 GETIMPORT                        R15 K27 [Vector2.new]
      300 GETUPVAL                         R19 1
      301 GETTABLEKS                       R18 R19 K1 ["Extents"]
      303 GETTABLEKS                       R17 R18 K4 ["Min"]
      305 GETTABLEKS                       R16 R17 K5 ["X"]
      307 GETUPVAL                         R20 1
      308 GETTABLEKS                       R19 R20 K1 ["Extents"]
      310 GETTABLEKS                       R18 R19 K10 ["Max"]
      312 GETTABLEKS                       R17 R18 K9 ["Y"]
      314 CALL                             R15 2 1
      315 SETTABLEKS                       R15 R14 K23 ["Position"]
      317 DUPTABLE                         R15 K24 [{"Position"}]
      318 GETIMPORT                        R16 K27 [Vector2.new]
      320 GETUPVAL                         R20 1
      321 GETTABLEKS                       R19 R20 K1 ["Extents"]
      323 GETTABLEKS                       R18 R19 K4 ["Min"]
      325 GETTABLEKS                       R17 R18 K5 ["X"]
      327 GETUPVAL                         R21 1
      328 GETTABLEKS                       R20 R21 K1 ["Extents"]
      330 GETTABLEKS                       R19 R20 K4 ["Min"]
      332 GETTABLEKS                       R18 R19 K9 ["Y"]
      334 CALL                             R16 2 1
      335 SETTABLEKS                       R16 R15 K23 ["Position"]
      337 SETLIST                          R10 R11 5 [1]
      339 SETTABLEKS                       R10 R9 K18 ["Points"]
      341 GETUPVAL                         R11 1
      342 GETTABLEKS                       R10 R11 K30 ["GridColor"]
      344 SETTABLEKS                       R10 R9 K19 ["Color3"]
      346 GETUPVAL                         R11 1
      347 GETTABLEKS                       R10 R11 K20 ["Thickness"]
      349 SETTABLEKS                       R10 R9 K20 ["Thickness"]
      351 LOADN                            R10 1
      352 SETTABLEKS                       R10 R9 K21 ["ZIndex"]
      354 CALL                             R7 2 1
      355 SETTABLEKS                       R7 R0 K32 ["extents"]
      357 GETUPVAL                         R8 2
      358 GETTABLEKS                       R7 R8 K16 ["createElement"]
      360 GETUPVAL                         R9 2
      361 GETTABLEKS                       R8 R9 K33 ["Fragment"]
      363 NEWTABLE                         R9 0 0
      365 MOVE                             R10 R0
      366 CALL                             R7 3 -1
      367 RETURN                           R7 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R3 0 4
       10 GETTABLEKS                       R4 R0 K1 ["Extents"]
       12 GETTABLEKS                       R5 R0 K2 ["GridColor"]
       14 GETTABLEKS                       R6 R0 K3 ["AxisColor"]
       16 GETTABLEKS                       R7 R0 K4 ["Thickness"]
       18 SETLIST                          R3 R4 4 [1]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Graphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Components"]
       25 GETTABLEKS                       R6 R7 K10 ["NodeView"]
       27 GETTABLEKS                       R5 R6 K11 ["CompositorNodeProperty"]
       29 GETTABLEKS                       R4 R5 K12 ["PropertyUtils"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_1]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 RETURN                           R4 1
