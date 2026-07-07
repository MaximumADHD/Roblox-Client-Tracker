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
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R5 R0 K3 ["image"]
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R4
       22 NEWTABLE                         R7 0 1
       24 MOVE                             R8 R4
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R5
       33 NEWTABLE                         R8 0 1
       35 MOVE                             R9 R5
       36 SETLIST                          R8 R9 1 [1]
       38 CALL                             R6 2 1
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R8 R0 K5 ["showIndeterminateProgressIndicator"]
       42 CALL                             R7 1 1
       43 GETUPVAL                         R8 3
       44 GETTABLEKS                       R9 R0 K6 ["title"]
       46 CALL                             R8 1 1
       47 GETUPVAL                         R9 4
       48 GETTABLEKS                       R9 R9 K4 ["useMemo"]
       50 NEWCLOSURE                       R10 P2
       51 CAPTURE                          VAL R8
       52 NEWTABLE                         R11 0 1
       54 MOVE                             R12 R8
       55 SETLIST                          R11 R12 1 [1]
       57 CALL                             R9 2 1
       58 GETUPVAL                         R10 3
       59 GETTABLEKS                       R11 R0 K7 ["description"]
       61 CALL                             R10 1 1
       62 GETUPVAL                         R11 4
       63 GETTABLEKS                       R11 R11 K4 ["useMemo"]
       65 NEWCLOSURE                       R12 P3
       66 CAPTURE                          VAL R10
       67 NEWTABLE                         R13 0 1
       69 MOVE                             R14 R10
       70 SETLIST                          R13 R14 1 [1]
       72 CALL                             R11 2 1
       73 GETUPVAL                         R12 5
       74 GETUPVAL                         R13 1
       75 GETTABLEKS                       R13 R13 K8 ["View"]
       77 DUPTABLE                         R14 K15 [{["tag"] = "component-dialog-view bg-surface-200 col flex-y-between auto-y gap-small padding-x-large padding-y-medium", ["onAbsoluteSizeChanged"], ["testId"] = "--dialog", ["Size"]}]
       78 GETTABLEKS                       R15 R0 K11 ["onAbsoluteSizeChanged"]
       80 SETTABLEKS                       R15 R14 K11 ["onAbsoluteSizeChanged"]
       82 GETIMPORT                        R15 K18 [UDim2.fromOffset]
       84 GETTABLEKS                       R17 R0 K20 ["width"]
       86 ORK                              R16 R17 K19 [350]
       87 LOADN                            R17 0
       88 CALL                             R15 2 1
       89 SETTABLEKS                       R15 R14 K14 ["Size"]
       91 DUPTABLE                         R15 K23 [{"IconAndTextRow", "ButtonGroup"}]
       92 GETUPVAL                         R16 5
       93 GETUPVAL                         R17 1
       94 GETTABLEKS                       R17 R17 K8 ["View"]
       96 DUPTABLE                         R18 K26 [{["tag"] = "row size-full-0 auto-y flex-x-between items-start gap-medium padding-bottom-medium", ["LayoutOrder"]}]
       97 MOVE                             R19 R1
       98 CALL                             R19 0 1
       99 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      101 DUPTABLE                         R19 K30 [{"Image", "Icon", "TextColumn"}]
      102 GETUPVAL                         R20 5
      103 GETUPVAL                         R21 1
      104 GETTABLEKS                       R21 R21 K27 ["Image"]
      106 DUPTABLE                         R22 K33 [{["Image"], ["Visible"], ["Size"], ["LayoutOrder"], ["testId"] = "--dialog-thumbnail"}]
      107 SETTABLEKS                       R4 R22 K27 ["Image"]
      109 SETTABLEKS                       R5 R22 K31 ["Visible"]
      111 GETIMPORT                        R23 K18 [UDim2.fromOffset]
      113 LOADN                            R24 36
      114 LOADN                            R25 36
      115 CALL                             R23 2 1
      116 SETTABLEKS                       R23 R22 K14 ["Size"]
      118 MOVE                             R23 R1
      119 CALL                             R23 0 1
      120 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      122 DUPTABLE                         R23 K35 [{"UICorner"}]
      123 GETUPVAL                         R24 5
      124 LOADK                            R25 K34 ["UICorner"]
      125 DUPTABLE                         R26 K37 [{"CornerRadius"}]
      126 GETIMPORT                        R27 K40 [UDim.new]
      128 LOADN                            R28 0
      129 LOADN                            R29 4
      130 CALL                             R27 2 1
      131 SETTABLEKS                       R27 R26 K36 ["CornerRadius"]
      133 CALL                             R24 2 1
      134 SETTABLEKS                       R24 R23 K34 ["UICorner"]
      136 CALL                             R20 3 1
      137 SETTABLEKS                       R20 R19 K27 ["Image"]
      139 JUMPIFNOT                        R3 ; [+39]
      140 GETUPVAL                         R20 5
      141 GETUPVAL                         R21 1
      142 GETTABLEKS                       R21 R21 K28 ["Icon"]
      144 DUPTABLE                         R22 K46 [{["name"], ["size"], ["style"], ["variant"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-icon"}]
      145 GETTABLEKS                       R23 R3 K47 ["icon"]
      147 SETTABLEKS                       R23 R22 K41 ["name"]
      149 GETUPVAL                         R23 1
      150 GETTABLEKS                       R23 R23 K48 ["Enums"]
      152 GETTABLEKS                       R23 R23 K49 ["IconSize"]
      154 GETTABLEKS                       R23 R23 K50 ["Large"]
      156 SETTABLEKS                       R23 R22 K42 ["size"]
      158 GETTABLEKS                       R23 R3 K51 ["color"]
      160 SETTABLEKS                       R23 R22 K43 ["style"]
      162 GETUPVAL                         R23 1
      163 GETTABLEKS                       R23 R23 K48 ["Enums"]
      165 GETTABLEKS                       R23 R23 K52 ["IconVariant"]
      167 GETTABLEKS                       R23 R23 K53 ["Filled"]
      169 SETTABLEKS                       R23 R22 K44 ["variant"]
      171 SETTABLEKS                       R6 R22 K31 ["Visible"]
      173 MOVE                             R23 R1
      174 CALL                             R23 0 1
      175 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      177 CALL                             R20 2 1
      178 JUMP                             ; [+1]
      179 LOADNIL                          R20
      180 SETTABLEKS                       R20 R19 K28 ["Icon"]
      182 GETUPVAL                         R20 5
      183 GETUPVAL                         R21 1
      184 GETTABLEKS                       R21 R21 K8 ["View"]
      186 DUPTABLE                         R22 K55 [{["tag"] = "fill col auto-y gap-medium", ["LayoutOrder"]}]
      187 MOVE                             R23 R1
      188 CALL                             R23 0 1
      189 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      191 DUPTABLE                         R23 K59 [{"Title", "Description", "Children"}]
      192 GETUPVAL                         R24 5
      193 GETUPVAL                         R25 1
      194 GETTABLEKS                       R25 R25 K60 ["Text"]
      196 DUPTABLE                         R26 K63 [{["tag"] = "size-full-0 auto-y text-wrap text-title-medium text-align-x-left text-align-y-center", ["Text"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-title"}]
      197 SETTABLEKS                       R8 R26 K60 ["Text"]
      199 SETTABLEKS                       R9 R26 K31 ["Visible"]
      201 MOVE                             R27 R1
      202 CALL                             R27 0 1
      203 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      205 CALL                             R24 2 1
      206 SETTABLEKS                       R24 R23 K56 ["Title"]
      208 GETUPVAL                         R24 5
      209 GETUPVAL                         R25 1
      210 GETTABLEKS                       R25 R25 K60 ["Text"]
      212 DUPTABLE                         R26 K66 [{["tag"] = "size-full-0 auto-y text-wrap text-body-small text-align-x-left text-align-y-top grow", ["Text"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-description"}]
      213 SETTABLEKS                       R10 R26 K60 ["Text"]
      215 SETTABLEKS                       R11 R26 K31 ["Visible"]
      217 MOVE                             R27 R1
      218 CALL                             R27 0 1
      219 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      221 DUPTABLE                         R27 K69 [{"ProgressSpinner", "SpinnerPadding"}]
      222 GETUPVAL                         R28 5
      223 GETUPVAL                         R29 1
      224 GETTABLEKS                       R29 R29 K70 ["Progress"]
      226 DUPTABLE                         R30 K74 [{["shape"], ["size"], ["Visible"], ["Position"], ["testId"] = "--dialog-progress"}]
      227 GETUPVAL                         R31 1
      228 GETTABLEKS                       R31 R31 K48 ["Enums"]
      230 GETTABLEKS                       R31 R31 K75 ["ProgressShape"]
      232 GETTABLEKS                       R31 R31 K76 ["Circle"]
      234 SETTABLEKS                       R31 R30 K71 ["shape"]
      236 GETUPVAL                         R31 1
      237 GETTABLEKS                       R31 R31 K48 ["Enums"]
      239 GETTABLEKS                       R31 R31 K77 ["ProgressSize"]
      241 GETTABLEKS                       R31 R31 K78 ["Small"]
      243 SETTABLEKS                       R31 R30 K42 ["size"]
      245 SETTABLEKS                       R7 R30 K31 ["Visible"]
      247 GETIMPORT                        R31 K18 [UDim2.fromOffset]
      249 LOADN                            R32 -24
      250 LOADN                            R33 1
      251 CALL                             R31 2 1
      252 SETTABLEKS                       R31 R30 K72 ["Position"]
      254 CALL                             R28 2 1
      255 SETTABLEKS                       R28 R27 K67 ["ProgressSpinner"]
      257 GETUPVAL                         R28 5
      258 LOADK                            R29 K79 ["UIPadding"]
      259 DUPTABLE                         R30 K81 [{"PaddingLeft"}]
      260 DUPCLOSURE                       R33 K82 [PROTO_8]
      261 NAMECALL                         R31 R7 K83 ["map"]
      263 CALL                             R31 2 1
      264 SETTABLEKS                       R31 R30 K80 ["PaddingLeft"]
      266 CALL                             R28 2 1
      267 SETTABLEKS                       R28 R27 K68 ["SpinnerPadding"]
      269 CALL                             R24 3 1
      270 SETTABLEKS                       R24 R23 K57 ["Description"]
      272 GETUPVAL                         R25 4
      273 GETTABLEKS                       R25 R25 K58 ["Children"]
      275 GETTABLEKS                       R25 R25 K84 ["count"]
      277 GETTABLEKS                       R26 R0 K85 ["children"]
      279 CALL                             R25 1 1
      280 LOADN                            R26 0
      281 JUMPIFNOTLT                      R26 R25 ; [+14]
      283 GETUPVAL                         R24 5
      284 GETUPVAL                         R25 1
      285 GETTABLEKS                       R25 R25 K8 ["View"]
      287 DUPTABLE                         R26 K88 [{["tag"] = "size-full-0 auto-y col gap-medium padding-right-small", ["LayoutOrder"], ["testId"] = "--dialog-children"}]
      288 MOVE                             R27 R1
      289 CALL                             R27 0 1
      290 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      292 GETTABLEKS                       R27 R0 K85 ["children"]
      294 CALL                             R24 3 1
      295 JUMP                             ; [+1]
      296 LOADNIL                          R24
      297 SETTABLEKS                       R24 R23 K58 ["Children"]
      299 CALL                             R20 3 1
      300 SETTABLEKS                       R20 R19 K29 ["TextColumn"]
      302 CALL                             R16 3 1
      303 SETTABLEKS                       R16 R15 K21 ["IconAndTextRow"]
      305 GETUPVAL                         R16 5
      306 GETUPVAL                         R17 6
      307 DUPTABLE                         R18 K92 [{"LayoutOrder", "primaryAction", "secondaryAction", "tertiaryAction"}]
      308 MOVE                             R19 R1
      309 CALL                             R19 0 1
      310 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      312 GETTABLEKS                       R19 R0 K89 ["primaryAction"]
      314 SETTABLEKS                       R19 R18 K89 ["primaryAction"]
      316 GETTABLEKS                       R19 R0 K90 ["secondaryAction"]
      318 SETTABLEKS                       R19 R18 K90 ["secondaryAction"]
      320 GETTABLEKS                       R19 R0 K91 ["tertiaryAction"]
      322 SETTABLEKS                       R19 R18 K91 ["tertiaryAction"]
      324 CALL                             R16 2 1
      325 SETTABLEKS                       R16 R15 K22 ["ButtonGroup"]
      327 CALL                             R12 3 -1
      328 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Dialog"]
       15 GETTABLEKS                       R3 R3 K9 ["DialogButtonGroup"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["Framework"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["React"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Types"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       42 GETTABLEKS                       R8 R8 K15 ["useBindable"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K7 ["Components"]
       49 GETTABLEKS                       R9 R9 K8 ["Dialog"]
       51 GETTABLEKS                       R9 R9 K16 ["useDialogIconProps"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R4 K17 ["Util"]
       56 GETTABLEKS                       R9 R9 K18 ["counter"]
       58 GETTABLEKS                       R10 R5 K19 ["createElement"]
       60 DUPCLOSURE                       R11 K20 [PROTO_9]
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R2
       68 GETTABLEKS                       R12 R5 K21 ["memo"]
       70 MOVE                             R13 R11
       71 CALL                             R12 1 -1
       72 RETURN                           R12 -1
