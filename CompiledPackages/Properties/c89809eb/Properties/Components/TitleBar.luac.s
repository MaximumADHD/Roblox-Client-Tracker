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
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 GETTABLEKS                       R2 R0 K0 ["parts"]
        4 GETTABLEKS                       R2 R2 K1 ["value"]
        6 GETTABLEKS                       R2 R2 K2 ["multiple"]
        8 JUMPIFNOT                        R2 ; [+7]
        9 LOADK                            R3 K3 ["%* selected"]
       10 MOVE                             R5 R1
       11 NAMECALL                         R3 R3 K4 ["format"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 RETURN                           R2 1
       16 GETTABLEKS                       R2 R0 K0 ["parts"]
       18 GETTABLEKS                       R2 R2 K1 ["value"]
       20 GETTABLEKS                       R2 R2 K1 ["value"]
       22 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 JUMPIFEQKNIL                     R2 ; [+8]
        5 GETTABLEKS                       R4 R2 K0 ["parts"]
        7 GETTABLEKS                       R4 R4 K1 ["value"]
        9 GETTABLEKS                       R4 R4 K2 ["multiple"]
       11 JUMPIFNOT                        R4 ; [+7]
       12 LOADK                            R4 K3 ["%* selected"]
       13 MOVE                             R6 R3
       14 NAMECALL                         R4 R4 K4 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R1 R4
       18 JUMP                             ; [+6]
       19 GETTABLEKS                       R1 R2 K0 ["parts"]
       21 GETTABLEKS                       R1 R1 K1 ["value"]
       23 GETTABLEKS                       R1 R1 K1 ["value"]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getIconProps"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["parts"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
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
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K5 ["session"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 GETTABLEKS                       R2 R0 K1 ["session"]
        5 GETTABLEKS                       R2 R2 K2 ["summaryObservable"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["use"]
       11 GETTABLEKS                       R3 R0 K1 ["session"]
       13 GETTABLEKS                       R3 R3 K3 ["propertiesObservable"]
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
       52 GETTABLEKS                       R5 R4 K6 ["parts"]
       54 GETTABLEKS                       R5 R5 K7 ["value"]
       56 GETTABLEKS                       R5 R5 K8 ["multiple"]
       58 LOADB                            R6 0
       59 JUMPIFEQKNIL                     R4 ; [+2]
       61 NOT                              R6 R5
       62 GETTABLEKS                       R7 R1 K9 ["totalInstances"]
       64 GETUPVAL                         R8 4
       65 GETTABLEKS                       R8 R8 K10 ["useBinding"]
       67 JUMPIFEQKNIL                     R4 ; [+8]
       69 GETTABLEKS                       R10 R4 K6 ["parts"]
       71 GETTABLEKS                       R10 R10 K7 ["value"]
       73 GETTABLEKS                       R10 R10 K8 ["multiple"]
       75 JUMPIFNOT                        R10 ; [+7]
       76 LOADK                            R10 K11 ["%* selected"]
       77 MOVE                             R12 R7
       78 NAMECALL                         R10 R10 K12 ["format"]
       80 CALL                             R10 2 1
       81 MOVE                             R9 R10
       82 JUMP                             ; [+6]
       83 GETTABLEKS                       R9 R4 K6 ["parts"]
       85 GETTABLEKS                       R9 R9 K7 ["value"]
       87 GETTABLEKS                       R9 R9 K7 ["value"]
       89 CALL                             R8 1 2
       90 GETUPVAL                         R10 4
       91 GETTABLEKS                       R10 R10 K13 ["useEffect"]
       93 NEWCLOSURE                       R11 P0
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R7
       97 NEWTABLE                         R12 0 2
       99 MOVE                             R13 R4
      100 MOVE                             R14 R7
      101 SETLIST                          R12 R13 2 [1]
      103 CALL                             R10 2 0
      104 GETUPVAL                         R10 5
      105 CALL                             R10 0 1
      106 GETUPVAL                         R11 4
      107 GETTABLEKS                       R11 R11 K14 ["useMemo"]
      109 NEWCLOSURE                       R12 P1
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R3
      112 NEWTABLE                         R13 0 3
      114 MOVE                             R14 R10
      115 MOVE                             R15 R3
      116 MOVE                             R16 R3
      117 JUMPIFNOT                        R16 ; [+2]
      118 GETTABLEKS                       R16 R3 K6 ["parts"]
      120 SETLIST                          R13 R14 3 [1]
      122 CALL                             R11 2 1
      123 GETUPVAL                         R12 4
      124 GETTABLEKS                       R12 R12 K15 ["useRef"]
      126 LOADNIL                          R13
      127 CALL                             R12 1 1
      128 GETUPVAL                         R13 4
      129 GETTABLEKS                       R13 R13 K15 ["useRef"]
      131 LOADNIL                          R14
      132 CALL                             R13 1 1
      133 GETUPVAL                         R14 4
      134 GETTABLEKS                       R14 R14 K16 ["useState"]
      136 LOADB                            R15 0
      137 CALL                             R14 1 2
      138 GETUPVAL                         R16 4
      139 GETTABLEKS                       R16 R16 K17 ["useCallback"]
      141 NEWCLOSURE                       R17 P2
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R15
      144 NEWTABLE                         R18 0 0
      146 CALL                             R16 2 1
      147 GETUPVAL                         R17 4
      148 GETTABLEKS                       R17 R17 K17 ["useCallback"]
      150 NEWCLOSURE                       R18 P3
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R0
      154 CAPTURE                          UPVAL U3
      155 NEWTABLE                         R19 0 1
      157 GETTABLEKS                       R20 R0 K1 ["session"]
      159 SETLIST                          R19 R20 1 [1]
      161 CALL                             R17 2 1
      162 GETUPVAL                         R18 4
      163 GETTABLEKS                       R18 R18 K13 ["useEffect"]
      165 NEWCLOSURE                       R19 P4
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R6
      168 NEWTABLE                         R20 0 1
      170 MOVE                             R21 R7
      171 SETLIST                          R20 R21 1 [1]
      173 CALL                             R18 2 0
      174 GETUPVAL                         R18 6
      175 CALL                             R18 0 1
      176 GETUPVAL                         R19 7
      177 CALL                             R19 0 1
      178 GETUPVAL                         R20 7
      179 CALL                             R20 0 1
      180 GETUPVAL                         R21 8
      181 GETUPVAL                         R22 9
      182 DUPTABLE                         R23 K21 [{"LayoutOrder", "Size", "tag"}]
      183 GETTABLEKS                       R24 R0 K22 ["layoutOrder"]
      185 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      187 GETTABLEKS                       R24 R0 K23 ["size"]
      189 SETTABLEKS                       R24 R23 K19 ["Size"]
      191 LOADK                            R24 K24 ["padding-x-small"]
      192 SETTABLEKS                       R24 R23 K20 ["tag"]
      194 DUPTABLE                         R24 K27 [{"Content", "Underline"}]
      195 GETUPVAL                         R25 8
      196 GETUPVAL                         R26 9
      197 DUPTABLE                         R27 K28 [{"tag"}]
      198 LOADK                            R28 K29 ["size-full-full row align-y-center padding-left-small gap-small"]
      199 SETTABLEKS                       R28 R27 K20 ["tag"]
      201 DUPTABLE                         R28 K32 [{"Icon", "NameContainer"}]
      202 GETUPVAL                         R29 8
      203 LOADK                            R30 K33 ["ImageLabel"]
      204 DUPTABLE                         R31 K38 [{"BackgroundTransparency", "LayoutOrder", "Size", "Image", "ImageTransparency", "ImageColor3"}]
      205 LOADN                            R32 1
      206 SETTABLEKS                       R32 R31 K34 ["BackgroundTransparency"]
      208 MOVE                             R32 R19
      209 CALL                             R32 0 1
      210 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      212 GETIMPORT                        R32 K41 [UDim2.fromOffset]
      214 GETTABLEKS                       R33 R18 K19 ["Size"]
      216 GETTABLEKS                       R33 R33 K42 ["Size_400"]
      218 GETTABLEKS                       R34 R18 K19 ["Size"]
      220 GETTABLEKS                       R34 R34 K42 ["Size_400"]
      222 CALL                             R32 2 1
      223 SETTABLEKS                       R32 R31 K19 ["Size"]
      225 GETTABLEKS                       R32 R11 K43 ["image"]
      227 SETTABLEKS                       R32 R31 K35 ["Image"]
      229 GETTABLEKS                       R32 R11 K44 ["transparency"]
      231 SETTABLEKS                       R32 R31 K36 ["ImageTransparency"]
      233 GETTABLEKS                       R32 R11 K45 ["color3"]
      235 SETTABLEKS                       R32 R31 K37 ["ImageColor3"]
      237 CALL                             R29 2 1
      238 SETTABLEKS                       R29 R28 K30 ["Icon"]
      240 GETUPVAL                         R29 8
      241 GETUPVAL                         R30 9
      242 DUPTABLE                         R31 K46 [{"tag", "LayoutOrder"}]
      243 LOADK                            R32 K47 ["size-full-full"]
      244 SETTABLEKS                       R32 R31 K20 ["tag"]
      246 MOVE                             R32 R19
      247 CALL                             R32 0 1
      248 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      250 DUPTABLE                         R32 K50 [{"Name", "NameEditor"}]
      251 GETUPVAL                         R33 8
      252 GETUPVAL                         R34 10
      253 DUPTABLE                         R35 K55 [{"tag", "LayoutOrder", "ZIndex", "Text", "textStyle", "ref"}]
      254 LOADK                            R36 K56 ["size-full-full text-body-small text-align-x-left text-no-wrap"]
      255 SETTABLEKS                       R36 R35 K20 ["tag"]
      257 MOVE                             R36 R19
      258 CALL                             R36 0 1
      259 SETTABLEKS                       R36 R35 K18 ["LayoutOrder"]
      261 MOVE                             R36 R20
      262 CALL                             R36 0 1
      263 SETTABLEKS                       R36 R35 K51 ["ZIndex"]
      265 SETTABLEKS                       R8 R35 K52 ["Text"]
      267 DUPTABLE                         R36 K58 [{"Transparency"}]
      268 JUMPIFNOT                        R14 ; [+2]
      269 LOADN                            R37 1
      270 JUMP                             ; [+1]
      271 LOADNIL                          R37
      272 SETTABLEKS                       R37 R36 K57 ["Transparency"]
      274 SETTABLEKS                       R36 R35 K53 ["textStyle"]
      276 SETTABLEKS                       R12 R35 K54 ["ref"]
      278 CALL                             R33 2 1
      279 SETTABLEKS                       R33 R32 K48 ["Name"]
      281 GETUPVAL                         R33 8
      282 LOADK                            R34 K59 ["TextBox"]
      283 NEWTABLE                         R35 32 0
      285 MOVE                             R36 R19
      286 CALL                             R36 0 1
      287 SETTABLEKS                       R36 R35 K18 ["LayoutOrder"]
      289 MOVE                             R36 R20
      290 CALL                             R36 0 1
      291 SETTABLEKS                       R36 R35 K51 ["ZIndex"]
      293 GETIMPORT                        R36 K61 [UDim2.fromScale]
      295 LOADN                            R37 1
      296 LOADN                            R38 1
      297 CALL                             R36 2 1
      298 SETTABLEKS                       R36 R35 K19 ["Size"]
      300 LOADB                            R36 0
      301 SETTABLEKS                       R36 R35 K62 ["ClearTextOnFocus"]
      303 SETTABLEKS                       R6 R35 K63 ["Visible"]
      305 LOADK                            R36 K64 [""]
      306 SETTABLEKS                       R36 R35 K52 ["Text"]
      308 LOADN                            R36 1
      309 SETTABLEKS                       R36 R35 K34 ["BackgroundTransparency"]
      311 JUMPIFNOT                        R14 ; [+9]
      312 GETTABLEKS                       R36 R18 K65 ["Color"]
      314 GETTABLEKS                       R36 R36 K25 ["Content"]
      316 GETTABLEKS                       R36 R36 K66 ["Default"]
      318 GETTABLEKS                       R36 R36 K57 ["Transparency"]
      320 JUMP                             ; [+1]
      321 LOADN                            R36 1
      322 SETTABLEKS                       R36 R35 K67 ["TextTransparency"]
      324 LOADN                            R36 0
      325 SETTABLEKS                       R36 R35 K68 ["BorderSizePixel"]
      327 GETTABLEKS                       R36 R18 K69 ["Typography"]
      329 GETTABLEKS                       R36 R36 K70 ["BodySmall"]
      331 GETTABLEKS                       R36 R36 K71 ["Font"]
      333 SETTABLEKS                       R36 R35 K71 ["Font"]
      335 GETTABLEKS                       R36 R18 K69 ["Typography"]
      337 GETTABLEKS                       R36 R36 K70 ["BodySmall"]
      339 GETTABLEKS                       R36 R36 K72 ["LineHeight"]
      341 SETTABLEKS                       R36 R35 K72 ["LineHeight"]
      343 GETTABLEKS                       R36 R18 K69 ["Typography"]
      345 GETTABLEKS                       R36 R36 K70 ["BodySmall"]
      347 GETTABLEKS                       R36 R36 K73 ["FontSize"]
      349 SETTABLEKS                       R36 R35 K74 ["TextSize"]
      351 GETIMPORT                        R36 K78 [Enum.TextXAlignment.Left]
      353 SETTABLEKS                       R36 R35 K76 ["TextXAlignment"]
      355 GETTABLEKS                       R36 R18 K65 ["Color"]
      357 GETTABLEKS                       R36 R36 K25 ["Content"]
      359 GETTABLEKS                       R36 R36 K66 ["Default"]
      361 GETTABLEKS                       R36 R36 K79 ["Color3"]
      363 SETTABLEKS                       R36 R35 K80 ["TextColor3"]
      365 SETTABLEKS                       R13 R35 K54 ["ref"]
      367 GETUPVAL                         R36 4
      368 GETTABLEKS                       R36 R36 K81 ["Event"]
      370 GETTABLEKS                       R36 R36 K82 ["Focused"]
      372 SETTABLE                         R16 R35 R36
      373 GETUPVAL                         R36 4
      374 GETTABLEKS                       R36 R36 K81 ["Event"]
      376 GETTABLEKS                       R36 R36 K83 ["FocusLost"]
      378 SETTABLE                         R17 R35 R36
      379 CALL                             R33 2 1
      380 SETTABLEKS                       R33 R32 K49 ["NameEditor"]
      382 CALL                             R29 3 1
      383 SETTABLEKS                       R29 R28 K31 ["NameContainer"]
      385 CALL                             R25 3 1
      386 SETTABLEKS                       R25 R24 K25 ["Content"]
      388 GETUPVAL                         R25 8
      389 GETUPVAL                         R26 9
      390 DUPTABLE                         R27 K86 [{"tag", "LayoutOrder", "Position", "Size", "backgroundStyle"}]
      391 LOADK                            R28 K87 ["anchor-bottom-center"]
      392 SETTABLEKS                       R28 R27 K20 ["tag"]
      394 MOVE                             R28 R19
      395 CALL                             R28 0 1
      396 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      398 GETIMPORT                        R28 K89 [UDim2.new]
      400 LOADK                            R29 K90 [0.5]
      401 LOADN                            R30 0
      402 LOADN                            R31 1
      403 GETTABLEKS                       R33 R18 K91 ["Padding"]
      405 GETTABLEKS                       R33 R33 K92 ["XXSmall"]
      407 MINUS                            R32 R33
      408 CALL                             R28 4 1
      409 SETTABLEKS                       R28 R27 K84 ["Position"]
      411 GETIMPORT                        R28 K89 [UDim2.new]
      413 LOADN                            R29 1
      414 LOADN                            R30 0
      415 LOADN                            R31 0
      416 GETTABLEKS                       R32 R18 K93 ["Stroke"]
      418 GETTABLEKS                       R32 R32 K94 ["Standard"]
      420 CALL                             R28 4 1
      421 SETTABLEKS                       R28 R27 K19 ["Size"]
      423 GETTABLEKS                       R28 R18 K65 ["Color"]
      425 GETTABLEKS                       R28 R28 K93 ["Stroke"]
      427 GETTABLEKS                       R28 R28 K66 ["Default"]
      429 SETTABLEKS                       R28 R27 K85 ["backgroundStyle"]
      431 CALL                             R25 2 1
      432 SETTABLEKS                       R25 R24 K26 ["Underline"]
      434 CALL                             R21 3 -1
      435 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Observable"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["PropertyEditorTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["PropertyTypes"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K6 ["Parent"]
       35 GETTABLEKS                       R6 R6 K12 ["React"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K6 ["Parent"]
       42 GETTABLEKS                       R7 R7 K13 ["ReactUtils"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K14 ["RpcTypes"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K15 ["PropertyInteraction"]
       54 GETTABLEKS                       R9 R9 K16 ["samePropertyId"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K17 ["Hooks"]
       61 GETTABLEKS                       R10 R10 K18 ["useStyledClassIcon"]
       63 CALL                             R9 1 1
       64 GETTABLEKS                       R10 R1 K19 ["Text"]
       66 GETTABLEKS                       R11 R1 K20 ["View"]
       68 GETTABLEKS                       R12 R6 K21 ["createNextOrder"]
       70 GETTABLEKS                       R13 R5 K22 ["createElement"]
       72 GETTABLEKS                       R14 R1 K17 ["Hooks"]
       74 GETTABLEKS                       R14 R14 K23 ["useTokens"]
       76 DUPTABLE                         R15 K27 [{"metaType", "name", "className"}]
       77 LOADK                            R16 K28 ["Property"]
       78 SETTABLEKS                       R16 R15 K24 ["metaType"]
       80 LOADK                            R16 K29 ["Name"]
       81 SETTABLEKS                       R16 R15 K25 ["name"]
       83 LOADK                            R16 K30 ["Instance"]
       84 SETTABLEKS                       R16 R15 K26 ["className"]
       86 DUPTABLE                         R16 K27 [{"metaType", "name", "className"}]
       87 LOADK                            R17 K31 ["Virtual"]
       88 SETTABLEKS                       R17 R16 K24 ["metaType"]
       90 LOADK                            R17 K32 ["Self"]
       91 SETTABLEKS                       R17 R16 K25 ["name"]
       93 LOADK                            R17 K30 ["Instance"]
       94 SETTABLEKS                       R17 R16 K26 ["className"]
       96 DUPCLOSURE                       R17 K33 [PROTO_0]
       97 CAPTURE                          VAL R8
       98 DUPCLOSURE                       R18 K34 [PROTO_1]
       99 CAPTURE                          VAL R15
      100 DUPCLOSURE                       R19 K35 [PROTO_2]
      101 DUPCLOSURE                       R20 K36 [PROTO_8]
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
