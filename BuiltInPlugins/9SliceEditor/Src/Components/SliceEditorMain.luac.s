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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["imageRectSize"]
        5 JUMPIFNOT                        R0 ; [+11]
        6 GETTABLEKS                       R1 R0 K2 ["X"]
        8 LOADN                            R2 0
        9 JUMPIFNOTLT                      R2 R1 ; [+7]
       11 GETTABLEKS                       R1 R0 K3 ["Y"]
       13 LOADN                            R2 0
       14 JUMPIFNOTLT                      R2 R1 ; [+2]
       16 RETURN                           R0 1
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["props"]
       20 GETTABLEKS                       R1 R1 K4 ["pixelDimensions"]
       22 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getImageDimensions"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["clampAndRoundSliceRect"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 MOVE                             R2 R3
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["props"]
       11 GETTABLEKS                       R3 R3 K2 ["selectedObject"]
       13 JUMPIFNOT                        R3 ; [+18]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K1 ["props"]
       17 GETTABLEKS                       R3 R3 K2 ["selectedObject"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSliceRect"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["revertSliceRect"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resetCursor"]
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K2 ["Mouse"]
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
       15 GETTABLEKS                       R8 R1 K1 ["Stylizer"]
       17 GETTABLEKS                       R8 R8 K7 ["Button"]
       19 LOADB                            R9 0
       20 JUMPIF                           R3 ; [+120]
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
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R11 R11 K13 ["createElement"]
       38 GETUPVAL                         R12 1
       39 DUPTABLE                         R13 K18 [{["Style"] = "Box", ["Size"], ["Position"]}]
       40 GETIMPORT                        R14 K21 [UDim2.fromScale]
       42 LOADN                            R15 1
       43 LOADN                            R16 1
       44 CALL                             R14 2 1
       45 SETTABLEKS                       R14 R13 K16 ["Size"]
       47 GETIMPORT                        R14 K23 [UDim2.fromOffset]
       49 LOADN                            R15 0
       50 LOADN                            R16 0
       51 CALL                             R14 2 1
       52 SETTABLEKS                       R14 R13 K17 ["Position"]
       54 DUPTABLE                         R14 K26 [{"EntireFrame", "LoadingImage"}]
       55 GETUPVAL                         R15 0
       56 GETTABLEKS                       R15 R15 K13 ["createElement"]
       58 GETUPVAL                         R16 1
       59 DUPTABLE                         R17 K29 [{"AutomaticSize", "AnchorPoint", "Position"}]
       60 GETIMPORT                        R18 K32 [Enum.AutomaticSize.XY]
       62 SETTABLEKS                       R18 R17 K27 ["AutomaticSize"]
       64 GETIMPORT                        R18 K35 [Vector2.new]
       66 LOADK                            R19 K36 [0.5]
       67 LOADK                            R20 K36 [0.5]
       68 CALL                             R18 2 1
       69 SETTABLEKS                       R18 R17 K28 ["AnchorPoint"]
       71 GETIMPORT                        R18 K21 [UDim2.fromScale]
       73 LOADK                            R19 K36 [0.5]
       74 LOADK                            R20 K36 [0.5]
       75 CALL                             R18 2 1
       76 SETTABLEKS                       R18 R17 K17 ["Position"]
       78 DUPTABLE                         R18 K38 [{"Message"}]
       79 GETUPVAL                         R19 0
       80 GETTABLEKS                       R19 R19 K13 ["createElement"]
       82 GETUPVAL                         R20 2
       83 DUPTABLE                         R21 K42 [{["Text"], ["TextWrapped"] = True, ["Size"]}]
       84 SETTABLEKS                       R10 R21 K39 ["Text"]
       86 GETTABLEKS                       R22 R2 K43 ["InfoBoxSize"]
       88 SETTABLEKS                       R22 R21 K16 ["Size"]
       90 CALL                             R19 2 1
       91 SETTABLEKS                       R19 R18 K37 ["Message"]
       93 CALL                             R15 3 1
       94 SETTABLEKS                       R15 R14 K24 ["EntireFrame"]
       96 GETUPVAL                         R15 0
       97 GETTABLEKS                       R15 R15 K13 ["createElement"]
       99 LOADK                            R16 K44 ["ImageLabel"]
      100 NEWTABLE                         R17 8 0
      102 LOADN                            R18 1
      103 SETTABLEKS                       R18 R17 K45 ["BackgroundTransparency"]
      105 LOADK                            R18 K46 [0.99]
      106 SETTABLEKS                       R18 R17 K47 ["ImageTransparency"]
      108 GETTABLEKS                       R18 R1 K48 ["contentIdToLoad"]
      110 SETTABLEKS                       R18 R17 K49 ["Image"]
      112 GETIMPORT                        R18 K23 [UDim2.fromOffset]
      114 LOADN                            R19 1
      115 LOADN                            R20 1
      116 CALL                             R18 2 1
      117 SETTABLEKS                       R18 R17 K16 ["Size"]
      119 GETIMPORT                        R18 K23 [UDim2.fromOffset]
      121 LOADN                            R19 0
      122 LOADN                            R20 0
      123 CALL                             R18 2 1
      124 SETTABLEKS                       R18 R17 K17 ["Position"]
      126 GETIMPORT                        R18 K52 [Enum.ScaleType.Fit]
      128 SETTABLEKS                       R18 R17 K50 ["ScaleType"]
      130 GETUPVAL                         R18 0
      131 GETTABLEKS                       R18 R18 K53 ["Ref"]
      133 GETTABLEKS                       R19 R1 K54 ["loadingImageRef"]
      135 SETTABLE                         R19 R17 R18
      136 CALL                             R15 2 1
      137 SETTABLEKS                       R15 R14 K25 ["LoadingImage"]
      139 CALL                             R11 3 -1
      140 RETURN                           R11 -1
      141 GETTABLEKS                       R11 R1 K5 ["sliceRect"]
      143 GETTABLEKS                       R12 R1 K55 ["revertSliceRect"]
      145 LOADB                            R10 0
      146 GETUPVAL                         R14 3
      147 GETTABLE                         R13 R11 R14
      148 GETUPVAL                         R15 3
      149 GETTABLE                         R14 R12 R15
      150 JUMPIFNOTEQ                      R13 R14 ; [+23]
      152 LOADB                            R10 0
      153 GETUPVAL                         R14 4
      154 GETTABLE                         R13 R11 R14
      155 GETUPVAL                         R15 4
      156 GETTABLE                         R14 R12 R15
      157 JUMPIFNOTEQ                      R13 R14 ; [+16]
      159 LOADB                            R10 0
      160 GETUPVAL                         R14 5
      161 GETTABLE                         R13 R11 R14
      162 GETUPVAL                         R15 5
      163 GETTABLE                         R14 R12 R15
      164 JUMPIFNOTEQ                      R13 R14 ; [+9]
      166 GETUPVAL                         R14 6
      167 GETTABLE                         R13 R11 R14
      168 GETUPVAL                         R15 6
      169 GETTABLE                         R14 R12 R15
      170 JUMPIFEQ                         R13 R14 ; [+2]
      172 LOADB                            R10 0 +1
      173 LOADB                            R10 1
      174 JUMPIF                           R10 ; [+1]
      175 LOADB                            R9 1
      176 GETUPVAL                         R10 0
      177 GETTABLEKS                       R10 R10 K13 ["createElement"]
      179 GETUPVAL                         R11 1
      180 DUPTABLE                         R12 K61 [{["Style"] = "Box", ["Size"], ["Position"], ["Layout"], ["Spacing"] = 0, ["HorizontalAlignment"], ["VerticalAlignment"]}]
      181 GETIMPORT                        R13 K21 [UDim2.fromScale]
      183 LOADN                            R14 1
      184 LOADN                            R15 1
      185 CALL                             R13 2 1
      186 SETTABLEKS                       R13 R12 K16 ["Size"]
      188 GETIMPORT                        R13 K23 [UDim2.fromOffset]
      190 LOADN                            R14 0
      191 LOADN                            R15 0
      192 CALL                             R13 2 1
      193 SETTABLEKS                       R13 R12 K17 ["Position"]
      195 GETIMPORT                        R13 K64 [Enum.FillDirection.Vertical]
      197 SETTABLEKS                       R13 R12 K56 ["Layout"]
      199 GETIMPORT                        R13 K66 [Enum.HorizontalAlignment.Center]
      201 SETTABLEKS                       R13 R12 K59 ["HorizontalAlignment"]
      203 GETIMPORT                        R13 K68 [Enum.VerticalAlignment.Top]
      205 SETTABLEKS                       R13 R12 K60 ["VerticalAlignment"]
      207 DUPTABLE                         R13 K71 [{"Upper", "Lower"}]
      208 GETUPVAL                         R14 0
      209 GETTABLEKS                       R14 R14 K13 ["createElement"]
      211 GETUPVAL                         R15 1
      212 DUPTABLE                         R16 K73 [{["Size"], ["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"], ["Spacing"] = 0, ["Padding"]}]
      213 GETIMPORT                        R17 K74 [UDim2.new]
      215 LOADN                            R18 1
      216 LOADN                            R19 0
      217 LOADN                            R20 1
      218 GETTABLEKS                       R22 R2 K75 ["ButtonsAreaSize"]
      220 GETTABLEKS                       R22 R22 K76 ["Y"]
      222 GETTABLEKS                       R22 R22 K77 ["Offset"]
      224 MINUS                            R21 R22
      225 CALL                             R17 4 1
      226 SETTABLEKS                       R17 R16 K16 ["Size"]
      228 GETIMPORT                        R17 K79 [Enum.FillDirection.Horizontal]
      230 SETTABLEKS                       R17 R16 K56 ["Layout"]
      232 GETIMPORT                        R17 K81 [Enum.HorizontalAlignment.Left]
      234 SETTABLEKS                       R17 R16 K59 ["HorizontalAlignment"]
      236 GETIMPORT                        R17 K82 [Enum.VerticalAlignment.Center]
      238 SETTABLEKS                       R17 R16 K60 ["VerticalAlignment"]
      240 DUPTABLE                         R17 K85 [{["Top"], ["Left"], ["Right"], ["Bottom"] = 0}]
      241 GETTABLEKS                       R18 R2 K86 ["PaddingPx"]
      243 SETTABLEKS                       R18 R17 K67 ["Top"]
      245 GETTABLEKS                       R18 R2 K86 ["PaddingPx"]
      247 SETTABLEKS                       R18 R17 K80 ["Left"]
      249 GETTABLEKS                       R18 R2 K86 ["PaddingPx"]
      251 SETTABLEKS                       R18 R17 K83 ["Right"]
      253 SETTABLEKS                       R17 R16 K72 ["Padding"]
      255 DUPTABLE                         R17 K89 [{"ImageEditorComponent", "TextEditorComponent"}]
      256 GETUPVAL                         R18 0
      257 GETTABLEKS                       R18 R18 K13 ["createElement"]
      259 GETUPVAL                         R19 7
      260 DUPTABLE                         R20 K98 [{["layoutOrder"] = 1, ["size"], ["selectedObject"], ["pixelDimensions"], ["setSliceRect"], ["sliceRect"], ["imageRectOffset"], ["imageRectSize"], ["imageColor3"], ["resampleMode"]}]
      261 GETIMPORT                        R21 K74 [UDim2.new]
      263 GETTABLEKS                       R23 R2 K99 ["TextAreaXWindowScaleFactor"]
      265 SUBRK                            R22 K91 [1] R23
      266 GETTABLEKS                       R24 R2 K100 ["TextAreaSize"]
      268 GETTABLEKS                       R24 R24 K101 ["X"]
      270 GETTABLEKS                       R24 R24 K77 ["Offset"]
      272 MINUS                            R23 R24
      273 LOADN                            R24 1
      274 LOADN                            R25 0
      275 CALL                             R21 4 1
      276 SETTABLEKS                       R21 R20 K92 ["size"]
      278 SETTABLEKS                       R3 R20 K2 ["selectedObject"]
      280 SETTABLEKS                       R4 R20 K93 ["pixelDimensions"]
      282 SETTABLEKS                       R5 R20 K4 ["setSliceRect"]
      284 SETTABLEKS                       R6 R20 K5 ["sliceRect"]
      286 GETTABLEKS                       R21 R1 K94 ["imageRectOffset"]
      288 SETTABLEKS                       R21 R20 K94 ["imageRectOffset"]
      290 SETTABLEKS                       R4 R20 K95 ["imageRectSize"]
      292 GETTABLEKS                       R21 R1 K96 ["imageColor3"]
      294 SETTABLEKS                       R21 R20 K96 ["imageColor3"]
      296 GETTABLEKS                       R21 R1 K97 ["resampleMode"]
      298 SETTABLEKS                       R21 R20 K97 ["resampleMode"]
      300 CALL                             R18 2 1
      301 SETTABLEKS                       R18 R17 K87 ["ImageEditorComponent"]
      303 GETUPVAL                         R18 0
      304 GETTABLEKS                       R18 R18 K13 ["createElement"]
      306 GETUPVAL                         R19 8
      307 DUPTABLE                         R20 K103 [{["layoutOrder"] = 2, ["size"], ["pixelDimensions"], ["setSliceRect"], ["sliceRect"]}]
      308 GETIMPORT                        R21 K74 [UDim2.new]
      310 GETTABLEKS                       R22 R2 K99 ["TextAreaXWindowScaleFactor"]
      312 GETTABLEKS                       R23 R2 K100 ["TextAreaSize"]
      314 GETTABLEKS                       R23 R23 K101 ["X"]
      316 GETTABLEKS                       R23 R23 K77 ["Offset"]
      318 LOADN                            R24 0
      319 GETTABLEKS                       R25 R2 K100 ["TextAreaSize"]
      321 GETTABLEKS                       R25 R25 K76 ["Y"]
      323 GETTABLEKS                       R25 R25 K77 ["Offset"]
      325 CALL                             R21 4 1
      326 SETTABLEKS                       R21 R20 K92 ["size"]
      328 SETTABLEKS                       R4 R20 K93 ["pixelDimensions"]
      330 SETTABLEKS                       R5 R20 K4 ["setSliceRect"]
      332 SETTABLEKS                       R6 R20 K5 ["sliceRect"]
      334 CALL                             R18 2 1
      335 SETTABLEKS                       R18 R17 K88 ["TextEditorComponent"]
      337 CALL                             R14 3 1
      338 SETTABLEKS                       R14 R13 K69 ["Upper"]
      340 GETUPVAL                         R14 0
      341 GETTABLEKS                       R14 R14 K13 ["createElement"]
      343 GETUPVAL                         R15 1
      344 DUPTABLE                         R16 K105 [{["LayoutOrder"] = 2, ["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"], ["Size"], ["Position"], ["Spacing"]}]
      345 GETIMPORT                        R17 K79 [Enum.FillDirection.Horizontal]
      347 SETTABLEKS                       R17 R16 K56 ["Layout"]
      349 GETIMPORT                        R17 K66 [Enum.HorizontalAlignment.Center]
      351 SETTABLEKS                       R17 R16 K59 ["HorizontalAlignment"]
      353 GETIMPORT                        R17 K82 [Enum.VerticalAlignment.Center]
      355 SETTABLEKS                       R17 R16 K60 ["VerticalAlignment"]
      357 GETIMPORT                        R17 K74 [UDim2.new]
      359 LOADN                            R18 1
      360 LOADN                            R19 0
      361 LOADN                            R20 0
      362 GETTABLEKS                       R21 R2 K75 ["ButtonsAreaSize"]
      364 GETTABLEKS                       R21 R21 K76 ["Y"]
      366 GETTABLEKS                       R21 R21 K77 ["Offset"]
      368 CALL                             R17 4 1
      369 SETTABLEKS                       R17 R16 K16 ["Size"]
      371 GETIMPORT                        R17 K23 [UDim2.fromOffset]
      373 LOADN                            R18 0
      374 GETTABLEKS                       R19 R2 K106 ["ButtonsAreaYPos"]
      376 CALL                             R17 2 1
      377 SETTABLEKS                       R17 R16 K17 ["Position"]
      379 GETTABLEKS                       R17 R2 K107 ["ButtonsSpacing"]
      381 SETTABLEKS                       R17 R16 K57 ["Spacing"]
      383 DUPTABLE                         R17 K110 [{"CloseButton", "RevertButton"}]
      384 GETUPVAL                         R18 0
      385 GETTABLEKS                       R18 R18 K13 ["createElement"]
      387 GETUPVAL                         R19 9
      388 DUPTABLE                         R20 K112 [{["OnClick"], ["Size"], ["Style"], ["LayoutOrder"] = 1, ["Text"]}]
      389 GETTABLEKS                       R21 R1 K113 ["onClose"]
      391 SETTABLEKS                       R21 R20 K111 ["OnClick"]
      393 GETTABLEKS                       R21 R8 K16 ["Size"]
      395 SETTABLEKS                       R21 R20 K16 ["Size"]
      397 GETTABLEKS                       R21 R8 K14 ["Style"]
      399 SETTABLEKS                       R21 R20 K14 ["Style"]
      401 LOADK                            R23 K8 ["SliceEditor"]
      402 LOADK                            R24 K108 ["CloseButton"]
      403 NAMECALL                         R21 R7 K10 ["getText"]
      405 CALL                             R21 3 1
      406 SETTABLEKS                       R21 R20 K39 ["Text"]
      408 CALL                             R18 2 1
      409 SETTABLEKS                       R18 R17 K108 ["CloseButton"]
      411 GETUPVAL                         R18 0
      412 GETTABLEKS                       R18 R18 K13 ["createElement"]
      414 GETUPVAL                         R19 9
      415 DUPTABLE                         R20 K115 [{["OnClick"], ["Size"], ["Style"], ["StyleModifier"], ["LayoutOrder"] = 2, ["Text"]}]
      416 GETTABLEKS                       R21 R0 K116 ["onRevert"]
      418 SETTABLEKS                       R21 R20 K111 ["OnClick"]
      420 GETTABLEKS                       R21 R8 K16 ["Size"]
      422 SETTABLEKS                       R21 R20 K16 ["Size"]
      424 GETTABLEKS                       R21 R8 K14 ["Style"]
      426 SETTABLEKS                       R21 R20 K14 ["Style"]
      428 JUMPIF                           R9 ; [+4]
      429 GETUPVAL                         R21 10
      430 GETTABLEKS                       R21 R21 K117 ["Disabled"]
      432 JUMPIF                           R21 ; [+1]
      433 LOADNIL                          R21
      434 SETTABLEKS                       R21 R20 K114 ["StyleModifier"]
      436 LOADK                            R23 K8 ["SliceEditor"]
      437 LOADK                            R24 K109 ["RevertButton"]
      438 NAMECALL                         R21 R7 K10 ["getText"]
      440 CALL                             R21 3 1
      441 SETTABLEKS                       R21 R20 K39 ["Text"]
      443 CALL                             R18 2 1
      444 SETTABLEKS                       R18 R17 K109 ["RevertButton"]
      446 CALL                             R14 3 1
      447 SETTABLEKS                       R14 R13 K70 ["Lower"]
      449 CALL                             R10 3 -1
      450 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K12 ["Src"]
       33 GETTABLEKS                       R5 R5 K13 ["Util"]
       35 GETTABLEKS                       R5 R5 K14 ["Orientation"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K8 [require]
       40 GETTABLEKS                       R6 R1 K12 ["Src"]
       42 GETTABLEKS                       R6 R6 K13 ["Util"]
       44 GETTABLEKS                       R6 R6 K15 ["MouseCursorManager"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R6 R1 K12 ["Src"]
       49 GETTABLEKS                       R6 R6 K16 ["Components"]
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
       69 GETTABLEKS                       R13 R3 K13 ["Util"]
       71 GETTABLEKS                       R13 R13 K23 ["StyleModifier"]
       73 GETTABLEKS                       R14 R3 K24 ["UI"]
       75 GETTABLEKS                       R15 R14 K25 ["Pane"]
       77 GETTABLEKS                       R16 R14 K26 ["Button"]
       79 GETTABLEKS                       R17 R14 K27 ["TextLabel"]
       81 GETTABLEKS                       R18 R2 K28 ["PureComponent"]
       83 LOADK                            R20 K29 ["SliceEditor"]
       84 NAMECALL                         R18 R18 K30 ["extend"]
       86 CALL                             R18 2 1
       87 GETTABLEKS                       R19 R4 K31 ["Left"]
       89 GETTABLEKS                       R19 R19 K32 ["rawValue"]
       91 CALL                             R19 0 1
       92 GETTABLEKS                       R20 R4 K33 ["Right"]
       94 GETTABLEKS                       R20 R20 K32 ["rawValue"]
       96 CALL                             R20 0 1
       97 GETTABLEKS                       R21 R4 K34 ["Top"]
       99 GETTABLEKS                       R21 R21 K32 ["rawValue"]
      101 CALL                             R21 0 1
      102 GETTABLEKS                       R22 R4 K35 ["Bottom"]
      104 GETTABLEKS                       R22 R22 K32 ["rawValue"]
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
