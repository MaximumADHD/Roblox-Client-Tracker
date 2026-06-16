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
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETIMPORT                        R1 K2 [UDim.new]
        3 LOADN                            R2 0
        4 LOADN                            R3 24
        5 CALL                             R1 2 1
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K2 [UDim.new]
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Hooks"]
        5 GETTABLEKS                       R2 R2 K1 ["useTokens"]
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
       24 GETUPVAL                         R8 5
       25 GETTABLEKS                       R8 R8 K4 ["useMemo"]
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          REF R4
       29 NEWTABLE                         R10 0 1
       31 MOVE                             R11 R4
       32 SETLIST                          R10 R11 1 [1]
       34 CALL                             R8 2 1
       35 MOVE                             R5 R8
       36 GETUPVAL                         R8 5
       37 GETTABLEKS                       R8 R8 K4 ["useMemo"]
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
       57 GETUPVAL                         R9 5
       58 GETTABLEKS                       R9 R9 K4 ["useMemo"]
       60 NEWCLOSURE                       R10 P2
       61 CAPTURE                          VAL R8
       62 NEWTABLE                         R11 0 1
       64 MOVE                             R12 R8
       65 SETLIST                          R11 R12 1 [1]
       67 CALL                             R9 2 1
       68 GETUPVAL                         R10 4
       69 GETTABLEKS                       R11 R0 K7 ["description"]
       71 CALL                             R10 1 1
       72 GETUPVAL                         R11 5
       73 GETTABLEKS                       R11 R11 K4 ["useMemo"]
       75 NEWCLOSURE                       R12 P3
       76 CAPTURE                          VAL R10
       77 NEWTABLE                         R13 0 1
       79 MOVE                             R14 R10
       80 SETLIST                          R13 R14 1 [1]
       82 CALL                             R11 2 1
       83 GETUPVAL                         R12 6
       84 GETUPVAL                         R13 1
       85 GETTABLEKS                       R13 R13 K8 ["View"]
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
      118 GETUPVAL                         R17 1
      119 GETTABLEKS                       R17 R17 K8 ["View"]
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
      133 GETUPVAL                         R21 1
      134 GETTABLEKS                       R21 R21 K27 ["Image"]
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
      176 GETUPVAL                         R21 1
      177 GETTABLEKS                       R21 R21 K28 ["Icon"]
      179 DUPTABLE                         R22 K45 [{"name", "size", "style", "variant", "Visible", "LayoutOrder", "testId"}]
      180 GETTABLEKS                       R23 R3 K46 ["icon"]
      182 SETTABLEKS                       R23 R22 K41 ["name"]
      184 GETUPVAL                         R23 1
      185 GETTABLEKS                       R23 R23 K47 ["Enums"]
      187 GETTABLEKS                       R23 R23 K48 ["IconSize"]
      189 GETTABLEKS                       R23 R23 K49 ["Large"]
      191 SETTABLEKS                       R23 R22 K42 ["size"]
      193 GETTABLEKS                       R23 R3 K50 ["color"]
      195 SETTABLEKS                       R23 R22 K43 ["style"]
      197 GETUPVAL                         R23 1
      198 GETTABLEKS                       R23 R23 K47 ["Enums"]
      200 GETTABLEKS                       R23 R23 K51 ["IconVariant"]
      202 GETTABLEKS                       R23 R23 K52 ["Filled"]
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
      226 GETUPVAL                         R21 1
      227 GETTABLEKS                       R21 R21 K8 ["View"]
      229 DUPTABLE                         R22 K25 [{"tag", "LayoutOrder"}]
      230 LOADK                            R23 K54 ["fill col auto-y gap-medium"]
      231 SETTABLEKS                       R23 R22 K9 ["tag"]
      233 MOVE                             R23 R1
      234 CALL                             R23 0 1
      235 SETTABLEKS                       R23 R22 K24 ["LayoutOrder"]
      237 DUPTABLE                         R23 K58 [{"Title", "Description", "Children"}]
      238 GETUPVAL                         R24 6
      239 GETUPVAL                         R25 1
      240 GETTABLEKS                       R25 R25 K59 ["Text"]
      242 DUPTABLE                         R26 K60 [{"tag", "Text", "Visible", "LayoutOrder", "testId"}]
      243 LOADK                            R27 K61 ["size-full-0 auto-y text-wrap text-title-medium text-align-x-left text-align-y-center"]
      244 SETTABLEKS                       R27 R26 K9 ["tag"]
      246 SETTABLEKS                       R8 R26 K59 ["Text"]
      248 SETTABLEKS                       R9 R26 K31 ["Visible"]
      250 MOVE                             R27 R1
      251 CALL                             R27 0 1
      252 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      254 LOADK                            R27 K62 ["--dialog-title"]
      255 SETTABLEKS                       R27 R26 K11 ["testId"]
      257 CALL                             R24 2 1
      258 SETTABLEKS                       R24 R23 K55 ["Title"]
      260 GETUPVAL                         R24 6
      261 GETUPVAL                         R25 1
      262 GETTABLEKS                       R25 R25 K59 ["Text"]
      264 DUPTABLE                         R26 K60 [{"tag", "Text", "Visible", "LayoutOrder", "testId"}]
      265 LOADK                            R27 K63 ["size-full-0 auto-y text-wrap text-body-small text-align-x-left text-align-y-top grow"]
      266 SETTABLEKS                       R27 R26 K9 ["tag"]
      268 SETTABLEKS                       R10 R26 K59 ["Text"]
      270 SETTABLEKS                       R11 R26 K31 ["Visible"]
      272 MOVE                             R27 R1
      273 CALL                             R27 0 1
      274 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      276 LOADK                            R27 K64 ["--dialog-description"]
      277 SETTABLEKS                       R27 R26 K11 ["testId"]
      279 GETUPVAL                         R28 3
      280 JUMPIFNOT                        R28 ; [+54]
      281 DUPTABLE                         R27 K67 [{"ProgressSpinner", "SpinnerPadding"}]
      282 GETUPVAL                         R28 6
      283 GETUPVAL                         R29 1
      284 GETTABLEKS                       R29 R29 K68 ["Progress"]
      286 DUPTABLE                         R30 K71 [{"shape", "size", "Visible", "Position", "testId"}]
      287 GETUPVAL                         R31 1
      288 GETTABLEKS                       R31 R31 K47 ["Enums"]
      290 GETTABLEKS                       R31 R31 K72 ["ProgressShape"]
      292 GETTABLEKS                       R31 R31 K73 ["Circle"]
      294 SETTABLEKS                       R31 R30 K69 ["shape"]
      296 GETUPVAL                         R31 1
      297 GETTABLEKS                       R31 R31 K47 ["Enums"]
      299 GETTABLEKS                       R31 R31 K74 ["ProgressSize"]
      301 GETTABLEKS                       R31 R31 K75 ["Small"]
      303 SETTABLEKS                       R31 R30 K42 ["size"]
      305 SETTABLEKS                       R7 R30 K31 ["Visible"]
      307 GETIMPORT                        R31 K76 [UDim2.new]
      309 LOADN                            R32 0
      310 LOADN                            R33 232
      311 LOADN                            R34 0
      312 LOADN                            R35 1
      313 CALL                             R31 4 1
      314 SETTABLEKS                       R31 R30 K70 ["Position"]
      316 LOADK                            R31 K77 ["--dialog-progress"]
      317 SETTABLEKS                       R31 R30 K11 ["testId"]
      319 CALL                             R28 2 1
      320 SETTABLEKS                       R28 R27 K65 ["ProgressSpinner"]
      322 GETUPVAL                         R28 6
      323 LOADK                            R29 K78 ["UIPadding"]
      324 DUPTABLE                         R30 K80 [{"PaddingLeft"}]
      325 DUPCLOSURE                       R33 K81 [PROTO_8]
      326 NAMECALL                         R31 R7 K82 ["map"]
      328 CALL                             R31 2 1
      329 SETTABLEKS                       R31 R30 K79 ["PaddingLeft"]
      331 CALL                             R28 2 1
      332 SETTABLEKS                       R28 R27 K66 ["SpinnerPadding"]
      334 JUMPIF                           R27 ; [+1]
      335 LOADNIL                          R27
      336 CALL                             R24 3 1
      337 SETTABLEKS                       R24 R23 K56 ["Description"]
      339 GETUPVAL                         R25 7
      340 CALL                             R25 0 1
      341 JUMPIFNOT                        R25 ; [+37]
      342 GETUPVAL                         R25 5
      343 GETTABLEKS                       R25 R25 K57 ["Children"]
      345 GETTABLEKS                       R25 R25 K83 ["count"]
      347 GETTABLEKS                       R26 R0 K84 ["children"]
      349 CALL                             R25 1 1
      350 LOADN                            R26 0
      351 JUMPIFNOTLT                      R26 R25 ; [+27]
      353 GETUPVAL                         R24 6
      354 GETUPVAL                         R25 1
      355 GETTABLEKS                       R25 R25 K8 ["View"]
      357 DUPTABLE                         R26 K85 [{"tag", "LayoutOrder", "testId"}]
      358 NEWTABLE                         R27 2 0
      360 LOADB                            R28 1
      361 SETTABLEKS                       R28 R27 K86 ["size-full-0 auto-y col gap-medium"]
      363 GETUPVAL                         R28 8
      364 SETTABLEKS                       R28 R27 K87 ["padding-right-small"]
      366 SETTABLEKS                       R27 R26 K9 ["tag"]
      368 MOVE                             R27 R1
      369 CALL                             R27 0 1
      370 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      372 LOADK                            R27 K88 ["--dialog-children"]
      373 SETTABLEKS                       R27 R26 K11 ["testId"]
      375 GETTABLEKS                       R27 R0 K84 ["children"]
      377 CALL                             R24 3 1
      378 JUMP                             ; [+1]
      379 LOADNIL                          R24
      380 SETTABLEKS                       R24 R23 K57 ["Children"]
      382 CALL                             R20 3 1
      383 SETTABLEKS                       R20 R19 K29 ["TextColumn"]
      385 CALL                             R16 3 1
      386 SETTABLEKS                       R16 R15 K21 ["IconAndTextRow"]
      388 GETUPVAL                         R16 6
      389 GETUPVAL                         R17 9
      390 DUPTABLE                         R18 K92 [{"LayoutOrder", "primaryAction", "secondaryAction", "tertiaryAction"}]
      391 MOVE                             R19 R1
      392 CALL                             R19 0 1
      393 SETTABLEKS                       R19 R18 K24 ["LayoutOrder"]
      395 GETTABLEKS                       R19 R0 K89 ["primaryAction"]
      397 SETTABLEKS                       R19 R18 K89 ["primaryAction"]
      399 GETTABLEKS                       R19 R0 K90 ["secondaryAction"]
      401 SETTABLEKS                       R19 R18 K90 ["secondaryAction"]
      403 GETTABLEKS                       R19 R0 K91 ["tertiaryAction"]
      405 SETTABLEKS                       R19 R18 K91 ["tertiaryAction"]
      407 CALL                             R16 2 1
      408 SETTABLEKS                       R16 R15 K22 ["ButtonGroup"]
      410 CALL                             R12 3 -1
      411 CLOSEUPVALS                      R4
      412 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["DialogButtonGroup"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Flags"]
       22 GETTABLEKS                       R3 R3 K10 ["getFFlagDialogManagerAddEscapeTitleButton"]
       24 CALL                             R2 1 1
       25 CALL                             R2 0 1
       26 GETIMPORT                        R3 K5 [require]
       28 GETTABLEKS                       R4 R0 K11 ["Packages"]
       30 GETTABLEKS                       R4 R4 K12 ["Foundation"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K11 ["Packages"]
       37 GETTABLEKS                       R5 R5 K13 ["Framework"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R6 R0 K11 ["Packages"]
       44 GETTABLEKS                       R6 R6 K14 ["React"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K5 [require]
       49 GETTABLEKS                       R7 R0 K6 ["Src"]
       51 GETTABLEKS                       R7 R7 K15 ["Types"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R0 K6 ["Src"]
       58 GETTABLEKS                       R8 R8 K9 ["Flags"]
       60 GETTABLEKS                       R8 R8 K16 ["getFFlagDialogManagerUpdateSemantics"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K5 [require]
       65 GETTABLEKS                       R9 R0 K6 ["Src"]
       67 GETTABLEKS                       R9 R9 K9 ["Flags"]
       69 GETTABLEKS                       R9 R9 K17 ["getFeatureStudioDialogManagerCustomDialogs"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R10 R0 K6 ["Src"]
       76 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       78 GETTABLEKS                       R10 R10 K19 ["useBindable"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K5 [require]
       83 GETTABLEKS                       R11 R0 K6 ["Src"]
       85 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       87 GETTABLEKS                       R11 R11 K20 ["useDialogIconProps"]
       89 CALL                             R10 1 1
       90 GETTABLEKS                       R11 R4 K21 ["Util"]
       92 GETTABLEKS                       R11 R11 K22 ["counter"]
       94 MOVE                             R12 R7
       95 CALL                             R12 0 1
       96 GETTABLEKS                       R13 R5 K23 ["createElement"]
       98 DUPCLOSURE                       R14 K24 [PROTO_9]
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R1
      109 GETTABLEKS                       R15 R5 K25 ["memo"]
      111 MOVE                             R16 R14
      112 CALL                             R15 1 -1
      113 RETURN                           R15 -1
