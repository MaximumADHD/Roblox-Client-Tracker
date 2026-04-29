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
       54 DUPTABLE                         R10 K20 [{"Points", "Color3", "Thickness", "ZIndex"}]
       55 NEWTABLE                         R11 0 2
       57 DUPTABLE                         R12 K22 [{"Position"}]
       58 GETIMPORT                        R13 K25 [Vector2.new]
       60 MOVE                             R14 R6
       61 LOADK                            R15 K26 [-0.25]
       62 CALL                             R13 2 1
       63 SETTABLEKS                       R13 R12 K21 ["Position"]
       65 DUPTABLE                         R13 K22 [{"Position"}]
       66 GETIMPORT                        R14 K25 [Vector2.new]
       68 MOVE                             R15 R6
       69 LOADK                            R16 K27 [0.25]
       70 CALL                             R14 2 1
       71 SETTABLEKS                       R14 R13 K21 ["Position"]
       73 SETLIST                          R11 R12 2 [1]
       75 SETTABLEKS                       R11 R10 K16 ["Points"]
       77 JUMPIFNOTEQKN                    R6 K28 [0] ; [+5]
       79 GETUPVAL                         R12 1
       80 GETTABLEKS                       R11 R12 K29 ["AxisColor"]
       82 JUMP                             ; [+3]
       83 GETUPVAL                         R12 1
       84 GETTABLEKS                       R11 R12 K30 ["GridColor"]
       86 SETTABLEKS                       R11 R10 K17 ["Color3"]
       88 GETUPVAL                         R12 1
       89 GETTABLEKS                       R11 R12 K18 ["Thickness"]
       91 SETTABLEKS                       R11 R10 K18 ["Thickness"]
       93 LOADN                            R11 1
       94 SETTABLEKS                       R11 R10 K19 ["ZIndex"]
       96 CALL                             R8 2 1
       97 SETTABLE                         R8 R0 R7
       98 FORNLOOP                         R4
       99 GETUPVAL                         R7 1
      100 GETTABLEKS                       R6 R7 K1 ["Extents"]
      102 GETTABLEKS                       R5 R6 K3 ["Min"]
      104 GETTABLEKS                       R4 R5 K4 ["X"]
      106 JUMPIFNOTLT                      R4 R2 ; [+70]
      108 LOADK                            R5 K11 ["tick-"]
      109 GETUPVAL                         R10 1
      110 GETTABLEKS                       R9 R10 K1 ["Extents"]
      112 GETTABLEKS                       R8 R9 K3 ["Min"]
      114 GETTABLEKS                       R7 R8 K4 ["X"]
      116 FASTCALL1                        TOSTRING R7 ; [+2]
      117 GETIMPORT                        R6 K13 [tostring]
      119 CALL                             R6 1 1
      120 CONCAT                           R4 R5 R6
      121 GETUPVAL                         R6 2
      122 GETTABLEKS                       R5 R6 K14 ["createElement"]
      124 GETUPVAL                         R7 3
      125 GETTABLEKS                       R6 R7 K15 ["Curve"]
      127 DUPTABLE                         R7 K20 [{"Points", "Color3", "Thickness", "ZIndex"}]
      128 NEWTABLE                         R8 0 2
      130 DUPTABLE                         R9 K22 [{"Position"}]
      131 GETIMPORT                        R10 K25 [Vector2.new]
      133 GETUPVAL                         R14 1
      134 GETTABLEKS                       R13 R14 K1 ["Extents"]
      136 GETTABLEKS                       R12 R13 K3 ["Min"]
      138 GETTABLEKS                       R11 R12 K4 ["X"]
      140 LOADK                            R12 K26 [-0.25]
      141 CALL                             R10 2 1
      142 SETTABLEKS                       R10 R9 K21 ["Position"]
      144 DUPTABLE                         R10 K22 [{"Position"}]
      145 GETIMPORT                        R11 K25 [Vector2.new]
      147 GETUPVAL                         R15 1
      148 GETTABLEKS                       R14 R15 K1 ["Extents"]
      150 GETTABLEKS                       R13 R14 K3 ["Min"]
      152 GETTABLEKS                       R12 R13 K4 ["X"]
      154 LOADK                            R13 K27 [0.25]
      155 CALL                             R11 2 1
      156 SETTABLEKS                       R11 R10 K21 ["Position"]
      158 SETLIST                          R8 R9 2 [1]
      160 SETTABLEKS                       R8 R7 K16 ["Points"]
      162 GETUPVAL                         R9 1
      163 GETTABLEKS                       R8 R9 K30 ["GridColor"]
      165 SETTABLEKS                       R8 R7 K17 ["Color3"]
      167 GETUPVAL                         R9 1
      168 GETTABLEKS                       R8 R9 K18 ["Thickness"]
      170 SETTABLEKS                       R8 R7 K18 ["Thickness"]
      172 LOADN                            R8 1
      173 SETTABLEKS                       R8 R7 K19 ["ZIndex"]
      175 CALL                             R5 2 1
      176 SETTABLE                         R5 R0 R4
      177 GETUPVAL                         R7 1
      178 GETTABLEKS                       R6 R7 K1 ["Extents"]
      180 GETTABLEKS                       R5 R6 K8 ["Max"]
      182 GETTABLEKS                       R4 R5 K4 ["X"]
      184 JUMPIFNOTLT                      R3 R4 ; [+70]
      186 LOADK                            R5 K11 ["tick-"]
      187 GETUPVAL                         R10 1
      188 GETTABLEKS                       R9 R10 K1 ["Extents"]
      190 GETTABLEKS                       R8 R9 K8 ["Max"]
      192 GETTABLEKS                       R7 R8 K4 ["X"]
      194 FASTCALL1                        TOSTRING R7 ; [+2]
      195 GETIMPORT                        R6 K13 [tostring]
      197 CALL                             R6 1 1
      198 CONCAT                           R4 R5 R6
      199 GETUPVAL                         R6 2
      200 GETTABLEKS                       R5 R6 K14 ["createElement"]
      202 GETUPVAL                         R7 3
      203 GETTABLEKS                       R6 R7 K15 ["Curve"]
      205 DUPTABLE                         R7 K20 [{"Points", "Color3", "Thickness", "ZIndex"}]
      206 NEWTABLE                         R8 0 2
      208 DUPTABLE                         R9 K22 [{"Position"}]
      209 GETIMPORT                        R10 K25 [Vector2.new]
      211 GETUPVAL                         R14 1
      212 GETTABLEKS                       R13 R14 K1 ["Extents"]
      214 GETTABLEKS                       R12 R13 K8 ["Max"]
      216 GETTABLEKS                       R11 R12 K4 ["X"]
      218 LOADK                            R12 K26 [-0.25]
      219 CALL                             R10 2 1
      220 SETTABLEKS                       R10 R9 K21 ["Position"]
      222 DUPTABLE                         R10 K22 [{"Position"}]
      223 GETIMPORT                        R11 K25 [Vector2.new]
      225 GETUPVAL                         R15 1
      226 GETTABLEKS                       R14 R15 K1 ["Extents"]
      228 GETTABLEKS                       R13 R14 K8 ["Max"]
      230 GETTABLEKS                       R12 R13 K4 ["X"]
      232 LOADK                            R13 K27 [0.25]
      233 CALL                             R11 2 1
      234 SETTABLEKS                       R11 R10 K21 ["Position"]
      236 SETLIST                          R8 R9 2 [1]
      238 SETTABLEKS                       R8 R7 K16 ["Points"]
      240 GETUPVAL                         R9 1
      241 GETTABLEKS                       R8 R9 K30 ["GridColor"]
      243 SETTABLEKS                       R8 R7 K17 ["Color3"]
      245 GETUPVAL                         R9 1
      246 GETTABLEKS                       R8 R9 K18 ["Thickness"]
      248 SETTABLEKS                       R8 R7 K18 ["Thickness"]
      250 LOADN                            R8 1
      251 SETTABLEKS                       R8 R7 K19 ["ZIndex"]
      253 CALL                             R5 2 1
      254 SETTABLE                         R5 R0 R4
      255 GETUPVAL                         R5 2
      256 GETTABLEKS                       R4 R5 K14 ["createElement"]
      258 GETUPVAL                         R6 3
      259 GETTABLEKS                       R5 R6 K15 ["Curve"]
      261 DUPTABLE                         R6 K20 [{"Points", "Color3", "Thickness", "ZIndex"}]
      262 NEWTABLE                         R7 0 2
      264 DUPTABLE                         R8 K22 [{"Position"}]
      265 GETIMPORT                        R9 K25 [Vector2.new]
      267 GETUPVAL                         R13 1
      268 GETTABLEKS                       R12 R13 K1 ["Extents"]
      270 GETTABLEKS                       R11 R12 K3 ["Min"]
      272 GETTABLEKS                       R10 R11 K4 ["X"]
      274 LOADN                            R11 0
      275 CALL                             R9 2 1
      276 SETTABLEKS                       R9 R8 K21 ["Position"]
      278 DUPTABLE                         R9 K22 [{"Position"}]
      279 GETIMPORT                        R10 K25 [Vector2.new]
      281 GETUPVAL                         R14 1
      282 GETTABLEKS                       R13 R14 K1 ["Extents"]
      284 GETTABLEKS                       R12 R13 K8 ["Max"]
      286 GETTABLEKS                       R11 R12 K4 ["X"]
      288 LOADN                            R12 0
      289 CALL                             R10 2 1
      290 SETTABLEKS                       R10 R9 K21 ["Position"]
      292 SETLIST                          R7 R8 2 [1]
      294 SETTABLEKS                       R7 R6 K16 ["Points"]
      296 GETUPVAL                         R8 1
      297 GETTABLEKS                       R7 R8 K29 ["AxisColor"]
      299 SETTABLEKS                       R7 R6 K17 ["Color3"]
      301 GETUPVAL                         R8 1
      302 GETTABLEKS                       R7 R8 K18 ["Thickness"]
      304 SETTABLEKS                       R7 R6 K18 ["Thickness"]
      306 LOADN                            R7 2
      307 SETTABLEKS                       R7 R6 K19 ["ZIndex"]
      309 CALL                             R4 2 1
      310 SETTABLEKS                       R4 R0 K31 ["axis"]
      312 GETUPVAL                         R5 2
      313 GETTABLEKS                       R4 R5 K14 ["createElement"]
      315 GETUPVAL                         R6 2
      316 GETTABLEKS                       R5 R6 K32 ["Fragment"]
      318 NEWTABLE                         R6 0 0
      320 MOVE                             R7 R0
      321 CALL                             R4 3 -1
      322 RETURN                           R4 -1

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
       12 GETTABLEKS                       R5 R0 K2 ["AxisColor"]
       14 GETTABLEKS                       R6 R0 K3 ["GridColor"]
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
