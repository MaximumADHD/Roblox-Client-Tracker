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
       87 DUPTABLE                         R14 K15 [{["tag"] = "component-dialog-view col flex-y-between gap-small auto-y padding-x-large padding-y-medium bg-surface-200", ["onAbsoluteSizeChanged"], ["testId"] = "--dialog", ["Size"]}]
       88 GETTABLEKS                       R15 R0 K11 ["onAbsoluteSizeChanged"]
       90 SETTABLEKS                       R15 R14 K11 ["onAbsoluteSizeChanged"]
       92 GETUPVAL                         R16 7
       93 CALL                             R16 0 1
       94 JUMPIFNOT                        R16 ; [+8]
       95 GETIMPORT                        R15 K18 [UDim2.fromOffset]
       97 GETTABLEKS                       R17 R0 K20 ["width"]
       99 ORK                              R16 R17 K19 [350]
      100 LOADN                            R17 0
      101 CALL                             R15 2 1
      102 JUMP                             ; [+5]
      103 GETIMPORT                        R15 K18 [UDim2.fromOffset]
      105 LOADN                            R16 350
      106 LOADN                            R17 0
      107 CALL                             R15 2 1
      108 SETTABLEKS                       R15 R14 K14 ["Size"]
      110 DUPTABLE                         R15 K23 [{"IconAndTextRow", "ButtonGroup"}]
      111 GETUPVAL                         R16 6
      112 GETUPVAL                         R17 1
      113 GETTABLEKS                       R17 R17 K8 ["View"]
      115 DUPTABLE                         R18 K26 [{["tag"] = "row flex-x-between items-start gap-medium size-full-0 auto-y padding-bottom-medium", ["LayoutOrder"]}]
      116 MOVE                             R19 R1
      117 CALL                             R19 0 1
      118 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      120 DUPTABLE                         R19 K30 [{"Image", "Icon", "TextColumn"}]
      121 GETUPVAL                         R21 3
      122 JUMPIFNOT                        R21 ; [+36]
      123 GETUPVAL                         R20 6
      124 GETUPVAL                         R21 1
      125 GETTABLEKS                       R21 R21 K27 ["Image"]
      127 DUPTABLE                         R22 K33 [{["Image"], ["Visible"], ["Size"], ["LayoutOrder"], ["testId"] = "--dialog-thumbnail"}]
      128 SETTABLEKS                       R4 R22 K27 ["Image"]
      130 SETTABLEKS                       R5 R22 K31 ["Visible"]
      132 GETIMPORT                        R23 K18 [UDim2.fromOffset]
      134 LOADN                            R24 36
      135 LOADN                            R25 36
      136 CALL                             R23 2 1
      137 SETTABLEKS                       R23 R22 K14 ["Size"]
      139 MOVE                             R23 R1
      140 CALL                             R23 0 1
      141 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      143 DUPTABLE                         R23 K35 [{"UICorner"}]
      144 GETUPVAL                         R24 6
      145 LOADK                            R25 K34 ["UICorner"]
      146 DUPTABLE                         R26 K37 [{"CornerRadius"}]
      147 GETIMPORT                        R27 K40 [UDim.new]
      149 LOADN                            R28 0
      150 LOADN                            R29 4
      151 CALL                             R27 2 1
      152 SETTABLEKS                       R27 R26 K36 ["CornerRadius"]
      154 CALL                             R24 2 1
      155 SETTABLEKS                       R24 R23 K34 ["UICorner"]
      157 CALL                             R20 3 1
      158 JUMPIF                           R20 ; [+1]
      159 LOADNIL                          R20
      160 SETTABLEKS                       R20 R19 K27 ["Image"]
      162 JUMPIFNOT                        R3 ; [+44]
      163 GETUPVAL                         R20 6
      164 GETUPVAL                         R21 1
      165 GETTABLEKS                       R21 R21 K28 ["Icon"]
      167 DUPTABLE                         R22 K46 [{["name"], ["size"], ["style"], ["variant"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-icon"}]
      168 GETTABLEKS                       R23 R3 K47 ["icon"]
      170 SETTABLEKS                       R23 R22 K41 ["name"]
      172 GETUPVAL                         R23 1
      173 GETTABLEKS                       R23 R23 K48 ["Enums"]
      175 GETTABLEKS                       R23 R23 K49 ["IconSize"]
      177 GETTABLEKS                       R23 R23 K50 ["Large"]
      179 SETTABLEKS                       R23 R22 K42 ["size"]
      181 GETTABLEKS                       R23 R3 K51 ["color"]
      183 SETTABLEKS                       R23 R22 K43 ["style"]
      185 GETUPVAL                         R23 1
      186 GETTABLEKS                       R23 R23 K48 ["Enums"]
      188 GETTABLEKS                       R23 R23 K52 ["IconVariant"]
      190 GETTABLEKS                       R23 R23 K53 ["Filled"]
      192 SETTABLEKS                       R23 R22 K44 ["variant"]
      194 GETUPVAL                         R24 3
      195 JUMPIFNOT                        R24 ; [+2]
      196 MOVE                             R23 R6
      197 JUMPIF                           R23 ; [+1]
      198 LOADNIL                          R23
      199 SETTABLEKS                       R23 R22 K31 ["Visible"]
      201 MOVE                             R23 R1
      202 CALL                             R23 0 1
      203 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      205 CALL                             R20 2 1
      206 JUMP                             ; [+1]
      207 LOADNIL                          R20
      208 SETTABLEKS                       R20 R19 K28 ["Icon"]
      210 GETUPVAL                         R20 6
      211 GETUPVAL                         R21 1
      212 GETTABLEKS                       R21 R21 K8 ["View"]
      214 DUPTABLE                         R22 K55 [{["tag"] = "col fill gap-medium auto-y", ["LayoutOrder"]}]
      215 MOVE                             R23 R1
      216 CALL                             R23 0 1
      217 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      219 DUPTABLE                         R23 K59 [{"Title", "Description", "Children"}]
      220 GETUPVAL                         R24 6
      221 GETUPVAL                         R25 1
      222 GETTABLEKS                       R25 R25 K60 ["Text"]
      224 DUPTABLE                         R26 K63 [{["tag"] = "size-full-0 auto-y text-title-medium text-wrap text-align-x-left text-align-y-center", ["Text"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-title"}]
      225 SETTABLEKS                       R8 R26 K60 ["Text"]
      227 SETTABLEKS                       R9 R26 K31 ["Visible"]
      229 MOVE                             R27 R1
      230 CALL                             R27 0 1
      231 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      233 CALL                             R24 2 1
      234 SETTABLEKS                       R24 R23 K56 ["Title"]
      236 GETUPVAL                         R24 6
      237 GETUPVAL                         R25 1
      238 GETTABLEKS                       R25 R25 K60 ["Text"]
      240 DUPTABLE                         R26 K66 [{["tag"] = "grow size-full-0 auto-y text-body-small text-wrap text-align-x-left text-align-y-top", ["Text"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-description"}]
      241 SETTABLEKS                       R10 R26 K60 ["Text"]
      243 SETTABLEKS                       R11 R26 K31 ["Visible"]
      245 MOVE                             R27 R1
      246 CALL                             R27 0 1
      247 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      249 GETUPVAL                         R28 3
      250 JUMPIFNOT                        R28 ; [+51]
      251 DUPTABLE                         R27 K69 [{"ProgressSpinner", "SpinnerPadding"}]
      252 GETUPVAL                         R28 6
      253 GETUPVAL                         R29 1
      254 GETTABLEKS                       R29 R29 K70 ["Progress"]
      256 DUPTABLE                         R30 K74 [{["shape"], ["size"], ["Visible"], ["Position"], ["testId"] = "--dialog-progress"}]
      257 GETUPVAL                         R31 1
      258 GETTABLEKS                       R31 R31 K48 ["Enums"]
      260 GETTABLEKS                       R31 R31 K75 ["ProgressShape"]
      262 GETTABLEKS                       R31 R31 K76 ["Circle"]
      264 SETTABLEKS                       R31 R30 K71 ["shape"]
      266 GETUPVAL                         R31 1
      267 GETTABLEKS                       R31 R31 K48 ["Enums"]
      269 GETTABLEKS                       R31 R31 K77 ["ProgressSize"]
      271 GETTABLEKS                       R31 R31 K78 ["Small"]
      273 SETTABLEKS                       R31 R30 K42 ["size"]
      275 SETTABLEKS                       R7 R30 K31 ["Visible"]
      277 GETIMPORT                        R31 K79 [UDim2.new]
      279 LOADN                            R32 0
      280 LOADN                            R33 -24
      281 LOADN                            R34 0
      282 LOADN                            R35 1
      283 CALL                             R31 4 1
      284 SETTABLEKS                       R31 R30 K72 ["Position"]
      286 CALL                             R28 2 1
      287 SETTABLEKS                       R28 R27 K67 ["ProgressSpinner"]
      289 GETUPVAL                         R28 6
      290 LOADK                            R29 K80 ["UIPadding"]
      291 DUPTABLE                         R30 K82 [{"PaddingLeft"}]
      292 DUPCLOSURE                       R33 K83 [PROTO_8]
      293 NAMECALL                         R31 R7 K84 ["map"]
      295 CALL                             R31 2 1
      296 SETTABLEKS                       R31 R30 K81 ["PaddingLeft"]
      298 CALL                             R28 2 1
      299 SETTABLEKS                       R28 R27 K68 ["SpinnerPadding"]
      301 JUMPIF                           R27 ; [+1]
      302 LOADNIL                          R27
      303 CALL                             R24 3 1
      304 SETTABLEKS                       R24 R23 K57 ["Description"]
      306 GETUPVAL                         R25 7
      307 CALL                             R25 0 1
      308 JUMPIFNOT                        R25 ; [+34]
      309 GETUPVAL                         R25 5
      310 GETTABLEKS                       R25 R25 K58 ["Children"]
      312 GETTABLEKS                       R25 R25 K85 ["count"]
      314 GETTABLEKS                       R26 R0 K86 ["children"]
      316 CALL                             R25 1 1
      317 LOADN                            R26 0
      318 JUMPIFNOTLT                      R26 R25 ; [+24]
      320 GETUPVAL                         R24 6
      321 GETUPVAL                         R25 1
      322 GETTABLEKS                       R25 R25 K8 ["View"]
      324 DUPTABLE                         R26 K88 [{["tag"], ["LayoutOrder"], ["testId"] = "--dialog-children"}]
      325 NEWTABLE                         R27 2 0
      327 LOADB                            R28 1
      328 SETTABLEKS                       R28 R27 K89 ["col gap-medium size-full-0 auto-y"]
      330 GETUPVAL                         R28 8
      331 SETTABLEKS                       R28 R27 K90 ["padding-right-small"]
      333 SETTABLEKS                       R27 R26 K9 ["tag"]
      335 MOVE                             R27 R1
      336 CALL                             R27 0 1
      337 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      339 GETTABLEKS                       R27 R0 K86 ["children"]
      341 CALL                             R24 3 1
      342 JUMP                             ; [+1]
      343 LOADNIL                          R24
      344 SETTABLEKS                       R24 R23 K58 ["Children"]
      346 CALL                             R20 3 1
      347 SETTABLEKS                       R20 R19 K29 ["TextColumn"]
      349 CALL                             R16 3 1
      350 SETTABLEKS                       R16 R15 K21 ["IconAndTextRow"]
      352 GETUPVAL                         R16 6
      353 GETUPVAL                         R17 9
      354 DUPTABLE                         R18 K94 [{"LayoutOrder", "primaryAction", "secondaryAction", "tertiaryAction"}]
      355 MOVE                             R19 R1
      356 CALL                             R19 0 1
      357 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      359 GETTABLEKS                       R19 R0 K91 ["primaryAction"]
      361 SETTABLEKS                       R19 R18 K91 ["primaryAction"]
      363 GETTABLEKS                       R19 R0 K92 ["secondaryAction"]
      365 SETTABLEKS                       R19 R18 K92 ["secondaryAction"]
      367 GETTABLEKS                       R19 R0 K93 ["tertiaryAction"]
      369 SETTABLEKS                       R19 R18 K93 ["tertiaryAction"]
      371 CALL                             R16 2 1
      372 SETTABLEKS                       R16 R15 K22 ["ButtonGroup"]
      374 CALL                             R12 3 -1
      375 CLOSEUPVALS                      R4
      376 RETURN                           R12 -1

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
