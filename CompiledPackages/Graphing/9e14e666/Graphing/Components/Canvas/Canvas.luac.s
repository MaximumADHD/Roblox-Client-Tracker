PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createFunctions"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 GETUPVAL                         R5 5
        8 GETUPVAL                         R6 6
        9 GETTABLEKS                       R6 R6 K1 ["CullingEpsilon"]
       11 CALL                             R0 6 -1
       12 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R0 K1 ["Position"]
        7 JUMPIFNOT                        R3 ; [+3]
        8 GETTABLEKS                       R2 R0 K1 ["Position"]
       10 JUMP                             ; [+5]
       11 GETIMPORT                        R2 K4 [UDim2.fromOffset]
       13 LOADN                            R3 0
       14 LOADN                            R4 0
       15 CALL                             R2 2 1
       16 GETTABLEKS                       R4 R0 K5 ["Size"]
       18 JUMPIFNOT                        R4 ; [+3]
       19 GETTABLEKS                       R3 R0 K5 ["Size"]
       21 JUMP                             ; [+5]
       22 GETIMPORT                        R3 K7 [UDim2.fromScale]
       24 LOADN                            R4 1
       25 LOADN                            R5 1
       26 CALL                             R3 2 1
       27 GETTABLEKS                       R5 R0 K8 ["ViewportPaddingLeft"]
       29 JUMPIFNOT                        R5 ; [+3]
       30 GETTABLEKS                       R4 R0 K8 ["ViewportPaddingLeft"]
       32 JUMP                             ; [+5]
       33 GETIMPORT                        R4 K11 [UDim.new]
       35 LOADN                            R5 0
       36 LOADN                            R6 25
       37 CALL                             R4 2 1
       38 GETTABLEKS                       R6 R0 K12 ["ViewportPaddingRight"]
       40 JUMPIFNOT                        R6 ; [+3]
       41 GETTABLEKS                       R5 R0 K12 ["ViewportPaddingRight"]
       43 JUMP                             ; [+5]
       44 GETIMPORT                        R5 K11 [UDim.new]
       46 LOADN                            R6 0
       47 LOADN                            R7 25
       48 CALL                             R5 2 1
       49 GETTABLEKS                       R7 R0 K13 ["ViewportPaddingTop"]
       51 JUMPIFNOT                        R7 ; [+3]
       52 GETTABLEKS                       R6 R0 K13 ["ViewportPaddingTop"]
       54 JUMP                             ; [+5]
       55 GETIMPORT                        R6 K11 [UDim.new]
       57 LOADN                            R7 0
       58 LOADN                            R8 25
       59 CALL                             R6 2 1
       60 GETTABLEKS                       R8 R0 K14 ["ViewportPaddingBottom"]
       62 JUMPIFNOT                        R8 ; [+3]
       63 GETTABLEKS                       R7 R0 K14 ["ViewportPaddingBottom"]
       65 JUMP                             ; [+5]
       66 GETIMPORT                        R7 K11 [UDim.new]
       68 LOADN                            R8 0
       69 LOADN                            R9 25
       70 CALL                             R7 2 1
       71 GETTABLEKS                       R8 R0 K15 ["GraphRect"]
       73 GETTABLEKS                       R10 R0 K16 ["ViewportRect"]
       75 JUMPIFNOT                        R10 ; [+3]
       76 GETTABLEKS                       R9 R0 K16 ["ViewportRect"]
       78 JUMP                             ; [+1]
       79 MOVE                             R9 R8
       80 GETIMPORT                        R10 K17 [UDim2.new]
       82 MOVE                             R11 R4
       83 MOVE                             R12 R6
       84 CALL                             R10 2 1
       85 GETIMPORT                        R11 K17 [UDim2.new]
       87 MOVE                             R12 R5
       88 MOVE                             R13 R7
       89 CALL                             R11 2 1
       90 GETTABLEKS                       R12 R0 K18 ["XAxisScaling"]
       92 JUMPIF                           R12 ; [+3]
       93 GETUPVAL                         R12 1
       94 GETTABLEKS                       R12 R12 K19 ["LINEAR_SCALING"]
       96 GETTABLEKS                       R13 R0 K20 ["YAxisScaling"]
       98 JUMPIF                           R13 ; [+3]
       99 GETUPVAL                         R13 1
      100 GETTABLEKS                       R13 R13 K19 ["LINEAR_SCALING"]
      102 GETUPVAL                         R14 0
      103 GETTABLEKS                       R14 R14 K21 ["useMemo"]
      105 NEWCLOSURE                       R15 P0
      106 CAPTURE                          UPVAL U1
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R0
      113 NEWTABLE                         R16 0 6
      115 MOVE                             R17 R8
      116 MOVE                             R18 R9
      117 MOVE                             R19 R1
      118 GETTABLEKS                       R20 R0 K18 ["XAxisScaling"]
      120 GETTABLEKS                       R21 R0 K20 ["YAxisScaling"]
      122 GETTABLEKS                       R22 R0 K22 ["CullingEpsilon"]
      124 SETLIST                          R16 R17 6 [1]
      126 CALL                             R14 2 1
      127 GETUPVAL                         R15 0
      128 GETTABLEKS                       R15 R15 K23 ["createElement"]
      130 GETUPVAL                         R16 2
      131 GETTABLEKS                       R16 R16 K24 ["Provider"]
      133 DUPTABLE                         R17 K26 [{"value"}]
      134 SETTABLEKS                       R14 R17 K25 ["value"]
      136 DUPTABLE                         R18 K28 [{"MainPanel"}]
      137 GETUPVAL                         R19 0
      138 GETTABLEKS                       R19 R19 K23 ["createElement"]
      140 LOADK                            R20 K29 ["Frame"]
      141 DUPTABLE                         R21 K36 [{["Position"], ["Size"], ["LayoutOrder"], ["ZIndex"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0}]
      142 SETTABLEKS                       R2 R21 K1 ["Position"]
      144 SETTABLEKS                       R3 R21 K5 ["Size"]
      146 GETTABLEKS                       R22 R0 K30 ["LayoutOrder"]
      148 SETTABLEKS                       R22 R21 K30 ["LayoutOrder"]
      150 GETTABLEKS                       R22 R0 K31 ["ZIndex"]
      152 SETTABLEKS                       R22 R21 K31 ["ZIndex"]
      154 GETTABLEKS                       R22 R0 K37 ["CanvasBackgroundColor3"]
      156 JUMPIF                           R22 ; [+3]
      157 GETUPVAL                         R22 3
      158 GETTABLEKS                       R22 R22 K38 ["CANVAS_BACKGROUND_COLOR3"]
      160 SETTABLEKS                       R22 R21 K32 ["BackgroundColor3"]
      162 GETTABLEKS                       R22 R0 K39 ["CanvasBackgroundTransparency"]
      164 JUMPIF                           R22 ; [+3]
      165 GETUPVAL                         R22 3
      166 GETTABLEKS                       R22 R22 K40 ["CANVAS_BACKGROUND_TRANSPARENCY"]
      168 SETTABLEKS                       R22 R21 K33 ["BackgroundTransparency"]
      170 GETUPVAL                         R22 4
      171 GETTABLEKS                       R22 R22 K41 ["join"]
      173 DUPTABLE                         R23 K44 [{"Viewport", "ViewportUnclipped"}]
      174 GETUPVAL                         R24 0
      175 GETTABLEKS                       R24 R24 K23 ["createElement"]
      177 LOADK                            R25 K45 ["CanvasGroup"]
      178 DUPTABLE                         R26 K48 [{["Position"], ["Size"], ["ref"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["ZIndex"] = 1}]
      179 SETTABLEKS                       R10 R26 K1 ["Position"]
      181 GETIMPORT                        R28 K7 [UDim2.fromScale]
      183 LOADN                            R29 1
      184 LOADN                            R30 1
      185 CALL                             R28 2 1
      186 ADD                              R29 R10 R11
      187 SUB                              R27 R28 R29
      188 SETTABLEKS                       R27 R26 K5 ["Size"]
      190 SETTABLEKS                       R1 R26 K46 ["ref"]
      192 GETTABLEKS                       R27 R0 K49 ["ViewportBackgroundColor3"]
      194 JUMPIF                           R27 ; [+3]
      195 GETUPVAL                         R27 3
      196 GETTABLEKS                       R27 R27 K50 ["VIEWPORT_BACKGROUND_COLOR3"]
      198 SETTABLEKS                       R27 R26 K32 ["BackgroundColor3"]
      200 GETTABLEKS                       R27 R0 K51 ["ViewportBackgroundTransparency"]
      202 JUMPIF                           R27 ; [+3]
      203 GETUPVAL                         R27 3
      204 GETTABLEKS                       R27 R27 K52 ["VIEWPORT_BACKGROUND_TRANSPARENCY"]
      206 SETTABLEKS                       R27 R26 K33 ["BackgroundTransparency"]
      208 GETTABLEKS                       R27 R0 K53 ["children"]
      210 CALL                             R24 3 1
      211 SETTABLEKS                       R24 R23 K42 ["Viewport"]
      213 GETUPVAL                         R24 0
      214 GETTABLEKS                       R24 R24 K23 ["createElement"]
      216 LOADK                            R25 K29 ["Frame"]
      217 DUPTABLE                         R26 K55 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      218 SETTABLEKS                       R10 R26 K1 ["Position"]
      220 GETIMPORT                        R28 K7 [UDim2.fromScale]
      222 LOADN                            R29 1
      223 LOADN                            R30 1
      224 CALL                             R28 2 1
      225 ADD                              R29 R10 R11
      226 SUB                              R27 R28 R29
      227 SETTABLEKS                       R27 R26 K5 ["Size"]
      229 GETTABLEKS                       R27 R0 K56 ["childrenUnclipped"]
      231 CALL                             R24 3 1
      232 SETTABLEKS                       R24 R23 K43 ["ViewportUnclipped"]
      234 CALL                             R22 1 -1
      235 CALL                             R19 -1 1
      236 SETTABLEKS                       R19 R18 K27 ["MainPanel"]
      238 CALL                             R15 3 -1
      239 RETURN                           R15 -1

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
       43 DUPCLOSURE                       R8 K14 [PROTO_1]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R2
       49 SETGLOBAL                        R8 K15 ["Canvas"]
       51 GETGLOBAL                        R8 K15 ["Canvas"]
       53 RETURN                           R8 1
