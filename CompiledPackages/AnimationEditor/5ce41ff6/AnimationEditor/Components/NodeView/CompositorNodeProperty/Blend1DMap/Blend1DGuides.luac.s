PROTO_0:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["getStepFromSpread"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["Extents"]
        8 GETTABLEKS                       R2 R3 K2 ["Width"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R7 R8 K1 ["Extents"]
       14 GETTABLEKS                       R6 R7 K3 ["Min"]
       16 GETTABLEKS                       R5 R6 K4 ["X"]
       18 DIV                              R4 R5 R1
       19 FASTCALL1                        MATH_CEIL R4 ; [+2]
       20 GETIMPORT                        R3 K7 [math.ceil]
       22 CALL                             R3 1 1
       23 MUL                              R2 R3 R1
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R8 R9 K1 ["Extents"]
       27 GETTABLEKS                       R7 R8 K8 ["Max"]
       29 GETTABLEKS                       R6 R7 K4 ["X"]
       31 DIV                              R5 R6 R1
       32 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       33 GETIMPORT                        R4 K10 [math.floor]
       35 CALL                             R4 1 1
       36 MUL                              R3 R4 R1
       37 MOVE                             R6 R2
       38 MOVE                             R4 R3
       39 MOVE                             R5 R1
       40 FORNPREP                         R4
       41 LOADK                            R8 K11 ["tick-"]
       42 FASTCALL1                        TOSTRING R6 ; [+3]
       43 MOVE                             R10 R6
       44 GETIMPORT                        R9 K13 [tostring]
       46 CALL                             R9 1 1
       47 CONCAT                           R7 R8 R9
       48 GETUPVAL                         R9 2
       49 GETTABLEKS                       R8 R9 K14 ["createElement"]
       51 GETUPVAL                         R10 3
       52 GETTABLEKS                       R9 R10 K15 ["Curve"]
       54 DUPTABLE                         R10 K18 [{"Points", "Color3"}]
       55 NEWTABLE                         R11 0 2
       57 DUPTABLE                         R12 K20 [{"Position"}]
       58 GETIMPORT                        R13 K23 [Vector2.new]
       60 MOVE                             R14 R6
       61 LOADK                            R15 K24 [-0.25]
       62 CALL                             R13 2 1
       63 SETTABLEKS                       R13 R12 K19 ["Position"]
       65 DUPTABLE                         R13 K20 [{"Position"}]
       66 GETIMPORT                        R14 K23 [Vector2.new]
       68 MOVE                             R15 R6
       69 LOADK                            R16 K25 [0.25]
       70 CALL                             R14 2 1
       71 SETTABLEKS                       R14 R13 K19 ["Position"]
       73 SETLIST                          R11 R12 2 [1]
       75 SETTABLEKS                       R11 R10 K16 ["Points"]
       77 JUMPIFNOTEQKN                    R1 K26 [0] ; [+5]
       79 GETUPVAL                         R12 1
       80 GETTABLEKS                       R11 R12 K27 ["AxisColor"]
       82 JUMP                             ; [+3]
       83 GETUPVAL                         R12 1
       84 GETTABLEKS                       R11 R12 K28 ["GridColor"]
       86 SETTABLEKS                       R11 R10 K17 ["Color3"]
       88 CALL                             R8 2 1
       89 SETTABLE                         R8 R0 R7
       90 FORNLOOP                         R4
       91 GETUPVAL                         R7 1
       92 GETTABLEKS                       R6 R7 K1 ["Extents"]
       94 GETTABLEKS                       R5 R6 K3 ["Min"]
       96 GETTABLEKS                       R4 R5 K4 ["X"]
       98 JUMPIFNOTLT                      R4 R2 ; [+62]
      100 LOADK                            R5 K11 ["tick-"]
      101 GETUPVAL                         R10 1
      102 GETTABLEKS                       R9 R10 K1 ["Extents"]
      104 GETTABLEKS                       R8 R9 K3 ["Min"]
      106 GETTABLEKS                       R7 R8 K4 ["X"]
      108 FASTCALL1                        TOSTRING R7 ; [+2]
      109 GETIMPORT                        R6 K13 [tostring]
      111 CALL                             R6 1 1
      112 CONCAT                           R4 R5 R6
      113 GETUPVAL                         R6 2
      114 GETTABLEKS                       R5 R6 K14 ["createElement"]
      116 GETUPVAL                         R7 3
      117 GETTABLEKS                       R6 R7 K15 ["Curve"]
      119 DUPTABLE                         R7 K18 [{"Points", "Color3"}]
      120 NEWTABLE                         R8 0 2
      122 DUPTABLE                         R9 K20 [{"Position"}]
      123 GETIMPORT                        R10 K23 [Vector2.new]
      125 GETUPVAL                         R14 1
      126 GETTABLEKS                       R13 R14 K1 ["Extents"]
      128 GETTABLEKS                       R12 R13 K3 ["Min"]
      130 GETTABLEKS                       R11 R12 K4 ["X"]
      132 LOADK                            R12 K24 [-0.25]
      133 CALL                             R10 2 1
      134 SETTABLEKS                       R10 R9 K19 ["Position"]
      136 DUPTABLE                         R10 K20 [{"Position"}]
      137 GETIMPORT                        R11 K23 [Vector2.new]
      139 GETUPVAL                         R15 1
      140 GETTABLEKS                       R14 R15 K1 ["Extents"]
      142 GETTABLEKS                       R13 R14 K3 ["Min"]
      144 GETTABLEKS                       R12 R13 K4 ["X"]
      146 LOADK                            R13 K25 [0.25]
      147 CALL                             R11 2 1
      148 SETTABLEKS                       R11 R10 K19 ["Position"]
      150 SETLIST                          R8 R9 2 [1]
      152 SETTABLEKS                       R8 R7 K16 ["Points"]
      154 GETUPVAL                         R9 1
      155 GETTABLEKS                       R8 R9 K28 ["GridColor"]
      157 SETTABLEKS                       R8 R7 K17 ["Color3"]
      159 CALL                             R5 2 1
      160 SETTABLE                         R5 R0 R4
      161 GETUPVAL                         R7 1
      162 GETTABLEKS                       R6 R7 K1 ["Extents"]
      164 GETTABLEKS                       R5 R6 K8 ["Max"]
      166 GETTABLEKS                       R4 R5 K4 ["X"]
      168 JUMPIFNOTLT                      R3 R4 ; [+62]
      170 LOADK                            R5 K11 ["tick-"]
      171 GETUPVAL                         R10 1
      172 GETTABLEKS                       R9 R10 K1 ["Extents"]
      174 GETTABLEKS                       R8 R9 K8 ["Max"]
      176 GETTABLEKS                       R7 R8 K4 ["X"]
      178 FASTCALL1                        TOSTRING R7 ; [+2]
      179 GETIMPORT                        R6 K13 [tostring]
      181 CALL                             R6 1 1
      182 CONCAT                           R4 R5 R6
      183 GETUPVAL                         R6 2
      184 GETTABLEKS                       R5 R6 K14 ["createElement"]
      186 GETUPVAL                         R7 3
      187 GETTABLEKS                       R6 R7 K15 ["Curve"]
      189 DUPTABLE                         R7 K18 [{"Points", "Color3"}]
      190 NEWTABLE                         R8 0 2
      192 DUPTABLE                         R9 K20 [{"Position"}]
      193 GETIMPORT                        R10 K23 [Vector2.new]
      195 GETUPVAL                         R14 1
      196 GETTABLEKS                       R13 R14 K1 ["Extents"]
      198 GETTABLEKS                       R12 R13 K8 ["Max"]
      200 GETTABLEKS                       R11 R12 K4 ["X"]
      202 LOADK                            R12 K24 [-0.25]
      203 CALL                             R10 2 1
      204 SETTABLEKS                       R10 R9 K19 ["Position"]
      206 DUPTABLE                         R10 K20 [{"Position"}]
      207 GETIMPORT                        R11 K23 [Vector2.new]
      209 GETUPVAL                         R15 1
      210 GETTABLEKS                       R14 R15 K1 ["Extents"]
      212 GETTABLEKS                       R13 R14 K8 ["Max"]
      214 GETTABLEKS                       R12 R13 K4 ["X"]
      216 LOADK                            R13 K25 [0.25]
      217 CALL                             R11 2 1
      218 SETTABLEKS                       R11 R10 K19 ["Position"]
      220 SETLIST                          R8 R9 2 [1]
      222 SETTABLEKS                       R8 R7 K16 ["Points"]
      224 GETUPVAL                         R9 1
      225 GETTABLEKS                       R8 R9 K28 ["GridColor"]
      227 SETTABLEKS                       R8 R7 K17 ["Color3"]
      229 CALL                             R5 2 1
      230 SETTABLE                         R5 R0 R4
      231 GETUPVAL                         R5 2
      232 GETTABLEKS                       R4 R5 K14 ["createElement"]
      234 GETUPVAL                         R6 3
      235 GETTABLEKS                       R5 R6 K15 ["Curve"]
      237 DUPTABLE                         R6 K18 [{"Points", "Color3"}]
      238 NEWTABLE                         R7 0 2
      240 DUPTABLE                         R8 K20 [{"Position"}]
      241 GETIMPORT                        R9 K23 [Vector2.new]
      243 GETUPVAL                         R13 1
      244 GETTABLEKS                       R12 R13 K1 ["Extents"]
      246 GETTABLEKS                       R11 R12 K3 ["Min"]
      248 GETTABLEKS                       R10 R11 K4 ["X"]
      250 LOADN                            R11 0
      251 CALL                             R9 2 1
      252 SETTABLEKS                       R9 R8 K19 ["Position"]
      254 DUPTABLE                         R9 K20 [{"Position"}]
      255 GETIMPORT                        R10 K23 [Vector2.new]
      257 GETUPVAL                         R14 1
      258 GETTABLEKS                       R13 R14 K1 ["Extents"]
      260 GETTABLEKS                       R12 R13 K8 ["Max"]
      262 GETTABLEKS                       R11 R12 K4 ["X"]
      264 LOADN                            R12 0
      265 CALL                             R10 2 1
      266 SETTABLEKS                       R10 R9 K19 ["Position"]
      268 SETLIST                          R7 R8 2 [1]
      270 SETTABLEKS                       R7 R6 K16 ["Points"]
      272 GETUPVAL                         R8 1
      273 GETTABLEKS                       R7 R8 K27 ["AxisColor"]
      275 SETTABLEKS                       R7 R6 K17 ["Color3"]
      277 CALL                             R4 2 1
      278 SETTABLEKS                       R4 R0 K29 ["axis"]
      280 GETUPVAL                         R5 2
      281 GETTABLEKS                       R4 R5 K14 ["createElement"]
      283 GETUPVAL                         R6 2
      284 GETTABLEKS                       R5 R6 K30 ["Fragment"]
      286 NEWTABLE                         R6 0 0
      288 MOVE                             R7 R0
      289 CALL                             R4 3 -1
      290 RETURN                           R4 -1

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
       12 GETTABLEKS                       R5 R0 K2 ["AxisColor"]
       14 GETTABLEKS                       R6 R0 K3 ["GridColor"]
       16 SETLIST                          R3 R4 3 [1]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K4 ["createElement"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K5 ["Fragment"]
       25 NEWTABLE                         R4 0 0
       27 DUPTABLE                         R5 K7 [{"Axis"}]
       28 SETTABLEKS                       R1 R5 K6 ["Axis"]
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
