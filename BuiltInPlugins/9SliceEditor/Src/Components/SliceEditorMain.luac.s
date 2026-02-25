PROTO_0:
        0 LOADB                            R2 0
        1 GETUPVAL                         R4 0
        2 GETTABLE                         R3 R0 R4
        3 GETUPVAL                         R5 0
        4 GETTABLE                         R4 R1 R5
        5 JUMPIFNOTEQ                      R3 R4 ; [+23]
        7 LOADB                            R2 0
        8 GETUPVAL                         R4 1
        9 GETTABLE                         R3 R0 R4
       10 GETUPVAL                         R5 1
       11 GETTABLE                         R4 R1 R5
       12 JUMPIFNOTEQ                      R3 R4 ; [+16]
       14 LOADB                            R2 0
       15 GETUPVAL                         R4 2
       16 GETTABLE                         R3 R0 R4
       17 GETUPVAL                         R5 2
       18 GETTABLE                         R4 R1 R5
       19 JUMPIFNOTEQ                      R3 R4 ; [+9]
       21 GETUPVAL                         R4 3
       22 GETTABLE                         R3 R0 R4
       23 GETUPVAL                         R5 3
       24 GETTABLE                         R4 R1 R5
       25 JUMPIFEQ                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["imageRectSize"]
        5 JUMPIFNOT                        R0 ; [+11]
        6 GETTABLEKS                       R1 R0 K2 ["X"]
        8 LOADN                            R2 0
        9 JUMPIFNOTLT                      R2 R1 ; [+7]
       11 GETTABLEKS                       R1 R0 K3 ["Y"]
       13 LOADN                            R2 0
       14 JUMPIFNOTLT                      R2 R1 ; [+2]
       16 RETURN                           R0 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K0 ["props"]
       20 GETTABLEKS                       R1 R2 K4 ["pixelDimensions"]
       22 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getImageDimensions"]
        3 CALL                             R1 0 1
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 GETUPVAL                         R9 1
        9 GETTABLE                         R8 R0 R9
       10 FASTCALL1                        MATH_ROUND R8 ; [+2]
       11 GETIMPORT                        R7 K3 [math.round]
       13 CALL                             R7 1 1
       14 LOADN                            R8 0
       15 GETTABLEKS                       R9 R1 K4 ["X"]
       17 FASTCALL                         MATH_CLAMP ; [+2]
       18 GETIMPORT                        R6 K6 [math.clamp]
       20 CALL                             R6 3 1
       21 MOVE                             R2 R6
       22 GETUPVAL                         R9 2
       23 GETTABLE                         R8 R0 R9
       24 FASTCALL1                        MATH_ROUND R8 ; [+2]
       25 GETIMPORT                        R7 K3 [math.round]
       27 CALL                             R7 1 1
       28 LOADN                            R8 0
       29 GETTABLEKS                       R9 R1 K4 ["X"]
       31 FASTCALL                         MATH_CLAMP ; [+2]
       32 GETIMPORT                        R6 K6 [math.clamp]
       34 CALL                             R6 3 1
       35 MOVE                             R3 R6
       36 GETUPVAL                         R9 3
       37 GETTABLE                         R8 R0 R9
       38 FASTCALL1                        MATH_ROUND R8 ; [+2]
       39 GETIMPORT                        R7 K3 [math.round]
       41 CALL                             R7 1 1
       42 LOADN                            R8 0
       43 GETTABLEKS                       R9 R1 K7 ["Y"]
       45 FASTCALL                         MATH_CLAMP ; [+2]
       46 GETIMPORT                        R6 K6 [math.clamp]
       48 CALL                             R6 3 1
       49 MOVE                             R4 R6
       50 GETUPVAL                         R9 4
       51 GETTABLE                         R8 R0 R9
       52 FASTCALL1                        MATH_ROUND R8 ; [+2]
       53 GETIMPORT                        R7 K3 [math.round]
       55 CALL                             R7 1 1
       56 LOADN                            R8 0
       57 GETTABLEKS                       R9 R1 K7 ["Y"]
       59 FASTCALL                         MATH_CLAMP ; [+2]
       60 GETIMPORT                        R6 K6 [math.clamp]
       62 CALL                             R6 3 1
       63 MOVE                             R5 R6
       64 NEWTABLE                         R6 0 4
       66 MOVE                             R7 R2
       67 MOVE                             R8 R3
       68 MOVE                             R9 R4
       69 MOVE                             R10 R5
       70 SETLIST                          R6 R7 4 [1]
       72 RETURN                           R6 1

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["clampAndRoundSliceRect"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 MOVE                             R2 R3
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K1 ["props"]
       11 GETTABLEKS                       R3 R4 K2 ["selectedObject"]
       13 JUMPIFNOT                        R3 ; [+18]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K1 ["props"]
       17 GETTABLEKS                       R3 R4 K2 ["selectedObject"]
       19 GETIMPORT                        R4 K5 [Rect.new]
       21 GETUPVAL                         R6 1
       22 GETTABLE                         R5 R2 R6
       23 GETUPVAL                         R7 2
       24 GETTABLE                         R6 R2 R7
       25 GETUPVAL                         R8 3
       26 GETTABLE                         R7 R2 R8
       27 GETUPVAL                         R9 4
       28 GETTABLE                         R8 R2 R9
       29 CALL                             R4 4 1
       30 SETTABLEKS                       R4 R3 K6 ["SliceCenter"]
       32 GETUPVAL                         R3 5
       33 LOADK                            R5 K7 ["9SliceEditor changed SliceCenter"]
       34 NAMECALL                         R3 R3 K8 ["SetWaypoint"]
       36 CALL                             R3 2 0
       37 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setSliceRect"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["props"]
        6 GETTABLEKS                       R1 R2 K2 ["revertSliceRect"]
        8 LOADB                            R2 0
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R2 R0 K0 ["getImageDimensions"]
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 SETTABLEKS                       R2 R0 K1 ["clampAndRoundSliceRect"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 SETTABLEKS                       R2 R0 K2 ["setSliceRect"]
       21 NEWCLOSURE                       R2 P3
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R0 K3 ["onRevert"]
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["resetCursor"]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R3 K2 ["Mouse"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["selectedObject"]
        6 GETTABLEKS                       R4 R0 K3 ["getImageDimensions"]
        8 CALL                             R4 0 1
        9 GETTABLEKS                       R5 R0 K4 ["setSliceRect"]
       11 GETTABLEKS                       R6 R1 K5 ["sliceRect"]
       13 GETTABLEKS                       R7 R1 K6 ["Localization"]
       15 GETTABLEKS                       R9 R1 K1 ["Stylizer"]
       17 GETTABLEKS                       R8 R9 K7 ["Button"]
       19 LOADB                            R9 0
       20 JUMPIF                           R3 ; [+126]
       21 LOADK                            R12 K8 ["SliceEditor"]
       22 LOADK                            R13 K9 ["NoImageSelectedMessage"]
       23 NAMECALL                         R10 R7 K10 ["getText"]
       25 CALL                             R10 3 1
       26 GETTABLEKS                       R11 R1 K11 ["loading"]
       28 JUMPIFNOT                        R11 ; [+6]
       29 LOADK                            R13 K8 ["SliceEditor"]
       30 LOADK                            R14 K12 ["ImageLoadingMessage"]
       31 NAMECALL                         R11 R7 K10 ["getText"]
       33 CALL                             R11 3 1
       34 MOVE                             R10 R11
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R11 R12 K13 ["createElement"]
       38 GETUPVAL                         R12 1
       39 DUPTABLE                         R13 K17 [{"Style", "Size", "Position"}]
       40 LOADK                            R14 K18 ["Box"]
       41 SETTABLEKS                       R14 R13 K14 ["Style"]
       43 GETIMPORT                        R14 K21 [UDim2.fromScale]
       45 LOADN                            R15 1
       46 LOADN                            R16 1
       47 CALL                             R14 2 1
       48 SETTABLEKS                       R14 R13 K15 ["Size"]
       50 GETIMPORT                        R14 K23 [UDim2.fromOffset]
       52 LOADN                            R15 0
       53 LOADN                            R16 0
       54 CALL                             R14 2 1
       55 SETTABLEKS                       R14 R13 K16 ["Position"]
       57 DUPTABLE                         R14 K26 [{"EntireFrame", "LoadingImage"}]
       58 GETUPVAL                         R16 0
       59 GETTABLEKS                       R15 R16 K13 ["createElement"]
       61 GETUPVAL                         R16 1
       62 DUPTABLE                         R17 K29 [{"AutomaticSize", "AnchorPoint", "Position"}]
       63 GETIMPORT                        R18 K32 [Enum.AutomaticSize.XY]
       65 SETTABLEKS                       R18 R17 K27 ["AutomaticSize"]
       67 GETIMPORT                        R18 K35 [Vector2.new]
       69 LOADK                            R19 K36 [0.5]
       70 LOADK                            R20 K36 [0.5]
       71 CALL                             R18 2 1
       72 SETTABLEKS                       R18 R17 K28 ["AnchorPoint"]
       74 GETIMPORT                        R18 K21 [UDim2.fromScale]
       76 LOADK                            R19 K36 [0.5]
       77 LOADK                            R20 K36 [0.5]
       78 CALL                             R18 2 1
       79 SETTABLEKS                       R18 R17 K16 ["Position"]
       81 DUPTABLE                         R18 K38 [{"Message"}]
       82 GETUPVAL                         R20 0
       83 GETTABLEKS                       R19 R20 K13 ["createElement"]
       85 GETUPVAL                         R20 2
       86 DUPTABLE                         R21 K41 [{"Text", "TextWrapped", "Size"}]
       87 SETTABLEKS                       R10 R21 K39 ["Text"]
       89 LOADB                            R22 1
       90 SETTABLEKS                       R22 R21 K40 ["TextWrapped"]
       92 GETTABLEKS                       R22 R2 K42 ["InfoBoxSize"]
       94 SETTABLEKS                       R22 R21 K15 ["Size"]
       96 CALL                             R19 2 1
       97 SETTABLEKS                       R19 R18 K37 ["Message"]
       99 CALL                             R15 3 1
      100 SETTABLEKS                       R15 R14 K24 ["EntireFrame"]
      102 GETUPVAL                         R16 0
      103 GETTABLEKS                       R15 R16 K13 ["createElement"]
      105 LOADK                            R16 K43 ["ImageLabel"]
      106 NEWTABLE                         R17 8 0
      108 LOADN                            R18 1
      109 SETTABLEKS                       R18 R17 K44 ["BackgroundTransparency"]
      111 LOADK                            R18 K45 [0.99]
      112 SETTABLEKS                       R18 R17 K46 ["ImageTransparency"]
      114 GETTABLEKS                       R18 R1 K47 ["contentIdToLoad"]
      116 SETTABLEKS                       R18 R17 K48 ["Image"]
      118 GETIMPORT                        R18 K23 [UDim2.fromOffset]
      120 LOADN                            R19 1
      121 LOADN                            R20 1
      122 CALL                             R18 2 1
      123 SETTABLEKS                       R18 R17 K15 ["Size"]
      125 GETIMPORT                        R18 K23 [UDim2.fromOffset]
      127 LOADN                            R19 0
      128 LOADN                            R20 0
      129 CALL                             R18 2 1
      130 SETTABLEKS                       R18 R17 K16 ["Position"]
      132 GETIMPORT                        R18 K51 [Enum.ScaleType.Fit]
      134 SETTABLEKS                       R18 R17 K49 ["ScaleType"]
      136 GETUPVAL                         R19 0
      137 GETTABLEKS                       R18 R19 K52 ["Ref"]
      139 GETTABLEKS                       R19 R1 K53 ["loadingImageRef"]
      141 SETTABLE                         R19 R17 R18
      142 CALL                             R15 2 1
      143 SETTABLEKS                       R15 R14 K25 ["LoadingImage"]
      145 CALL                             R11 3 -1
      146 RETURN                           R11 -1
      147 GETTABLEKS                       R11 R1 K5 ["sliceRect"]
      149 GETTABLEKS                       R12 R1 K54 ["revertSliceRect"]
      151 LOADB                            R10 0
      152 GETUPVAL                         R14 3
      153 GETTABLE                         R13 R11 R14
      154 GETUPVAL                         R15 3
      155 GETTABLE                         R14 R12 R15
      156 JUMPIFNOTEQ                      R13 R14 ; [+23]
      158 LOADB                            R10 0
      159 GETUPVAL                         R14 4
      160 GETTABLE                         R13 R11 R14
      161 GETUPVAL                         R15 4
      162 GETTABLE                         R14 R12 R15
      163 JUMPIFNOTEQ                      R13 R14 ; [+16]
      165 LOADB                            R10 0
      166 GETUPVAL                         R14 5
      167 GETTABLE                         R13 R11 R14
      168 GETUPVAL                         R15 5
      169 GETTABLE                         R14 R12 R15
      170 JUMPIFNOTEQ                      R13 R14 ; [+9]
      172 GETUPVAL                         R14 6
      173 GETTABLE                         R13 R11 R14
      174 GETUPVAL                         R15 6
      175 GETTABLE                         R14 R12 R15
      176 JUMPIFEQ                         R13 R14 ; [+2]
      178 LOADB                            R10 0 +1
      179 LOADB                            R10 1
      180 JUMPIF                           R10 ; [+1]
      181 LOADB                            R9 1
      182 GETUPVAL                         R11 0
      183 GETTABLEKS                       R10 R11 K13 ["createElement"]
      185 GETUPVAL                         R11 1
      186 DUPTABLE                         R12 K59 [{"Style", "Size", "Position", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
      187 LOADK                            R13 K18 ["Box"]
      188 SETTABLEKS                       R13 R12 K14 ["Style"]
      190 GETIMPORT                        R13 K21 [UDim2.fromScale]
      192 LOADN                            R14 1
      193 LOADN                            R15 1
      194 CALL                             R13 2 1
      195 SETTABLEKS                       R13 R12 K15 ["Size"]
      197 GETIMPORT                        R13 K23 [UDim2.fromOffset]
      199 LOADN                            R14 0
      200 LOADN                            R15 0
      201 CALL                             R13 2 1
      202 SETTABLEKS                       R13 R12 K16 ["Position"]
      204 GETIMPORT                        R13 K62 [Enum.FillDirection.Vertical]
      206 SETTABLEKS                       R13 R12 K55 ["Layout"]
      208 LOADN                            R13 0
      209 SETTABLEKS                       R13 R12 K56 ["Spacing"]
      211 GETIMPORT                        R13 K64 [Enum.HorizontalAlignment.Center]
      213 SETTABLEKS                       R13 R12 K57 ["HorizontalAlignment"]
      215 GETIMPORT                        R13 K66 [Enum.VerticalAlignment.Top]
      217 SETTABLEKS                       R13 R12 K58 ["VerticalAlignment"]
      219 DUPTABLE                         R13 K69 [{"Upper", "Lower"}]
      220 GETUPVAL                         R15 0
      221 GETTABLEKS                       R14 R15 K13 ["createElement"]
      223 GETUPVAL                         R15 1
      224 DUPTABLE                         R16 K71 [{"Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
      225 GETIMPORT                        R17 K72 [UDim2.new]
      227 LOADN                            R18 1
      228 LOADN                            R19 0
      229 LOADN                            R20 1
      230 GETTABLEKS                       R24 R2 K73 ["ButtonsAreaSize"]
      232 GETTABLEKS                       R23 R24 K74 ["Y"]
      234 GETTABLEKS                       R22 R23 K75 ["Offset"]
      236 MINUS                            R21 R22
      237 CALL                             R17 4 1
      238 SETTABLEKS                       R17 R16 K15 ["Size"]
      240 GETIMPORT                        R17 K77 [Enum.FillDirection.Horizontal]
      242 SETTABLEKS                       R17 R16 K55 ["Layout"]
      244 GETIMPORT                        R17 K79 [Enum.HorizontalAlignment.Left]
      246 SETTABLEKS                       R17 R16 K57 ["HorizontalAlignment"]
      248 GETIMPORT                        R17 K80 [Enum.VerticalAlignment.Center]
      250 SETTABLEKS                       R17 R16 K58 ["VerticalAlignment"]
      252 LOADN                            R17 0
      253 SETTABLEKS                       R17 R16 K56 ["Spacing"]
      255 DUPTABLE                         R17 K83 [{"Top", "Left", "Right", "Bottom"}]
      256 GETTABLEKS                       R18 R2 K84 ["PaddingPx"]
      258 SETTABLEKS                       R18 R17 K65 ["Top"]
      260 GETTABLEKS                       R18 R2 K84 ["PaddingPx"]
      262 SETTABLEKS                       R18 R17 K78 ["Left"]
      264 GETTABLEKS                       R18 R2 K84 ["PaddingPx"]
      266 SETTABLEKS                       R18 R17 K81 ["Right"]
      268 LOADN                            R18 0
      269 SETTABLEKS                       R18 R17 K82 ["Bottom"]
      271 SETTABLEKS                       R17 R16 K70 ["Padding"]
      273 DUPTABLE                         R17 K87 [{"ImageEditorComponent", "TextEditorComponent"}]
      274 GETUPVAL                         R19 0
      275 GETTABLEKS                       R18 R19 K13 ["createElement"]
      277 GETUPVAL                         R19 7
      278 DUPTABLE                         R20 K95 [{"layoutOrder", "size", "selectedObject", "pixelDimensions", "setSliceRect", "sliceRect", "imageRectOffset", "imageRectSize", "imageColor3", "resampleMode"}]
      279 LOADN                            R21 1
      280 SETTABLEKS                       R21 R20 K88 ["layoutOrder"]
      282 GETIMPORT                        R21 K72 [UDim2.new]
      284 GETTABLEKS                       R23 R2 K97 ["TextAreaXWindowScaleFactor"]
      286 SUBRK                            R22 R96 K23 [UDim2.fromOffset]
      287 GETTABLEKS                       R26 R2 K98 ["TextAreaSize"]
      289 GETTABLEKS                       R25 R26 K99 ["X"]
      291 GETTABLEKS                       R24 R25 K75 ["Offset"]
      293 MINUS                            R23 R24
      294 LOADN                            R24 1
      295 LOADN                            R25 0
      296 CALL                             R21 4 1
      297 SETTABLEKS                       R21 R20 K89 ["size"]
      299 SETTABLEKS                       R3 R20 K2 ["selectedObject"]
      301 SETTABLEKS                       R4 R20 K90 ["pixelDimensions"]
      303 SETTABLEKS                       R5 R20 K4 ["setSliceRect"]
      305 SETTABLEKS                       R6 R20 K5 ["sliceRect"]
      307 GETTABLEKS                       R21 R1 K91 ["imageRectOffset"]
      309 SETTABLEKS                       R21 R20 K91 ["imageRectOffset"]
      311 SETTABLEKS                       R4 R20 K92 ["imageRectSize"]
      313 GETTABLEKS                       R21 R1 K93 ["imageColor3"]
      315 SETTABLEKS                       R21 R20 K93 ["imageColor3"]
      317 GETTABLEKS                       R21 R1 K94 ["resampleMode"]
      319 SETTABLEKS                       R21 R20 K94 ["resampleMode"]
      321 CALL                             R18 2 1
      322 SETTABLEKS                       R18 R17 K85 ["ImageEditorComponent"]
      324 GETUPVAL                         R19 0
      325 GETTABLEKS                       R18 R19 K13 ["createElement"]
      327 GETUPVAL                         R19 8
      328 DUPTABLE                         R20 K100 [{"layoutOrder", "size", "pixelDimensions", "setSliceRect", "sliceRect"}]
      329 LOADN                            R21 2
      330 SETTABLEKS                       R21 R20 K88 ["layoutOrder"]
      332 GETIMPORT                        R21 K72 [UDim2.new]
      334 GETTABLEKS                       R22 R2 K97 ["TextAreaXWindowScaleFactor"]
      336 GETTABLEKS                       R25 R2 K98 ["TextAreaSize"]
      338 GETTABLEKS                       R24 R25 K99 ["X"]
      340 GETTABLEKS                       R23 R24 K75 ["Offset"]
      342 LOADN                            R24 0
      343 GETTABLEKS                       R27 R2 K98 ["TextAreaSize"]
      345 GETTABLEKS                       R26 R27 K74 ["Y"]
      347 GETTABLEKS                       R25 R26 K75 ["Offset"]
      349 CALL                             R21 4 1
      350 SETTABLEKS                       R21 R20 K89 ["size"]
      352 SETTABLEKS                       R4 R20 K90 ["pixelDimensions"]
      354 SETTABLEKS                       R5 R20 K4 ["setSliceRect"]
      356 SETTABLEKS                       R6 R20 K5 ["sliceRect"]
      358 CALL                             R18 2 1
      359 SETTABLEKS                       R18 R17 K86 ["TextEditorComponent"]
      361 CALL                             R14 3 1
      362 SETTABLEKS                       R14 R13 K67 ["Upper"]
      364 GETUPVAL                         R15 0
      365 GETTABLEKS                       R14 R15 K13 ["createElement"]
      367 GETUPVAL                         R15 1
      368 DUPTABLE                         R16 K102 [{"LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Size", "Position", "Spacing"}]
      369 LOADN                            R17 2
      370 SETTABLEKS                       R17 R16 K101 ["LayoutOrder"]
      372 GETIMPORT                        R17 K77 [Enum.FillDirection.Horizontal]
      374 SETTABLEKS                       R17 R16 K55 ["Layout"]
      376 GETIMPORT                        R17 K64 [Enum.HorizontalAlignment.Center]
      378 SETTABLEKS                       R17 R16 K57 ["HorizontalAlignment"]
      380 GETIMPORT                        R17 K80 [Enum.VerticalAlignment.Center]
      382 SETTABLEKS                       R17 R16 K58 ["VerticalAlignment"]
      384 GETIMPORT                        R17 K72 [UDim2.new]
      386 LOADN                            R18 1
      387 LOADN                            R19 0
      388 LOADN                            R20 0
      389 GETTABLEKS                       R23 R2 K73 ["ButtonsAreaSize"]
      391 GETTABLEKS                       R22 R23 K74 ["Y"]
      393 GETTABLEKS                       R21 R22 K75 ["Offset"]
      395 CALL                             R17 4 1
      396 SETTABLEKS                       R17 R16 K15 ["Size"]
      398 GETIMPORT                        R17 K23 [UDim2.fromOffset]
      400 LOADN                            R18 0
      401 GETTABLEKS                       R19 R2 K103 ["ButtonsAreaYPos"]
      403 CALL                             R17 2 1
      404 SETTABLEKS                       R17 R16 K16 ["Position"]
      406 GETTABLEKS                       R17 R2 K104 ["ButtonsSpacing"]
      408 SETTABLEKS                       R17 R16 K56 ["Spacing"]
      410 DUPTABLE                         R17 K107 [{"CloseButton", "RevertButton"}]
      411 GETUPVAL                         R19 0
      412 GETTABLEKS                       R18 R19 K13 ["createElement"]
      414 GETUPVAL                         R19 9
      415 DUPTABLE                         R20 K109 [{"OnClick", "Size", "Style", "LayoutOrder", "Text"}]
      416 GETTABLEKS                       R21 R1 K110 ["onClose"]
      418 SETTABLEKS                       R21 R20 K108 ["OnClick"]
      420 GETTABLEKS                       R21 R8 K15 ["Size"]
      422 SETTABLEKS                       R21 R20 K15 ["Size"]
      424 GETTABLEKS                       R21 R8 K14 ["Style"]
      426 SETTABLEKS                       R21 R20 K14 ["Style"]
      428 LOADN                            R21 1
      429 SETTABLEKS                       R21 R20 K101 ["LayoutOrder"]
      431 LOADK                            R23 K8 ["SliceEditor"]
      432 LOADK                            R24 K105 ["CloseButton"]
      433 NAMECALL                         R21 R7 K10 ["getText"]
      435 CALL                             R21 3 1
      436 SETTABLEKS                       R21 R20 K39 ["Text"]
      438 CALL                             R18 2 1
      439 SETTABLEKS                       R18 R17 K105 ["CloseButton"]
      441 GETUPVAL                         R19 0
      442 GETTABLEKS                       R18 R19 K13 ["createElement"]
      444 GETUPVAL                         R19 9
      445 DUPTABLE                         R20 K112 [{"OnClick", "Size", "Style", "StyleModifier", "LayoutOrder", "Text"}]
      446 GETTABLEKS                       R21 R0 K113 ["onRevert"]
      448 SETTABLEKS                       R21 R20 K108 ["OnClick"]
      450 GETTABLEKS                       R21 R8 K15 ["Size"]
      452 SETTABLEKS                       R21 R20 K15 ["Size"]
      454 GETTABLEKS                       R21 R8 K14 ["Style"]
      456 SETTABLEKS                       R21 R20 K14 ["Style"]
      458 JUMPIF                           R9 ; [+4]
      459 GETUPVAL                         R22 10
      460 GETTABLEKS                       R21 R22 K114 ["Disabled"]
      462 JUMPIF                           R21 ; [+1]
      463 LOADNIL                          R21
      464 SETTABLEKS                       R21 R20 K111 ["StyleModifier"]
      466 LOADN                            R21 2
      467 SETTABLEKS                       R21 R20 K101 ["LayoutOrder"]
      469 LOADK                            R23 K8 ["SliceEditor"]
      470 LOADK                            R24 K106 ["RevertButton"]
      471 NAMECALL                         R21 R7 K10 ["getText"]
      473 CALL                             R21 3 1
      474 SETTABLEKS                       R21 R20 K39 ["Text"]
      476 CALL                             R18 2 1
      477 SETTABLEKS                       R18 R17 K106 ["RevertButton"]
      479 CALL                             R14 3 1
      480 SETTABLEKS                       R14 R13 K68 ["Lower"]
      482 CALL                             R10 3 -1
      483 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R7 R1 K12 ["Src"]
       33 GETTABLEKS                       R6 R7 K13 ["Util"]
       35 GETTABLEKS                       R5 R6 K14 ["Orientation"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K8 [require]
       40 GETTABLEKS                       R8 R1 K12 ["Src"]
       42 GETTABLEKS                       R7 R8 K13 ["Util"]
       44 GETTABLEKS                       R6 R7 K15 ["MouseCursorManager"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R7 R1 K12 ["Src"]
       49 GETTABLEKS                       R6 R7 K16 ["Components"]
       51 GETIMPORT                        R7 K8 [require]
       53 GETTABLEKS                       R8 R6 K17 ["ImageEditor"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K8 [require]
       58 GETTABLEKS                       R9 R6 K18 ["TextEditor"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R3 K19 ["ContextServices"]
       63 GETTABLEKS                       R10 R9 K20 ["withContext"]
       65 GETTABLEKS                       R11 R9 K21 ["Analytics"]
       67 GETTABLEKS                       R12 R9 K22 ["Localization"]
       69 GETTABLEKS                       R14 R3 K13 ["Util"]
       71 GETTABLEKS                       R13 R14 K23 ["StyleModifier"]
       73 GETTABLEKS                       R14 R3 K24 ["UI"]
       75 GETTABLEKS                       R15 R14 K25 ["Pane"]
       77 GETTABLEKS                       R16 R14 K26 ["Button"]
       79 GETTABLEKS                       R17 R14 K27 ["TextLabel"]
       81 GETTABLEKS                       R18 R2 K28 ["PureComponent"]
       83 LOADK                            R20 K29 ["SliceEditor"]
       84 NAMECALL                         R18 R18 K30 ["extend"]
       86 CALL                             R18 2 1
       87 GETTABLEKS                       R20 R4 K31 ["Left"]
       89 GETTABLEKS                       R19 R20 K32 ["rawValue"]
       91 CALL                             R19 0 1
       92 GETTABLEKS                       R21 R4 K33 ["Right"]
       94 GETTABLEKS                       R20 R21 K32 ["rawValue"]
       96 CALL                             R20 0 1
       97 GETTABLEKS                       R22 R4 K34 ["Top"]
       99 GETTABLEKS                       R21 R22 K32 ["rawValue"]
      101 CALL                             R21 0 1
      102 GETTABLEKS                       R23 R4 K35 ["Bottom"]
      104 GETTABLEKS                       R22 R23 K32 ["rawValue"]
      106 CALL                             R22 0 1
      107 DUPCLOSURE                       R23 K36 [PROTO_0]
      108 CAPTURE                          VAL R19
      109 CAPTURE                          VAL R20
      110 CAPTURE                          VAL R21
      111 CAPTURE                          VAL R22
      112 DUPCLOSURE                       R24 K37 [PROTO_5]
      113 CAPTURE                          VAL R19
      114 CAPTURE                          VAL R20
      115 CAPTURE                          VAL R21
      116 CAPTURE                          VAL R22
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R24 R18 K38 ["init"]
      120 DUPCLOSURE                       R24 K39 [PROTO_6]
      121 CAPTURE                          VAL R5
      122 SETTABLEKS                       R24 R18 K40 ["didMount"]
      124 DUPCLOSURE                       R24 K41 [PROTO_7]
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R19
      129 CAPTURE                          VAL R20
      130 CAPTURE                          VAL R21
      131 CAPTURE                          VAL R22
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R13
      136 SETTABLEKS                       R24 R18 K42 ["render"]
      138 MOVE                             R24 R10
      139 DUPTABLE                         R25 K45 [{"Analytics", "Localization", "Stylizer", "Mouse"}]
      140 SETTABLEKS                       R11 R25 K21 ["Analytics"]
      142 SETTABLEKS                       R12 R25 K22 ["Localization"]
      144 GETTABLEKS                       R26 R9 K43 ["Stylizer"]
      146 SETTABLEKS                       R26 R25 K43 ["Stylizer"]
      148 GETTABLEKS                       R26 R9 K44 ["Mouse"]
      150 SETTABLEKS                       R26 R25 K44 ["Mouse"]
      152 CALL                             R24 1 1
      153 MOVE                             R25 R18
      154 CALL                             R24 1 1
      155 MOVE                             R18 R24
      156 RETURN                           R18 1
