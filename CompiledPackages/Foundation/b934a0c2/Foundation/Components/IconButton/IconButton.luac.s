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
      115 GETUPVAL                         R15 9
      116 GETTABLEKS                       R14 R15 K18 ["createElement"]
      118 GETUPVAL                         R15 10
      119 GETUPVAL                         R16 11
      120 MOVE                             R17 R2
      121 DUPTABLE                         R18 K32 [{"onActivated", "Size", "flexItem", "selection", "isDisabled", "stateLayer", "padding", "cornerRadius", "backgroundStyle", "stroke", "cursor", "GroupTransparency", "ref"}]
      122 GETTABLEKS                       R19 R2 K19 ["onActivated"]
      124 SETTABLEKS                       R19 R18 K19 ["onActivated"]
      126 GETUPVAL                         R21 12
      127 GETTABLEKS                       R20 R21 K33 ["FoundationIconButtonFillBehavior"]
      129 JUMPIFNOT                        R20 ; [+35]
      130 GETIMPORT                        R19 K35 [UDim2.new]
      132 GETTABLEKS                       R21 R2 K36 ["fillBehavior"]
      134 GETUPVAL                         R23 13
      135 GETTABLEKS                       R22 R23 K37 ["Fill"]
      137 JUMPIFNOTEQ                      R21 R22 ; [+3]
      139 LOADN                            R20 1
      140 JUMP                             ; [+4]
      141 GETTABLEKS                       R21 R10 K38 ["X"]
      143 GETTABLEKS                       R20 R21 K39 ["Scale"]
      145 GETTABLEKS                       R22 R2 K36 ["fillBehavior"]
      147 GETUPVAL                         R24 13
      148 GETTABLEKS                       R23 R24 K37 ["Fill"]
      150 JUMPIFNOTEQ                      R22 R23 ; [+3]
      152 LOADN                            R21 0
      153 JUMP                             ; [+4]
      154 GETTABLEKS                       R22 R10 K38 ["X"]
      156 GETTABLEKS                       R21 R22 K40 ["Offset"]
      158 LOADN                            R22 0
      159 GETTABLEKS                       R24 R10 K41 ["Y"]
      161 GETTABLEKS                       R23 R24 K40 ["Offset"]
      163 CALL                             R19 4 1
      164 JUMP                             ; [+1]
      165 MOVE                             R19 R10
      166 SETTABLEKS                       R19 R18 K20 ["Size"]
      168 GETTABLEKS                       R20 R2 K36 ["fillBehavior"]
      170 JUMPIFNOT                        R20 ; [+20]
      171 GETUPVAL                         R21 12
      172 GETTABLEKS                       R20 R21 K33 ["FoundationIconButtonFillBehavior"]
      174 JUMPIFNOT                        R20 ; [+16]
      175 DUPTABLE                         R19 K43 [{"FlexMode"}]
      176 GETTABLEKS                       R21 R2 K36 ["fillBehavior"]
      178 GETUPVAL                         R23 13
      179 GETTABLEKS                       R22 R23 K37 ["Fill"]
      181 JUMPIFNOTEQ                      R21 R22 ; [+4]
      183 GETIMPORT                        R20 K46 [Enum.UIFlexMode.Fill]
      185 JUMP                             ; [+2]
      186 GETIMPORT                        R20 K48 [Enum.UIFlexMode.Shrink]
      188 SETTABLEKS                       R20 R19 K42 ["FlexMode"]
      190 JUMP                             ; [+1]
      191 LOADNIL                          R19
      192 SETTABLEKS                       R19 R18 K21 ["flexItem"]
      194 DUPTABLE                         R19 K54 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      195 GETTABLEKS                       R21 R2 K23 ["isDisabled"]
      197 JUMPIFNOT                        R21 ; [+2]
      198 LOADB                            R20 0
      199 JUMP                             ; [+2]
      200 GETTABLEKS                       R20 R2 K49 ["Selectable"]
      202 SETTABLEKS                       R20 R19 K49 ["Selectable"]
      204 GETTABLEKS                       R20 R2 K50 ["NextSelectionUp"]
      206 SETTABLEKS                       R20 R19 K50 ["NextSelectionUp"]
      208 GETTABLEKS                       R20 R2 K51 ["NextSelectionDown"]
      210 SETTABLEKS                       R20 R19 K51 ["NextSelectionDown"]
      212 GETTABLEKS                       R20 R2 K52 ["NextSelectionLeft"]
      214 SETTABLEKS                       R20 R19 K52 ["NextSelectionLeft"]
      216 GETTABLEKS                       R20 R2 K53 ["NextSelectionRight"]
      218 SETTABLEKS                       R20 R19 K53 ["NextSelectionRight"]
      220 SETTABLEKS                       R19 R18 K22 ["selection"]
      222 GETTABLEKS                       R19 R2 K23 ["isDisabled"]
      224 SETTABLEKS                       R19 R18 K23 ["isDisabled"]
      226 GETTABLEKS                       R20 R9 K8 ["container"]
      228 GETTABLEKS                       R19 R20 K24 ["stateLayer"]
      230 SETTABLEKS                       R19 R18 K24 ["stateLayer"]
      232 GETTABLEKS                       R20 R9 K8 ["container"]
      234 GETTABLEKS                       R19 R20 K25 ["padding"]
      236 SETTABLEKS                       R19 R18 K25 ["padding"]
      238 SETTABLEKS                       R11 R18 K26 ["cornerRadius"]
      240 GETTABLEKS                       R20 R9 K8 ["container"]
      242 GETTABLEKS                       R19 R20 K55 ["style"]
      244 SETTABLEKS                       R19 R18 K27 ["backgroundStyle"]
      246 GETTABLEKS                       R20 R9 K8 ["container"]
      248 GETTABLEKS                       R19 R20 K28 ["stroke"]
      250 SETTABLEKS                       R19 R18 K28 ["stroke"]
      252 SETTABLEKS                       R13 R18 K29 ["cursor"]
      254 GETTABLEKS                       R20 R2 K23 ["isDisabled"]
      256 JUMPIFNOT                        R20 ; [+4]
      257 GETUPVAL                         R20 14
      258 GETTABLEKS                       R19 R20 K56 ["DISABLED_TRANSPARENCY"]
      260 JUMP                             ; [+1]
      261 LOADNIL                          R19
      262 SETTABLEKS                       R19 R18 K30 ["GroupTransparency"]
      264 SETTABLEKS                       R1 R18 K31 ["ref"]
      266 CALL                             R16 2 1
      267 DUPTABLE                         R17 K58 [{"Icon"}]
      268 GETUPVAL                         R19 4
      269 MOVE                             R20 R5
      270 CALL                             R19 1 1
      271 JUMPIFNOT                        R19 ; [+70]
      272 GETUPVAL                         R19 9
      273 GETTABLEKS                       R18 R19 K18 ["createElement"]
      275 GETUPVAL                         R19 15
      276 DUPTABLE                         R20 K64 [{"Text", "fontStyle", "tag", "Size", "textStyle", "testId"}]
      277 GETUPVAL                         R22 16
      278 MOVE                             R23 R5
      279 CALL                             R22 1 1
      280 JUMPIFNOT                        R22 ; [+5]
      281 GETUPVAL                         R23 17
      282 GETTABLE                         R22 R23 R5
      283 GETTABLEKS                       R21 R22 K4 ["name"]
      285 JUMP                             ; [+1]
      286 MOVE                             R21 R5
      287 SETTABLEKS                       R21 R20 K59 ["Text"]
      289 DUPTABLE                         R21 K67 [{"Font", "FontSize"}]
      290 GETUPVAL                         R24 18
      291 GETTABLEKS                       R23 R24 K65 ["Font"]
      293 GETUPVAL                         R25 16
      294 MOVE                             R26 R5
      295 CALL                             R25 1 1
      296 JUMPIFNOT                        R25 ; [+5]
      297 GETUPVAL                         R26 17
      298 GETTABLE                         R25 R26 R5
      299 GETTABLEKS                       R24 R25 K5 ["variant"]
      301 JUMP                             ; [+7]
      302 MOVE                             R24 R6
      303 JUMPIF                           R24 ; [+5]
      304 GETUPVAL                         R26 18
      305 GETTABLEKS                       R25 R26 K68 ["IconVariant"]
      307 GETTABLEKS                       R24 R25 K69 ["Regular"]
      309 GETTABLE                         R22 R23 R24
      310 SETTABLEKS                       R22 R21 K65 ["Font"]
      312 GETTABLEKS                       R23 R12 K41 ["Y"]
      314 GETTABLEKS                       R22 R23 K40 ["Offset"]
      316 SETTABLEKS                       R22 R21 K66 ["FontSize"]
      318 SETTABLEKS                       R21 R20 K60 ["fontStyle"]
      320 LOADK                            R21 K70 ["anchor-center-center position-center-center"]
      321 SETTABLEKS                       R21 R20 K61 ["tag"]
      323 SETTABLEKS                       R12 R20 K20 ["Size"]
      325 GETTABLEKS                       R22 R9 K71 ["content"]
      327 GETTABLEKS                       R21 R22 K55 ["style"]
      329 SETTABLEKS                       R21 R20 K62 ["textStyle"]
      331 LOADK                            R22 K72 ["%*--icon"]
      332 GETTABLEKS                       R24 R2 K63 ["testId"]
      334 NAMECALL                         R22 R22 K73 ["format"]
      336 CALL                             R22 2 1
      337 MOVE                             R21 R22
      338 SETTABLEKS                       R21 R20 K63 ["testId"]
      340 CALL                             R18 2 1
      341 JUMP                             ; [+40]
      342 GETUPVAL                         R19 9
      343 GETTABLEKS                       R18 R19 K18 ["createElement"]
      345 GETUPVAL                         R19 19
      346 DUPTABLE                         R20 K77 [{"tag", "Image", "Size", "imageStyle", "scale", "testId"}]
      347 LOADK                            R21 K70 ["anchor-center-center position-center-center"]
      348 SETTABLEKS                       R21 R20 K61 ["tag"]
      350 SETTABLEKS                       R5 R20 K74 ["Image"]
      352 JUMPIFNOT                        R7 ; [+8]
      353 GETIMPORT                        R21 K79 [UDim2.fromOffset]
      355 GETTABLEKS                       R22 R7 K38 ["X"]
      357 GETTABLEKS                       R23 R7 K41 ["Y"]
      359 CALL                             R21 2 1
      360 JUMP                             ; [+1]
      361 MOVE                             R21 R12
      362 SETTABLEKS                       R21 R20 K20 ["Size"]
      364 GETTABLEKS                       R22 R9 K71 ["content"]
      366 GETTABLEKS                       R21 R22 K55 ["style"]
      368 SETTABLEKS                       R21 R20 K75 ["imageStyle"]
      370 SETTABLEKS                       R8 R20 K76 ["scale"]
      372 LOADK                            R22 K80 ["%*--image"]
      373 GETTABLEKS                       R24 R2 K63 ["testId"]
      375 NAMECALL                         R22 R22 K73 ["format"]
      377 CALL                             R22 2 1
      378 MOVE                             R21 R22
      379 SETTABLEKS                       R21 R20 K63 ["testId"]
      381 CALL                             R18 2 1
      382 SETTABLEKS                       R18 R17 K57 ["Icon"]
      384 CALL                             R14 3 -1
      385 RETURN                           R14 -1

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
      173 DUPTABLE                         R27 K44 [{"isDisabled", "size", "isCircular", "variant", "testId"}]
      174 LOADB                            R28 0
      175 SETTABLEKS                       R28 R27 K39 ["isDisabled"]
      177 GETTABLEKS                       R28 R5 K45 ["Medium"]
      179 SETTABLEKS                       R28 R27 K40 ["size"]
      181 LOADB                            R28 0
      182 SETTABLEKS                       R28 R27 K41 ["isCircular"]
      184 GETTABLEKS                       R28 R8 K16 ["Utility"]
      186 SETTABLEKS                       R28 R27 K42 ["variant"]
      188 LOADK                            R28 K46 ["--foundation-icon-button"]
      189 SETTABLEKS                       R28 R27 K43 ["testId"]
      191 DUPCLOSURE                       R28 K47 [PROTO_1]
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R27
      194 CAPTURE                          VAL R11
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R21
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R26
      203 CAPTURE                          VAL R18
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R6
      206 CAPTURE                          VAL R22
      207 CAPTURE                          VAL R24
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R4
      210 CAPTURE                          VAL R2
      211 CAPTURE                          VAL R23
      212 GETTABLEKS                       R29 R3 K48 ["memo"]
      214 GETTABLEKS                       R30 R3 K49 ["forwardRef"]
      216 MOVE                             R31 R28
      217 CALL                             R30 1 -1
      218 CALL                             R29 -1 -1
      219 RETURN                           R29 -1
