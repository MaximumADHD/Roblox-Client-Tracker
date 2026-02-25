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
       59 MOVE                             R13 R4
       60 JUMPIFNOT                        R13 ; [+2]
       61 GETTABLEKS                       R13 R4 K7 ["isInverse"]
       63 CALL                             R9 4 1
       64 GETTABLEKS                       R11 R2 K8 ["isCircular"]
       66 JUMPIFNOT                        R11 ; [+9]
       67 GETIMPORT                        R10 K11 [UDim.new]
       69 LOADN                            R11 0
       70 GETTABLEKS                       R13 R3 K12 ["Radius"]
       72 GETTABLEKS                       R12 R13 K13 ["Circle"]
       74 CALL                             R10 2 1
       75 JUMP                             ; [+13]
       76 GETIMPORT                        R10 K11 [UDim.new]
       78 LOADN                            R11 0
       79 GETTABLEKS                       R13 R9 K14 ["container"]
       81 GETTABLEKS                       R12 R13 K15 ["radius"]
       83 JUMPIF                           R12 ; [+4]
       84 GETTABLEKS                       R13 R3 K12 ["Radius"]
       86 GETTABLEKS                       R12 R13 K16 ["Large"]
       88 CALL                             R10 2 1
       89 GETUPVAL                         R11 7
       90 GETTABLEKS                       R12 R2 K6 ["size"]
       92 GETUPVAL                         R13 8
       93 MOVE                             R14 R5
       94 CALL                             R13 1 1
       95 LOADB                            R14 1
       96 CALL                             R11 3 1
       97 GETUPVAL                         R13 9
       98 GETTABLEKS                       R12 R13 K17 ["useMemo"]
      100 NEWCLOSURE                       R13 P0
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R3
      103 NEWTABLE                         R14 0 2
      105 MOVE                             R15 R3
      106 MOVE                             R16 R10
      107 SETLIST                          R14 R15 2 [1]
      109 CALL                             R12 2 1
      110 GETUPVAL                         R14 9
      111 GETTABLEKS                       R13 R14 K18 ["createElement"]
      113 GETUPVAL                         R14 10
      114 GETUPVAL                         R15 11
      115 MOVE                             R16 R2
      116 DUPTABLE                         R17 K32 [{"onActivated", "Size", "selection", "isDisabled", "stateLayer", "padding", "cornerRadius", "backgroundStyle", "stroke", "cursor", "tag", "GroupTransparency", "ref"}]
      117 GETTABLEKS                       R18 R2 K19 ["onActivated"]
      119 SETTABLEKS                       R18 R17 K19 ["onActivated"]
      121 GETTABLEKS                       R19 R9 K14 ["container"]
      123 GETTABLEKS                       R18 R19 K6 ["size"]
      125 SETTABLEKS                       R18 R17 K20 ["Size"]
      127 DUPTABLE                         R18 K38 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      128 GETTABLEKS                       R20 R2 K22 ["isDisabled"]
      130 JUMPIFNOT                        R20 ; [+2]
      131 LOADB                            R19 0
      132 JUMP                             ; [+2]
      133 GETTABLEKS                       R19 R2 K33 ["Selectable"]
      135 SETTABLEKS                       R19 R18 K33 ["Selectable"]
      137 GETTABLEKS                       R19 R2 K34 ["NextSelectionUp"]
      139 SETTABLEKS                       R19 R18 K34 ["NextSelectionUp"]
      141 GETTABLEKS                       R19 R2 K35 ["NextSelectionDown"]
      143 SETTABLEKS                       R19 R18 K35 ["NextSelectionDown"]
      145 GETTABLEKS                       R19 R2 K36 ["NextSelectionLeft"]
      147 SETTABLEKS                       R19 R18 K36 ["NextSelectionLeft"]
      149 GETTABLEKS                       R19 R2 K37 ["NextSelectionRight"]
      151 SETTABLEKS                       R19 R18 K37 ["NextSelectionRight"]
      153 SETTABLEKS                       R18 R17 K21 ["selection"]
      155 GETTABLEKS                       R18 R2 K22 ["isDisabled"]
      157 SETTABLEKS                       R18 R17 K22 ["isDisabled"]
      159 GETTABLEKS                       R19 R9 K14 ["container"]
      161 GETTABLEKS                       R18 R19 K23 ["stateLayer"]
      163 SETTABLEKS                       R18 R17 K23 ["stateLayer"]
      165 GETTABLEKS                       R19 R9 K14 ["container"]
      167 GETTABLEKS                       R18 R19 K24 ["padding"]
      169 SETTABLEKS                       R18 R17 K24 ["padding"]
      171 SETTABLEKS                       R10 R17 K25 ["cornerRadius"]
      173 GETTABLEKS                       R19 R9 K14 ["container"]
      175 GETTABLEKS                       R18 R19 K39 ["style"]
      177 SETTABLEKS                       R18 R17 K26 ["backgroundStyle"]
      179 GETTABLEKS                       R19 R9 K14 ["container"]
      181 GETTABLEKS                       R18 R19 K27 ["stroke"]
      183 SETTABLEKS                       R18 R17 K27 ["stroke"]
      185 SETTABLEKS                       R12 R17 K28 ["cursor"]
      187 GETTABLEKS                       R19 R9 K14 ["container"]
      189 GETTABLEKS                       R18 R19 K29 ["tag"]
      191 SETTABLEKS                       R18 R17 K29 ["tag"]
      193 GETTABLEKS                       R19 R2 K22 ["isDisabled"]
      195 JUMPIFNOT                        R19 ; [+4]
      196 GETUPVAL                         R19 12
      197 GETTABLEKS                       R18 R19 K40 ["DISABLED_TRANSPARENCY"]
      199 JUMP                             ; [+1]
      200 LOADNIL                          R18
      201 SETTABLEKS                       R18 R17 K30 ["GroupTransparency"]
      203 SETTABLEKS                       R1 R17 K31 ["ref"]
      205 CALL                             R15 2 1
      206 DUPTABLE                         R16 K42 [{"Icon"}]
      207 GETUPVAL                         R18 4
      208 MOVE                             R19 R5
      209 CALL                             R18 1 1
      210 JUMPIFNOT                        R18 ; [+70]
      211 GETUPVAL                         R18 9
      212 GETTABLEKS                       R17 R18 K18 ["createElement"]
      214 GETUPVAL                         R18 13
      215 DUPTABLE                         R19 K47 [{"Text", "fontStyle", "tag", "Size", "textStyle", "testId"}]
      216 GETUPVAL                         R21 14
      217 MOVE                             R22 R5
      218 CALL                             R21 1 1
      219 JUMPIFNOT                        R21 ; [+5]
      220 GETUPVAL                         R22 15
      221 GETTABLE                         R21 R22 R5
      222 GETTABLEKS                       R20 R21 K4 ["name"]
      224 JUMP                             ; [+1]
      225 MOVE                             R20 R5
      226 SETTABLEKS                       R20 R19 K43 ["Text"]
      228 DUPTABLE                         R20 K50 [{"Font", "FontSize"}]
      229 GETUPVAL                         R23 16
      230 GETTABLEKS                       R22 R23 K48 ["Font"]
      232 GETUPVAL                         R24 14
      233 MOVE                             R25 R5
      234 CALL                             R24 1 1
      235 JUMPIFNOT                        R24 ; [+5]
      236 GETUPVAL                         R25 15
      237 GETTABLE                         R24 R25 R5
      238 GETTABLEKS                       R23 R24 K5 ["variant"]
      240 JUMP                             ; [+7]
      241 MOVE                             R23 R6
      242 JUMPIF                           R23 ; [+5]
      243 GETUPVAL                         R25 16
      244 GETTABLEKS                       R24 R25 K51 ["IconVariant"]
      246 GETTABLEKS                       R23 R24 K52 ["Regular"]
      248 GETTABLE                         R21 R22 R23
      249 SETTABLEKS                       R21 R20 K48 ["Font"]
      251 GETTABLEKS                       R22 R11 K53 ["Y"]
      253 GETTABLEKS                       R21 R22 K54 ["Offset"]
      255 SETTABLEKS                       R21 R20 K49 ["FontSize"]
      257 SETTABLEKS                       R20 R19 K44 ["fontStyle"]
      259 LOADK                            R20 K55 ["anchor-center-center position-center-center"]
      260 SETTABLEKS                       R20 R19 K29 ["tag"]
      262 SETTABLEKS                       R11 R19 K20 ["Size"]
      264 GETTABLEKS                       R21 R9 K56 ["content"]
      266 GETTABLEKS                       R20 R21 K39 ["style"]
      268 SETTABLEKS                       R20 R19 K45 ["textStyle"]
      270 LOADK                            R21 K57 ["%*--icon"]
      271 GETTABLEKS                       R23 R2 K46 ["testId"]
      273 NAMECALL                         R21 R21 K58 ["format"]
      275 CALL                             R21 2 1
      276 MOVE                             R20 R21
      277 SETTABLEKS                       R20 R19 K46 ["testId"]
      279 CALL                             R17 2 1
      280 JUMP                             ; [+40]
      281 GETUPVAL                         R18 9
      282 GETTABLEKS                       R17 R18 K18 ["createElement"]
      284 GETUPVAL                         R18 17
      285 DUPTABLE                         R19 K62 [{"tag", "Image", "Size", "imageStyle", "scale", "testId"}]
      286 LOADK                            R20 K55 ["anchor-center-center position-center-center"]
      287 SETTABLEKS                       R20 R19 K29 ["tag"]
      289 SETTABLEKS                       R5 R19 K59 ["Image"]
      291 JUMPIFNOT                        R7 ; [+8]
      292 GETIMPORT                        R20 K65 [UDim2.fromOffset]
      294 GETTABLEKS                       R21 R7 K66 ["X"]
      296 GETTABLEKS                       R22 R7 K53 ["Y"]
      298 CALL                             R20 2 1
      299 JUMP                             ; [+1]
      300 MOVE                             R20 R11
      301 SETTABLEKS                       R20 R19 K20 ["Size"]
      303 GETTABLEKS                       R21 R9 K56 ["content"]
      305 GETTABLEKS                       R20 R21 K39 ["style"]
      307 SETTABLEKS                       R20 R19 K60 ["imageStyle"]
      309 SETTABLEKS                       R8 R19 K61 ["scale"]
      311 LOADK                            R21 K67 ["%*--image"]
      312 GETTABLEKS                       R23 R2 K46 ["testId"]
      314 NAMECALL                         R21 R21 K58 ["format"]
      316 CALL                             R21 2 1
      317 MOVE                             R20 R21
      318 SETTABLEKS                       R20 R19 K46 ["testId"]
      320 CALL                             R17 2 1
      321 SETTABLEKS                       R17 R16 K41 ["Icon"]
      323 CALL                             R13 3 -1
      324 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["BuilderIcons"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R3 K10 ["Migration"]
       21 GETTABLEKS                       R4 R5 K9 ["uiblox"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R7 R0 K11 ["Enums"]
       27 GETTABLEKS                       R6 R7 K12 ["InputSize"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R8 R0 K11 ["Enums"]
       34 GETTABLEKS                       R7 R8 K13 ["IconSize"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R9 R0 K11 ["Enums"]
       41 GETTABLEKS                       R8 R9 K14 ["ButtonVariant"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R10 R0 K11 ["Enums"]
       48 GETTABLEKS                       R9 R10 K15 ["Radius"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R12 R0 K16 ["Providers"]
       55 GETTABLEKS                       R11 R12 K17 ["Style"]
       57 GETTABLEKS                       R10 R11 K18 ["useTokens"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R11 K6 [require]
       62 GETTABLEKS                       R14 R0 K16 ["Providers"]
       64 GETTABLEKS                       R13 R14 K17 ["Style"]
       66 GETTABLEKS                       R12 R13 K19 ["PresentationContext"]
       68 CALL                             R11 1 1
       69 GETTABLEKS                       R10 R11 K20 ["usePresentationContext"]
       71 GETIMPORT                        R11 K6 [require]
       73 GETTABLEKS                       R13 R0 K21 ["Utility"]
       75 GETTABLEKS                       R12 R13 K22 ["withCommonProps"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K6 [require]
       80 GETTABLEKS                       R14 R0 K21 ["Utility"]
       82 GETTABLEKS                       R13 R14 K23 ["withDefaults"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K6 [require]
       87 GETTABLEKS                       R15 R0 K21 ["Utility"]
       89 GETTABLEKS                       R14 R15 K24 ["useIconSize"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K6 [require]
       94 GETTABLEKS                       R16 R0 K21 ["Utility"]
       96 GETTABLEKS                       R15 R16 K25 ["getIconScale"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K6 [require]
      101 GETIMPORT                        R18 K1 [script]
      103 GETTABLEKS                       R17 R18 K4 ["Parent"]
      105 GETTABLEKS                       R16 R17 K26 ["useIconButtonVariants"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K6 [require]
      110 GETTABLEKS                       R18 R0 K21 ["Utility"]
      112 GETTABLEKS                       R17 R18 K27 ["isBuilderIcon"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K6 [require]
      117 GETTABLEKS                       R19 R0 K21 ["Utility"]
      119 GETTABLEKS                       R18 R19 K28 ["iconMigrationUtils"]
      121 CALL                             R17 1 1
      122 GETTABLEKS                       R18 R17 K29 ["isMigrated"]
      124 GETTABLEKS                       R19 R17 K30 ["isBuilderOrMigratedIcon"]
      126 GETIMPORT                        R20 K6 [require]
      128 GETTABLEKS                       R21 R0 K31 ["Constants"]
      130 CALL                             R20 1 1
      131 GETIMPORT                        R21 K6 [require]
      133 GETTABLEKS                       R23 R0 K32 ["Components"]
      135 GETTABLEKS                       R22 R23 K33 ["View"]
      137 CALL                             R21 1 1
      138 GETIMPORT                        R22 K6 [require]
      140 GETTABLEKS                       R24 R0 K32 ["Components"]
      142 GETTABLEKS                       R23 R24 K34 ["Text"]
      144 CALL                             R22 1 1
      145 GETIMPORT                        R23 K6 [require]
      147 GETTABLEKS                       R25 R0 K32 ["Components"]
      149 GETTABLEKS                       R24 R25 K35 ["Image"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K6 [require]
      154 GETTABLEKS                       R26 R0 K32 ["Components"]
      156 GETTABLEKS                       R25 R26 K36 ["Types"]
      158 CALL                             R24 1 1
      159 DUPTABLE                         R25 K42 [{"isDisabled", "size", "isCircular", "variant", "testId"}]
      160 LOADB                            R26 0
      161 SETTABLEKS                       R26 R25 K37 ["isDisabled"]
      163 GETTABLEKS                       R26 R5 K43 ["Medium"]
      165 SETTABLEKS                       R26 R25 K38 ["size"]
      167 LOADB                            R26 0
      168 SETTABLEKS                       R26 R25 K39 ["isCircular"]
      170 GETTABLEKS                       R26 R7 K21 ["Utility"]
      172 SETTABLEKS                       R26 R25 K40 ["variant"]
      174 LOADK                            R26 K44 ["--foundation-icon-button"]
      175 SETTABLEKS                       R26 R25 K41 ["testId"]
      177 DUPCLOSURE                       R26 K45 [PROTO_1]
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R25
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R22
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R23
      196 GETTABLEKS                       R27 R2 K46 ["memo"]
      198 GETTABLEKS                       R28 R2 K47 ["forwardRef"]
      200 MOVE                             R29 R26
      201 CALL                             R28 1 -1
      202 CALL                             R27 -1 -1
      203 RETURN                           R27 -1
