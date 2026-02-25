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
       89 DUPTABLE                         R13 K20 [{"Points", "Color3"}]
       90 NEWTABLE                         R14 0 2
       92 DUPTABLE                         R15 K22 [{"Position"}]
       93 GETIMPORT                        R16 K25 [Vector2.new]
       95 MOVE                             R17 R9
       96 GETUPVAL                         R21 1
       97 GETTABLEKS                       R20 R21 K1 ["Extents"]
       99 GETTABLEKS                       R19 R20 K4 ["Min"]
      101 GETTABLEKS                       R18 R19 K9 ["Y"]
      103 CALL                             R16 2 1
      104 SETTABLEKS                       R16 R15 K21 ["Position"]
      106 DUPTABLE                         R16 K22 [{"Position"}]
      107 GETIMPORT                        R17 K25 [Vector2.new]
      109 MOVE                             R18 R9
      110 GETUPVAL                         R22 1
      111 GETTABLEKS                       R21 R22 K1 ["Extents"]
      113 GETTABLEKS                       R20 R21 K10 ["Max"]
      115 GETTABLEKS                       R19 R20 K9 ["Y"]
      117 CALL                             R17 2 1
      118 SETTABLEKS                       R17 R16 K21 ["Position"]
      120 SETLIST                          R14 R15 2 [1]
      122 SETTABLEKS                       R14 R13 K18 ["Points"]
      124 JUMPIFNOTEQKN                    R9 K26 [0] ; [+5]
      126 GETUPVAL                         R15 1
      127 GETTABLEKS                       R14 R15 K27 ["AxisColor"]
      129 JUMP                             ; [+3]
      130 GETUPVAL                         R15 1
      131 GETTABLEKS                       R14 R15 K28 ["GridColor"]
      133 SETTABLEKS                       R14 R13 K19 ["Color3"]
      135 CALL                             R11 2 1
      136 SETTABLE                         R11 R0 R10
      137 FORNLOOP                         R7
      138 MOVE                             R9 R4
      139 MOVE                             R7 R6
      140 MOVE                             R8 R2
      141 FORNPREP                         R7
      142 LOADK                            R11 K29 ["y-axis-"]
      143 FASTCALL1                        TOSTRING R9 ; [+3]
      144 MOVE                             R13 R9
      145 GETIMPORT                        R12 K15 [tostring]
      147 CALL                             R12 1 1
      148 CONCAT                           R10 R11 R12
      149 GETUPVAL                         R12 2
      150 GETTABLEKS                       R11 R12 K16 ["createElement"]
      152 GETUPVAL                         R13 3
      153 GETTABLEKS                       R12 R13 K17 ["Curve"]
      155 DUPTABLE                         R13 K20 [{"Points", "Color3"}]
      156 NEWTABLE                         R14 0 2
      158 DUPTABLE                         R15 K22 [{"Position"}]
      159 GETIMPORT                        R16 K25 [Vector2.new]
      161 GETUPVAL                         R20 1
      162 GETTABLEKS                       R19 R20 K1 ["Extents"]
      164 GETTABLEKS                       R18 R19 K4 ["Min"]
      166 GETTABLEKS                       R17 R18 K5 ["X"]
      168 MOVE                             R18 R9
      169 CALL                             R16 2 1
      170 SETTABLEKS                       R16 R15 K21 ["Position"]
      172 DUPTABLE                         R16 K22 [{"Position"}]
      173 GETIMPORT                        R17 K25 [Vector2.new]
      175 GETUPVAL                         R21 1
      176 GETTABLEKS                       R20 R21 K1 ["Extents"]
      178 GETTABLEKS                       R19 R20 K10 ["Max"]
      180 GETTABLEKS                       R18 R19 K5 ["X"]
      182 MOVE                             R19 R9
      183 CALL                             R17 2 1
      184 SETTABLEKS                       R17 R16 K21 ["Position"]
      186 SETLIST                          R14 R15 2 [1]
      188 SETTABLEKS                       R14 R13 K18 ["Points"]
      190 JUMPIFNOTEQKN                    R9 K26 [0] ; [+5]
      192 GETUPVAL                         R15 1
      193 GETTABLEKS                       R14 R15 K27 ["AxisColor"]
      195 JUMP                             ; [+3]
      196 GETUPVAL                         R15 1
      197 GETTABLEKS                       R14 R15 K28 ["GridColor"]
      199 SETTABLEKS                       R14 R13 K19 ["Color3"]
      201 CALL                             R11 2 1
      202 SETTABLE                         R11 R0 R10
      203 FORNLOOP                         R7
      204 GETUPVAL                         R8 2
      205 GETTABLEKS                       R7 R8 K16 ["createElement"]
      207 GETUPVAL                         R9 3
      208 GETTABLEKS                       R8 R9 K17 ["Curve"]
      210 DUPTABLE                         R9 K20 [{"Points", "Color3"}]
      211 NEWTABLE                         R10 0 5
      213 DUPTABLE                         R11 K22 [{"Position"}]
      214 GETIMPORT                        R12 K25 [Vector2.new]
      216 GETUPVAL                         R16 1
      217 GETTABLEKS                       R15 R16 K1 ["Extents"]
      219 GETTABLEKS                       R14 R15 K4 ["Min"]
      221 GETTABLEKS                       R13 R14 K5 ["X"]
      223 GETUPVAL                         R17 1
      224 GETTABLEKS                       R16 R17 K1 ["Extents"]
      226 GETTABLEKS                       R15 R16 K4 ["Min"]
      228 GETTABLEKS                       R14 R15 K9 ["Y"]
      230 CALL                             R12 2 1
      231 SETTABLEKS                       R12 R11 K21 ["Position"]
      233 DUPTABLE                         R12 K22 [{"Position"}]
      234 GETIMPORT                        R13 K25 [Vector2.new]
      236 GETUPVAL                         R17 1
      237 GETTABLEKS                       R16 R17 K1 ["Extents"]
      239 GETTABLEKS                       R15 R16 K10 ["Max"]
      241 GETTABLEKS                       R14 R15 K5 ["X"]
      243 GETUPVAL                         R18 1
      244 GETTABLEKS                       R17 R18 K1 ["Extents"]
      246 GETTABLEKS                       R16 R17 K4 ["Min"]
      248 GETTABLEKS                       R15 R16 K9 ["Y"]
      250 CALL                             R13 2 1
      251 SETTABLEKS                       R13 R12 K21 ["Position"]
      253 DUPTABLE                         R13 K22 [{"Position"}]
      254 GETIMPORT                        R14 K25 [Vector2.new]
      256 GETUPVAL                         R18 1
      257 GETTABLEKS                       R17 R18 K1 ["Extents"]
      259 GETTABLEKS                       R16 R17 K10 ["Max"]
      261 GETTABLEKS                       R15 R16 K5 ["X"]
      263 GETUPVAL                         R19 1
      264 GETTABLEKS                       R18 R19 K1 ["Extents"]
      266 GETTABLEKS                       R17 R18 K10 ["Max"]
      268 GETTABLEKS                       R16 R17 K9 ["Y"]
      270 CALL                             R14 2 1
      271 SETTABLEKS                       R14 R13 K21 ["Position"]
      273 DUPTABLE                         R14 K22 [{"Position"}]
      274 GETIMPORT                        R15 K25 [Vector2.new]
      276 GETUPVAL                         R19 1
      277 GETTABLEKS                       R18 R19 K1 ["Extents"]
      279 GETTABLEKS                       R17 R18 K4 ["Min"]
      281 GETTABLEKS                       R16 R17 K5 ["X"]
      283 GETUPVAL                         R20 1
      284 GETTABLEKS                       R19 R20 K1 ["Extents"]
      286 GETTABLEKS                       R18 R19 K10 ["Max"]
      288 GETTABLEKS                       R17 R18 K9 ["Y"]
      290 CALL                             R15 2 1
      291 SETTABLEKS                       R15 R14 K21 ["Position"]
      293 DUPTABLE                         R15 K22 [{"Position"}]
      294 GETIMPORT                        R16 K25 [Vector2.new]
      296 GETUPVAL                         R20 1
      297 GETTABLEKS                       R19 R20 K1 ["Extents"]
      299 GETTABLEKS                       R18 R19 K4 ["Min"]
      301 GETTABLEKS                       R17 R18 K5 ["X"]
      303 GETUPVAL                         R21 1
      304 GETTABLEKS                       R20 R21 K1 ["Extents"]
      306 GETTABLEKS                       R19 R20 K4 ["Min"]
      308 GETTABLEKS                       R18 R19 K9 ["Y"]
      310 CALL                             R16 2 1
      311 SETTABLEKS                       R16 R15 K21 ["Position"]
      313 SETLIST                          R10 R11 5 [1]
      315 SETTABLEKS                       R10 R9 K18 ["Points"]
      317 GETUPVAL                         R11 1
      318 GETTABLEKS                       R10 R11 K28 ["GridColor"]
      320 SETTABLEKS                       R10 R9 K19 ["Color3"]
      322 CALL                             R7 2 1
      323 SETTABLEKS                       R7 R0 K30 ["extents"]
      325 GETUPVAL                         R8 2
      326 GETTABLEKS                       R7 R8 K16 ["createElement"]
      328 GETUPVAL                         R9 2
      329 GETTABLEKS                       R8 R9 K31 ["Fragment"]
      331 NEWTABLE                         R9 0 0
      333 MOVE                             R10 R0
      334 CALL                             R7 3 -1
      335 RETURN                           R7 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R3 0 3
       10 GETTABLEKS                       R4 R0 K1 ["Extents"]
       12 GETTABLEKS                       R5 R0 K2 ["GridColor"]
       14 GETTABLEKS                       R6 R0 K3 ["AxisColor"]
       16 SETLIST                          R3 R4 3 [1]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K4 ["createElement"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K5 ["Fragment"]
       25 NEWTABLE                         R4 0 0
       27 DUPTABLE                         R5 K7 [{"Axes"}]
       28 SETTABLEKS                       R1 R5 K6 ["Axes"]
       30 CALL                             R2 3 -1
       31 RETURN                           R2 -1

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
