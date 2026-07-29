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
       88 JUMPIFNOTEQKNIL                  R12 ; [+13]
       90 GETUPVAL                         R12 1
       91 GETTABLEKS                       R12 R12 K17 ["createStableContext"]
       93 MOVE                             R13 R2
       94 CALL                             R12 1 2
       95 DUPTABLE                         R14 K20 [{"context", "update"}]
       96 SETTABLEKS                       R12 R14 K18 ["context"]
       98 SETTABLEKS                       R13 R14 K19 ["update"]
      100 SETTABLEKS                       R14 R11 K16 ["current"]
      102 GETTABLEKS                       R12 R11 K16 ["current"]
      104 GETTABLEKS                       R12 R12 K18 ["context"]
      106 GETTABLEKS                       R13 R11 K16 ["current"]
      108 GETTABLEKS                       R13 R13 K19 ["update"]
      110 GETUPVAL                         R14 0
      111 GETTABLEKS                       R14 R14 K0 ["useRef"]
      113 DUPTABLE                         R15 K26 [{"graphRect", "viewportRect", "xAxisScaling", "yAxisScaling", "cullingEpsilon"}]
      114 GETUPVAL                         R16 2
      115 SETTABLEKS                       R16 R15 K21 ["graphRect"]
      117 GETUPVAL                         R16 2
      118 SETTABLEKS                       R16 R15 K22 ["viewportRect"]
      120 GETTABLEKS                       R16 R0 K27 ["XAxisScaling"]
      122 SETTABLEKS                       R16 R15 K23 ["xAxisScaling"]
      124 GETTABLEKS                       R16 R0 K28 ["YAxisScaling"]
      126 SETTABLEKS                       R16 R15 K24 ["yAxisScaling"]
      128 GETTABLEKS                       R16 R0 K29 ["CullingEpsilon"]
      130 SETTABLEKS                       R16 R15 K25 ["cullingEpsilon"]
      132 CALL                             R14 1 1
      133 GETUPVAL                         R15 0
      134 GETTABLEKS                       R15 R15 K30 ["useImperativeHandle"]
      136 MOVE                             R16 R1
      137 NEWCLOSURE                       R17 P0
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R13
      140 NEWTABLE                         R18 0 0
      142 CALL                             R15 3 0
      143 GETTABLEKS                       R15 R0 K31 ["GraphRect"]
      145 JUMPIFNOT                        R15 ; [+45]
      146 GETTABLEKS                       R15 R0 K31 ["GraphRect"]
      148 GETTABLEKS                       R17 R0 K32 ["ViewportRect"]
      150 JUMPIFNOT                        R17 ; [+3]
      151 GETTABLEKS                       R16 R0 K32 ["ViewportRect"]
      153 JUMP                             ; [+1]
      154 MOVE                             R16 R15
      155 GETTABLEKS                       R17 R14 K16 ["current"]
      157 SETTABLEKS                       R15 R17 K21 ["graphRect"]
      159 GETTABLEKS                       R17 R14 K16 ["current"]
      161 SETTABLEKS                       R16 R17 K22 ["viewportRect"]
      163 GETTABLEKS                       R17 R14 K16 ["current"]
      165 GETTABLEKS                       R18 R0 K27 ["XAxisScaling"]
      167 SETTABLEKS                       R18 R17 K23 ["xAxisScaling"]
      169 GETTABLEKS                       R17 R14 K16 ["current"]
      171 GETTABLEKS                       R18 R0 K28 ["YAxisScaling"]
      173 SETTABLEKS                       R18 R17 K24 ["yAxisScaling"]
      175 GETTABLEKS                       R17 R14 K16 ["current"]
      177 GETTABLEKS                       R18 R0 K29 ["CullingEpsilon"]
      179 SETTABLEKS                       R18 R17 K25 ["cullingEpsilon"]
      181 MOVE                             R17 R13
      182 MOVE                             R18 R15
      183 MOVE                             R19 R16
      184 GETTABLEKS                       R20 R0 K27 ["XAxisScaling"]
      186 GETTABLEKS                       R21 R0 K28 ["YAxisScaling"]
      188 GETTABLEKS                       R22 R0 K29 ["CullingEpsilon"]
      190 CALL                             R17 5 0
      191 GETUPVAL                         R15 0
      192 GETTABLEKS                       R15 R15 K33 ["createElement"]
      194 GETUPVAL                         R16 3
      195 GETTABLEKS                       R16 R16 K34 ["Provider"]
      197 DUPTABLE                         R17 K36 [{"value"}]
      198 SETTABLEKS                       R12 R17 K35 ["value"]
      200 DUPTABLE                         R18 K38 [{"MainPanel"}]
      201 GETUPVAL                         R19 0
      202 GETTABLEKS                       R19 R19 K33 ["createElement"]
      204 LOADK                            R20 K39 ["Frame"]
      205 DUPTABLE                         R21 K46 [{["Position"], ["Size"], ["LayoutOrder"], ["ZIndex"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0}]
      206 SETTABLEKS                       R3 R21 K1 ["Position"]
      208 SETTABLEKS                       R4 R21 K5 ["Size"]
      210 GETTABLEKS                       R22 R0 K40 ["LayoutOrder"]
      212 SETTABLEKS                       R22 R21 K40 ["LayoutOrder"]
      214 GETTABLEKS                       R22 R0 K41 ["ZIndex"]
      216 SETTABLEKS                       R22 R21 K41 ["ZIndex"]
      218 GETTABLEKS                       R22 R0 K47 ["CanvasBackgroundColor3"]
      220 JUMPIF                           R22 ; [+3]
      221 GETUPVAL                         R22 4
      222 GETTABLEKS                       R22 R22 K48 ["CANVAS_BACKGROUND_COLOR3"]
      224 SETTABLEKS                       R22 R21 K42 ["BackgroundColor3"]
      226 GETTABLEKS                       R22 R0 K49 ["CanvasBackgroundTransparency"]
      228 JUMPIF                           R22 ; [+3]
      229 GETUPVAL                         R22 4
      230 GETTABLEKS                       R22 R22 K50 ["CANVAS_BACKGROUND_TRANSPARENCY"]
      232 SETTABLEKS                       R22 R21 K43 ["BackgroundTransparency"]
      234 GETUPVAL                         R22 5
      235 GETTABLEKS                       R22 R22 K51 ["join"]
      237 DUPTABLE                         R23 K54 [{"Viewport", "ViewportUnclipped"}]
      238 GETUPVAL                         R24 0
      239 GETTABLEKS                       R24 R24 K33 ["createElement"]
      241 LOADK                            R25 K55 ["CanvasGroup"]
      242 DUPTABLE                         R26 K58 [{["Position"], ["Size"], ["ref"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["ZIndex"] = 1}]
      243 SETTABLEKS                       R9 R26 K1 ["Position"]
      245 GETIMPORT                        R28 K7 [UDim2.fromScale]
      247 LOADN                            R29 1
      248 LOADN                            R30 1
      249 CALL                             R28 2 1
      250 ADD                              R29 R9 R10
      251 SUB                              R27 R28 R29
      252 SETTABLEKS                       R27 R26 K5 ["Size"]
      254 SETTABLEKS                       R2 R26 K56 ["ref"]
      256 GETTABLEKS                       R27 R0 K59 ["ViewportBackgroundColor3"]
      258 JUMPIF                           R27 ; [+3]
      259 GETUPVAL                         R27 4
      260 GETTABLEKS                       R27 R27 K60 ["VIEWPORT_BACKGROUND_COLOR3"]
      262 SETTABLEKS                       R27 R26 K42 ["BackgroundColor3"]
      264 GETTABLEKS                       R27 R0 K61 ["ViewportBackgroundTransparency"]
      266 JUMPIF                           R27 ; [+3]
      267 GETUPVAL                         R27 4
      268 GETTABLEKS                       R27 R27 K62 ["VIEWPORT_BACKGROUND_TRANSPARENCY"]
      270 SETTABLEKS                       R27 R26 K43 ["BackgroundTransparency"]
      272 GETTABLEKS                       R27 R0 K63 ["children"]
      274 CALL                             R24 3 1
      275 SETTABLEKS                       R24 R23 K52 ["Viewport"]
      277 GETUPVAL                         R24 0
      278 GETTABLEKS                       R24 R24 K33 ["createElement"]
      280 LOADK                            R25 K39 ["Frame"]
      281 DUPTABLE                         R26 K65 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      282 SETTABLEKS                       R9 R26 K1 ["Position"]
      284 GETIMPORT                        R28 K7 [UDim2.fromScale]
      286 LOADN                            R29 1
      287 LOADN                            R30 1
      288 CALL                             R28 2 1
      289 ADD                              R29 R9 R10
      290 SUB                              R27 R28 R29
      291 SETTABLEKS                       R27 R26 K5 ["Size"]
      293 GETTABLEKS                       R27 R0 K66 ["childrenUnclipped"]
      295 CALL                             R24 3 1
      296 SETTABLEKS                       R24 R23 K53 ["ViewportUnclipped"]
      298 CALL                             R22 1 -1
      299 CALL                             R19 -1 1
      300 SETTABLEKS                       R19 R18 K37 ["MainPanel"]
      302 CALL                             R15 3 -1
      303 RETURN                           R15 -1

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
       50 DUPCLOSURE                       R9 K17 [PROTO_4]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R2
       57 SETGLOBAL                        R9 K18 ["Canvas"]
       59 GETTABLEKS                       R9 R3 K19 ["forwardRef"]
       61 GETGLOBAL                        R10 K18 ["Canvas"]
       63 CALL                             R9 1 -1
       64 RETURN                           R9 -1
