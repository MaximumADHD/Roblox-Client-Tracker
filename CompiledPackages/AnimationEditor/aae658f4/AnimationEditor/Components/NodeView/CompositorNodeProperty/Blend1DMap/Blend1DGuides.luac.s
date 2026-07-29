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
       54 DUPTABLE                         R10 K21 [{["Points"], ["Color3"], ["Thickness"], ["ZIndex"] = 1}]
       55 NEWTABLE                         R11 0 2
       57 DUPTABLE                         R12 K23 [{"Position"}]
       58 GETIMPORT                        R13 K26 [Vector2.new]
       60 MOVE                             R14 R6
       61 LOADK                            R15 K27 [-0.25]
       62 CALL                             R13 2 1
       63 SETTABLEKS                       R13 R12 K22 ["Position"]
       65 DUPTABLE                         R13 K23 [{"Position"}]
       66 GETIMPORT                        R14 K26 [Vector2.new]
       68 MOVE                             R15 R6
       69 LOADK                            R16 K28 [0.25]
       70 CALL                             R14 2 1
       71 SETTABLEKS                       R14 R13 K22 ["Position"]
       73 SETLIST                          R11 R12 2 [1]
       75 SETTABLEKS                       R11 R10 K16 ["Points"]
       77 JUMPIFNOTEQKN                    R6 K29 [0] ; [+5]
       79 GETUPVAL                         R11 1
       80 GETTABLEKS                       R11 R11 K30 ["AxisColor"]
       82 JUMP                             ; [+3]
       83 GETUPVAL                         R11 1
       84 GETTABLEKS                       R11 R11 K31 ["GridColor"]
       86 SETTABLEKS                       R11 R10 K17 ["Color3"]
       88 GETUPVAL                         R11 1
       89 GETTABLEKS                       R11 R11 K18 ["Thickness"]
       91 SETTABLEKS                       R11 R10 K18 ["Thickness"]
       93 CALL                             R8 2 1
       94 SETTABLE                         R8 R0 R7
       95 FORNLOOP                         R4
       96 GETUPVAL                         R4 1
       97 GETTABLEKS                       R4 R4 K1 ["Extents"]
       99 GETTABLEKS                       R4 R4 K3 ["Min"]
      101 GETTABLEKS                       R4 R4 K4 ["X"]
      103 JUMPIFNOTLT                      R4 R2 ; [+67]
      105 LOADK                            R5 K11 ["tick-"]
      106 GETUPVAL                         R7 1
      107 GETTABLEKS                       R7 R7 K1 ["Extents"]
      109 GETTABLEKS                       R7 R7 K3 ["Min"]
      111 GETTABLEKS                       R7 R7 K4 ["X"]
      113 FASTCALL1                        TOSTRING R7 ; [+2]
      114 GETIMPORT                        R6 K13 [tostring]
      116 CALL                             R6 1 1
      117 CONCAT                           R4 R5 R6
      118 GETUPVAL                         R5 2
      119 GETTABLEKS                       R5 R5 K14 ["createElement"]
      121 GETUPVAL                         R6 3
      122 GETTABLEKS                       R6 R6 K15 ["Curve"]
      124 DUPTABLE                         R7 K21 [{["Points"], ["Color3"], ["Thickness"], ["ZIndex"] = 1}]
      125 NEWTABLE                         R8 0 2
      127 DUPTABLE                         R9 K23 [{"Position"}]
      128 GETIMPORT                        R10 K26 [Vector2.new]
      130 GETUPVAL                         R11 1
      131 GETTABLEKS                       R11 R11 K1 ["Extents"]
      133 GETTABLEKS                       R11 R11 K3 ["Min"]
      135 GETTABLEKS                       R11 R11 K4 ["X"]
      137 LOADK                            R12 K27 [-0.25]
      138 CALL                             R10 2 1
      139 SETTABLEKS                       R10 R9 K22 ["Position"]
      141 DUPTABLE                         R10 K23 [{"Position"}]
      142 GETIMPORT                        R11 K26 [Vector2.new]
      144 GETUPVAL                         R12 1
      145 GETTABLEKS                       R12 R12 K1 ["Extents"]
      147 GETTABLEKS                       R12 R12 K3 ["Min"]
      149 GETTABLEKS                       R12 R12 K4 ["X"]
      151 LOADK                            R13 K28 [0.25]
      152 CALL                             R11 2 1
      153 SETTABLEKS                       R11 R10 K22 ["Position"]
      155 SETLIST                          R8 R9 2 [1]
      157 SETTABLEKS                       R8 R7 K16 ["Points"]
      159 GETUPVAL                         R8 1
      160 GETTABLEKS                       R8 R8 K31 ["GridColor"]
      162 SETTABLEKS                       R8 R7 K17 ["Color3"]
      164 GETUPVAL                         R8 1
      165 GETTABLEKS                       R8 R8 K18 ["Thickness"]
      167 SETTABLEKS                       R8 R7 K18 ["Thickness"]
      169 CALL                             R5 2 1
      170 SETTABLE                         R5 R0 R4
      171 GETUPVAL                         R4 1
      172 GETTABLEKS                       R4 R4 K1 ["Extents"]
      174 GETTABLEKS                       R4 R4 K8 ["Max"]
      176 GETTABLEKS                       R4 R4 K4 ["X"]
      178 JUMPIFNOTLT                      R3 R4 ; [+67]
      180 LOADK                            R5 K11 ["tick-"]
      181 GETUPVAL                         R7 1
      182 GETTABLEKS                       R7 R7 K1 ["Extents"]
      184 GETTABLEKS                       R7 R7 K8 ["Max"]
      186 GETTABLEKS                       R7 R7 K4 ["X"]
      188 FASTCALL1                        TOSTRING R7 ; [+2]
      189 GETIMPORT                        R6 K13 [tostring]
      191 CALL                             R6 1 1
      192 CONCAT                           R4 R5 R6
      193 GETUPVAL                         R5 2
      194 GETTABLEKS                       R5 R5 K14 ["createElement"]
      196 GETUPVAL                         R6 3
      197 GETTABLEKS                       R6 R6 K15 ["Curve"]
      199 DUPTABLE                         R7 K21 [{["Points"], ["Color3"], ["Thickness"], ["ZIndex"] = 1}]
      200 NEWTABLE                         R8 0 2
      202 DUPTABLE                         R9 K23 [{"Position"}]
      203 GETIMPORT                        R10 K26 [Vector2.new]
      205 GETUPVAL                         R11 1
      206 GETTABLEKS                       R11 R11 K1 ["Extents"]
      208 GETTABLEKS                       R11 R11 K8 ["Max"]
      210 GETTABLEKS                       R11 R11 K4 ["X"]
      212 LOADK                            R12 K27 [-0.25]
      213 CALL                             R10 2 1
      214 SETTABLEKS                       R10 R9 K22 ["Position"]
      216 DUPTABLE                         R10 K23 [{"Position"}]
      217 GETIMPORT                        R11 K26 [Vector2.new]
      219 GETUPVAL                         R12 1
      220 GETTABLEKS                       R12 R12 K1 ["Extents"]
      222 GETTABLEKS                       R12 R12 K8 ["Max"]
      224 GETTABLEKS                       R12 R12 K4 ["X"]
      226 LOADK                            R13 K28 [0.25]
      227 CALL                             R11 2 1
      228 SETTABLEKS                       R11 R10 K22 ["Position"]
      230 SETLIST                          R8 R9 2 [1]
      232 SETTABLEKS                       R8 R7 K16 ["Points"]
      234 GETUPVAL                         R8 1
      235 GETTABLEKS                       R8 R8 K31 ["GridColor"]
      237 SETTABLEKS                       R8 R7 K17 ["Color3"]
      239 GETUPVAL                         R8 1
      240 GETTABLEKS                       R8 R8 K18 ["Thickness"]
      242 SETTABLEKS                       R8 R7 K18 ["Thickness"]
      244 CALL                             R5 2 1
      245 SETTABLE                         R5 R0 R4
      246 GETUPVAL                         R4 2
      247 GETTABLEKS                       R4 R4 K14 ["createElement"]
      249 GETUPVAL                         R5 3
      250 GETTABLEKS                       R5 R5 K15 ["Curve"]
      252 DUPTABLE                         R6 K33 [{["Points"], ["Color3"], ["Thickness"], ["ZIndex"] = 2}]
      253 NEWTABLE                         R7 0 2
      255 DUPTABLE                         R8 K23 [{"Position"}]
      256 GETIMPORT                        R9 K26 [Vector2.new]
      258 GETUPVAL                         R10 1
      259 GETTABLEKS                       R10 R10 K1 ["Extents"]
      261 GETTABLEKS                       R10 R10 K3 ["Min"]
      263 GETTABLEKS                       R10 R10 K4 ["X"]
      265 LOADN                            R11 0
      266 CALL                             R9 2 1
      267 SETTABLEKS                       R9 R8 K22 ["Position"]
      269 DUPTABLE                         R9 K23 [{"Position"}]
      270 GETIMPORT                        R10 K26 [Vector2.new]
      272 GETUPVAL                         R11 1
      273 GETTABLEKS                       R11 R11 K1 ["Extents"]
      275 GETTABLEKS                       R11 R11 K8 ["Max"]
      277 GETTABLEKS                       R11 R11 K4 ["X"]
      279 LOADN                            R12 0
      280 CALL                             R10 2 1
      281 SETTABLEKS                       R10 R9 K22 ["Position"]
      283 SETLIST                          R7 R8 2 [1]
      285 SETTABLEKS                       R7 R6 K16 ["Points"]
      287 GETUPVAL                         R7 1
      288 GETTABLEKS                       R7 R7 K30 ["AxisColor"]
      290 SETTABLEKS                       R7 R6 K17 ["Color3"]
      292 GETUPVAL                         R7 1
      293 GETTABLEKS                       R7 R7 K18 ["Thickness"]
      295 SETTABLEKS                       R7 R6 K18 ["Thickness"]
      297 CALL                             R4 2 1
      298 SETTABLEKS                       R4 R0 K34 ["axis"]
      300 GETUPVAL                         R4 2
      301 GETTABLEKS                       R4 R4 K14 ["createElement"]
      303 GETUPVAL                         R5 2
      304 GETTABLEKS                       R5 R5 K35 ["Fragment"]
      306 NEWTABLE                         R6 0 0
      308 MOVE                             R7 R0
      309 CALL                             R4 3 -1
      310 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Graphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K11 ["CompositorNodeProperty"]
       29 GETTABLEKS                       R4 R4 K12 ["PropertyUtils"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_1]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 RETURN                           R4 1
