PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createFunctions"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R5 4
        7 GETTABLEKS                       R4 R5 K1 ["XAxisScaling"]
        9 GETUPVAL                         R6 4
       10 GETTABLEKS                       R5 R6 K2 ["YAxisScaling"]
       12 GETUPVAL                         R7 4
       13 GETTABLEKS                       R6 R7 K3 ["CullingEpsilon"]
       15 CALL                             R0 6 -1
       16 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
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
       90 GETUPVAL                         R13 0
       91 GETTABLEKS                       R12 R13 K18 ["useMemo"]
       93 NEWCLOSURE                       R13 P0
       94 CAPTURE                          UPVAL U1
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R0
       99 NEWTABLE                         R14 0 6
      101 MOVE                             R15 R8
      102 MOVE                             R16 R9
      103 MOVE                             R17 R1
      104 GETTABLEKS                       R18 R0 K19 ["XAxisScaling"]
      106 GETTABLEKS                       R19 R0 K20 ["YAxisScaling"]
      108 GETTABLEKS                       R20 R0 K21 ["CullingEpsilon"]
      110 SETLIST                          R14 R15 6 [1]
      112 CALL                             R12 2 1
      113 GETUPVAL                         R14 0
      114 GETTABLEKS                       R13 R14 K22 ["createElement"]
      116 GETUPVAL                         R15 2
      117 GETTABLEKS                       R14 R15 K23 ["Provider"]
      119 DUPTABLE                         R15 K25 [{"value"}]
      120 SETTABLEKS                       R12 R15 K24 ["value"]
      122 DUPTABLE                         R16 K27 [{"MainPanel"}]
      123 GETUPVAL                         R18 0
      124 GETTABLEKS                       R17 R18 K22 ["createElement"]
      126 LOADK                            R18 K28 ["Frame"]
      127 DUPTABLE                         R19 K34 [{"Position", "Size", "LayoutOrder", "ZIndex", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
      128 SETTABLEKS                       R2 R19 K1 ["Position"]
      130 SETTABLEKS                       R3 R19 K5 ["Size"]
      132 GETTABLEKS                       R20 R0 K29 ["LayoutOrder"]
      134 SETTABLEKS                       R20 R19 K29 ["LayoutOrder"]
      136 GETTABLEKS                       R20 R0 K30 ["ZIndex"]
      138 SETTABLEKS                       R20 R19 K30 ["ZIndex"]
      140 GETTABLEKS                       R20 R0 K35 ["CanvasBackgroundColor3"]
      142 JUMPIF                           R20 ; [+3]
      143 GETUPVAL                         R21 3
      144 GETTABLEKS                       R20 R21 K36 ["CANVAS_BACKGROUND_COLOR3"]
      146 SETTABLEKS                       R20 R19 K31 ["BackgroundColor3"]
      148 GETTABLEKS                       R20 R0 K37 ["CanvasBackgroundTransparency"]
      150 JUMPIF                           R20 ; [+3]
      151 GETUPVAL                         R21 3
      152 GETTABLEKS                       R20 R21 K38 ["CANVAS_BACKGROUND_TRANSPARENCY"]
      154 SETTABLEKS                       R20 R19 K32 ["BackgroundTransparency"]
      156 LOADN                            R20 0
      157 SETTABLEKS                       R20 R19 K33 ["BorderSizePixel"]
      159 GETUPVAL                         R21 4
      160 GETTABLEKS                       R20 R21 K39 ["join"]
      162 DUPTABLE                         R21 K42 [{"Viewport", "ViewportUnclipped"}]
      163 GETUPVAL                         R23 0
      164 GETTABLEKS                       R22 R23 K22 ["createElement"]
      166 LOADK                            R23 K43 ["CanvasGroup"]
      167 DUPTABLE                         R24 K45 [{"Position", "Size", "ref", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
      168 SETTABLEKS                       R10 R24 K1 ["Position"]
      170 GETIMPORT                        R26 K7 [UDim2.fromScale]
      172 LOADN                            R27 1
      173 LOADN                            R28 1
      174 CALL                             R26 2 1
      175 ADD                              R27 R10 R11
      176 SUB                              R25 R26 R27
      177 SETTABLEKS                       R25 R24 K5 ["Size"]
      179 SETTABLEKS                       R1 R24 K44 ["ref"]
      181 GETTABLEKS                       R25 R0 K46 ["ViewportBackgroundColor3"]
      183 JUMPIF                           R25 ; [+3]
      184 GETUPVAL                         R26 3
      185 GETTABLEKS                       R25 R26 K47 ["VIEWPORT_BACKGROUND_COLOR3"]
      187 SETTABLEKS                       R25 R24 K31 ["BackgroundColor3"]
      189 GETTABLEKS                       R25 R0 K48 ["ViewportBackgroundTransparency"]
      191 JUMPIF                           R25 ; [+3]
      192 GETUPVAL                         R26 3
      193 GETTABLEKS                       R25 R26 K49 ["VIEWPORT_BACKGROUND_TRANSPARENCY"]
      195 SETTABLEKS                       R25 R24 K32 ["BackgroundTransparency"]
      197 LOADN                            R25 0
      198 SETTABLEKS                       R25 R24 K33 ["BorderSizePixel"]
      200 LOADN                            R25 1
      201 SETTABLEKS                       R25 R24 K30 ["ZIndex"]
      203 GETTABLEKS                       R25 R0 K50 ["children"]
      205 CALL                             R22 3 1
      206 SETTABLEKS                       R22 R21 K40 ["Viewport"]
      208 GETUPVAL                         R23 0
      209 GETTABLEKS                       R22 R23 K22 ["createElement"]
      211 LOADK                            R23 K28 ["Frame"]
      212 DUPTABLE                         R24 K51 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
      213 SETTABLEKS                       R10 R24 K1 ["Position"]
      215 GETIMPORT                        R26 K7 [UDim2.fromScale]
      217 LOADN                            R27 1
      218 LOADN                            R28 1
      219 CALL                             R26 2 1
      220 ADD                              R27 R10 R11
      221 SUB                              R25 R26 R27
      222 SETTABLEKS                       R25 R24 K5 ["Size"]
      224 LOADN                            R25 1
      225 SETTABLEKS                       R25 R24 K32 ["BackgroundTransparency"]
      227 LOADN                            R25 0
      228 SETTABLEKS                       R25 R24 K33 ["BorderSizePixel"]
      230 LOADN                            R25 2
      231 SETTABLEKS                       R25 R24 K30 ["ZIndex"]
      233 GETTABLEKS                       R25 R0 K52 ["childrenUnclipped"]
      235 CALL                             R22 3 1
      236 SETTABLEKS                       R22 R21 K41 ["ViewportUnclipped"]
      238 CALL                             R20 1 -1
      239 CALL                             R17 -1 1
      240 SETTABLEKS                       R17 R16 K26 ["MainPanel"]
      242 CALL                             R13 3 -1
      243 RETURN                           R13 -1

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
       26 GETTABLEKS                       R7 R0 K10 ["Util"]
       28 GETTABLEKS                       R6 R7 K11 ["CanvasUtil"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R8 R0 K10 ["Util"]
       35 GETTABLEKS                       R7 R8 K12 ["StyleUtil"]
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
