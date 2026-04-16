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
      115 GETTABLEKS                       R15 R2 K18 ["fillBehavior"]
      117 GETUPVAL                         R17 10
      118 GETTABLEKS                       R16 R17 K19 ["Fill"]
      120 JUMPIFEQ                         R15 R16 ; [+2]
      122 LOADB                            R14 0 +1
      123 LOADB                            R14 1
      124 LOADB                            R15 1
      125 GETTABLEKS                       R17 R2 K20 ["width"]
      127 GETTABLEKS                       R16 R17 K21 ["Scale"]
      129 JUMPIFNOTEQKN                    R16 K22 [0] ; [+9]
      131 GETTABLEKS                       R17 R2 K20 ["width"]
      133 GETTABLEKS                       R16 R17 K23 ["Offset"]
      135 JUMPIFNOTEQKN                    R16 K22 [0] ; [+2]
      137 LOADB                            R15 0 +1
      138 LOADB                            R15 1
      139 JUMPIFNOT                        R14 ; [+6]
      140 GETIMPORT                        R16 K12 [UDim.new]
      142 LOADN                            R17 1
      143 LOADN                            R18 0
      144 CALL                             R16 2 1
      145 JUMP                             ; [+6]
      146 JUMPIFNOT                        R15 ; [+3]
      147 GETTABLEKS                       R16 R2 K20 ["width"]
      149 JUMP                             ; [+2]
      150 GETTABLEKS                       R16 R10 K24 ["X"]
      152 GETUPVAL                         R18 9
      153 GETTABLEKS                       R17 R18 K25 ["createElement"]
      155 GETUPVAL                         R18 11
      156 GETUPVAL                         R19 12
      157 MOVE                             R20 R2
      158 DUPTABLE                         R21 K39 [{"onActivated", "Size", "flexItem", "selection", "isDisabled", "stateLayer", "padding", "cornerRadius", "backgroundStyle", "stroke", "cursor", "GroupTransparency", "ref"}]
      159 GETTABLEKS                       R22 R2 K26 ["onActivated"]
      161 SETTABLEKS                       R22 R21 K26 ["onActivated"]
      163 GETIMPORT                        R22 K41 [UDim2.new]
      165 MOVE                             R23 R16
      166 GETIMPORT                        R24 K12 [UDim.new]
      168 LOADN                            R25 0
      169 GETTABLEKS                       R27 R10 K42 ["Y"]
      171 GETTABLEKS                       R26 R27 K23 ["Offset"]
      173 CALL                             R24 2 -1
      174 CALL                             R22 -1 1
      175 SETTABLEKS                       R22 R21 K27 ["Size"]
      177 GETTABLEKS                       R23 R2 K18 ["fillBehavior"]
      179 JUMPIFNOT                        R23 ; [+16]
      180 DUPTABLE                         R22 K44 [{"FlexMode"}]
      181 GETTABLEKS                       R24 R2 K18 ["fillBehavior"]
      183 GETUPVAL                         R26 10
      184 GETTABLEKS                       R25 R26 K19 ["Fill"]
      186 JUMPIFNOTEQ                      R24 R25 ; [+4]
      188 GETIMPORT                        R23 K47 [Enum.UIFlexMode.Fill]
      190 JUMP                             ; [+2]
      191 GETIMPORT                        R23 K49 [Enum.UIFlexMode.Shrink]
      193 SETTABLEKS                       R23 R22 K43 ["FlexMode"]
      195 JUMP                             ; [+1]
      196 LOADNIL                          R22
      197 SETTABLEKS                       R22 R21 K28 ["flexItem"]
      199 DUPTABLE                         R22 K55 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      200 GETTABLEKS                       R24 R2 K30 ["isDisabled"]
      202 JUMPIFNOT                        R24 ; [+2]
      203 LOADB                            R23 0
      204 JUMP                             ; [+2]
      205 GETTABLEKS                       R23 R2 K50 ["Selectable"]
      207 SETTABLEKS                       R23 R22 K50 ["Selectable"]
      209 GETTABLEKS                       R23 R2 K51 ["NextSelectionUp"]
      211 SETTABLEKS                       R23 R22 K51 ["NextSelectionUp"]
      213 GETTABLEKS                       R23 R2 K52 ["NextSelectionDown"]
      215 SETTABLEKS                       R23 R22 K52 ["NextSelectionDown"]
      217 GETTABLEKS                       R23 R2 K53 ["NextSelectionLeft"]
      219 SETTABLEKS                       R23 R22 K53 ["NextSelectionLeft"]
      221 GETTABLEKS                       R23 R2 K54 ["NextSelectionRight"]
      223 SETTABLEKS                       R23 R22 K54 ["NextSelectionRight"]
      225 SETTABLEKS                       R22 R21 K29 ["selection"]
      227 GETTABLEKS                       R22 R2 K30 ["isDisabled"]
      229 SETTABLEKS                       R22 R21 K30 ["isDisabled"]
      231 GETTABLEKS                       R23 R9 K8 ["container"]
      233 GETTABLEKS                       R22 R23 K31 ["stateLayer"]
      235 SETTABLEKS                       R22 R21 K31 ["stateLayer"]
      237 GETTABLEKS                       R23 R9 K8 ["container"]
      239 GETTABLEKS                       R22 R23 K32 ["padding"]
      241 SETTABLEKS                       R22 R21 K32 ["padding"]
      243 SETTABLEKS                       R11 R21 K33 ["cornerRadius"]
      245 GETTABLEKS                       R23 R9 K8 ["container"]
      247 GETTABLEKS                       R22 R23 K56 ["style"]
      249 SETTABLEKS                       R22 R21 K34 ["backgroundStyle"]
      251 GETTABLEKS                       R23 R9 K8 ["container"]
      253 GETTABLEKS                       R22 R23 K35 ["stroke"]
      255 SETTABLEKS                       R22 R21 K35 ["stroke"]
      257 SETTABLEKS                       R13 R21 K36 ["cursor"]
      259 GETTABLEKS                       R23 R2 K30 ["isDisabled"]
      261 JUMPIFNOT                        R23 ; [+4]
      262 GETUPVAL                         R23 13
      263 GETTABLEKS                       R22 R23 K57 ["DISABLED_TRANSPARENCY"]
      265 JUMP                             ; [+1]
      266 LOADNIL                          R22
      267 SETTABLEKS                       R22 R21 K37 ["GroupTransparency"]
      269 SETTABLEKS                       R1 R21 K38 ["ref"]
      271 CALL                             R19 2 1
      272 DUPTABLE                         R20 K59 [{"Icon"}]
      273 GETUPVAL                         R22 4
      274 MOVE                             R23 R5
      275 CALL                             R22 1 1
      276 JUMPIFNOT                        R22 ; [+70]
      277 GETUPVAL                         R22 9
      278 GETTABLEKS                       R21 R22 K25 ["createElement"]
      280 GETUPVAL                         R22 14
      281 DUPTABLE                         R23 K65 [{"Text", "fontStyle", "tag", "Size", "textStyle", "testId"}]
      282 GETUPVAL                         R25 15
      283 MOVE                             R26 R5
      284 CALL                             R25 1 1
      285 JUMPIFNOT                        R25 ; [+5]
      286 GETUPVAL                         R26 16
      287 GETTABLE                         R25 R26 R5
      288 GETTABLEKS                       R24 R25 K4 ["name"]
      290 JUMP                             ; [+1]
      291 MOVE                             R24 R5
      292 SETTABLEKS                       R24 R23 K60 ["Text"]
      294 DUPTABLE                         R24 K68 [{"Font", "FontSize"}]
      295 GETUPVAL                         R27 17
      296 GETTABLEKS                       R26 R27 K66 ["Font"]
      298 GETUPVAL                         R28 15
      299 MOVE                             R29 R5
      300 CALL                             R28 1 1
      301 JUMPIFNOT                        R28 ; [+5]
      302 GETUPVAL                         R29 16
      303 GETTABLE                         R28 R29 R5
      304 GETTABLEKS                       R27 R28 K5 ["variant"]
      306 JUMP                             ; [+7]
      307 MOVE                             R27 R6
      308 JUMPIF                           R27 ; [+5]
      309 GETUPVAL                         R29 17
      310 GETTABLEKS                       R28 R29 K69 ["IconVariant"]
      312 GETTABLEKS                       R27 R28 K70 ["Regular"]
      314 GETTABLE                         R25 R26 R27
      315 SETTABLEKS                       R25 R24 K66 ["Font"]
      317 GETTABLEKS                       R26 R12 K42 ["Y"]
      319 GETTABLEKS                       R25 R26 K23 ["Offset"]
      321 SETTABLEKS                       R25 R24 K67 ["FontSize"]
      323 SETTABLEKS                       R24 R23 K61 ["fontStyle"]
      325 LOADK                            R24 K71 ["position-center-center anchor-center-center"]
      326 SETTABLEKS                       R24 R23 K62 ["tag"]
      328 SETTABLEKS                       R12 R23 K27 ["Size"]
      330 GETTABLEKS                       R25 R9 K72 ["content"]
      332 GETTABLEKS                       R24 R25 K56 ["style"]
      334 SETTABLEKS                       R24 R23 K63 ["textStyle"]
      336 LOADK                            R25 K73 ["%*--icon"]
      337 GETTABLEKS                       R27 R2 K64 ["testId"]
      339 NAMECALL                         R25 R25 K74 ["format"]
      341 CALL                             R25 2 1
      342 MOVE                             R24 R25
      343 SETTABLEKS                       R24 R23 K64 ["testId"]
      345 CALL                             R21 2 1
      346 JUMP                             ; [+40]
      347 GETUPVAL                         R22 9
      348 GETTABLEKS                       R21 R22 K25 ["createElement"]
      350 GETUPVAL                         R22 18
      351 DUPTABLE                         R23 K78 [{"tag", "Image", "Size", "imageStyle", "scale", "testId"}]
      352 LOADK                            R24 K71 ["position-center-center anchor-center-center"]
      353 SETTABLEKS                       R24 R23 K62 ["tag"]
      355 SETTABLEKS                       R5 R23 K75 ["Image"]
      357 JUMPIFNOT                        R7 ; [+8]
      358 GETIMPORT                        R24 K80 [UDim2.fromOffset]
      360 GETTABLEKS                       R25 R7 K24 ["X"]
      362 GETTABLEKS                       R26 R7 K42 ["Y"]
      364 CALL                             R24 2 1
      365 JUMP                             ; [+1]
      366 MOVE                             R24 R12
      367 SETTABLEKS                       R24 R23 K27 ["Size"]
      369 GETTABLEKS                       R25 R9 K72 ["content"]
      371 GETTABLEKS                       R24 R25 K56 ["style"]
      373 SETTABLEKS                       R24 R23 K76 ["imageStyle"]
      375 SETTABLEKS                       R8 R23 K77 ["scale"]
      377 LOADK                            R25 K81 ["%*--image"]
      378 GETTABLEKS                       R27 R2 K64 ["testId"]
      380 NAMECALL                         R25 R25 K74 ["format"]
      382 CALL                             R25 2 1
      383 MOVE                             R24 R25
      384 SETTABLEKS                       R24 R23 K64 ["testId"]
      386 CALL                             R21 2 1
      387 SETTABLEKS                       R21 R20 K58 ["Icon"]
      389 CALL                             R17 3 -1
      390 RETURN                           R17 -1

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
       53 GETTABLEKS                       R11 R0 K11 ["Enums"]
       55 GETTABLEKS                       R10 R11 K16 ["Radius"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K6 [require]
       60 GETTABLEKS                       R13 R0 K17 ["Providers"]
       62 GETTABLEKS                       R12 R13 K18 ["Style"]
       64 GETTABLEKS                       R11 R12 K19 ["useTokens"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R12 K6 [require]
       69 GETTABLEKS                       R15 R0 K17 ["Providers"]
       71 GETTABLEKS                       R14 R15 K18 ["Style"]
       73 GETTABLEKS                       R13 R14 K20 ["PresentationContext"]
       75 CALL                             R12 1 1
       76 GETTABLEKS                       R11 R12 K21 ["usePresentationContext"]
       78 GETIMPORT                        R12 K6 [require]
       80 GETTABLEKS                       R14 R0 K22 ["Utility"]
       82 GETTABLEKS                       R13 R14 K23 ["getIconScale"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K6 [require]
       87 GETTABLEKS                       R15 R0 K22 ["Utility"]
       89 GETTABLEKS                       R14 R15 K24 ["iconMigrationUtils"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K6 [require]
       94 GETTABLEKS                       R16 R0 K22 ["Utility"]
       96 GETTABLEKS                       R15 R16 K25 ["isBuilderIcon"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K6 [require]
      101 GETIMPORT                        R18 K1 [script]
      103 GETTABLEKS                       R17 R18 K4 ["Parent"]
      105 GETTABLEKS                       R16 R17 K26 ["useIconButtonVariants"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K6 [require]
      110 GETTABLEKS                       R18 R0 K22 ["Utility"]
      112 GETTABLEKS                       R17 R18 K27 ["useIconSize"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K6 [require]
      117 GETTABLEKS                       R19 R0 K22 ["Utility"]
      119 GETTABLEKS                       R18 R19 K28 ["withCommonProps"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K6 [require]
      124 GETTABLEKS                       R20 R0 K22 ["Utility"]
      126 GETTABLEKS                       R19 R20 K29 ["withDefaults"]
      128 CALL                             R18 1 1
      129 GETTABLEKS                       R19 R13 K30 ["isMigrated"]
      131 GETTABLEKS                       R20 R13 K31 ["isBuilderOrMigratedIcon"]
      133 GETIMPORT                        R21 K6 [require]
      135 GETTABLEKS                       R22 R0 K32 ["Constants"]
      137 CALL                             R21 1 1
      138 GETIMPORT                        R22 K6 [require]
      140 GETTABLEKS                       R24 R0 K33 ["Components"]
      142 GETTABLEKS                       R23 R24 K34 ["Image"]
      144 CALL                             R22 1 1
      145 GETIMPORT                        R23 K6 [require]
      147 GETTABLEKS                       R25 R0 K33 ["Components"]
      149 GETTABLEKS                       R24 R25 K35 ["Text"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K6 [require]
      154 GETTABLEKS                       R26 R0 K33 ["Components"]
      156 GETTABLEKS                       R25 R26 K36 ["Types"]
      158 CALL                             R24 1 1
      159 GETIMPORT                        R25 K6 [require]
      161 GETTABLEKS                       R27 R0 K33 ["Components"]
      163 GETTABLEKS                       R26 R27 K37 ["View"]
      165 CALL                             R25 1 1
      166 DUPTABLE                         R26 K44 [{"isDisabled", "size", "width", "isCircular", "variant", "testId"}]
      167 LOADB                            R27 0
      168 SETTABLEKS                       R27 R26 K38 ["isDisabled"]
      170 GETTABLEKS                       R27 R5 K45 ["Medium"]
      172 SETTABLEKS                       R27 R26 K39 ["size"]
      174 GETIMPORT                        R27 K48 [UDim.new]
      176 LOADN                            R28 0
      177 LOADN                            R29 0
      178 CALL                             R27 2 1
      179 SETTABLEKS                       R27 R26 K40 ["width"]
      181 LOADB                            R27 0
      182 SETTABLEKS                       R27 R26 K41 ["isCircular"]
      184 GETTABLEKS                       R27 R8 K22 ["Utility"]
      186 SETTABLEKS                       R27 R26 K42 ["variant"]
      188 LOADK                            R27 K49 ["--foundation-icon-button"]
      189 SETTABLEKS                       R27 R26 K43 ["testId"]
      191 DUPCLOSURE                       R27 K50 [PROTO_1]
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R26
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R11
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R12
      198 CAPTURE                          VAL R15
      199 CAPTURE                          VAL R16
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R6
      203 CAPTURE                          VAL R25
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R23
      207 CAPTURE                          VAL R19
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R22
      211 GETTABLEKS                       R28 R3 K51 ["memo"]
      213 GETTABLEKS                       R29 R3 K52 ["forwardRef"]
      215 MOVE                             R30 R27
      216 CALL                             R29 1 -1
      217 CALL                             R28 -1 -1
      218 RETURN                           R28 -1
