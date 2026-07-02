PROTO_0:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["radius"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K4 ["Size"]
        7 GETTABLEKS                       R1 R1 K5 ["Size_150"]
        9 SETTABLEKS                       R1 R0 K1 ["offset"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K6 ["Stroke"]
       14 GETTABLEKS                       R1 R1 K7 ["Thicker"]
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
       16 GETTABLEKS                       R5 R2 K0 ["icon"]
       18 GETTABLEKS                       R5 R5 K4 ["name"]
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R5 R2 K0 ["icon"]
       23 GETTABLEKS                       R8 R2 K0 ["icon"]
       25 FASTCALL1                        TYPEOF R8 ; [+2]
       26 GETIMPORT                        R7 K2 [typeof]
       28 CALL                             R7 1 1
       29 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+6]
       31 GETTABLEKS                       R6 R2 K0 ["icon"]
       33 GETTABLEKS                       R6 R6 K5 ["variant"]
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
       65 GETTABLEKS                       R11 R2 K8 ["isCircular"]
       67 JUMPIFNOT                        R11 ; [+9]
       68 GETIMPORT                        R10 K11 [UDim.new]
       70 LOADN                            R11 0
       71 GETTABLEKS                       R12 R3 K12 ["Radius"]
       73 GETTABLEKS                       R12 R12 K13 ["Circle"]
       75 CALL                             R10 2 1
       76 JUMP                             ; [+13]
       77 GETIMPORT                        R10 K11 [UDim.new]
       79 LOADN                            R11 0
       80 GETTABLEKS                       R12 R9 K14 ["container"]
       82 GETTABLEKS                       R12 R12 K15 ["radius"]
       84 JUMPIF                           R12 ; [+4]
       85 GETTABLEKS                       R12 R3 K12 ["Radius"]
       87 GETTABLEKS                       R12 R12 K16 ["Large"]
       89 CALL                             R10 2 1
       90 GETUPVAL                         R11 7
       91 GETTABLEKS                       R12 R2 K6 ["size"]
       93 GETUPVAL                         R13 8
       94 MOVE                             R14 R5
       95 CALL                             R13 1 1
       96 LOADB                            R14 1
       97 CALL                             R11 3 1
       98 GETUPVAL                         R12 9
       99 GETTABLEKS                       R12 R12 K17 ["useMemo"]
      101 NEWCLOSURE                       R13 P0
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R3
      104 NEWTABLE                         R14 0 2
      106 MOVE                             R15 R3
      107 MOVE                             R16 R10
      108 SETLIST                          R14 R15 2 [1]
      110 CALL                             R12 2 1
      111 GETUPVAL                         R13 9
      112 GETTABLEKS                       R13 R13 K18 ["createElement"]
      114 GETUPVAL                         R14 10
      115 GETUPVAL                         R15 11
      116 MOVE                             R16 R2
      117 DUPTABLE                         R17 K32 [{"onActivated", "Size", "selection", "isDisabled", "stateLayer", "padding", "cornerRadius", "backgroundStyle", "stroke", "cursor", "tag", "GroupTransparency", "ref"}]
      118 GETTABLEKS                       R18 R2 K19 ["onActivated"]
      120 SETTABLEKS                       R18 R17 K19 ["onActivated"]
      122 GETTABLEKS                       R18 R9 K14 ["container"]
      124 GETTABLEKS                       R18 R18 K6 ["size"]
      126 SETTABLEKS                       R18 R17 K20 ["Size"]
      128 DUPTABLE                         R18 K38 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      129 GETTABLEKS                       R20 R2 K22 ["isDisabled"]
      131 JUMPIFNOT                        R20 ; [+2]
      132 LOADB                            R19 0
      133 JUMP                             ; [+2]
      134 GETTABLEKS                       R19 R2 K33 ["Selectable"]
      136 SETTABLEKS                       R19 R18 K33 ["Selectable"]
      138 GETTABLEKS                       R19 R2 K34 ["NextSelectionUp"]
      140 SETTABLEKS                       R19 R18 K34 ["NextSelectionUp"]
      142 GETTABLEKS                       R19 R2 K35 ["NextSelectionDown"]
      144 SETTABLEKS                       R19 R18 K35 ["NextSelectionDown"]
      146 GETTABLEKS                       R19 R2 K36 ["NextSelectionLeft"]
      148 SETTABLEKS                       R19 R18 K36 ["NextSelectionLeft"]
      150 GETTABLEKS                       R19 R2 K37 ["NextSelectionRight"]
      152 SETTABLEKS                       R19 R18 K37 ["NextSelectionRight"]
      154 SETTABLEKS                       R18 R17 K21 ["selection"]
      156 GETTABLEKS                       R18 R2 K22 ["isDisabled"]
      158 SETTABLEKS                       R18 R17 K22 ["isDisabled"]
      160 GETTABLEKS                       R18 R9 K14 ["container"]
      162 GETTABLEKS                       R18 R18 K23 ["stateLayer"]
      164 SETTABLEKS                       R18 R17 K23 ["stateLayer"]
      166 GETTABLEKS                       R18 R9 K14 ["container"]
      168 GETTABLEKS                       R18 R18 K24 ["padding"]
      170 SETTABLEKS                       R18 R17 K24 ["padding"]
      172 SETTABLEKS                       R10 R17 K25 ["cornerRadius"]
      174 GETTABLEKS                       R18 R9 K14 ["container"]
      176 GETTABLEKS                       R18 R18 K39 ["style"]
      178 SETTABLEKS                       R18 R17 K26 ["backgroundStyle"]
      180 GETTABLEKS                       R18 R9 K14 ["container"]
      182 GETTABLEKS                       R18 R18 K27 ["stroke"]
      184 SETTABLEKS                       R18 R17 K27 ["stroke"]
      186 SETTABLEKS                       R12 R17 K28 ["cursor"]
      188 GETUPVAL                         R19 12
      189 GETTABLEKS                       R19 R19 K40 ["FoundationIconButtonNoListLayout"]
      191 JUMPIFNOT                        R19 ; [+2]
      192 LOADNIL                          R18
      193 JUMP                             ; [+4]
      194 GETTABLEKS                       R18 R9 K14 ["container"]
      196 GETTABLEKS                       R18 R18 K29 ["tag"]
      198 SETTABLEKS                       R18 R17 K29 ["tag"]
      200 GETTABLEKS                       R19 R2 K22 ["isDisabled"]
      202 JUMPIFNOT                        R19 ; [+4]
      203 GETUPVAL                         R18 13
      204 GETTABLEKS                       R18 R18 K41 ["DISABLED_TRANSPARENCY"]
      206 JUMP                             ; [+1]
      207 LOADNIL                          R18
      208 SETTABLEKS                       R18 R17 K30 ["GroupTransparency"]
      210 SETTABLEKS                       R1 R17 K31 ["ref"]
      212 CALL                             R15 2 1
      213 DUPTABLE                         R16 K43 [{"Icon"}]
      214 GETUPVAL                         R18 4
      215 MOVE                             R19 R5
      216 CALL                             R18 1 1
      217 JUMPIFNOT                        R18 ; [+67]
      218 GETUPVAL                         R17 9
      219 GETTABLEKS                       R17 R17 K18 ["createElement"]
      221 GETUPVAL                         R18 14
      222 DUPTABLE                         R19 K49 [{["Text"], ["fontStyle"], ["tag"] = "anchor-center-center position-center-center", ["Size"], ["textStyle"], ["testId"]}]
      223 GETUPVAL                         R21 15
      224 MOVE                             R22 R5
      225 CALL                             R21 1 1
      226 JUMPIFNOT                        R21 ; [+5]
      227 GETUPVAL                         R21 16
      228 GETTABLE                         R20 R21 R5
      229 GETTABLEKS                       R20 R20 K4 ["name"]
      231 JUMP                             ; [+1]
      232 MOVE                             R20 R5
      233 SETTABLEKS                       R20 R19 K44 ["Text"]
      235 DUPTABLE                         R20 K52 [{"Font", "FontSize"}]
      236 GETUPVAL                         R22 17
      237 GETTABLEKS                       R22 R22 K50 ["Font"]
      239 GETUPVAL                         R24 15
      240 MOVE                             R25 R5
      241 CALL                             R24 1 1
      242 JUMPIFNOT                        R24 ; [+5]
      243 GETUPVAL                         R24 16
      244 GETTABLE                         R23 R24 R5
      245 GETTABLEKS                       R23 R23 K5 ["variant"]
      247 JUMP                             ; [+7]
      248 MOVE                             R23 R6
      249 JUMPIF                           R23 ; [+5]
      250 GETUPVAL                         R23 17
      251 GETTABLEKS                       R23 R23 K53 ["IconVariant"]
      253 GETTABLEKS                       R23 R23 K54 ["Regular"]
      255 GETTABLE                         R21 R22 R23
      256 SETTABLEKS                       R21 R20 K50 ["Font"]
      258 GETTABLEKS                       R21 R11 K55 ["Y"]
      260 GETTABLEKS                       R21 R21 K56 ["Offset"]
      262 SETTABLEKS                       R21 R20 K51 ["FontSize"]
      264 SETTABLEKS                       R20 R19 K45 ["fontStyle"]
      266 SETTABLEKS                       R11 R19 K20 ["Size"]
      268 GETTABLEKS                       R20 R9 K57 ["content"]
      270 GETTABLEKS                       R20 R20 K39 ["style"]
      272 SETTABLEKS                       R20 R19 K47 ["textStyle"]
      274 LOADK                            R21 K58 ["%*--icon"]
      275 GETTABLEKS                       R23 R2 K48 ["testId"]
      277 NAMECALL                         R21 R21 K59 ["format"]
      279 CALL                             R21 2 1
      280 MOVE                             R20 R21
      281 SETTABLEKS                       R20 R19 K48 ["testId"]
      283 CALL                             R17 2 1
      284 JUMP                             ; [+37]
      285 GETUPVAL                         R17 9
      286 GETTABLEKS                       R17 R17 K18 ["createElement"]
      288 GETUPVAL                         R18 18
      289 DUPTABLE                         R19 K63 [{["tag"] = "anchor-center-center position-center-center", ["Image"], ["Size"], ["imageStyle"], ["scale"], ["testId"]}]
      290 SETTABLEKS                       R5 R19 K60 ["Image"]
      292 JUMPIFNOT                        R7 ; [+8]
      293 GETIMPORT                        R20 K66 [UDim2.fromOffset]
      295 GETTABLEKS                       R21 R7 K67 ["X"]
      297 GETTABLEKS                       R22 R7 K55 ["Y"]
      299 CALL                             R20 2 1
      300 JUMP                             ; [+1]
      301 MOVE                             R20 R11
      302 SETTABLEKS                       R20 R19 K20 ["Size"]
      304 GETTABLEKS                       R20 R9 K57 ["content"]
      306 GETTABLEKS                       R20 R20 K39 ["style"]
      308 SETTABLEKS                       R20 R19 K61 ["imageStyle"]
      310 SETTABLEKS                       R8 R19 K62 ["scale"]
      312 LOADK                            R21 K68 ["%*--image"]
      313 GETTABLEKS                       R23 R2 K48 ["testId"]
      315 NAMECALL                         R21 R21 K59 ["format"]
      317 CALL                             R21 2 1
      318 MOVE                             R20 R21
      319 SETTABLEKS                       R20 R19 K48 ["testId"]
      321 CALL                             R17 2 1
      322 SETTABLEKS                       R17 R16 K42 ["Icon"]
      324 CALL                             R13 3 -1
      325 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["BuilderIcons"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R6 R4 K12 ["Migration"]
       28 GETTABLEKS                       R5 R6 K11 ["uiblox"]
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R0 K13 ["Enums"]
       34 GETTABLEKS                       R7 R7 K14 ["InputSize"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R0 K13 ["Enums"]
       41 GETTABLEKS                       R8 R8 K15 ["IconSize"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R9 R0 K13 ["Enums"]
       48 GETTABLEKS                       R9 R9 K16 ["ButtonVariant"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R10 R0 K13 ["Enums"]
       55 GETTABLEKS                       R10 R10 K17 ["Radius"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K6 [require]
       60 GETTABLEKS                       R11 R0 K18 ["Providers"]
       62 GETTABLEKS                       R11 R11 K19 ["Style"]
       64 GETTABLEKS                       R11 R11 K20 ["useTokens"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R12 R0 K18 ["Providers"]
       71 GETTABLEKS                       R12 R12 K19 ["Style"]
       73 GETTABLEKS                       R12 R12 K21 ["PresentationContext"]
       75 CALL                             R11 1 1
       76 GETTABLEKS                       R11 R11 K22 ["usePresentationContext"]
       78 GETIMPORT                        R12 K6 [require]
       80 GETTABLEKS                       R13 R0 K7 ["Utility"]
       82 GETTABLEKS                       R13 R13 K23 ["withCommonProps"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K6 [require]
       87 GETTABLEKS                       R14 R0 K7 ["Utility"]
       89 GETTABLEKS                       R14 R14 K24 ["withDefaults"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K6 [require]
       94 GETTABLEKS                       R15 R0 K7 ["Utility"]
       96 GETTABLEKS                       R15 R15 K25 ["useIconSize"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K6 [require]
      101 GETTABLEKS                       R16 R0 K7 ["Utility"]
      103 GETTABLEKS                       R16 R16 K26 ["getIconScale"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K6 [require]
      108 GETIMPORT                        R17 K1 [script]
      110 GETTABLEKS                       R17 R17 K4 ["Parent"]
      112 GETTABLEKS                       R17 R17 K27 ["useIconButtonVariants"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K6 [require]
      117 GETTABLEKS                       R18 R0 K7 ["Utility"]
      119 GETTABLEKS                       R18 R18 K28 ["isBuilderIcon"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K6 [require]
      124 GETTABLEKS                       R19 R0 K7 ["Utility"]
      126 GETTABLEKS                       R19 R19 K29 ["iconMigrationUtils"]
      128 CALL                             R18 1 1
      129 GETTABLEKS                       R19 R18 K30 ["isMigrated"]
      131 GETTABLEKS                       R20 R18 K31 ["isBuilderOrMigratedIcon"]
      133 GETIMPORT                        R21 K6 [require]
      135 GETTABLEKS                       R22 R0 K32 ["Constants"]
      137 CALL                             R21 1 1
      138 GETIMPORT                        R22 K6 [require]
      140 GETTABLEKS                       R23 R0 K33 ["Components"]
      142 GETTABLEKS                       R23 R23 K34 ["View"]
      144 CALL                             R22 1 1
      145 GETIMPORT                        R23 K6 [require]
      147 GETTABLEKS                       R24 R0 K33 ["Components"]
      149 GETTABLEKS                       R24 R24 K35 ["Text"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K6 [require]
      154 GETTABLEKS                       R25 R0 K33 ["Components"]
      156 GETTABLEKS                       R25 R25 K36 ["Image"]
      158 CALL                             R24 1 1
      159 GETIMPORT                        R25 K6 [require]
      161 GETTABLEKS                       R26 R0 K33 ["Components"]
      163 GETTABLEKS                       R26 R26 K37 ["Types"]
      165 CALL                             R25 1 1
      166 DUPTABLE                         R26 K45 [{["isDisabled"] = False, ["size"], ["isCircular"] = False, ["variant"], ["testId"] = "--foundation-icon-button"}]
      167 GETTABLEKS                       R27 R6 K46 ["Medium"]
      169 SETTABLEKS                       R27 R26 K40 ["size"]
      171 GETTABLEKS                       R27 R8 K7 ["Utility"]
      173 SETTABLEKS                       R27 R26 K42 ["variant"]
      175 DUPCLOSURE                       R27 K47 [PROTO_1]
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R26
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R20
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R22
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R21
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R19
      192 CAPTURE                          VAL R5
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R24
      195 GETTABLEKS                       R28 R3 K48 ["memo"]
      197 GETTABLEKS                       R29 R3 K49 ["forwardRef"]
      199 MOVE                             R30 R27
      200 CALL                             R29 1 -1
      201 CALL                             R28 -1 -1
      202 RETURN                           R28 -1
