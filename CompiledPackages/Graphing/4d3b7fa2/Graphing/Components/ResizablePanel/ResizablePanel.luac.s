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
      224 JUMPIFNOT                        R21 ; [+23]
      225 GETUPVAL                         R21 0
      226 GETTABLEKS                       R21 R21 K9 ["createElement"]
      228 GETUPVAL                         R22 6
      229 DUPTABLE                         R23 K30 [{["AnchorPoint"], ["XSnap"], ["YSnap"], ["OnDragMoved"], ["ZIndex"] = 0}]
      230 GETIMPORT                        R24 K33 [Vector2.new]
      232 LOADN                            R25 0
      233 LOADN                            R26 0
      234 CALL                             R24 2 1
      235 SETTABLEKS                       R24 R23 K24 ["AnchorPoint"]
      237 GETTABLEKS                       R24 R0 K25 ["XSnap"]
      239 SETTABLEKS                       R24 R23 K25 ["XSnap"]
      241 GETTABLEKS                       R24 R0 K26 ["YSnap"]
      243 SETTABLEKS                       R24 R23 K26 ["YSnap"]
      245 SETTABLEKS                       R4 R23 K27 ["OnDragMoved"]
      247 CALL                             R21 2 1
      248 SETTABLEKS                       R21 R20 K13 ["CenterInput"]
      250 GETTABLEKS                       R21 R0 K34 ["EdgeLeftEnabled"]
      252 JUMPIFNOT                        R21 ; [+39]
      253 GETUPVAL                         R21 0
      254 GETTABLEKS                       R21 R21 K9 ["createElement"]
      256 LOADK                            R22 K35 ["Frame"]
      257 DUPTABLE                         R23 K41 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 1}]
      258 GETIMPORT                        R24 K44 [UDim2.fromScale]
      260 LOADN                            R25 0
      261 LOADN                            R26 0
      262 CALL                             R24 2 1
      263 SETTABLEKS                       R24 R23 K36 ["Position"]
      265 GETIMPORT                        R24 K44 [UDim2.fromScale]
      267 LOADN                            R25 0
      268 LOADN                            R26 1
      269 CALL                             R24 2 1
      270 SETTABLEKS                       R24 R23 K37 ["Size"]
      272 DUPTABLE                         R24 K46 [{"Input"}]
      273 GETUPVAL                         R25 0
      274 GETTABLEKS                       R25 R25 K9 ["createElement"]
      276 GETUPVAL                         R26 6
      277 DUPTABLE                         R27 K49 [{["Inflate"] = 5, ["XSnap"], ["YSnap"], ["OnDragMoved"]}]
      278 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      280 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      282 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      284 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      286 SETTABLEKS                       R5 R27 K27 ["OnDragMoved"]
      288 CALL                             R25 2 1
      289 SETTABLEKS                       R25 R24 K45 ["Input"]
      291 CALL                             R21 3 1
      292 SETTABLEKS                       R21 R20 K14 ["Left"]
      294 GETTABLEKS                       R21 R0 K50 ["EdgeRightEnabled"]
      296 JUMPIFNOT                        R21 ; [+39]
      297 GETUPVAL                         R21 0
      298 GETTABLEKS                       R21 R21 K9 ["createElement"]
      300 LOADK                            R22 K35 ["Frame"]
      301 DUPTABLE                         R23 K41 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 1}]
      302 GETIMPORT                        R24 K44 [UDim2.fromScale]
      304 LOADN                            R25 1
      305 LOADN                            R26 0
      306 CALL                             R24 2 1
      307 SETTABLEKS                       R24 R23 K36 ["Position"]
      309 GETIMPORT                        R24 K44 [UDim2.fromScale]
      311 LOADN                            R25 0
      312 LOADN                            R26 1
      313 CALL                             R24 2 1
      314 SETTABLEKS                       R24 R23 K37 ["Size"]
      316 DUPTABLE                         R24 K46 [{"Input"}]
      317 GETUPVAL                         R25 0
      318 GETTABLEKS                       R25 R25 K9 ["createElement"]
      320 GETUPVAL                         R26 6
      321 DUPTABLE                         R27 K49 [{["Inflate"] = 5, ["XSnap"], ["YSnap"], ["OnDragMoved"]}]
      322 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      324 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      326 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      328 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      330 SETTABLEKS                       R6 R27 K27 ["OnDragMoved"]
      332 CALL                             R25 2 1
      333 SETTABLEKS                       R25 R24 K45 ["Input"]
      335 CALL                             R21 3 1
      336 SETTABLEKS                       R21 R20 K15 ["Right"]
      338 GETTABLEKS                       R21 R0 K51 ["EdgeTopEnabled"]
      340 JUMPIFNOT                        R21 ; [+39]
      341 GETUPVAL                         R21 0
      342 GETTABLEKS                       R21 R21 K9 ["createElement"]
      344 LOADK                            R22 K35 ["Frame"]
      345 DUPTABLE                         R23 K41 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 1}]
      346 GETIMPORT                        R24 K44 [UDim2.fromScale]
      348 LOADN                            R25 0
      349 LOADN                            R26 0
      350 CALL                             R24 2 1
      351 SETTABLEKS                       R24 R23 K36 ["Position"]
      353 GETIMPORT                        R24 K44 [UDim2.fromScale]
      355 LOADN                            R25 1
      356 LOADN                            R26 0
      357 CALL                             R24 2 1
      358 SETTABLEKS                       R24 R23 K37 ["Size"]
      360 DUPTABLE                         R24 K46 [{"Input"}]
      361 GETUPVAL                         R25 0
      362 GETTABLEKS                       R25 R25 K9 ["createElement"]
      364 GETUPVAL                         R26 6
      365 DUPTABLE                         R27 K49 [{["Inflate"] = 5, ["XSnap"], ["YSnap"], ["OnDragMoved"]}]
      366 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      368 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      370 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      372 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      374 SETTABLEKS                       R7 R27 K27 ["OnDragMoved"]
      376 CALL                             R25 2 1
      377 SETTABLEKS                       R25 R24 K45 ["Input"]
      379 CALL                             R21 3 1
      380 SETTABLEKS                       R21 R20 K16 ["Top"]
      382 GETTABLEKS                       R21 R0 K52 ["EdgeBottomEnabled"]
      384 JUMPIFNOT                        R21 ; [+39]
      385 GETUPVAL                         R21 0
      386 GETTABLEKS                       R21 R21 K9 ["createElement"]
      388 LOADK                            R22 K35 ["Frame"]
      389 DUPTABLE                         R23 K41 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 1}]
      390 GETIMPORT                        R24 K44 [UDim2.fromScale]
      392 LOADN                            R25 0
      393 LOADN                            R26 1
      394 CALL                             R24 2 1
      395 SETTABLEKS                       R24 R23 K36 ["Position"]
      397 GETIMPORT                        R24 K44 [UDim2.fromScale]
      399 LOADN                            R25 1
      400 LOADN                            R26 0
      401 CALL                             R24 2 1
      402 SETTABLEKS                       R24 R23 K37 ["Size"]
      404 DUPTABLE                         R24 K46 [{"Input"}]
      405 GETUPVAL                         R25 0
      406 GETTABLEKS                       R25 R25 K9 ["createElement"]
      408 GETUPVAL                         R26 6
      409 DUPTABLE                         R27 K49 [{["Inflate"] = 5, ["XSnap"], ["YSnap"], ["OnDragMoved"]}]
      410 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      412 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      414 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      416 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      418 SETTABLEKS                       R8 R27 K27 ["OnDragMoved"]
      420 CALL                             R25 2 1
      421 SETTABLEKS                       R25 R24 K45 ["Input"]
      423 CALL                             R21 3 1
      424 SETTABLEKS                       R21 R20 K17 ["Bottom"]
      426 GETTABLEKS                       R21 R0 K53 ["CornerTopLeftEnabled"]
      428 JUMPIFNOT                        R21 ; [+39]
      429 GETUPVAL                         R21 0
      430 GETTABLEKS                       R21 R21 K9 ["createElement"]
      432 LOADK                            R22 K35 ["Frame"]
      433 DUPTABLE                         R23 K55 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      434 GETIMPORT                        R24 K44 [UDim2.fromScale]
      436 LOADN                            R25 0
      437 LOADN                            R26 0
      438 CALL                             R24 2 1
      439 SETTABLEKS                       R24 R23 K36 ["Position"]
      441 GETIMPORT                        R24 K44 [UDim2.fromScale]
      443 LOADN                            R25 0
      444 LOADN                            R26 0
      445 CALL                             R24 2 1
      446 SETTABLEKS                       R24 R23 K37 ["Size"]
      448 DUPTABLE                         R24 K46 [{"Input"}]
      449 GETUPVAL                         R25 0
      450 GETTABLEKS                       R25 R25 K9 ["createElement"]
      452 GETUPVAL                         R26 6
      453 DUPTABLE                         R27 K49 [{["Inflate"] = 5, ["XSnap"], ["YSnap"], ["OnDragMoved"]}]
      454 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      456 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      458 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      460 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      462 SETTABLEKS                       R9 R27 K27 ["OnDragMoved"]
      464 CALL                             R25 2 1
      465 SETTABLEKS                       R25 R24 K45 ["Input"]
      467 CALL                             R21 3 1
      468 SETTABLEKS                       R21 R20 K18 ["TopLeft"]
      470 GETTABLEKS                       R21 R0 K56 ["CornerTopRightEnabled"]
      472 JUMPIFNOT                        R21 ; [+39]
      473 GETUPVAL                         R21 0
      474 GETTABLEKS                       R21 R21 K9 ["createElement"]
      476 LOADK                            R22 K35 ["Frame"]
      477 DUPTABLE                         R23 K55 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      478 GETIMPORT                        R24 K44 [UDim2.fromScale]
      480 LOADN                            R25 1
      481 LOADN                            R26 0
      482 CALL                             R24 2 1
      483 SETTABLEKS                       R24 R23 K36 ["Position"]
      485 GETIMPORT                        R24 K44 [UDim2.fromScale]
      487 LOADN                            R25 0
      488 LOADN                            R26 0
      489 CALL                             R24 2 1
      490 SETTABLEKS                       R24 R23 K37 ["Size"]
      492 DUPTABLE                         R24 K46 [{"Input"}]
      493 GETUPVAL                         R25 0
      494 GETTABLEKS                       R25 R25 K9 ["createElement"]
      496 GETUPVAL                         R26 6
      497 DUPTABLE                         R27 K49 [{["Inflate"] = 5, ["XSnap"], ["YSnap"], ["OnDragMoved"]}]
      498 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      500 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      502 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      504 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      506 SETTABLEKS                       R10 R27 K27 ["OnDragMoved"]
      508 CALL                             R25 2 1
      509 SETTABLEKS                       R25 R24 K45 ["Input"]
      511 CALL                             R21 3 1
      512 SETTABLEKS                       R21 R20 K19 ["TopRight"]
      514 GETTABLEKS                       R21 R0 K57 ["CornerBottomLeftEnabled"]
      516 JUMPIFNOT                        R21 ; [+39]
      517 GETUPVAL                         R21 0
      518 GETTABLEKS                       R21 R21 K9 ["createElement"]
      520 LOADK                            R22 K35 ["Frame"]
      521 DUPTABLE                         R23 K55 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      522 GETIMPORT                        R24 K44 [UDim2.fromScale]
      524 LOADN                            R25 0
      525 LOADN                            R26 1
      526 CALL                             R24 2 1
      527 SETTABLEKS                       R24 R23 K36 ["Position"]
      529 GETIMPORT                        R24 K44 [UDim2.fromScale]
      531 LOADN                            R25 0
      532 LOADN                            R26 0
      533 CALL                             R24 2 1
      534 SETTABLEKS                       R24 R23 K37 ["Size"]
      536 DUPTABLE                         R24 K46 [{"Input"}]
      537 GETUPVAL                         R25 0
      538 GETTABLEKS                       R25 R25 K9 ["createElement"]
      540 GETUPVAL                         R26 6
      541 DUPTABLE                         R27 K49 [{["Inflate"] = 5, ["XSnap"], ["YSnap"], ["OnDragMoved"]}]
      542 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      544 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      546 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      548 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      550 SETTABLEKS                       R11 R27 K27 ["OnDragMoved"]
      552 CALL                             R25 2 1
      553 SETTABLEKS                       R25 R24 K45 ["Input"]
      555 CALL                             R21 3 1
      556 SETTABLEKS                       R21 R20 K20 ["BottomLeft"]
      558 GETTABLEKS                       R21 R0 K58 ["CornerBottomRightEnabled"]
      560 JUMPIFNOT                        R21 ; [+39]
      561 GETUPVAL                         R21 0
      562 GETTABLEKS                       R21 R21 K9 ["createElement"]
      564 LOADK                            R22 K35 ["Frame"]
      565 DUPTABLE                         R23 K55 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      566 GETIMPORT                        R24 K44 [UDim2.fromScale]
      568 LOADN                            R25 1
      569 LOADN                            R26 1
      570 CALL                             R24 2 1
      571 SETTABLEKS                       R24 R23 K36 ["Position"]
      573 GETIMPORT                        R24 K44 [UDim2.fromScale]
      575 LOADN                            R25 0
      576 LOADN                            R26 0
      577 CALL                             R24 2 1
      578 SETTABLEKS                       R24 R23 K37 ["Size"]
      580 DUPTABLE                         R24 K46 [{"Input"}]
      581 GETUPVAL                         R25 0
      582 GETTABLEKS                       R25 R25 K9 ["createElement"]
      584 GETUPVAL                         R26 6
      585 DUPTABLE                         R27 K49 [{["Inflate"] = 5, ["XSnap"], ["YSnap"], ["OnDragMoved"]}]
      586 GETTABLEKS                       R28 R0 K25 ["XSnap"]
      588 SETTABLEKS                       R28 R27 K25 ["XSnap"]
      590 GETTABLEKS                       R28 R0 K26 ["YSnap"]
      592 SETTABLEKS                       R28 R27 K26 ["YSnap"]
      594 SETTABLEKS                       R12 R27 K27 ["OnDragMoved"]
      596 CALL                             R25 2 1
      597 SETTABLEKS                       R25 R24 K45 ["Input"]
      599 CALL                             R21 3 1
      600 SETTABLEKS                       R21 R20 K21 ["BottomRight"]
      602 CALL                             R18 2 1
      603 SETTABLEKS                       R18 R17 K11 ["children"]
      605 CALL                             R15 2 -1
      606 CALL                             R13 -1 -1
      607 RETURN                           R13 -1

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
