PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R8 R6 K0 ["id"]
        7 MOVE                             R9 R1
        8 CALL                             R7 2 1
        9 JUMPIFNOT                        R7 ; [+3]
       10 GETTABLEKS                       R7 R6 K1 ["aggregatePropertyInfo"]
       12 RETURN                           R7 1
       13 FORGLOOP                         R2 2 ; [-10]
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["beginEditingPropertyAsync"]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 0
        4 GETTABLEKS                       R2 R0 K1 ["setPropertyPart"]
        6 GETUPVAL                         R3 0
        7 LOADK                            R4 K2 ["value"]
        8 MOVE                             R5 R1
        9 CALL                             R2 3 0
       10 GETTABLEKS                       R2 R0 K3 ["finishEditingProperty"]
       12 GETUPVAL                         R3 0
       13 GETIMPORT                        R4 K7 [Enum.FinishRecordingOperation.Commit]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETTABLEKS                       R4 R0 K0 ["parts"]
        4 GETTABLEKS                       R3 R4 K1 ["value"]
        6 GETTABLEKS                       R2 R3 K2 ["multiple"]
        8 JUMPIFNOT                        R0 ; [+1]
        9 JUMPIFNOT                        R2 ; [+7]
       10 LOADK                            R4 K3 ["%* selected"]
       11 MOVE                             R6 R1
       12 NAMECALL                         R4 R4 K4 ["format"]
       14 CALL                             R4 2 1
       15 MOVE                             R3 R4
       16 RETURN                           R3 1
       17 GETTABLEKS                       R5 R0 K0 ["parts"]
       19 GETTABLEKS                       R4 R5 K1 ["value"]
       21 GETTABLEKS                       R3 R4 K1 ["value"]
       23 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R2
        4 JUMPIFNOT                        R4 ; [+6]
        5 GETTABLEKS                       R6 R2 K0 ["parts"]
        7 GETTABLEKS                       R5 R6 K1 ["value"]
        9 GETTABLEKS                       R4 R5 K2 ["multiple"]
       11 JUMPIFNOT                        R2 ; [+1]
       12 JUMPIFNOT                        R4 ; [+7]
       13 LOADK                            R5 K3 ["%* selected"]
       14 MOVE                             R7 R3
       15 NAMECALL                         R5 R5 K4 ["format"]
       17 CALL                             R5 2 1
       18 MOVE                             R1 R5
       19 JUMP                             ; [+6]
       20 GETTABLEKS                       R6 R2 K0 ["parts"]
       22 GETTABLEKS                       R5 R6 K1 ["value"]
       24 GETTABLEKS                       R1 R5 K1 ["value"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getIconProps"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+12]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["parts"]
        8 GETTABLEKS                       R3 R4 K2 ["value"]
       10 GETTABLEKS                       R2 R3 K2 ["value"]
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K1 ["parts"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R1
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R1 K1 ["Text"]
        8 SETTABLEKS                       R2 R0 K1 ["Text"]
       10 GETTABLEKS                       R4 R1 K1 ["Text"]
       12 LENGTH                           R3 R4
       13 ADDK                             R2 R3 K2 [1]
       14 SETTABLEKS                       R2 R0 K3 ["CursorPosition"]
       16 LOADN                            R2 1
       17 SETTABLEKS                       R2 R0 K4 ["SelectionStart"]
       19 GETUPVAL                         R2 1
       20 LOADB                            R3 1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_6:
        0 JUMPIFEQKNIL                     R2 ; [+7]
        2 GETTABLEKS                       R3 R2 K0 ["KeyCode"]
        4 GETIMPORT                        R4 K3 [Enum.KeyCode.Escape]
        6 JUMPIFNOTEQ                      R3 R4 ; [+5]
        8 GETUPVAL                         R3 0
        9 LOADB                            R4 0
       10 CALL                             R3 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R4 R0 K4 ["Text"]
       15 CALL                             R3 1 0
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K5 ["session"]
       19 GETTABLEKS                       R4 R0 K4 ["Text"]
       21 GETTABLEKS                       R5 R3 K6 ["beginEditingPropertyAsync"]
       23 GETUPVAL                         R6 3
       24 CALL                             R5 1 0
       25 GETTABLEKS                       R5 R3 K7 ["setPropertyPart"]
       27 GETUPVAL                         R6 3
       28 LOADK                            R7 K8 ["value"]
       29 MOVE                             R8 R4
       30 CALL                             R5 3 0
       31 GETTABLEKS                       R5 R3 K9 ["finishEditingProperty"]
       33 GETUPVAL                         R6 3
       34 GETIMPORT                        R7 K12 [Enum.FinishRecordingOperation.Commit]
       36 CALL                             R5 2 0
       37 GETUPVAL                         R3 0
       38 LOADB                            R4 0
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+10]
        5 NAMECALL                         R1 R0 K1 ["IsFocused"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 1
       10 JUMPIF                           R1 ; [+3]
       11 NAMECALL                         R1 R0 K2 ["ReleaseFocus"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 GETTABLEKS                       R3 R0 K1 ["session"]
        5 GETTABLEKS                       R2 R3 K2 ["summaryObservable"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["use"]
       11 GETTABLEKS                       R4 R0 K1 ["session"]
       13 GETTABLEKS                       R3 R4 K3 ["propertiesObservable"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R4 1
       17 MOVE                             R5 R2
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 GETUPVAL                         R10 2
       22 GETTABLEKS                       R11 R9 K4 ["id"]
       24 MOVE                             R12 R4
       25 CALL                             R10 2 1
       26 JUMPIFNOT                        R10 ; [+3]
       27 GETTABLEKS                       R3 R9 K5 ["aggregatePropertyInfo"]
       29 JUMP                             ; [+3]
       30 FORGLOOP                         R5 2 ; [-10]
       32 LOADNIL                          R3
       33 GETUPVAL                         R5 3
       34 MOVE                             R6 R2
       35 LOADNIL                          R7
       36 LOADNIL                          R8
       37 FORGPREP                         R6
       38 GETUPVAL                         R11 2
       39 GETTABLEKS                       R12 R10 K4 ["id"]
       41 MOVE                             R13 R5
       42 CALL                             R11 2 1
       43 JUMPIFNOT                        R11 ; [+3]
       44 GETTABLEKS                       R4 R10 K5 ["aggregatePropertyInfo"]
       46 JUMP                             ; [+3]
       47 FORGLOOP                         R6 2 ; [-10]
       49 LOADNIL                          R4
       50 MOVE                             R5 R4
       51 JUMPIFNOT                        R5 ; [+6]
       52 GETTABLEKS                       R7 R4 K6 ["parts"]
       54 GETTABLEKS                       R6 R7 K7 ["value"]
       56 GETTABLEKS                       R5 R6 K8 ["multiple"]
       58 LOADB                            R6 0
       59 JUMPIFEQKNIL                     R4 ; [+2]
       61 NOT                              R6 R5
       62 GETTABLEKS                       R7 R1 K9 ["totalInstances"]
       64 GETUPVAL                         R9 4
       65 GETTABLEKS                       R8 R9 K10 ["useBinding"]
       67 MOVE                             R10 R4
       68 JUMPIFNOT                        R10 ; [+6]
       69 GETTABLEKS                       R12 R4 K6 ["parts"]
       71 GETTABLEKS                       R11 R12 K7 ["value"]
       73 GETTABLEKS                       R10 R11 K8 ["multiple"]
       75 JUMPIFNOT                        R4 ; [+1]
       76 JUMPIFNOT                        R10 ; [+7]
       77 LOADK                            R11 K11 ["%* selected"]
       78 MOVE                             R13 R7
       79 NAMECALL                         R11 R11 K12 ["format"]
       81 CALL                             R11 2 1
       82 MOVE                             R9 R11
       83 JUMP                             ; [+6]
       84 GETTABLEKS                       R12 R4 K6 ["parts"]
       86 GETTABLEKS                       R11 R12 K7 ["value"]
       88 GETTABLEKS                       R9 R11 K7 ["value"]
       90 CALL                             R8 1 2
       91 GETUPVAL                         R11 4
       92 GETTABLEKS                       R10 R11 K13 ["useEffect"]
       94 NEWCLOSURE                       R11 P0
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R7
       98 NEWTABLE                         R12 0 2
      100 MOVE                             R13 R4
      101 MOVE                             R14 R7
      102 SETLIST                          R12 R13 2 [1]
      104 CALL                             R10 2 0
      105 GETUPVAL                         R10 5
      106 CALL                             R10 0 1
      107 GETUPVAL                         R12 4
      108 GETTABLEKS                       R11 R12 K14 ["useMemo"]
      110 NEWCLOSURE                       R12 P1
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R3
      113 NEWTABLE                         R13 0 3
      115 MOVE                             R14 R10
      116 MOVE                             R15 R3
      117 MOVE                             R16 R3
      118 JUMPIFNOT                        R16 ; [+2]
      119 GETTABLEKS                       R16 R3 K6 ["parts"]
      121 SETLIST                          R13 R14 3 [1]
      123 CALL                             R11 2 1
      124 GETUPVAL                         R13 4
      125 GETTABLEKS                       R12 R13 K15 ["useRef"]
      127 LOADNIL                          R13
      128 CALL                             R12 1 1
      129 GETUPVAL                         R14 4
      130 GETTABLEKS                       R13 R14 K15 ["useRef"]
      132 LOADNIL                          R14
      133 CALL                             R13 1 1
      134 GETUPVAL                         R15 4
      135 GETTABLEKS                       R14 R15 K16 ["useState"]
      137 LOADB                            R15 0
      138 CALL                             R14 1 2
      139 GETUPVAL                         R17 4
      140 GETTABLEKS                       R16 R17 K17 ["useCallback"]
      142 NEWCLOSURE                       R17 P2
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R15
      145 NEWTABLE                         R18 0 0
      147 CALL                             R16 2 1
      148 GETUPVAL                         R18 4
      149 GETTABLEKS                       R17 R18 K17 ["useCallback"]
      151 NEWCLOSURE                       R18 P3
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R0
      155 CAPTURE                          UPVAL U3
      156 NEWTABLE                         R19 0 1
      158 GETTABLEKS                       R20 R0 K1 ["session"]
      160 SETLIST                          R19 R20 1 [1]
      162 CALL                             R17 2 1
      163 GETUPVAL                         R19 4
      164 GETTABLEKS                       R18 R19 K13 ["useEffect"]
      166 NEWCLOSURE                       R19 P4
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R6
      169 NEWTABLE                         R20 0 1
      171 MOVE                             R21 R7
      172 SETLIST                          R20 R21 1 [1]
      174 CALL                             R18 2 0
      175 GETUPVAL                         R18 6
      176 CALL                             R18 0 1
      177 GETUPVAL                         R19 7
      178 CALL                             R19 0 1
      179 GETUPVAL                         R20 7
      180 CALL                             R20 0 1
      181 GETUPVAL                         R21 8
      182 GETUPVAL                         R22 9
      183 DUPTABLE                         R23 K21 [{"LayoutOrder", "Size", "tag"}]
      184 GETTABLEKS                       R24 R0 K22 ["layoutOrder"]
      186 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      188 GETTABLEKS                       R24 R0 K23 ["size"]
      190 SETTABLEKS                       R24 R23 K19 ["Size"]
      192 LOADK                            R24 K24 ["padding-x-small"]
      193 SETTABLEKS                       R24 R23 K20 ["tag"]
      195 DUPTABLE                         R24 K27 [{"Content", "Underline"}]
      196 GETUPVAL                         R25 8
      197 GETUPVAL                         R26 9
      198 DUPTABLE                         R27 K28 [{"tag"}]
      199 LOADK                            R28 K29 ["size-full-full row align-y-center padding-left-small gap-small"]
      200 SETTABLEKS                       R28 R27 K20 ["tag"]
      202 DUPTABLE                         R28 K32 [{"Icon", "NameContainer"}]
      203 GETUPVAL                         R29 8
      204 LOADK                            R30 K33 ["ImageLabel"]
      205 DUPTABLE                         R31 K38 [{"BackgroundTransparency", "LayoutOrder", "Size", "Image", "ImageTransparency", "ImageColor3"}]
      206 LOADN                            R32 1
      207 SETTABLEKS                       R32 R31 K34 ["BackgroundTransparency"]
      209 MOVE                             R32 R19
      210 CALL                             R32 0 1
      211 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      213 GETIMPORT                        R32 K41 [UDim2.fromOffset]
      215 GETTABLEKS                       R34 R18 K19 ["Size"]
      217 GETTABLEKS                       R33 R34 K42 ["Size_400"]
      219 GETTABLEKS                       R35 R18 K19 ["Size"]
      221 GETTABLEKS                       R34 R35 K42 ["Size_400"]
      223 CALL                             R32 2 1
      224 SETTABLEKS                       R32 R31 K19 ["Size"]
      226 GETTABLEKS                       R32 R11 K43 ["image"]
      228 SETTABLEKS                       R32 R31 K35 ["Image"]
      230 GETTABLEKS                       R32 R11 K44 ["transparency"]
      232 SETTABLEKS                       R32 R31 K36 ["ImageTransparency"]
      234 GETTABLEKS                       R32 R11 K45 ["color3"]
      236 SETTABLEKS                       R32 R31 K37 ["ImageColor3"]
      238 CALL                             R29 2 1
      239 SETTABLEKS                       R29 R28 K30 ["Icon"]
      241 GETUPVAL                         R29 8
      242 GETUPVAL                         R30 9
      243 DUPTABLE                         R31 K46 [{"tag", "LayoutOrder"}]
      244 LOADK                            R32 K47 ["size-full-full"]
      245 SETTABLEKS                       R32 R31 K20 ["tag"]
      247 MOVE                             R32 R19
      248 CALL                             R32 0 1
      249 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      251 DUPTABLE                         R32 K50 [{"Name", "NameEditor"}]
      252 GETUPVAL                         R33 8
      253 GETUPVAL                         R34 10
      254 DUPTABLE                         R35 K55 [{"tag", "LayoutOrder", "ZIndex", "Text", "textStyle", "ref"}]
      255 LOADK                            R36 K56 ["size-full-full text-body-small text-align-x-left text-no-wrap"]
      256 SETTABLEKS                       R36 R35 K20 ["tag"]
      258 MOVE                             R36 R19
      259 CALL                             R36 0 1
      260 SETTABLEKS                       R36 R35 K18 ["LayoutOrder"]
      262 MOVE                             R36 R20
      263 CALL                             R36 0 1
      264 SETTABLEKS                       R36 R35 K51 ["ZIndex"]
      266 SETTABLEKS                       R8 R35 K52 ["Text"]
      268 DUPTABLE                         R36 K58 [{"Transparency"}]
      269 JUMPIFNOT                        R14 ; [+2]
      270 LOADN                            R37 1
      271 JUMP                             ; [+1]
      272 LOADNIL                          R37
      273 SETTABLEKS                       R37 R36 K57 ["Transparency"]
      275 SETTABLEKS                       R36 R35 K53 ["textStyle"]
      277 SETTABLEKS                       R12 R35 K54 ["ref"]
      279 CALL                             R33 2 1
      280 SETTABLEKS                       R33 R32 K48 ["Name"]
      282 GETUPVAL                         R33 8
      283 LOADK                            R34 K59 ["TextBox"]
      284 NEWTABLE                         R35 32 0
      286 MOVE                             R36 R19
      287 CALL                             R36 0 1
      288 SETTABLEKS                       R36 R35 K18 ["LayoutOrder"]
      290 MOVE                             R36 R20
      291 CALL                             R36 0 1
      292 SETTABLEKS                       R36 R35 K51 ["ZIndex"]
      294 GETIMPORT                        R36 K61 [UDim2.fromScale]
      296 LOADN                            R37 1
      297 LOADN                            R38 1
      298 CALL                             R36 2 1
      299 SETTABLEKS                       R36 R35 K19 ["Size"]
      301 LOADB                            R36 0
      302 SETTABLEKS                       R36 R35 K62 ["ClearTextOnFocus"]
      304 SETTABLEKS                       R6 R35 K63 ["Visible"]
      306 LOADK                            R36 K64 [""]
      307 SETTABLEKS                       R36 R35 K52 ["Text"]
      309 LOADN                            R36 1
      310 SETTABLEKS                       R36 R35 K34 ["BackgroundTransparency"]
      312 JUMPIFNOT                        R14 ; [+9]
      313 GETTABLEKS                       R39 R18 K65 ["Color"]
      315 GETTABLEKS                       R38 R39 K25 ["Content"]
      317 GETTABLEKS                       R37 R38 K66 ["Default"]
      319 GETTABLEKS                       R36 R37 K57 ["Transparency"]
      321 JUMP                             ; [+1]
      322 LOADN                            R36 1
      323 SETTABLEKS                       R36 R35 K67 ["TextTransparency"]
      325 LOADN                            R36 0
      326 SETTABLEKS                       R36 R35 K68 ["BorderSizePixel"]
      328 GETTABLEKS                       R38 R18 K69 ["Typography"]
      330 GETTABLEKS                       R37 R38 K70 ["BodySmall"]
      332 GETTABLEKS                       R36 R37 K71 ["Font"]
      334 SETTABLEKS                       R36 R35 K71 ["Font"]
      336 GETTABLEKS                       R38 R18 K69 ["Typography"]
      338 GETTABLEKS                       R37 R38 K70 ["BodySmall"]
      340 GETTABLEKS                       R36 R37 K72 ["LineHeight"]
      342 SETTABLEKS                       R36 R35 K72 ["LineHeight"]
      344 GETTABLEKS                       R38 R18 K69 ["Typography"]
      346 GETTABLEKS                       R37 R38 K70 ["BodySmall"]
      348 GETTABLEKS                       R36 R37 K73 ["FontSize"]
      350 SETTABLEKS                       R36 R35 K74 ["TextSize"]
      352 GETIMPORT                        R36 K78 [Enum.TextXAlignment.Left]
      354 SETTABLEKS                       R36 R35 K76 ["TextXAlignment"]
      356 GETTABLEKS                       R39 R18 K65 ["Color"]
      358 GETTABLEKS                       R38 R39 K25 ["Content"]
      360 GETTABLEKS                       R37 R38 K66 ["Default"]
      362 GETTABLEKS                       R36 R37 K79 ["Color3"]
      364 SETTABLEKS                       R36 R35 K80 ["TextColor3"]
      366 SETTABLEKS                       R13 R35 K54 ["ref"]
      368 GETUPVAL                         R38 4
      369 GETTABLEKS                       R37 R38 K81 ["Event"]
      371 GETTABLEKS                       R36 R37 K82 ["Focused"]
      373 SETTABLE                         R16 R35 R36
      374 GETUPVAL                         R38 4
      375 GETTABLEKS                       R37 R38 K81 ["Event"]
      377 GETTABLEKS                       R36 R37 K83 ["FocusLost"]
      379 SETTABLE                         R17 R35 R36
      380 CALL                             R33 2 1
      381 SETTABLEKS                       R33 R32 K49 ["NameEditor"]
      383 CALL                             R29 3 1
      384 SETTABLEKS                       R29 R28 K31 ["NameContainer"]
      386 CALL                             R25 3 1
      387 SETTABLEKS                       R25 R24 K25 ["Content"]
      389 GETUPVAL                         R25 8
      390 GETUPVAL                         R26 9
      391 DUPTABLE                         R27 K86 [{"tag", "LayoutOrder", "Position", "Size", "backgroundStyle"}]
      392 LOADK                            R28 K87 ["anchor-bottom-center"]
      393 SETTABLEKS                       R28 R27 K20 ["tag"]
      395 MOVE                             R28 R19
      396 CALL                             R28 0 1
      397 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      399 GETIMPORT                        R28 K89 [UDim2.new]
      401 LOADK                            R29 K90 [0.5]
      402 LOADN                            R30 0
      403 LOADN                            R31 1
      404 GETTABLEKS                       R34 R18 K91 ["Padding"]
      406 GETTABLEKS                       R33 R34 K92 ["XXSmall"]
      408 MINUS                            R32 R33
      409 CALL                             R28 4 1
      410 SETTABLEKS                       R28 R27 K84 ["Position"]
      412 GETIMPORT                        R28 K89 [UDim2.new]
      414 LOADN                            R29 1
      415 LOADN                            R30 0
      416 LOADN                            R31 0
      417 GETTABLEKS                       R33 R18 K93 ["Stroke"]
      419 GETTABLEKS                       R32 R33 K94 ["Standard"]
      421 CALL                             R28 4 1
      422 SETTABLEKS                       R28 R27 K19 ["Size"]
      424 GETTABLEKS                       R30 R18 K65 ["Color"]
      426 GETTABLEKS                       R29 R30 K93 ["Stroke"]
      428 GETTABLEKS                       R28 R29 K66 ["Default"]
      430 SETTABLEKS                       R28 R27 K85 ["backgroundStyle"]
      432 CALL                             R25 2 1
      433 SETTABLEKS                       R25 R24 K26 ["Underline"]
      435 CALL                             R21 3 -1
      436 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["Observable"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["PropertyEditorTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["PropertyTypes"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R7 R0 K6 ["Parent"]
       35 GETTABLEKS                       R6 R7 K12 ["React"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R8 R0 K6 ["Parent"]
       42 GETTABLEKS                       R7 R8 K13 ["ReactUtils"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K14 ["RpcTypes"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R10 R0 K8 ["Util"]
       54 GETTABLEKS                       R9 R10 K15 ["samePropertyId"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R11 R0 K16 ["Hooks"]
       61 GETTABLEKS                       R10 R11 K17 ["useStyledClassIcon"]
       63 CALL                             R9 1 1
       64 GETTABLEKS                       R10 R1 K18 ["Text"]
       66 GETTABLEKS                       R11 R1 K19 ["View"]
       68 GETTABLEKS                       R12 R6 K20 ["createNextOrder"]
       70 GETTABLEKS                       R13 R5 K21 ["createElement"]
       72 GETTABLEKS                       R15 R1 K16 ["Hooks"]
       74 GETTABLEKS                       R14 R15 K22 ["useTokens"]
       76 DUPTABLE                         R15 K26 [{"metaType", "name", "className"}]
       77 LOADK                            R16 K27 ["Property"]
       78 SETTABLEKS                       R16 R15 K23 ["metaType"]
       80 LOADK                            R16 K28 ["Name"]
       81 SETTABLEKS                       R16 R15 K24 ["name"]
       83 LOADK                            R16 K29 ["Instance"]
       84 SETTABLEKS                       R16 R15 K25 ["className"]
       86 DUPTABLE                         R16 K26 [{"metaType", "name", "className"}]
       87 LOADK                            R17 K30 ["Virtual"]
       88 SETTABLEKS                       R17 R16 K23 ["metaType"]
       90 LOADK                            R17 K31 ["Self"]
       91 SETTABLEKS                       R17 R16 K24 ["name"]
       93 LOADK                            R17 K29 ["Instance"]
       94 SETTABLEKS                       R17 R16 K25 ["className"]
       96 DUPCLOSURE                       R17 K32 [PROTO_0]
       97 CAPTURE                          VAL R8
       98 DUPCLOSURE                       R18 K33 [PROTO_1]
       99 CAPTURE                          VAL R15
      100 DUPCLOSURE                       R19 K34 [PROTO_2]
      101 DUPCLOSURE                       R20 K35 [PROTO_8]
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R10
      113 RETURN                           R20 1
