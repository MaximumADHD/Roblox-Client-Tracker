PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 SETTABLEKS                       R0 R1 K1 ["viewportRect"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R3 R1 K2 ["graphRect"]
        8 MOVE                             R4 R0
        9 GETTABLEKS                       R5 R1 K3 ["xAxisScaling"]
       11 GETTABLEKS                       R6 R1 K4 ["yAxisScaling"]
       13 GETTABLEKS                       R7 R1 K5 ["cullingEpsilon"]
       15 CALL                             R2 5 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 SETTABLEKS                       R0 R1 K1 ["graphRect"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 GETTABLEKS                       R4 R1 K2 ["viewportRect"]
        9 GETTABLEKS                       R5 R1 K3 ["xAxisScaling"]
       11 GETTABLEKS                       R6 R1 K4 ["yAxisScaling"]
       13 GETTABLEKS                       R7 R1 K5 ["cullingEpsilon"]
       15 CALL                             R2 5 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["current"]
        3 SETTABLEKS                       R0 R5 K1 ["graphRect"]
        5 SETTABLEKS                       R1 R5 K2 ["viewportRect"]
        7 SETTABLEKS                       R2 R5 K3 ["xAxisScaling"]
        9 SETTABLEKS                       R3 R5 K4 ["yAxisScaling"]
       11 SETTABLEKS                       R4 R5 K5 ["cullingEpsilon"]
       13 GETUPVAL                         R6 1
       14 MOVE                             R7 R0
       15 MOVE                             R8 R1
       16 MOVE                             R9 R2
       17 MOVE                             R10 R3
       18 MOVE                             R11 R4
       19 CALL                             R6 5 0
       20 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K3 [{"setViewportRect", "setGraphRect", "update"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["setViewportRect"]
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R1 R0 K1 ["setGraphRect"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 SETTABLEKS                       R1 R0 K2 ["update"]
       16 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GraphRect"]
        3 JUMPIFNOT                        R0 ; [+59]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["GraphRect"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["ViewportRect"]
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K1 ["ViewportRect"]
       14 JUMP                             ; [+1]
       15 MOVE                             R1 R0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K2 ["current"]
       19 SETTABLEKS                       R0 R2 K3 ["graphRect"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K2 ["current"]
       24 SETTABLEKS                       R1 R2 K4 ["viewportRect"]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K2 ["current"]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K5 ["XAxisScaling"]
       32 SETTABLEKS                       R3 R2 K6 ["xAxisScaling"]
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K2 ["current"]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K7 ["YAxisScaling"]
       40 SETTABLEKS                       R3 R2 K8 ["yAxisScaling"]
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K2 ["current"]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K9 ["CullingEpsilon"]
       48 SETTABLEKS                       R3 R2 K10 ["cullingEpsilon"]
       50 GETUPVAL                         R2 2
       51 MOVE                             R3 R0
       52 MOVE                             R4 R1
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K5 ["XAxisScaling"]
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R6 R6 K7 ["YAxisScaling"]
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K9 ["CullingEpsilon"]
       62 CALL                             R2 5 0
       63 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useRef"]
        3 LOADNIL                          R3
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R4 R0 K1 ["Position"]
        7 JUMPIFNOT                        R4 ; [+3]
        8 GETTABLEKS                       R3 R0 K1 ["Position"]
       10 JUMP                             ; [+5]
       11 GETIMPORT                        R3 K4 [UDim2.fromOffset]
       13 LOADN                            R4 0
       14 LOADN                            R5 0
       15 CALL                             R3 2 1
       16 GETTABLEKS                       R5 R0 K5 ["Size"]
       18 JUMPIFNOT                        R5 ; [+3]
       19 GETTABLEKS                       R4 R0 K5 ["Size"]
       21 JUMP                             ; [+5]
       22 GETIMPORT                        R4 K7 [UDim2.fromScale]
       24 LOADN                            R5 1
       25 LOADN                            R6 1
       26 CALL                             R4 2 1
       27 GETTABLEKS                       R6 R0 K8 ["ViewportPaddingLeft"]
       29 JUMPIFNOT                        R6 ; [+3]
       30 GETTABLEKS                       R5 R0 K8 ["ViewportPaddingLeft"]
       32 JUMP                             ; [+5]
       33 GETIMPORT                        R5 K11 [UDim.new]
       35 LOADN                            R6 0
       36 LOADN                            R7 25
       37 CALL                             R5 2 1
       38 GETTABLEKS                       R7 R0 K12 ["ViewportPaddingRight"]
       40 JUMPIFNOT                        R7 ; [+3]
       41 GETTABLEKS                       R6 R0 K12 ["ViewportPaddingRight"]
       43 JUMP                             ; [+5]
       44 GETIMPORT                        R6 K11 [UDim.new]
       46 LOADN                            R7 0
       47 LOADN                            R8 25
       48 CALL                             R6 2 1
       49 GETTABLEKS                       R8 R0 K13 ["ViewportPaddingTop"]
       51 JUMPIFNOT                        R8 ; [+3]
       52 GETTABLEKS                       R7 R0 K13 ["ViewportPaddingTop"]
       54 JUMP                             ; [+5]
       55 GETIMPORT                        R7 K11 [UDim.new]
       57 LOADN                            R8 0
       58 LOADN                            R9 25
       59 CALL                             R7 2 1
       60 GETTABLEKS                       R9 R0 K14 ["ViewportPaddingBottom"]
       62 JUMPIFNOT                        R9 ; [+3]
       63 GETTABLEKS                       R8 R0 K14 ["ViewportPaddingBottom"]
       65 JUMP                             ; [+5]
       66 GETIMPORT                        R8 K11 [UDim.new]
       68 LOADN                            R9 0
       69 LOADN                            R10 25
       70 CALL                             R8 2 1
       71 GETIMPORT                        R9 K15 [UDim2.new]
       73 MOVE                             R10 R5
       74 MOVE                             R11 R7
       75 CALL                             R9 2 1
       76 GETIMPORT                        R10 K15 [UDim2.new]
       78 MOVE                             R11 R6
       79 MOVE                             R12 R8
       80 CALL                             R10 2 1
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K0 ["useRef"]
       84 LOADNIL                          R12
       85 CALL                             R11 1 1
       86 GETTABLEKS                       R12 R11 K16 ["current"]
       88 JUMPIFNOTEQKNIL                  R12 ; [+32]
       90 GETTABLEKS                       R12 R0 K17 ["GraphRect"]
       92 JUMPIF                           R12 ; [+1]
       93 GETUPVAL                         R12 1
       94 GETTABLEKS                       R14 R0 K18 ["ViewportRect"]
       96 JUMPIFNOT                        R14 ; [+3]
       97 GETTABLEKS                       R13 R0 K18 ["ViewportRect"]
       99 JUMP                             ; [+1]
      100 MOVE                             R13 R12
      101 GETUPVAL                         R14 2
      102 GETTABLEKS                       R14 R14 K19 ["createStableContext"]
      104 MOVE                             R15 R2
      105 MOVE                             R16 R12
      106 MOVE                             R17 R13
      107 GETTABLEKS                       R18 R0 K20 ["XAxisScaling"]
      109 GETTABLEKS                       R19 R0 K21 ["YAxisScaling"]
      111 GETTABLEKS                       R20 R0 K22 ["CullingEpsilon"]
      113 CALL                             R14 6 2
      114 DUPTABLE                         R16 K25 [{"context", "update"}]
      115 SETTABLEKS                       R14 R16 K23 ["context"]
      117 SETTABLEKS                       R15 R16 K24 ["update"]
      119 SETTABLEKS                       R16 R11 K16 ["current"]
      121 GETTABLEKS                       R12 R11 K16 ["current"]
      123 GETTABLEKS                       R13 R12 K23 ["context"]
      125 GETTABLEKS                       R14 R12 K24 ["update"]
      127 GETUPVAL                         R15 0
      128 GETTABLEKS                       R15 R15 K0 ["useRef"]
      130 DUPTABLE                         R16 K31 [{"graphRect", "viewportRect", "xAxisScaling", "yAxisScaling", "cullingEpsilon"}]
      131 GETTABLEKS                       R17 R0 K17 ["GraphRect"]
      133 JUMPIF                           R17 ; [+1]
      134 GETUPVAL                         R17 1
      135 SETTABLEKS                       R17 R16 K26 ["graphRect"]
      137 GETTABLEKS                       R17 R0 K18 ["ViewportRect"]
      139 JUMPIF                           R17 ; [+4]
      140 GETTABLEKS                       R17 R0 K17 ["GraphRect"]
      142 JUMPIF                           R17 ; [+1]
      143 GETUPVAL                         R17 1
      144 SETTABLEKS                       R17 R16 K27 ["viewportRect"]
      146 GETTABLEKS                       R17 R0 K20 ["XAxisScaling"]
      148 SETTABLEKS                       R17 R16 K28 ["xAxisScaling"]
      150 GETTABLEKS                       R17 R0 K21 ["YAxisScaling"]
      152 SETTABLEKS                       R17 R16 K29 ["yAxisScaling"]
      154 GETTABLEKS                       R17 R0 K22 ["CullingEpsilon"]
      156 SETTABLEKS                       R17 R16 K30 ["cullingEpsilon"]
      158 CALL                             R15 1 1
      159 GETUPVAL                         R16 0
      160 GETTABLEKS                       R16 R16 K32 ["useImperativeHandle"]
      162 MOVE                             R17 R1
      163 NEWCLOSURE                       R18 P0
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R14
      166 NEWTABLE                         R19 0 0
      168 CALL                             R16 3 0
      169 GETUPVAL                         R16 0
      170 GETTABLEKS                       R16 R16 K33 ["useLayoutEffect"]
      172 NEWCLOSURE                       R17 P1
      173 CAPTURE                          VAL R0
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R14
      176 NEWTABLE                         R18 0 5
      178 GETTABLEKS                       R19 R0 K17 ["GraphRect"]
      180 GETTABLEKS                       R20 R0 K18 ["ViewportRect"]
      182 GETTABLEKS                       R21 R0 K20 ["XAxisScaling"]
      184 GETTABLEKS                       R22 R0 K21 ["YAxisScaling"]
      186 GETTABLEKS                       R23 R0 K22 ["CullingEpsilon"]
      188 SETLIST                          R18 R19 5 [1]
      190 CALL                             R16 2 0
      191 GETUPVAL                         R16 0
      192 GETTABLEKS                       R16 R16 K34 ["createElement"]
      194 GETUPVAL                         R17 3
      195 GETTABLEKS                       R17 R17 K35 ["Provider"]
      197 DUPTABLE                         R18 K37 [{"value"}]
      198 SETTABLEKS                       R13 R18 K36 ["value"]
      200 DUPTABLE                         R19 K39 [{"MainPanel"}]
      201 GETUPVAL                         R20 0
      202 GETTABLEKS                       R20 R20 K34 ["createElement"]
      204 LOADK                            R21 K40 ["Frame"]
      205 DUPTABLE                         R22 K47 [{["Position"], ["Size"], ["LayoutOrder"], ["ZIndex"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0}]
      206 SETTABLEKS                       R3 R22 K1 ["Position"]
      208 SETTABLEKS                       R4 R22 K5 ["Size"]
      210 GETTABLEKS                       R23 R0 K41 ["LayoutOrder"]
      212 SETTABLEKS                       R23 R22 K41 ["LayoutOrder"]
      214 GETTABLEKS                       R23 R0 K42 ["ZIndex"]
      216 SETTABLEKS                       R23 R22 K42 ["ZIndex"]
      218 GETTABLEKS                       R23 R0 K48 ["CanvasBackgroundColor3"]
      220 JUMPIF                           R23 ; [+3]
      221 GETUPVAL                         R23 4
      222 GETTABLEKS                       R23 R23 K49 ["CANVAS_BACKGROUND_COLOR3"]
      224 SETTABLEKS                       R23 R22 K43 ["BackgroundColor3"]
      226 GETTABLEKS                       R23 R0 K50 ["CanvasBackgroundTransparency"]
      228 JUMPIF                           R23 ; [+3]
      229 GETUPVAL                         R23 4
      230 GETTABLEKS                       R23 R23 K51 ["CANVAS_BACKGROUND_TRANSPARENCY"]
      232 SETTABLEKS                       R23 R22 K44 ["BackgroundTransparency"]
      234 GETUPVAL                         R23 5
      235 GETTABLEKS                       R23 R23 K52 ["join"]
      237 DUPTABLE                         R24 K55 [{"Viewport", "ViewportUnclipped"}]
      238 GETUPVAL                         R25 0
      239 GETTABLEKS                       R25 R25 K34 ["createElement"]
      241 LOADK                            R26 K56 ["CanvasGroup"]
      242 DUPTABLE                         R27 K59 [{["Position"], ["Size"], ["ref"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["ZIndex"] = 1}]
      243 SETTABLEKS                       R9 R27 K1 ["Position"]
      245 GETIMPORT                        R29 K7 [UDim2.fromScale]
      247 LOADN                            R30 1
      248 LOADN                            R31 1
      249 CALL                             R29 2 1
      250 ADD                              R30 R9 R10
      251 SUB                              R28 R29 R30
      252 SETTABLEKS                       R28 R27 K5 ["Size"]
      254 SETTABLEKS                       R2 R27 K57 ["ref"]
      256 GETTABLEKS                       R28 R0 K60 ["ViewportBackgroundColor3"]
      258 JUMPIF                           R28 ; [+3]
      259 GETUPVAL                         R28 4
      260 GETTABLEKS                       R28 R28 K61 ["VIEWPORT_BACKGROUND_COLOR3"]
      262 SETTABLEKS                       R28 R27 K43 ["BackgroundColor3"]
      264 GETTABLEKS                       R28 R0 K62 ["ViewportBackgroundTransparency"]
      266 JUMPIF                           R28 ; [+3]
      267 GETUPVAL                         R28 4
      268 GETTABLEKS                       R28 R28 K63 ["VIEWPORT_BACKGROUND_TRANSPARENCY"]
      270 SETTABLEKS                       R28 R27 K44 ["BackgroundTransparency"]
      272 GETTABLEKS                       R28 R0 K64 ["children"]
      274 CALL                             R25 3 1
      275 SETTABLEKS                       R25 R24 K53 ["Viewport"]
      277 GETUPVAL                         R25 0
      278 GETTABLEKS                       R25 R25 K34 ["createElement"]
      280 LOADK                            R26 K40 ["Frame"]
      281 DUPTABLE                         R27 K66 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      282 SETTABLEKS                       R9 R27 K1 ["Position"]
      284 GETIMPORT                        R29 K7 [UDim2.fromScale]
      286 LOADN                            R30 1
      287 LOADN                            R31 1
      288 CALL                             R29 2 1
      289 ADD                              R30 R9 R10
      290 SUB                              R28 R29 R30
      291 SETTABLEKS                       R28 R27 K5 ["Size"]
      293 GETTABLEKS                       R28 R0 K67 ["childrenUnclipped"]
      295 CALL                             R25 3 1
      296 SETTABLEKS                       R25 R24 K54 ["ViewportUnclipped"]
      298 CALL                             R23 1 -1
      299 CALL                             R20 -1 1
      300 SETTABLEKS                       R20 R19 K38 ["MainPanel"]
      302 CALL                             R16 3 -1
      303 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["CanvasContext"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Util"]
       28 GETTABLEKS                       R6 R6 K11 ["CanvasUtil"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Util"]
       35 GETTABLEKS                       R7 R7 K12 ["StyleUtil"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Types"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K16 [Rect.new]
       45 LOADN                            R9 0
       46 LOADN                            R10 0
       47 LOADN                            R11 1
       48 LOADN                            R12 1
       49 CALL                             R8 4 1
       50 DUPCLOSURE                       R9 K17 [PROTO_5]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R2
       57 SETGLOBAL                        R9 K18 ["Canvas"]
       59 GETTABLEKS                       R9 R3 K19 ["forwardRef"]
       61 GETGLOBAL                        R10 K18 ["Canvas"]
       63 CALL                             R9 1 -1
       64 RETURN                           R9 -1
