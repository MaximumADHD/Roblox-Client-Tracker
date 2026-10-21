PROTO_0:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getStepFromSpread"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["Extents"]
        8 GETTABLEKS                       R2 R2 K2 ["Width"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K1 ["Extents"]
       14 GETTABLEKS                       R5 R5 K3 ["Min"]
       16 GETTABLEKS                       R5 R5 K4 ["X"]
       18 DIV                              R4 R5 R1
       19 FASTCALL1                        MATH_CEIL R4 ; [+2]
       20 GETIMPORT                        R3 K7 [math.ceil]
       22 CALL                             R3 1 1
       23 MUL                              R2 R3 R1
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K1 ["Extents"]
       27 GETTABLEKS                       R6 R6 K8 ["Max"]
       29 GETTABLEKS                       R6 R6 K4 ["X"]
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
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R8 R8 K14 ["createElement"]
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R9 R9 K15 ["Curve"]
       54 DUPTABLE                         R10 K22 [{["Points"], ["Color3"], ["Thickness"], ["ObserveThickness"], ["ZIndex"] = 1}]
       55 NEWTABLE                         R11 0 2
       57 DUPTABLE                         R12 K24 [{"Position"}]
       58 GETIMPORT                        R13 K27 [Vector2.new]
       60 MOVE                             R14 R6
       61 LOADK                            R15 K28 [-0.25]
       62 CALL                             R13 2 1
       63 SETTABLEKS                       R13 R12 K23 ["Position"]
       65 DUPTABLE                         R13 K24 [{"Position"}]
       66 GETIMPORT                        R14 K27 [Vector2.new]
       68 MOVE                             R15 R6
       69 LOADK                            R16 K29 [0.25]
       70 CALL                             R14 2 1
       71 SETTABLEKS                       R14 R13 K23 ["Position"]
       73 SETLIST                          R11 R12 2 [1]
       75 SETTABLEKS                       R11 R10 K16 ["Points"]
       77 JUMPIFNOTEQKN                    R6 K30 [0] ; [+5]
       79 GETUPVAL                         R11 1
       80 GETTABLEKS                       R11 R11 K31 ["AxisColor"]
       82 JUMP                             ; [+3]
       83 GETUPVAL                         R11 1
       84 GETTABLEKS                       R11 R11 K32 ["GridColor"]
       86 SETTABLEKS                       R11 R10 K17 ["Color3"]
       88 GETUPVAL                         R11 1
       89 GETTABLEKS                       R11 R11 K18 ["Thickness"]
       91 SETTABLEKS                       R11 R10 K18 ["Thickness"]
       93 GETUPVAL                         R11 1
       94 GETTABLEKS                       R11 R11 K19 ["ObserveThickness"]
       96 SETTABLEKS                       R11 R10 K19 ["ObserveThickness"]
       98 CALL                             R8 2 1
       99 SETTABLE                         R8 R0 R7
      100 FORNLOOP                         R4
      101 GETUPVAL                         R4 1
      102 GETTABLEKS                       R4 R4 K1 ["Extents"]
      104 GETTABLEKS                       R4 R4 K3 ["Min"]
      106 GETTABLEKS                       R4 R4 K4 ["X"]
      108 JUMPIFNOTLT                      R4 R2 ; [+72]
      110 LOADK                            R5 K11 ["tick-"]
      111 GETUPVAL                         R7 1
      112 GETTABLEKS                       R7 R7 K1 ["Extents"]
      114 GETTABLEKS                       R7 R7 K3 ["Min"]
      116 GETTABLEKS                       R7 R7 K4 ["X"]
      118 FASTCALL1                        TOSTRING R7 ; [+2]
      119 GETIMPORT                        R6 K13 [tostring]
      121 CALL                             R6 1 1
      122 CONCAT                           R4 R5 R6
      123 GETUPVAL                         R5 2
      124 GETTABLEKS                       R5 R5 K14 ["createElement"]
      126 GETUPVAL                         R6 3
      127 GETTABLEKS                       R6 R6 K15 ["Curve"]
      129 DUPTABLE                         R7 K22 [{["Points"], ["Color3"], ["Thickness"], ["ObserveThickness"], ["ZIndex"] = 1}]
      130 NEWTABLE                         R8 0 2
      132 DUPTABLE                         R9 K24 [{"Position"}]
      133 GETIMPORT                        R10 K27 [Vector2.new]
      135 GETUPVAL                         R11 1
      136 GETTABLEKS                       R11 R11 K1 ["Extents"]
      138 GETTABLEKS                       R11 R11 K3 ["Min"]
      140 GETTABLEKS                       R11 R11 K4 ["X"]
      142 LOADK                            R12 K28 [-0.25]
      143 CALL                             R10 2 1
      144 SETTABLEKS                       R10 R9 K23 ["Position"]
      146 DUPTABLE                         R10 K24 [{"Position"}]
      147 GETIMPORT                        R11 K27 [Vector2.new]
      149 GETUPVAL                         R12 1
      150 GETTABLEKS                       R12 R12 K1 ["Extents"]
      152 GETTABLEKS                       R12 R12 K3 ["Min"]
      154 GETTABLEKS                       R12 R12 K4 ["X"]
      156 LOADK                            R13 K29 [0.25]
      157 CALL                             R11 2 1
      158 SETTABLEKS                       R11 R10 K23 ["Position"]
      160 SETLIST                          R8 R9 2 [1]
      162 SETTABLEKS                       R8 R7 K16 ["Points"]
      164 GETUPVAL                         R8 1
      165 GETTABLEKS                       R8 R8 K32 ["GridColor"]
      167 SETTABLEKS                       R8 R7 K17 ["Color3"]
      169 GETUPVAL                         R8 1
      170 GETTABLEKS                       R8 R8 K18 ["Thickness"]
      172 SETTABLEKS                       R8 R7 K18 ["Thickness"]
      174 GETUPVAL                         R8 1
      175 GETTABLEKS                       R8 R8 K19 ["ObserveThickness"]
      177 SETTABLEKS                       R8 R7 K19 ["ObserveThickness"]
      179 CALL                             R5 2 1
      180 SETTABLE                         R5 R0 R4
      181 GETUPVAL                         R4 1
      182 GETTABLEKS                       R4 R4 K1 ["Extents"]
      184 GETTABLEKS                       R4 R4 K8 ["Max"]
      186 GETTABLEKS                       R4 R4 K4 ["X"]
      188 JUMPIFNOTLT                      R3 R4 ; [+72]
      190 LOADK                            R5 K11 ["tick-"]
      191 GETUPVAL                         R7 1
      192 GETTABLEKS                       R7 R7 K1 ["Extents"]
      194 GETTABLEKS                       R7 R7 K8 ["Max"]
      196 GETTABLEKS                       R7 R7 K4 ["X"]
      198 FASTCALL1                        TOSTRING R7 ; [+2]
      199 GETIMPORT                        R6 K13 [tostring]
      201 CALL                             R6 1 1
      202 CONCAT                           R4 R5 R6
      203 GETUPVAL                         R5 2
      204 GETTABLEKS                       R5 R5 K14 ["createElement"]
      206 GETUPVAL                         R6 3
      207 GETTABLEKS                       R6 R6 K15 ["Curve"]
      209 DUPTABLE                         R7 K22 [{["Points"], ["Color3"], ["Thickness"], ["ObserveThickness"], ["ZIndex"] = 1}]
      210 NEWTABLE                         R8 0 2
      212 DUPTABLE                         R9 K24 [{"Position"}]
      213 GETIMPORT                        R10 K27 [Vector2.new]
      215 GETUPVAL                         R11 1
      216 GETTABLEKS                       R11 R11 K1 ["Extents"]
      218 GETTABLEKS                       R11 R11 K8 ["Max"]
      220 GETTABLEKS                       R11 R11 K4 ["X"]
      222 LOADK                            R12 K28 [-0.25]
      223 CALL                             R10 2 1
      224 SETTABLEKS                       R10 R9 K23 ["Position"]
      226 DUPTABLE                         R10 K24 [{"Position"}]
      227 GETIMPORT                        R11 K27 [Vector2.new]
      229 GETUPVAL                         R12 1
      230 GETTABLEKS                       R12 R12 K1 ["Extents"]
      232 GETTABLEKS                       R12 R12 K8 ["Max"]
      234 GETTABLEKS                       R12 R12 K4 ["X"]
      236 LOADK                            R13 K29 [0.25]
      237 CALL                             R11 2 1
      238 SETTABLEKS                       R11 R10 K23 ["Position"]
      240 SETLIST                          R8 R9 2 [1]
      242 SETTABLEKS                       R8 R7 K16 ["Points"]
      244 GETUPVAL                         R8 1
      245 GETTABLEKS                       R8 R8 K32 ["GridColor"]
      247 SETTABLEKS                       R8 R7 K17 ["Color3"]
      249 GETUPVAL                         R8 1
      250 GETTABLEKS                       R8 R8 K18 ["Thickness"]
      252 SETTABLEKS                       R8 R7 K18 ["Thickness"]
      254 GETUPVAL                         R8 1
      255 GETTABLEKS                       R8 R8 K19 ["ObserveThickness"]
      257 SETTABLEKS                       R8 R7 K19 ["ObserveThickness"]
      259 CALL                             R5 2 1
      260 SETTABLE                         R5 R0 R4
      261 GETUPVAL                         R4 2
      262 GETTABLEKS                       R4 R4 K14 ["createElement"]
      264 GETUPVAL                         R5 3
      265 GETTABLEKS                       R5 R5 K15 ["Curve"]
      267 DUPTABLE                         R6 K34 [{["Points"], ["Color3"], ["Thickness"], ["ObserveThickness"], ["ZIndex"] = 2}]
      268 NEWTABLE                         R7 0 2
      270 DUPTABLE                         R8 K24 [{"Position"}]
      271 GETIMPORT                        R9 K27 [Vector2.new]
      273 GETUPVAL                         R10 1
      274 GETTABLEKS                       R10 R10 K1 ["Extents"]
      276 GETTABLEKS                       R10 R10 K3 ["Min"]
      278 GETTABLEKS                       R10 R10 K4 ["X"]
      280 LOADN                            R11 0
      281 CALL                             R9 2 1
      282 SETTABLEKS                       R9 R8 K23 ["Position"]
      284 DUPTABLE                         R9 K24 [{"Position"}]
      285 GETIMPORT                        R10 K27 [Vector2.new]
      287 GETUPVAL                         R11 1
      288 GETTABLEKS                       R11 R11 K1 ["Extents"]
      290 GETTABLEKS                       R11 R11 K8 ["Max"]
      292 GETTABLEKS                       R11 R11 K4 ["X"]
      294 LOADN                            R12 0
      295 CALL                             R10 2 1
      296 SETTABLEKS                       R10 R9 K23 ["Position"]
      298 SETLIST                          R7 R8 2 [1]
      300 SETTABLEKS                       R7 R6 K16 ["Points"]
      302 GETUPVAL                         R7 1
      303 GETTABLEKS                       R7 R7 K31 ["AxisColor"]
      305 SETTABLEKS                       R7 R6 K17 ["Color3"]
      307 GETUPVAL                         R7 1
      308 GETTABLEKS                       R7 R7 K18 ["Thickness"]
      310 SETTABLEKS                       R7 R6 K18 ["Thickness"]
      312 GETUPVAL                         R7 1
      313 GETTABLEKS                       R7 R7 K19 ["ObserveThickness"]
      315 SETTABLEKS                       R7 R6 K19 ["ObserveThickness"]
      317 CALL                             R4 2 1
      318 SETTABLEKS                       R4 R0 K35 ["axis"]
      320 GETUPVAL                         R4 2
      321 GETTABLEKS                       R4 R4 K14 ["createElement"]
      323 GETUPVAL                         R5 2
      324 GETTABLEKS                       R5 R5 K36 ["Fragment"]
      326 NEWTABLE                         R6 0 0
      328 MOVE                             R7 R0
      329 CALL                             R4 3 -1
      330 RETURN                           R4 -1

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
       12 GETTABLEKS                       R5 R0 K2 ["AxisColor"]
       14 GETTABLEKS                       R6 R0 K3 ["GridColor"]
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
