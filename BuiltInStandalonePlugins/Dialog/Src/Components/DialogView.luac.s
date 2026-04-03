PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_4]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_6]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["Hooks"]
        5 GETTABLEKS                       R2 R3 K1 ["useTokens"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R2
       10 GETTABLEKS                       R5 R0 K2 ["type"]
       12 CALL                             R3 2 1
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 GETUPVAL                         R8 3
       18 JUMPIFNOT                        R8 ; [+34]
       19 GETUPVAL                         R8 4
       20 GETTABLEKS                       R9 R0 K3 ["image"]
       22 CALL                             R8 1 1
       23 MOVE                             R4 R8
       24 GETUPVAL                         R9 5
       25 GETTABLEKS                       R8 R9 K4 ["useMemo"]
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          REF R4
       29 NEWTABLE                         R10 0 1
       31 MOVE                             R11 R4
       32 SETLIST                          R10 R11 1 [1]
       34 CALL                             R8 2 1
       35 MOVE                             R5 R8
       36 GETUPVAL                         R9 5
       37 GETTABLEKS                       R8 R9 K4 ["useMemo"]
       39 NEWCLOSURE                       R9 P1
       40 CAPTURE                          REF R5
       41 NEWTABLE                         R10 0 1
       43 MOVE                             R11 R5
       44 SETLIST                          R10 R11 1 [1]
       46 CALL                             R8 2 1
       47 MOVE                             R6 R8
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R9 R0 K5 ["showIndeterminateProgressIndicator"]
       51 CALL                             R8 1 1
       52 MOVE                             R7 R8
       53 GETUPVAL                         R8 4
       54 GETTABLEKS                       R9 R0 K6 ["title"]
       56 CALL                             R8 1 1
       57 GETUPVAL                         R10 5
       58 GETTABLEKS                       R9 R10 K4 ["useMemo"]
       60 NEWCLOSURE                       R10 P2
       61 CAPTURE                          VAL R8
       62 NEWTABLE                         R11 0 1
       64 MOVE                             R12 R8
       65 SETLIST                          R11 R12 1 [1]
       67 CALL                             R9 2 1
       68 GETUPVAL                         R10 4
       69 GETTABLEKS                       R11 R0 K7 ["description"]
       71 CALL                             R10 1 1
       72 GETUPVAL                         R12 5
       73 GETTABLEKS                       R11 R12 K4 ["useMemo"]
       75 NEWCLOSURE                       R12 P3
       76 CAPTURE                          VAL R10
       77 NEWTABLE                         R13 0 1
       79 MOVE                             R14 R10
       80 SETLIST                          R13 R14 1 [1]
       82 CALL                             R11 2 1
       83 GETUPVAL                         R12 6
       84 GETUPVAL                         R14 1
       85 GETTABLEKS                       R13 R14 K8 ["View"]
       87 DUPTABLE                         R14 K13 [{"tag", "onAbsoluteSizeChanged", "testId", "Size"}]
       88 LOADK                            R15 K14 ["component-dialog-view bg-surface-200 col flex-y-between auto-y gap-small padding-x-large padding-y-medium"]
       89 SETTABLEKS                       R15 R14 K9 ["tag"]
       91 GETTABLEKS                       R15 R0 K10 ["onAbsoluteSizeChanged"]
       93 SETTABLEKS                       R15 R14 K10 ["onAbsoluteSizeChanged"]
       95 LOADK                            R15 K15 ["--dialog"]
       96 SETTABLEKS                       R15 R14 K11 ["testId"]
       98 GETUPVAL                         R16 7
       99 CALL                             R16 0 1
      100 JUMPIFNOT                        R16 ; [+8]
      101 GETIMPORT                        R15 K18 [UDim2.fromOffset]
      103 GETTABLEKS                       R17 R0 K20 ["width"]
      105 ORK                              R16 R17 K19 [350]
      106 LOADN                            R17 0
      107 CALL                             R15 2 1
      108 JUMP                             ; [+5]
      109 GETIMPORT                        R15 K18 [UDim2.fromOffset]
      111 LOADN                            R16 94
      112 LOADN                            R17 0
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K12 ["Size"]
      116 DUPTABLE                         R15 K23 [{"IconAndTextRow", "ButtonGroup"}]
      117 GETUPVAL                         R16 6
      118 GETUPVAL                         R18 1
      119 GETTABLEKS                       R17 R18 K8 ["View"]
      121 DUPTABLE                         R18 K25 [{"tag", "LayoutOrder"}]
      122 LOADK                            R19 K26 ["row size-full-0 auto-y flex-x-between items-start gap-medium padding-bottom-medium"]
      123 SETTABLEKS                       R19 R18 K9 ["tag"]
      125 MOVE                             R19 R1
      126 CALL                             R19 0 1
      127 SETTABLEKS                       R19 R18 K24 ["LayoutOrder"]
      129 DUPTABLE                         R19 K30 [{"Image", "Icon", "TextColumn"}]
      130 GETUPVAL                         R21 3
      131 JUMPIFNOT                        R21 ; [+39]
      132 GETUPVAL                         R20 6
      133 GETUPVAL                         R22 1
      134 GETTABLEKS                       R21 R22 K27 ["Image"]
      136 DUPTABLE                         R22 K32 [{"Image", "Visible", "Size", "LayoutOrder", "testId"}]
      137 SETTABLEKS                       R4 R22 K27 ["Image"]
      139 SETTABLEKS                       R5 R22 K31 ["Visible"]
      141 GETIMPORT                        R23 K18 [UDim2.fromOffset]
      143 LOADN                            R24 36
      144 LOADN                            R25 36
      145 CALL                             R23 2 1
      146 SETTABLEKS                       R23 R22 K12 ["Size"]
      148 MOVE                             R23 R1
      149 CALL                             R23 0 1
      150 SETTABLEKS                       R23 R22 K24 ["LayoutOrder"]
      152 LOADK                            R23 K33 ["--dialog-thumbnail"]
      153 SETTABLEKS                       R23 R22 K11 ["testId"]
      155 DUPTABLE                         R23 K35 [{"UICorner"}]
      156 GETUPVAL                         R24 6
      157 LOADK                            R25 K34 ["UICorner"]
      158 DUPTABLE                         R26 K37 [{"CornerRadius"}]
      159 GETIMPORT                        R27 K40 [UDim.new]
      161 LOADN                            R28 0
      162 LOADN                            R29 4
      163 CALL                             R27 2 1
      164 SETTABLEKS                       R27 R26 K36 ["CornerRadius"]
      166 CALL                             R24 2 1
      167 SETTABLEKS                       R24 R23 K34 ["UICorner"]
      169 CALL                             R20 3 1
      170 JUMPIF                           R20 ; [+1]
      171 LOADNIL                          R20
      172 SETTABLEKS                       R20 R19 K27 ["Image"]
      174 JUMPIFNOT                        R3 ; [+47]
      175 GETUPVAL                         R20 6
      176 GETUPVAL                         R22 1
      177 GETTABLEKS                       R21 R22 K28 ["Icon"]
      179 DUPTABLE                         R22 K45 [{"name", "size", "style", "variant", "Visible", "LayoutOrder", "testId"}]
      180 GETTABLEKS                       R23 R3 K46 ["icon"]
      182 SETTABLEKS                       R23 R22 K41 ["name"]
      184 GETUPVAL                         R26 1
      185 GETTABLEKS                       R25 R26 K47 ["Enums"]
      187 GETTABLEKS                       R24 R25 K48 ["IconSize"]
      189 GETTABLEKS                       R23 R24 K49 ["Large"]
      191 SETTABLEKS                       R23 R22 K42 ["size"]
      193 GETTABLEKS                       R23 R3 K50 ["color"]
      195 SETTABLEKS                       R23 R22 K43 ["style"]
      197 GETUPVAL                         R26 1
      198 GETTABLEKS                       R25 R26 K47 ["Enums"]
      200 GETTABLEKS                       R24 R25 K51 ["IconVariant"]
      202 GETTABLEKS                       R23 R24 K52 ["Filled"]
      204 SETTABLEKS                       R23 R22 K44 ["variant"]
      206 GETUPVAL                         R24 3
      207 JUMPIFNOT                        R24 ; [+2]
      208 MOVE                             R23 R6
      209 JUMPIF                           R23 ; [+1]
      210 LOADNIL                          R23
      211 SETTABLEKS                       R23 R22 K31 ["Visible"]
      213 MOVE                             R23 R1
      214 CALL                             R23 0 1
      215 SETTABLEKS                       R23 R22 K24 ["LayoutOrder"]
      217 LOADK                            R23 K53 ["--dialog-icon"]
      218 SETTABLEKS                       R23 R22 K11 ["testId"]
      220 CALL                             R20 2 1
      221 JUMP                             ; [+1]
      222 LOADNIL                          R20
      223 SETTABLEKS                       R20 R19 K28 ["Icon"]
      225 GETUPVAL                         R20 6
      226 GETUPVAL                         R22 1
      227 GETTABLEKS                       R21 R22 K8 ["View"]
      229 DUPTABLE                         R22 K25 [{"tag", "LayoutOrder"}]
      230 LOADK                            R23 K54 ["fill col auto-y gap-medium"]
      231 SETTABLEKS                       R23 R22 K9 ["tag"]
      233 MOVE                             R23 R1
      234 CALL                             R23 0 1
      235 SETTABLEKS                       R23 R22 K24 ["LayoutOrder"]
      237 DUPTABLE                         R23 K59 [{"Title", "DescriptionRow", "Description", "Children"}]
      238 GETUPVAL                         R24 6
      239 GETUPVAL                         R26 1
      240 GETTABLEKS                       R25 R26 K60 ["Text"]
      242 DUPTABLE                         R26 K61 [{"tag", "Text", "Visible", "LayoutOrder", "testId"}]
      243 LOADK                            R27 K62 ["size-full-0 auto-y text-wrap text-title-medium text-align-x-left text-align-y-center"]
      244 SETTABLEKS                       R27 R26 K9 ["tag"]
      246 SETTABLEKS                       R8 R26 K60 ["Text"]
      248 SETTABLEKS                       R9 R26 K31 ["Visible"]
      250 MOVE                             R27 R1
      251 CALL                             R27 0 1
      252 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      254 LOADK                            R27 K63 ["--dialog-title"]
      255 SETTABLEKS                       R27 R26 K11 ["testId"]
      257 CALL                             R24 2 1
      258 SETTABLEKS                       R24 R23 K55 ["Title"]
      260 GETUPVAL                         R25 3
      261 JUMPIFNOT                        R25 ; [+72]
      262 GETUPVAL                         R24 6
      263 GETUPVAL                         R26 1
      264 GETTABLEKS                       R25 R26 K8 ["View"]
      266 DUPTABLE                         R26 K64 [{"tag", "Visible", "LayoutOrder"}]
      267 LOADK                            R27 K65 ["row size-full-0 auto-y items-center gap-small"]
      268 SETTABLEKS                       R27 R26 K9 ["tag"]
      270 SETTABLEKS                       R11 R26 K31 ["Visible"]
      272 MOVE                             R27 R1
      273 CALL                             R27 0 1
      274 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      276 DUPTABLE                         R27 K67 [{"ProgressSpinner", "Description"}]
      277 GETUPVAL                         R28 6
      278 GETUPVAL                         R30 1
      279 GETTABLEKS                       R29 R30 K68 ["Progress"]
      281 DUPTABLE                         R30 K70 [{"shape", "size", "Visible", "LayoutOrder", "testId"}]
      282 GETUPVAL                         R34 1
      283 GETTABLEKS                       R33 R34 K47 ["Enums"]
      285 GETTABLEKS                       R32 R33 K71 ["ProgressShape"]
      287 GETTABLEKS                       R31 R32 K72 ["Circle"]
      289 SETTABLEKS                       R31 R30 K69 ["shape"]
      291 GETUPVAL                         R34 1
      292 GETTABLEKS                       R33 R34 K47 ["Enums"]
      294 GETTABLEKS                       R32 R33 K73 ["ProgressSize"]
      296 GETTABLEKS                       R31 R32 K74 ["Small"]
      298 SETTABLEKS                       R31 R30 K42 ["size"]
      300 SETTABLEKS                       R7 R30 K31 ["Visible"]
      302 MOVE                             R31 R1
      303 CALL                             R31 0 1
      304 SETTABLEKS                       R31 R30 K24 ["LayoutOrder"]
      306 LOADK                            R31 K75 ["--dialog-progress"]
      307 SETTABLEKS                       R31 R30 K11 ["testId"]
      309 CALL                             R28 2 1
      310 SETTABLEKS                       R28 R27 K66 ["ProgressSpinner"]
      312 GETUPVAL                         R28 6
      313 GETUPVAL                         R30 1
      314 GETTABLEKS                       R29 R30 K60 ["Text"]
      316 DUPTABLE                         R30 K76 [{"tag", "Text", "LayoutOrder", "testId"}]
      317 LOADK                            R31 K77 ["fill auto-y text-wrap text-body-small text-align-x-left text-align-y-top grow"]
      318 SETTABLEKS                       R31 R30 K9 ["tag"]
      320 SETTABLEKS                       R10 R30 K60 ["Text"]
      322 MOVE                             R31 R1
      323 CALL                             R31 0 1
      324 SETTABLEKS                       R31 R30 K24 ["LayoutOrder"]
      326 LOADK                            R31 K78 ["--dialog-description"]
      327 SETTABLEKS                       R31 R30 K11 ["testId"]
      329 CALL                             R28 2 1
      330 SETTABLEKS                       R28 R27 K57 ["Description"]
      332 CALL                             R24 3 1
      333 JUMPIF                           R24 ; [+1]
      334 LOADNIL                          R24
      335 SETTABLEKS                       R24 R23 K56 ["DescriptionRow"]
      337 GETUPVAL                         R25 3
      338 JUMPIF                           R25 ; [+21]
      339 GETUPVAL                         R24 6
      340 GETUPVAL                         R26 1
      341 GETTABLEKS                       R25 R26 K60 ["Text"]
      343 DUPTABLE                         R26 K61 [{"tag", "Text", "Visible", "LayoutOrder", "testId"}]
      344 LOADK                            R27 K79 ["size-full-0 auto-y text-wrap text-body-small text-align-x-left text-align-y-top grow"]
      345 SETTABLEKS                       R27 R26 K9 ["tag"]
      347 SETTABLEKS                       R10 R26 K60 ["Text"]
      349 SETTABLEKS                       R11 R26 K31 ["Visible"]
      351 MOVE                             R27 R1
      352 CALL                             R27 0 1
      353 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      355 LOADK                            R27 K78 ["--dialog-description"]
      356 SETTABLEKS                       R27 R26 K11 ["testId"]
      358 CALL                             R24 2 1
      359 JUMPIF                           R24 ; [+1]
      360 LOADNIL                          R24
      361 SETTABLEKS                       R24 R23 K57 ["Description"]
      363 GETUPVAL                         R25 7
      364 CALL                             R25 0 1
      365 JUMPIFNOT                        R25 ; [+30]
      366 GETUPVAL                         R27 5
      367 GETTABLEKS                       R26 R27 K58 ["Children"]
      369 GETTABLEKS                       R25 R26 K80 ["count"]
      371 GETTABLEKS                       R26 R0 K81 ["children"]
      373 CALL                             R25 1 1
      374 LOADN                            R26 0
      375 JUMPIFNOTLT                      R26 R25 ; [+20]
      377 GETUPVAL                         R24 6
      378 GETUPVAL                         R26 1
      379 GETTABLEKS                       R25 R26 K8 ["View"]
      381 DUPTABLE                         R26 K82 [{"tag", "LayoutOrder", "testId"}]
      382 LOADK                            R27 K83 ["size-full-0 auto-y col gap-medium"]
      383 SETTABLEKS                       R27 R26 K9 ["tag"]
      385 MOVE                             R27 R1
      386 CALL                             R27 0 1
      387 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      389 LOADK                            R27 K84 ["--dialog-children"]
      390 SETTABLEKS                       R27 R26 K11 ["testId"]
      392 GETTABLEKS                       R27 R0 K81 ["children"]
      394 CALL                             R24 3 1
      395 JUMP                             ; [+1]
      396 LOADNIL                          R24
      397 SETTABLEKS                       R24 R23 K58 ["Children"]
      399 CALL                             R20 3 1
      400 SETTABLEKS                       R20 R19 K29 ["TextColumn"]
      402 CALL                             R16 3 1
      403 SETTABLEKS                       R16 R15 K21 ["IconAndTextRow"]
      405 GETUPVAL                         R16 6
      406 GETUPVAL                         R17 8
      407 DUPTABLE                         R18 K88 [{"LayoutOrder", "primaryAction", "secondaryAction", "tertiaryAction"}]
      408 MOVE                             R19 R1
      409 CALL                             R19 0 1
      410 SETTABLEKS                       R19 R18 K24 ["LayoutOrder"]
      412 GETTABLEKS                       R19 R0 K85 ["primaryAction"]
      414 SETTABLEKS                       R19 R18 K85 ["primaryAction"]
      416 GETTABLEKS                       R19 R0 K86 ["secondaryAction"]
      418 SETTABLEKS                       R19 R18 K86 ["secondaryAction"]
      420 GETTABLEKS                       R19 R0 K87 ["tertiaryAction"]
      422 SETTABLEKS                       R19 R18 K87 ["tertiaryAction"]
      424 CALL                             R16 2 1
      425 SETTABLEKS                       R16 R15 K22 ["ButtonGroup"]
      427 CALL                             R12 3 -1
      428 CLOSEUPVALS                      R4
      429 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K8 ["DialogButtonGroup"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R7 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K6 ["Src"]
       48 GETTABLEKS                       R8 R9 K14 ["Flags"]
       50 GETTABLEKS                       R7 R8 K15 ["getFFlagDialogManagerUpdateSemantics"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K6 ["Src"]
       57 GETTABLEKS                       R9 R10 K14 ["Flags"]
       59 GETTABLEKS                       R8 R9 K16 ["getFeatureStudioDialogManagerCustomDialogs"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R11 R0 K6 ["Src"]
       66 GETTABLEKS                       R10 R11 K17 ["Hooks"]
       68 GETTABLEKS                       R9 R10 K18 ["useBindable"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R12 R0 K6 ["Src"]
       75 GETTABLEKS                       R11 R12 K17 ["Hooks"]
       77 GETTABLEKS                       R10 R11 K19 ["useDialogIconProps"]
       79 CALL                             R9 1 1
       80 GETTABLEKS                       R11 R3 K20 ["Util"]
       82 GETTABLEKS                       R10 R11 K21 ["counter"]
       84 MOVE                             R11 R6
       85 CALL                             R11 0 1
       86 GETTABLEKS                       R12 R4 K22 ["createElement"]
       88 DUPCLOSURE                       R13 K23 [PROTO_8]
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R1
       98 GETTABLEKS                       R14 R4 K24 ["memo"]
      100 MOVE                             R15 R13
      101 CALL                             R14 1 -1
      102 RETURN                           R14 -1
