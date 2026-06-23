PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["SetRect"]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R0 K1 ["MinSize"]
        6 JUMPIF                           R3 ; [+2]
        7 GETIMPORT                        R3 K4 [Vector2.zero]
        9 GETTABLEKS                       R4 R0 K5 ["Rect"]
       11 GETTABLEKS                       R4 R4 K6 ["Min"]
       13 GETTABLEKS                       R4 R4 K7 ["X"]
       15 GETTABLEKS                       R5 R0 K5 ["Rect"]
       17 GETTABLEKS                       R5 R5 K6 ["Min"]
       19 GETTABLEKS                       R5 R5 K8 ["Y"]
       21 GETTABLEKS                       R6 R0 K5 ["Rect"]
       23 GETTABLEKS                       R6 R6 K9 ["Max"]
       25 GETTABLEKS                       R6 R6 K7 ["X"]
       27 GETTABLEKS                       R7 R0 K5 ["Rect"]
       29 GETTABLEKS                       R7 R7 K9 ["Max"]
       31 GETTABLEKS                       R7 R7 K8 ["Y"]
       33 GETTABLEKS                       R8 R2 K7 ["X"]
       35 JUMPIFNOTEQKN                    R8 K10 [0] ; [+12]
       37 GETTABLEKS                       R9 R1 K7 ["X"]
       39 GETTABLEKS                       R11 R3 K7 ["X"]
       41 SUB                              R10 R6 R11
       42 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       44 GETIMPORT                        R8 K13 [math.min]
       46 CALL                             R8 2 1
       47 MOVE                             R4 R8
       48 GETTABLEKS                       R8 R2 K7 ["X"]
       50 JUMPIFNOTEQKN                    R8 K14 [1] ; [+12]
       52 GETTABLEKS                       R9 R1 K7 ["X"]
       54 GETTABLEKS                       R11 R3 K7 ["X"]
       56 ADD                              R10 R4 R11
       57 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       59 GETIMPORT                        R8 K16 [math.max]
       61 CALL                             R8 2 1
       62 MOVE                             R6 R8
       63 GETTABLEKS                       R8 R2 K8 ["Y"]
       65 JUMPIFNOTEQKN                    R8 K10 [0] ; [+12]
       67 GETTABLEKS                       R9 R1 K8 ["Y"]
       69 GETTABLEKS                       R11 R3 K8 ["Y"]
       71 SUB                              R10 R7 R11
       72 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       74 GETIMPORT                        R8 K13 [math.min]
       76 CALL                             R8 2 1
       77 MOVE                             R5 R8
       78 GETTABLEKS                       R8 R2 K8 ["Y"]
       80 JUMPIFNOTEQKN                    R8 K14 [1] ; [+12]
       82 GETTABLEKS                       R9 R1 K8 ["Y"]
       84 GETTABLEKS                       R11 R3 K8 ["Y"]
       86 ADD                              R10 R5 R11
       87 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       89 GETIMPORT                        R8 K16 [math.max]
       91 CALL                             R8 2 1
       92 MOVE                             R7 R8
       93 GETTABLEKS                       R10 R0 K0 ["SetRect"]
       95 JUMPIFNOTEQKNIL                  R10 ; [+2]
       97 LOADB                            R9 0 +1
       98 LOADB                            R9 1
       99 FASTCALL2K                       ASSERT R9 K17 ; [+4]
      101 LOADK                            R10 K17 ["props.SetRect is nil"]
      102 GETIMPORT                        R8 K19 [assert]
      104 CALL                             R8 2 0
      105 GETTABLEKS                       R8 R0 K0 ["SetRect"]
      107 MOVE                             R9 R8
      108 GETIMPORT                        R10 K21 [Rect.new]
      110 MOVE                             R11 R4
      111 MOVE                             R12 R5
      112 MOVE                             R13 R6
      113 MOVE                             R14 R7
      114 CALL                             R10 4 -1
      115 CALL                             R9 -1 0
      116 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetRect"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["SetRect"]
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["props.SetRect was nil"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["SetRect"]
       17 MOVE                             R2 R1
       18 GETIMPORT                        R3 K6 [Rect.new]
       20 GETTABLEKS                       R4 R0 K7 ["X"]
       22 GETTABLEKS                       R5 R0 K8 ["Y"]
       24 GETTABLEKS                       R7 R0 K7 ["X"]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K4 ["Rect"]
       29 GETTABLEKS                       R8 R8 K9 ["Width"]
       31 ADD                              R6 R7 R8
       32 GETTABLEKS                       R8 R0 K8 ["Y"]
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R9 R9 K4 ["Rect"]
       37 GETTABLEKS                       R9 R9 K10 ["Height"]
       39 ADD                              R7 R8 R9
       40 CALL                             R3 4 -1
       41 CALL                             R2 -1 0
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETIMPORT                        R4 K2 [Vector2.new]
        5 GETUPVAL                         R6 2
        6 JUMPIFNOT                        R6 ; [+2]
        7 LOADN                            R5 1
        8 JUMP                             ; [+1]
        9 LOADN                            R5 0
       10 LOADK                            R6 K3 [0.5]
       11 CALL                             R4 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETIMPORT                        R4 K2 [Vector2.new]
        5 GETUPVAL                         R6 2
        6 JUMPIFNOT                        R6 ; [+2]
        7 LOADN                            R5 0
        8 JUMP                             ; [+1]
        9 LOADN                            R5 1
       10 LOADK                            R6 K3 [0.5]
       11 CALL                             R4 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETIMPORT                        R4 K2 [Vector2.new]
        5 LOADK                            R5 K3 [0.5]
        6 GETUPVAL                         R7 2
        7 JUMPIFNOT                        R7 ; [+2]
        8 LOADN                            R6 0
        9 JUMP                             ; [+1]
       10 LOADN                            R6 1
       11 CALL                             R4 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETIMPORT                        R4 K2 [Vector2.new]
        5 LOADK                            R5 K3 [0.5]
        6 GETUPVAL                         R7 2
        7 JUMPIFNOT                        R7 ; [+2]
        8 LOADN                            R6 1
        9 JUMP                             ; [+1]
       10 LOADN                            R6 0
       11 CALL                             R4 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETIMPORT                        R4 K2 [Vector2.new]
        5 GETUPVAL                         R6 2
        6 JUMPIFNOT                        R6 ; [+2]
        7 LOADN                            R5 1
        8 JUMP                             ; [+1]
        9 LOADN                            R5 0
       10 GETUPVAL                         R7 3
       11 JUMPIFNOT                        R7 ; [+2]
       12 LOADN                            R6 0
       13 JUMP                             ; [+1]
       14 LOADN                            R6 1
       15 CALL                             R4 2 -1
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETIMPORT                        R4 K2 [Vector2.new]
        5 GETUPVAL                         R6 2
        6 JUMPIFNOT                        R6 ; [+2]
        7 LOADN                            R5 0
        8 JUMP                             ; [+1]
        9 LOADN                            R5 1
       10 GETUPVAL                         R7 3
       11 JUMPIFNOT                        R7 ; [+2]
       12 LOADN                            R6 0
       13 JUMP                             ; [+1]
       14 LOADN                            R6 1
       15 CALL                             R4 2 -1
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETIMPORT                        R4 K2 [Vector2.new]
        5 GETUPVAL                         R6 2
        6 JUMPIFNOT                        R6 ; [+2]
        7 LOADN                            R5 1
        8 JUMP                             ; [+1]
        9 LOADN                            R5 0
       10 GETUPVAL                         R7 3
       11 JUMPIFNOT                        R7 ; [+2]
       12 LOADN                            R6 1
       13 JUMP                             ; [+1]
       14 LOADN                            R6 0
       15 CALL                             R4 2 -1
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETIMPORT                        R4 K2 [Vector2.new]
        5 GETUPVAL                         R6 2
        6 JUMPIFNOT                        R6 ; [+2]
        7 LOADN                            R5 0
        8 JUMP                             ; [+1]
        9 LOADN                            R5 1
       10 GETUPVAL                         R7 3
       11 JUMPIFNOT                        R7 ; [+2]
       12 LOADN                            R6 1
       13 JUMP                             ; [+1]
       14 LOADN                            R6 0
       15 CALL                             R4 2 -1
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R1 K1 ["getXAxisScaling"]
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R3 R3 K2 ["Direction"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K3 ["DIRECTION_REVERSED"]
       13 JUMPIFEQ                         R3 R4 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 GETTABLEKS                       R4 R1 K4 ["getYAxisScaling"]
       19 CALL                             R4 0 1
       20 GETTABLEKS                       R4 R4 K2 ["Direction"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K3 ["DIRECTION_REVERSED"]
       25 JUMPIFEQ                         R4 R5 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R6 0 2
       36 GETTABLEKS                       R7 R0 K6 ["Rect"]
       38 GETTABLEKS                       R8 R0 K7 ["SetRect"]
       40 SETLIST                          R6 R7 2 [1]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       46 NEWCLOSURE                       R6 P1
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R7 0 4
       52 GETTABLEKS                       R8 R0 K6 ["Rect"]
       54 GETTABLEKS                       R9 R0 K7 ["SetRect"]
       56 GETTABLEKS                       R10 R0 K8 ["MinSize"]
       58 MOVE                             R11 R2
       59 SETLIST                          R7 R8 4 [1]
       61 CALL                             R5 2 1
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       65 NEWCLOSURE                       R7 P2
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R2
       69 NEWTABLE                         R8 0 4
       71 GETTABLEKS                       R9 R0 K6 ["Rect"]
       73 GETTABLEKS                       R10 R0 K7 ["SetRect"]
       75 GETTABLEKS                       R11 R0 K8 ["MinSize"]
       77 MOVE                             R12 R2
       78 SETLIST                          R8 R9 4 [1]
       80 CALL                             R6 2 1
       81 GETUPVAL                         R7 0
       82 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       84 NEWCLOSURE                       R8 P3
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R3
       88 NEWTABLE                         R9 0 4
       90 GETTABLEKS                       R10 R0 K6 ["Rect"]
       92 GETTABLEKS                       R11 R0 K7 ["SetRect"]
       94 GETTABLEKS                       R12 R0 K8 ["MinSize"]
       96 MOVE                             R13 R3
       97 SETLIST                          R9 R10 4 [1]
       99 CALL                             R7 2 1
      100 GETUPVAL                         R8 0
      101 GETTABLEKS                       R8 R8 K5 ["useCallback"]
      103 NEWCLOSURE                       R9 P4
      104 CAPTURE                          UPVAL U3
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R3
      107 NEWTABLE                         R10 0 4
      109 GETTABLEKS                       R11 R0 K6 ["Rect"]
      111 GETTABLEKS                       R12 R0 K7 ["SetRect"]
      113 GETTABLEKS                       R13 R0 K8 ["MinSize"]
      115 MOVE                             R14 R3
      116 SETLIST                          R10 R11 4 [1]
      118 CALL                             R8 2 1
      119 GETUPVAL                         R9 0
      120 GETTABLEKS                       R9 R9 K5 ["useCallback"]
      122 NEWCLOSURE                       R10 P5
      123 CAPTURE                          UPVAL U3
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R3
      127 NEWTABLE                         R11 0 5
      129 GETTABLEKS                       R12 R0 K6 ["Rect"]
      131 GETTABLEKS                       R13 R0 K7 ["SetRect"]
      133 GETTABLEKS                       R14 R0 K8 ["MinSize"]
      135 MOVE                             R15 R2
      136 MOVE                             R16 R3
      137 SETLIST                          R11 R12 5 [1]
      139 CALL                             R9 2 1
      140 GETUPVAL                         R10 0
      141 GETTABLEKS                       R10 R10 K5 ["useCallback"]
      143 NEWCLOSURE                       R11 P6
      144 CAPTURE                          UPVAL U3
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R3
      148 NEWTABLE                         R12 0 5
      150 GETTABLEKS                       R13 R0 K6 ["Rect"]
      152 GETTABLEKS                       R14 R0 K7 ["SetRect"]
      154 GETTABLEKS                       R15 R0 K8 ["MinSize"]
      156 MOVE                             R16 R2
      157 MOVE                             R17 R3
      158 SETLIST                          R12 R13 5 [1]
      160 CALL                             R10 2 1
      161 GETUPVAL                         R11 0
      162 GETTABLEKS                       R11 R11 K5 ["useCallback"]
      164 NEWCLOSURE                       R12 P7
      165 CAPTURE                          UPVAL U3
      166 CAPTURE                          VAL R0
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R3
      169 NEWTABLE                         R13 0 5
      171 GETTABLEKS                       R14 R0 K6 ["Rect"]
      173 GETTABLEKS                       R15 R0 K7 ["SetRect"]
      175 GETTABLEKS                       R16 R0 K8 ["MinSize"]
      177 MOVE                             R17 R2
      178 MOVE                             R18 R3
      179 SETLIST                          R13 R14 5 [1]
      181 CALL                             R11 2 1
      182 GETUPVAL                         R12 0
      183 GETTABLEKS                       R12 R12 K5 ["useCallback"]
      185 NEWCLOSURE                       R13 P8
      186 CAPTURE                          UPVAL U3
      187 CAPTURE                          VAL R0
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R3
      190 NEWTABLE                         R14 0 5
      192 GETTABLEKS                       R15 R0 K6 ["Rect"]
      194 GETTABLEKS                       R16 R0 K7 ["SetRect"]
      196 GETTABLEKS                       R17 R0 K8 ["MinSize"]
      198 MOVE                             R18 R2
      199 MOVE                             R19 R3
      200 SETLIST                          R14 R15 5 [1]
      202 CALL                             R12 2 1
      203 GETUPVAL                         R13 0
      204 GETTABLEKS                       R13 R13 K9 ["createElement"]
      206 GETUPVAL                         R14 4
      207 GETUPVAL                         R15 5
      208 GETTABLEKS                       R15 R15 K10 ["join"]
      210 MOVE                             R16 R0
      211 DUPTABLE                         R17 K12 [{"Rect", "children"}]
      212 GETTABLEKS                       R18 R0 K6 ["Rect"]
      214 SETTABLEKS                       R18 R17 K6 ["Rect"]
      216 GETUPVAL                         R18 5
      217 GETTABLEKS                       R18 R18 K10 ["join"]
      219 GETTABLEKS                       R19 R0 K11 ["children"]
      221 DUPTABLE                         R20 K22 [{"CenterInput", "Left", "Right", "Top", "Bottom", "TopLeft", "TopRight", "BottomLeft", "BottomRight"}]
      222 GETTABLEKS                       R21 R0 K23 ["DragEnabled"]
      224 JUMPIFNOT                        R21 ; [+26]
      225 GETUPVAL                         R21 0
      226 GETTABLEKS                       R21 R21 K9 ["createElement"]
      228 GETUPVAL                         R22 6
      229 DUPTABLE                         R23 K29 [{"AnchorPoint", "XSnap", "YSnap", "OnDragMoved", "ZIndex"}]
      230 GETIMPORT                        R24 K32 [Vector2.new]
      232 LOADN                            R25 0
      233 LOADN                            R26 0
      234 CALL                             R24 2 1
      235 SETTABLEKS                       R24 R23 K24 ["AnchorPoint"]
      237 GETTABLEKS                       R24 R0 K25 ["XSnap"]
      239 SETTABLEKS                       R24 R23 K25 ["XSnap"]
      241 GETTABLEKS                       R24 R0 K26 ["YSnap"]
      243 SETTABLEKS                       R24 R23 K26 ["YSnap"]
      245 SETTABLEKS                       R4 R23 K27 ["OnDragMoved"]
      247 LOADN                            R24 0
      248 SETTABLEKS                       R24 R23 K28 ["ZIndex"]
      250 CALL                             R21 2 1
      251 SETTABLEKS                       R21 R20 K13 ["CenterInput"]
      253 GETTABLEKS                       R21 R0 K33 ["EdgeLeftEnabled"]
      255 JUMPIFNOT                        R21 ; [+51]
      256 GETUPVAL                         R21 0
      257 GETTABLEKS                       R21 R21 K9 ["createElement"]
      259 LOADK                            R22 K34 ["Frame"]
      260 DUPTABLE                         R23 K39 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
      261 GETIMPORT                        R24 K42 [UDim2.fromScale]
      263 LOADN                            R25 0
      264 LOADN                            R26 0
      265 CALL                             R24 2 1
      266 SETTABLEKS                       R24 R23 K35 ["Position"]
      268 GETIMPORT                        R24 K42 [UDim2.fromScale]
      270 LOADN                            R25 0
      271 LOADN                            R26 1
      272 CALL                             R24 2 1
      273 SETTABLEKS                       R24 R23 K36 ["Size"]
      275 LOADN                            R24 1
      276 SETTABLEKS                       R24 R23 K37 ["BackgroundTransparency"]
      278 LOADN                            R24 0
      279 SETTABLEKS                       R24 R23 K38 ["BorderSizePixel"]
      281 LOADN                            R24 1
      282 SETTABLEKS                       R24 R23 K28 ["ZIndex"]
      284 DUPTABLE                         R24 K44 [{"Input"}]
      285 GETUPVAL                         R25 0
      286 GETTABLEKS                       R25 R25 K9 ["createElement"]
      288 GETUPVAL                         R26 6
      289 DUPTABLE                         R27 K46 [{"Inflate", "XSnap", "YSnap", "OnDragMoved"}]
      290 LOADN                            R28 5
      291 SETTABLEKS                       R28 R27 K45 ["Inflate"]
      293 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      295 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      297 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      299 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      301 SETTABLEKS                       R5 R27 K27 ["OnDragMoved"]
      303 CALL                             R25 2 1
      304 SETTABLEKS                       R25 R24 K43 ["Input"]
      306 CALL                             R21 3 1
      307 SETTABLEKS                       R21 R20 K14 ["Left"]
      309 GETTABLEKS                       R21 R0 K47 ["EdgeRightEnabled"]
      311 JUMPIFNOT                        R21 ; [+51]
      312 GETUPVAL                         R21 0
      313 GETTABLEKS                       R21 R21 K9 ["createElement"]
      315 LOADK                            R22 K34 ["Frame"]
      316 DUPTABLE                         R23 K39 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
      317 GETIMPORT                        R24 K42 [UDim2.fromScale]
      319 LOADN                            R25 1
      320 LOADN                            R26 0
      321 CALL                             R24 2 1
      322 SETTABLEKS                       R24 R23 K35 ["Position"]
      324 GETIMPORT                        R24 K42 [UDim2.fromScale]
      326 LOADN                            R25 0
      327 LOADN                            R26 1
      328 CALL                             R24 2 1
      329 SETTABLEKS                       R24 R23 K36 ["Size"]
      331 LOADN                            R24 1
      332 SETTABLEKS                       R24 R23 K37 ["BackgroundTransparency"]
      334 LOADN                            R24 0
      335 SETTABLEKS                       R24 R23 K38 ["BorderSizePixel"]
      337 LOADN                            R24 1
      338 SETTABLEKS                       R24 R23 K28 ["ZIndex"]
      340 DUPTABLE                         R24 K44 [{"Input"}]
      341 GETUPVAL                         R25 0
      342 GETTABLEKS                       R25 R25 K9 ["createElement"]
      344 GETUPVAL                         R26 6
      345 DUPTABLE                         R27 K46 [{"Inflate", "XSnap", "YSnap", "OnDragMoved"}]
      346 LOADN                            R28 5
      347 SETTABLEKS                       R28 R27 K45 ["Inflate"]
      349 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      351 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      353 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      355 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      357 SETTABLEKS                       R6 R27 K27 ["OnDragMoved"]
      359 CALL                             R25 2 1
      360 SETTABLEKS                       R25 R24 K43 ["Input"]
      362 CALL                             R21 3 1
      363 SETTABLEKS                       R21 R20 K15 ["Right"]
      365 GETTABLEKS                       R21 R0 K48 ["EdgeTopEnabled"]
      367 JUMPIFNOT                        R21 ; [+51]
      368 GETUPVAL                         R21 0
      369 GETTABLEKS                       R21 R21 K9 ["createElement"]
      371 LOADK                            R22 K34 ["Frame"]
      372 DUPTABLE                         R23 K39 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
      373 GETIMPORT                        R24 K42 [UDim2.fromScale]
      375 LOADN                            R25 0
      376 LOADN                            R26 0
      377 CALL                             R24 2 1
      378 SETTABLEKS                       R24 R23 K35 ["Position"]
      380 GETIMPORT                        R24 K42 [UDim2.fromScale]
      382 LOADN                            R25 1
      383 LOADN                            R26 0
      384 CALL                             R24 2 1
      385 SETTABLEKS                       R24 R23 K36 ["Size"]
      387 LOADN                            R24 1
      388 SETTABLEKS                       R24 R23 K37 ["BackgroundTransparency"]
      390 LOADN                            R24 0
      391 SETTABLEKS                       R24 R23 K38 ["BorderSizePixel"]
      393 LOADN                            R24 1
      394 SETTABLEKS                       R24 R23 K28 ["ZIndex"]
      396 DUPTABLE                         R24 K44 [{"Input"}]
      397 GETUPVAL                         R25 0
      398 GETTABLEKS                       R25 R25 K9 ["createElement"]
      400 GETUPVAL                         R26 6
      401 DUPTABLE                         R27 K46 [{"Inflate", "XSnap", "YSnap", "OnDragMoved"}]
      402 LOADN                            R28 5
      403 SETTABLEKS                       R28 R27 K45 ["Inflate"]
      405 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      407 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      409 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      411 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      413 SETTABLEKS                       R7 R27 K27 ["OnDragMoved"]
      415 CALL                             R25 2 1
      416 SETTABLEKS                       R25 R24 K43 ["Input"]
      418 CALL                             R21 3 1
      419 SETTABLEKS                       R21 R20 K16 ["Top"]
      421 GETTABLEKS                       R21 R0 K49 ["EdgeBottomEnabled"]
      423 JUMPIFNOT                        R21 ; [+51]
      424 GETUPVAL                         R21 0
      425 GETTABLEKS                       R21 R21 K9 ["createElement"]
      427 LOADK                            R22 K34 ["Frame"]
      428 DUPTABLE                         R23 K39 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
      429 GETIMPORT                        R24 K42 [UDim2.fromScale]
      431 LOADN                            R25 0
      432 LOADN                            R26 1
      433 CALL                             R24 2 1
      434 SETTABLEKS                       R24 R23 K35 ["Position"]
      436 GETIMPORT                        R24 K42 [UDim2.fromScale]
      438 LOADN                            R25 1
      439 LOADN                            R26 0
      440 CALL                             R24 2 1
      441 SETTABLEKS                       R24 R23 K36 ["Size"]
      443 LOADN                            R24 1
      444 SETTABLEKS                       R24 R23 K37 ["BackgroundTransparency"]
      446 LOADN                            R24 0
      447 SETTABLEKS                       R24 R23 K38 ["BorderSizePixel"]
      449 LOADN                            R24 1
      450 SETTABLEKS                       R24 R23 K28 ["ZIndex"]
      452 DUPTABLE                         R24 K44 [{"Input"}]
      453 GETUPVAL                         R25 0
      454 GETTABLEKS                       R25 R25 K9 ["createElement"]
      456 GETUPVAL                         R26 6
      457 DUPTABLE                         R27 K46 [{"Inflate", "XSnap", "YSnap", "OnDragMoved"}]
      458 LOADN                            R28 5
      459 SETTABLEKS                       R28 R27 K45 ["Inflate"]
      461 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      463 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      465 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      467 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      469 SETTABLEKS                       R8 R27 K27 ["OnDragMoved"]
      471 CALL                             R25 2 1
      472 SETTABLEKS                       R25 R24 K43 ["Input"]
      474 CALL                             R21 3 1
      475 SETTABLEKS                       R21 R20 K17 ["Bottom"]
      477 GETTABLEKS                       R21 R0 K50 ["CornerTopLeftEnabled"]
      479 JUMPIFNOT                        R21 ; [+51]
      480 GETUPVAL                         R21 0
      481 GETTABLEKS                       R21 R21 K9 ["createElement"]
      483 LOADK                            R22 K34 ["Frame"]
      484 DUPTABLE                         R23 K39 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
      485 GETIMPORT                        R24 K42 [UDim2.fromScale]
      487 LOADN                            R25 0
      488 LOADN                            R26 0
      489 CALL                             R24 2 1
      490 SETTABLEKS                       R24 R23 K35 ["Position"]
      492 GETIMPORT                        R24 K42 [UDim2.fromScale]
      494 LOADN                            R25 0
      495 LOADN                            R26 0
      496 CALL                             R24 2 1
      497 SETTABLEKS                       R24 R23 K36 ["Size"]
      499 LOADN                            R24 1
      500 SETTABLEKS                       R24 R23 K37 ["BackgroundTransparency"]
      502 LOADN                            R24 0
      503 SETTABLEKS                       R24 R23 K38 ["BorderSizePixel"]
      505 LOADN                            R24 2
      506 SETTABLEKS                       R24 R23 K28 ["ZIndex"]
      508 DUPTABLE                         R24 K44 [{"Input"}]
      509 GETUPVAL                         R25 0
      510 GETTABLEKS                       R25 R25 K9 ["createElement"]
      512 GETUPVAL                         R26 6
      513 DUPTABLE                         R27 K46 [{"Inflate", "XSnap", "YSnap", "OnDragMoved"}]
      514 LOADN                            R28 5
      515 SETTABLEKS                       R28 R27 K45 ["Inflate"]
      517 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      519 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      521 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      523 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      525 SETTABLEKS                       R9 R27 K27 ["OnDragMoved"]
      527 CALL                             R25 2 1
      528 SETTABLEKS                       R25 R24 K43 ["Input"]
      530 CALL                             R21 3 1
      531 SETTABLEKS                       R21 R20 K18 ["TopLeft"]
      533 GETTABLEKS                       R21 R0 K51 ["CornerTopRightEnabled"]
      535 JUMPIFNOT                        R21 ; [+51]
      536 GETUPVAL                         R21 0
      537 GETTABLEKS                       R21 R21 K9 ["createElement"]
      539 LOADK                            R22 K34 ["Frame"]
      540 DUPTABLE                         R23 K39 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
      541 GETIMPORT                        R24 K42 [UDim2.fromScale]
      543 LOADN                            R25 1
      544 LOADN                            R26 0
      545 CALL                             R24 2 1
      546 SETTABLEKS                       R24 R23 K35 ["Position"]
      548 GETIMPORT                        R24 K42 [UDim2.fromScale]
      550 LOADN                            R25 0
      551 LOADN                            R26 0
      552 CALL                             R24 2 1
      553 SETTABLEKS                       R24 R23 K36 ["Size"]
      555 LOADN                            R24 1
      556 SETTABLEKS                       R24 R23 K37 ["BackgroundTransparency"]
      558 LOADN                            R24 0
      559 SETTABLEKS                       R24 R23 K38 ["BorderSizePixel"]
      561 LOADN                            R24 2
      562 SETTABLEKS                       R24 R23 K28 ["ZIndex"]
      564 DUPTABLE                         R24 K44 [{"Input"}]
      565 GETUPVAL                         R25 0
      566 GETTABLEKS                       R25 R25 K9 ["createElement"]
      568 GETUPVAL                         R26 6
      569 DUPTABLE                         R27 K46 [{"Inflate", "XSnap", "YSnap", "OnDragMoved"}]
      570 LOADN                            R28 5
      571 SETTABLEKS                       R28 R27 K45 ["Inflate"]
      573 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      575 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      577 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      579 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      581 SETTABLEKS                       R10 R27 K27 ["OnDragMoved"]
      583 CALL                             R25 2 1
      584 SETTABLEKS                       R25 R24 K43 ["Input"]
      586 CALL                             R21 3 1
      587 SETTABLEKS                       R21 R20 K19 ["TopRight"]
      589 GETTABLEKS                       R21 R0 K52 ["CornerBottomLeftEnabled"]
      591 JUMPIFNOT                        R21 ; [+51]
      592 GETUPVAL                         R21 0
      593 GETTABLEKS                       R21 R21 K9 ["createElement"]
      595 LOADK                            R22 K34 ["Frame"]
      596 DUPTABLE                         R23 K39 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
      597 GETIMPORT                        R24 K42 [UDim2.fromScale]
      599 LOADN                            R25 0
      600 LOADN                            R26 1
      601 CALL                             R24 2 1
      602 SETTABLEKS                       R24 R23 K35 ["Position"]
      604 GETIMPORT                        R24 K42 [UDim2.fromScale]
      606 LOADN                            R25 0
      607 LOADN                            R26 0
      608 CALL                             R24 2 1
      609 SETTABLEKS                       R24 R23 K36 ["Size"]
      611 LOADN                            R24 1
      612 SETTABLEKS                       R24 R23 K37 ["BackgroundTransparency"]
      614 LOADN                            R24 0
      615 SETTABLEKS                       R24 R23 K38 ["BorderSizePixel"]
      617 LOADN                            R24 2
      618 SETTABLEKS                       R24 R23 K28 ["ZIndex"]
      620 DUPTABLE                         R24 K44 [{"Input"}]
      621 GETUPVAL                         R25 0
      622 GETTABLEKS                       R25 R25 K9 ["createElement"]
      624 GETUPVAL                         R26 6
      625 DUPTABLE                         R27 K46 [{"Inflate", "XSnap", "YSnap", "OnDragMoved"}]
      626 LOADN                            R28 5
      627 SETTABLEKS                       R28 R27 K45 ["Inflate"]
      629 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      631 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      633 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      635 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      637 SETTABLEKS                       R11 R27 K27 ["OnDragMoved"]
      639 CALL                             R25 2 1
      640 SETTABLEKS                       R25 R24 K43 ["Input"]
      642 CALL                             R21 3 1
      643 SETTABLEKS                       R21 R20 K20 ["BottomLeft"]
      645 GETTABLEKS                       R21 R0 K53 ["CornerBottomRightEnabled"]
      647 JUMPIFNOT                        R21 ; [+51]
      648 GETUPVAL                         R21 0
      649 GETTABLEKS                       R21 R21 K9 ["createElement"]
      651 LOADK                            R22 K34 ["Frame"]
      652 DUPTABLE                         R23 K39 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
      653 GETIMPORT                        R24 K42 [UDim2.fromScale]
      655 LOADN                            R25 1
      656 LOADN                            R26 1
      657 CALL                             R24 2 1
      658 SETTABLEKS                       R24 R23 K35 ["Position"]
      660 GETIMPORT                        R24 K42 [UDim2.fromScale]
      662 LOADN                            R25 0
      663 LOADN                            R26 0
      664 CALL                             R24 2 1
      665 SETTABLEKS                       R24 R23 K36 ["Size"]
      667 LOADN                            R24 1
      668 SETTABLEKS                       R24 R23 K37 ["BackgroundTransparency"]
      670 LOADN                            R24 0
      671 SETTABLEKS                       R24 R23 K38 ["BorderSizePixel"]
      673 LOADN                            R24 2
      674 SETTABLEKS                       R24 R23 K28 ["ZIndex"]
      676 DUPTABLE                         R24 K44 [{"Input"}]
      677 GETUPVAL                         R25 0
      678 GETTABLEKS                       R25 R25 K9 ["createElement"]
      680 GETUPVAL                         R26 6
      681 DUPTABLE                         R27 K46 [{"Inflate", "XSnap", "YSnap", "OnDragMoved"}]
      682 LOADN                            R28 5
      683 SETTABLEKS                       R28 R27 K45 ["Inflate"]
      685 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      687 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      689 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      691 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      693 SETTABLEKS                       R12 R27 K27 ["OnDragMoved"]
      695 CALL                             R25 2 1
      696 SETTABLEKS                       R25 R24 K43 ["Input"]
      698 CALL                             R21 3 1
      699 SETTABLEKS                       R21 R20 K21 ["BottomRight"]
      701 CALL                             R18 2 1
      702 SETTABLEKS                       R18 R17 K11 ["children"]
      704 CALL                             R15 2 -1
      705 CALL                             R13 -1 -1
      706 RETURN                           R13 -1

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
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["InputDetector"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Components"]
       35 GETTABLEKS                       R7 R7 K12 ["Panel"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Types"]
       42 CALL                             R7 1 1
       43 DUPCLOSURE                       R8 K14 [PROTO_0]
       44 DUPCLOSURE                       R9 K15 [PROTO_10]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 SETGLOBAL                        R9 K16 ["ResizablePanel"]
       54 GETGLOBAL                        R9 K16 ["ResizablePanel"]
       56 RETURN                           R9 1
