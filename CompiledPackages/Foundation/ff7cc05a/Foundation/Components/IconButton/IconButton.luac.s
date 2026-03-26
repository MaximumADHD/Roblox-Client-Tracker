PROTO_0:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["radius"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K4 ["Size"]
        7 GETTABLEKS                       R1 R2 K5 ["Size_150"]
        9 SETTABLEKS                       R1 R0 K1 ["offset"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K6 ["Stroke"]
       14 GETTABLEKS                       R1 R2 K7 ["Thicker"]
       16 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       18 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETTABLEKS                       R7 R2 K0 ["icon"]
       10 FASTCALL1                        TYPEOF R7 ; [+2]
       11 GETIMPORT                        R6 K2 [typeof]
       13 CALL                             R6 1 1
       14 JUMPIFNOTEQKS                    R6 K3 ["table"] ; [+6]
       16 GETTABLEKS                       R6 R2 K0 ["icon"]
       18 GETTABLEKS                       R5 R6 K4 ["name"]
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R5 R2 K0 ["icon"]
       23 GETTABLEKS                       R8 R2 K0 ["icon"]
       25 FASTCALL1                        TYPEOF R8 ; [+2]
       26 GETIMPORT                        R7 K2 [typeof]
       28 CALL                             R7 1 1
       29 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+6]
       31 GETTABLEKS                       R7 R2 K0 ["icon"]
       33 GETTABLEKS                       R6 R7 K5 ["variant"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R6
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 GETUPVAL                         R9 4
       40 MOVE                             R10 R5
       41 CALL                             R9 1 1
       42 JUMPIFNOT                        R9 ; [+3]
       43 LOADNIL                          R7
       44 LOADN                            R8 1
       45 JUMP                             ; [+7]
       46 GETUPVAL                         R9 5
       47 MOVE                             R10 R5
       48 GETTABLEKS                       R11 R2 K6 ["size"]
       50 CALL                             R9 2 2
       51 MOVE                             R7 R9
       52 MOVE                             R8 R10
       53 GETUPVAL                         R9 6
       54 MOVE                             R10 R3
       55 GETTABLEKS                       R11 R2 K6 ["size"]
       57 GETTABLEKS                       R12 R2 K5 ["variant"]
       59 JUMPIFNOT                        R4 ; [+3]
       60 GETTABLEKS                       R13 R4 K7 ["colorMode"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R13
       64 CALL                             R9 4 1
       65 GETTABLEKS                       R11 R9 K8 ["container"]
       67 GETTABLEKS                       R10 R11 K6 ["size"]
       69 GETTABLEKS                       R12 R2 K9 ["isCircular"]
       71 JUMPIFNOT                        R12 ; [+9]
       72 GETIMPORT                        R11 K12 [UDim.new]
       74 LOADN                            R12 0
       75 GETTABLEKS                       R14 R3 K13 ["Radius"]
       77 GETTABLEKS                       R13 R14 K14 ["Circle"]
       79 CALL                             R11 2 1
       80 JUMP                             ; [+13]
       81 GETIMPORT                        R11 K12 [UDim.new]
       83 LOADN                            R12 0
       84 GETTABLEKS                       R14 R9 K8 ["container"]
       86 GETTABLEKS                       R13 R14 K15 ["radius"]
       88 JUMPIF                           R13 ; [+4]
       89 GETTABLEKS                       R14 R3 K13 ["Radius"]
       91 GETTABLEKS                       R13 R14 K16 ["Large"]
       93 CALL                             R11 2 1
       94 GETUPVAL                         R12 7
       95 GETTABLEKS                       R13 R2 K6 ["size"]
       97 GETUPVAL                         R14 8
       98 MOVE                             R15 R5
       99 CALL                             R14 1 1
      100 LOADB                            R15 1
      101 CALL                             R12 3 1
      102 GETUPVAL                         R14 9
      103 GETTABLEKS                       R13 R14 K17 ["useMemo"]
      105 NEWCLOSURE                       R14 P0
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R3
      108 NEWTABLE                         R15 0 2
      110 MOVE                             R16 R3
      111 MOVE                             R17 R11
      112 SETLIST                          R15 R16 2 [1]
      114 CALL                             R13 2 1
      115 GETUPVAL                         R15 10
      116 GETTABLEKS                       R14 R15 K18 ["FoundationIconButtonFillBehavior"]
      118 JUMPIFNOT                        R14 ; [+9]
      119 GETTABLEKS                       R15 R2 K19 ["fillBehavior"]
      121 GETUPVAL                         R17 11
      122 GETTABLEKS                       R16 R17 K20 ["Fill"]
      124 JUMPIFEQ                         R15 R16 ; [+2]
      126 LOADB                            R14 0 +1
      127 LOADB                            R14 1
      128 LOADNIL                          R15
      129 GETUPVAL                         R17 10
      130 GETTABLEKS                       R16 R17 K21 ["FoundationIconButtonWidth"]
      132 JUMPIFNOT                        R16 ; [+30]
      133 LOADB                            R16 1
      134 GETTABLEKS                       R18 R2 K22 ["width"]
      136 GETTABLEKS                       R17 R18 K23 ["Scale"]
      138 JUMPIFNOTEQKN                    R17 K24 [0] ; [+9]
      140 GETTABLEKS                       R18 R2 K22 ["width"]
      142 GETTABLEKS                       R17 R18 K25 ["Offset"]
      144 JUMPIFNOTEQKN                    R17 K24 [0] ; [+2]
      146 LOADB                            R16 0 +1
      147 LOADB                            R16 1
      148 JUMPIFNOT                        R14 ; [+7]
      149 GETIMPORT                        R17 K12 [UDim.new]
      151 LOADN                            R18 1
      152 LOADN                            R19 0
      153 CALL                             R17 2 1
      154 MOVE                             R15 R17
      155 JUMP                             ; [+17]
      156 JUMPIFNOT                        R16 ; [+3]
      157 GETTABLEKS                       R15 R2 K22 ["width"]
      159 JUMP                             ; [+13]
      160 GETTABLEKS                       R15 R10 K26 ["X"]
      162 JUMP                             ; [+10]
      163 JUMPIFNOT                        R14 ; [+7]
      164 GETIMPORT                        R16 K12 [UDim.new]
      166 LOADN                            R17 1
      167 LOADN                            R18 0
      168 CALL                             R16 2 1
      169 MOVE                             R15 R16
      170 JUMP                             ; [+2]
      171 GETTABLEKS                       R15 R10 K26 ["X"]
      173 GETUPVAL                         R17 9
      174 GETTABLEKS                       R16 R17 K27 ["createElement"]
      176 GETUPVAL                         R17 12
      177 GETUPVAL                         R18 13
      178 MOVE                             R19 R2
      179 DUPTABLE                         R20 K41 [{"onActivated", "Size", "flexItem", "selection", "isDisabled", "stateLayer", "padding", "cornerRadius", "backgroundStyle", "stroke", "cursor", "GroupTransparency", "ref"}]
      180 GETTABLEKS                       R21 R2 K28 ["onActivated"]
      182 SETTABLEKS                       R21 R20 K28 ["onActivated"]
      184 GETIMPORT                        R21 K43 [UDim2.new]
      186 MOVE                             R22 R15
      187 GETIMPORT                        R23 K12 [UDim.new]
      189 LOADN                            R24 0
      190 GETTABLEKS                       R26 R10 K44 ["Y"]
      192 GETTABLEKS                       R25 R26 K25 ["Offset"]
      194 CALL                             R23 2 -1
      195 CALL                             R21 -1 1
      196 SETTABLEKS                       R21 R20 K29 ["Size"]
      198 GETTABLEKS                       R22 R2 K19 ["fillBehavior"]
      200 JUMPIFNOT                        R22 ; [+20]
      201 GETUPVAL                         R23 10
      202 GETTABLEKS                       R22 R23 K18 ["FoundationIconButtonFillBehavior"]
      204 JUMPIFNOT                        R22 ; [+16]
      205 DUPTABLE                         R21 K46 [{"FlexMode"}]
      206 GETTABLEKS                       R23 R2 K19 ["fillBehavior"]
      208 GETUPVAL                         R25 11
      209 GETTABLEKS                       R24 R25 K20 ["Fill"]
      211 JUMPIFNOTEQ                      R23 R24 ; [+4]
      213 GETIMPORT                        R22 K49 [Enum.UIFlexMode.Fill]
      215 JUMP                             ; [+2]
      216 GETIMPORT                        R22 K51 [Enum.UIFlexMode.Shrink]
      218 SETTABLEKS                       R22 R21 K45 ["FlexMode"]
      220 JUMP                             ; [+1]
      221 LOADNIL                          R21
      222 SETTABLEKS                       R21 R20 K30 ["flexItem"]
      224 DUPTABLE                         R21 K57 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      225 GETTABLEKS                       R23 R2 K32 ["isDisabled"]
      227 JUMPIFNOT                        R23 ; [+2]
      228 LOADB                            R22 0
      229 JUMP                             ; [+2]
      230 GETTABLEKS                       R22 R2 K52 ["Selectable"]
      232 SETTABLEKS                       R22 R21 K52 ["Selectable"]
      234 GETTABLEKS                       R22 R2 K53 ["NextSelectionUp"]
      236 SETTABLEKS                       R22 R21 K53 ["NextSelectionUp"]
      238 GETTABLEKS                       R22 R2 K54 ["NextSelectionDown"]
      240 SETTABLEKS                       R22 R21 K54 ["NextSelectionDown"]
      242 GETTABLEKS                       R22 R2 K55 ["NextSelectionLeft"]
      244 SETTABLEKS                       R22 R21 K55 ["NextSelectionLeft"]
      246 GETTABLEKS                       R22 R2 K56 ["NextSelectionRight"]
      248 SETTABLEKS                       R22 R21 K56 ["NextSelectionRight"]
      250 SETTABLEKS                       R21 R20 K31 ["selection"]
      252 GETTABLEKS                       R21 R2 K32 ["isDisabled"]
      254 SETTABLEKS                       R21 R20 K32 ["isDisabled"]
      256 GETTABLEKS                       R22 R9 K8 ["container"]
      258 GETTABLEKS                       R21 R22 K33 ["stateLayer"]
      260 SETTABLEKS                       R21 R20 K33 ["stateLayer"]
      262 GETTABLEKS                       R22 R9 K8 ["container"]
      264 GETTABLEKS                       R21 R22 K34 ["padding"]
      266 SETTABLEKS                       R21 R20 K34 ["padding"]
      268 SETTABLEKS                       R11 R20 K35 ["cornerRadius"]
      270 GETTABLEKS                       R22 R9 K8 ["container"]
      272 GETTABLEKS                       R21 R22 K58 ["style"]
      274 SETTABLEKS                       R21 R20 K36 ["backgroundStyle"]
      276 GETTABLEKS                       R22 R9 K8 ["container"]
      278 GETTABLEKS                       R21 R22 K37 ["stroke"]
      280 SETTABLEKS                       R21 R20 K37 ["stroke"]
      282 SETTABLEKS                       R13 R20 K38 ["cursor"]
      284 GETTABLEKS                       R22 R2 K32 ["isDisabled"]
      286 JUMPIFNOT                        R22 ; [+4]
      287 GETUPVAL                         R22 14
      288 GETTABLEKS                       R21 R22 K59 ["DISABLED_TRANSPARENCY"]
      290 JUMP                             ; [+1]
      291 LOADNIL                          R21
      292 SETTABLEKS                       R21 R20 K39 ["GroupTransparency"]
      294 SETTABLEKS                       R1 R20 K40 ["ref"]
      296 CALL                             R18 2 1
      297 DUPTABLE                         R19 K61 [{"Icon"}]
      298 GETUPVAL                         R21 4
      299 MOVE                             R22 R5
      300 CALL                             R21 1 1
      301 JUMPIFNOT                        R21 ; [+70]
      302 GETUPVAL                         R21 9
      303 GETTABLEKS                       R20 R21 K27 ["createElement"]
      305 GETUPVAL                         R21 15
      306 DUPTABLE                         R22 K67 [{"Text", "fontStyle", "tag", "Size", "textStyle", "testId"}]
      307 GETUPVAL                         R24 16
      308 MOVE                             R25 R5
      309 CALL                             R24 1 1
      310 JUMPIFNOT                        R24 ; [+5]
      311 GETUPVAL                         R25 17
      312 GETTABLE                         R24 R25 R5
      313 GETTABLEKS                       R23 R24 K4 ["name"]
      315 JUMP                             ; [+1]
      316 MOVE                             R23 R5
      317 SETTABLEKS                       R23 R22 K62 ["Text"]
      319 DUPTABLE                         R23 K70 [{"Font", "FontSize"}]
      320 GETUPVAL                         R26 18
      321 GETTABLEKS                       R25 R26 K68 ["Font"]
      323 GETUPVAL                         R27 16
      324 MOVE                             R28 R5
      325 CALL                             R27 1 1
      326 JUMPIFNOT                        R27 ; [+5]
      327 GETUPVAL                         R28 17
      328 GETTABLE                         R27 R28 R5
      329 GETTABLEKS                       R26 R27 K5 ["variant"]
      331 JUMP                             ; [+7]
      332 MOVE                             R26 R6
      333 JUMPIF                           R26 ; [+5]
      334 GETUPVAL                         R28 18
      335 GETTABLEKS                       R27 R28 K71 ["IconVariant"]
      337 GETTABLEKS                       R26 R27 K72 ["Regular"]
      339 GETTABLE                         R24 R25 R26
      340 SETTABLEKS                       R24 R23 K68 ["Font"]
      342 GETTABLEKS                       R25 R12 K44 ["Y"]
      344 GETTABLEKS                       R24 R25 K25 ["Offset"]
      346 SETTABLEKS                       R24 R23 K69 ["FontSize"]
      348 SETTABLEKS                       R23 R22 K63 ["fontStyle"]
      350 LOADK                            R23 K73 ["anchor-center-center position-center-center"]
      351 SETTABLEKS                       R23 R22 K64 ["tag"]
      353 SETTABLEKS                       R12 R22 K29 ["Size"]
      355 GETTABLEKS                       R24 R9 K74 ["content"]
      357 GETTABLEKS                       R23 R24 K58 ["style"]
      359 SETTABLEKS                       R23 R22 K65 ["textStyle"]
      361 LOADK                            R24 K75 ["%*--icon"]
      362 GETTABLEKS                       R26 R2 K66 ["testId"]
      364 NAMECALL                         R24 R24 K76 ["format"]
      366 CALL                             R24 2 1
      367 MOVE                             R23 R24
      368 SETTABLEKS                       R23 R22 K66 ["testId"]
      370 CALL                             R20 2 1
      371 JUMP                             ; [+40]
      372 GETUPVAL                         R21 9
      373 GETTABLEKS                       R20 R21 K27 ["createElement"]
      375 GETUPVAL                         R21 19
      376 DUPTABLE                         R22 K80 [{"tag", "Image", "Size", "imageStyle", "scale", "testId"}]
      377 LOADK                            R23 K73 ["anchor-center-center position-center-center"]
      378 SETTABLEKS                       R23 R22 K64 ["tag"]
      380 SETTABLEKS                       R5 R22 K77 ["Image"]
      382 JUMPIFNOT                        R7 ; [+8]
      383 GETIMPORT                        R23 K82 [UDim2.fromOffset]
      385 GETTABLEKS                       R24 R7 K26 ["X"]
      387 GETTABLEKS                       R25 R7 K44 ["Y"]
      389 CALL                             R23 2 1
      390 JUMP                             ; [+1]
      391 MOVE                             R23 R12
      392 SETTABLEKS                       R23 R22 K29 ["Size"]
      394 GETTABLEKS                       R24 R9 K74 ["content"]
      396 GETTABLEKS                       R23 R24 K58 ["style"]
      398 SETTABLEKS                       R23 R22 K78 ["imageStyle"]
      400 SETTABLEKS                       R8 R22 K79 ["scale"]
      402 LOADK                            R24 K83 ["%*--image"]
      403 GETTABLEKS                       R26 R2 K66 ["testId"]
      405 NAMECALL                         R24 R24 K76 ["format"]
      407 CALL                             R24 2 1
      408 MOVE                             R23 R24
      409 SETTABLEKS                       R23 R22 K66 ["testId"]
      411 CALL                             R20 2 1
      412 SETTABLEKS                       R20 R19 K60 ["Icon"]
      414 CALL                             R16 3 -1
      415 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R2 K10 ["Migration"]
       21 GETTABLEKS                       R4 R5 K9 ["uiblox"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R7 R0 K11 ["Enums"]
       27 GETTABLEKS                       R6 R7 K12 ["InputSize"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R8 R0 K11 ["Enums"]
       34 GETTABLEKS                       R7 R8 K13 ["FillBehavior"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R9 R0 K11 ["Enums"]
       41 GETTABLEKS                       R8 R9 K14 ["IconSize"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R10 R0 K11 ["Enums"]
       48 GETTABLEKS                       R9 R10 K15 ["ButtonVariant"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R11 R0 K16 ["Utility"]
       55 GETTABLEKS                       R10 R11 K17 ["Flags"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K6 [require]
       60 GETTABLEKS                       R12 R0 K11 ["Enums"]
       62 GETTABLEKS                       R11 R12 K18 ["Radius"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K6 [require]
       67 GETTABLEKS                       R14 R0 K19 ["Providers"]
       69 GETTABLEKS                       R13 R14 K20 ["Style"]
       71 GETTABLEKS                       R12 R13 K21 ["useTokens"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R13 K6 [require]
       76 GETTABLEKS                       R16 R0 K19 ["Providers"]
       78 GETTABLEKS                       R15 R16 K20 ["Style"]
       80 GETTABLEKS                       R14 R15 K22 ["PresentationContext"]
       82 CALL                             R13 1 1
       83 GETTABLEKS                       R12 R13 K23 ["usePresentationContext"]
       85 GETIMPORT                        R13 K6 [require]
       87 GETTABLEKS                       R15 R0 K16 ["Utility"]
       89 GETTABLEKS                       R14 R15 K24 ["getIconScale"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K6 [require]
       94 GETTABLEKS                       R16 R0 K16 ["Utility"]
       96 GETTABLEKS                       R15 R16 K25 ["iconMigrationUtils"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K6 [require]
      101 GETTABLEKS                       R17 R0 K16 ["Utility"]
      103 GETTABLEKS                       R16 R17 K26 ["isBuilderIcon"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K6 [require]
      108 GETIMPORT                        R19 K1 [script]
      110 GETTABLEKS                       R18 R19 K4 ["Parent"]
      112 GETTABLEKS                       R17 R18 K27 ["useIconButtonVariants"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K6 [require]
      117 GETTABLEKS                       R19 R0 K16 ["Utility"]
      119 GETTABLEKS                       R18 R19 K28 ["useIconSize"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K6 [require]
      124 GETTABLEKS                       R20 R0 K16 ["Utility"]
      126 GETTABLEKS                       R19 R20 K29 ["withCommonProps"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K6 [require]
      131 GETTABLEKS                       R21 R0 K16 ["Utility"]
      133 GETTABLEKS                       R20 R21 K30 ["withDefaults"]
      135 CALL                             R19 1 1
      136 GETTABLEKS                       R20 R14 K31 ["isMigrated"]
      138 GETTABLEKS                       R21 R14 K32 ["isBuilderOrMigratedIcon"]
      140 GETIMPORT                        R22 K6 [require]
      142 GETTABLEKS                       R23 R0 K33 ["Constants"]
      144 CALL                             R22 1 1
      145 GETIMPORT                        R23 K6 [require]
      147 GETTABLEKS                       R25 R0 K34 ["Components"]
      149 GETTABLEKS                       R24 R25 K35 ["Image"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K6 [require]
      154 GETTABLEKS                       R26 R0 K34 ["Components"]
      156 GETTABLEKS                       R25 R26 K36 ["Text"]
      158 CALL                             R24 1 1
      159 GETIMPORT                        R25 K6 [require]
      161 GETTABLEKS                       R27 R0 K34 ["Components"]
      163 GETTABLEKS                       R26 R27 K37 ["Types"]
      165 CALL                             R25 1 1
      166 GETIMPORT                        R26 K6 [require]
      168 GETTABLEKS                       R28 R0 K34 ["Components"]
      170 GETTABLEKS                       R27 R28 K38 ["View"]
      172 CALL                             R26 1 1
      173 DUPTABLE                         R27 K45 [{"isDisabled", "size", "width", "isCircular", "variant", "testId"}]
      174 LOADB                            R28 0
      175 SETTABLEKS                       R28 R27 K39 ["isDisabled"]
      177 GETTABLEKS                       R28 R5 K46 ["Medium"]
      179 SETTABLEKS                       R28 R27 K40 ["size"]
      181 GETIMPORT                        R28 K49 [UDim.new]
      183 LOADN                            R29 0
      184 LOADN                            R30 0
      185 CALL                             R28 2 1
      186 SETTABLEKS                       R28 R27 K41 ["width"]
      188 LOADB                            R28 0
      189 SETTABLEKS                       R28 R27 K42 ["isCircular"]
      191 GETTABLEKS                       R28 R8 K16 ["Utility"]
      193 SETTABLEKS                       R28 R27 K43 ["variant"]
      195 LOADK                            R28 K50 ["--foundation-icon-button"]
      196 SETTABLEKS                       R28 R27 K44 ["testId"]
      198 DUPCLOSURE                       R28 K51 [PROTO_1]
      199 CAPTURE                          VAL R19
      200 CAPTURE                          VAL R27
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R21
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R16
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R3
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R26
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R22
      214 CAPTURE                          VAL R24
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R4
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R23
      219 GETTABLEKS                       R29 R3 K52 ["memo"]
      221 GETTABLEKS                       R30 R3 K53 ["forwardRef"]
      223 MOVE                             R31 R28
      224 CALL                             R30 1 -1
      225 CALL                             R29 -1 -1
      226 RETURN                           R29 -1
