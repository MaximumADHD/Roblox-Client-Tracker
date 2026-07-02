PROTO_0:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["icon"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+8]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["leading"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["trailing"]
       13 RETURN                           R2 2
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["icon"]
       17 FASTCALL1                        TYPEOF R3 ; [+2]
       18 GETIMPORT                        R2 K4 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K5 ["string"] ; [+9]
       23 DUPTABLE                         R2 K7 [{"iconName"}]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K0 ["icon"]
       27 SETTABLEKS                       R3 R2 K6 ["iconName"]
       29 MOVE                             R0 R2
       30 JUMP                             ; [+21]
       31 DUPTABLE                         R2 K7 [{"iconName"}]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K0 ["icon"]
       35 GETTABLEKS                       R3 R3 K8 ["name"]
       37 SETTABLEKS                       R3 R2 K6 ["iconName"]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K0 ["icon"]
       42 GETTABLEKS                       R3 R3 K9 ["position"]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K10 ["Left"]
       47 JUMPIFNOTEQ                      R3 R4 ; [+3]
       49 MOVE                             R0 R2
       50 JUMP                             ; [+1]
       51 MOVE                             R1 R2
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K1 ["leading"]
       55 OR                               R2 R3 R0
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R4 R4 K2 ["trailing"]
       59 OR                               R3 R4 R1
       60 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["useMemo"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U4
       12 NEWTABLE                         R6 0 3
       14 GETTABLEKS                       R7 R2 K1 ["leading"]
       16 GETTABLEKS                       R8 R2 K2 ["icon"]
       18 GETTABLEKS                       R9 R2 K3 ["trailing"]
       20 SETLIST                          R6 R7 3 [1]
       22 CALL                             R4 2 2
       23 GETUPVAL                         R6 5
       24 MOVE                             R7 R3
       25 GETTABLEKS                       R8 R2 K4 ["size"]
       27 GETTABLEKS                       R9 R2 K5 ["isChecked"]
       29 JUMPIFNOTEQKNIL                  R4 ; [+2]
       31 LOADB                            R10 0 +1
       32 LOADB                            R10 1
       33 JUMPIFNOTEQKNIL                  R5 ; [+2]
       35 LOADB                            R11 0 +1
       36 LOADB                            R11 1
       37 CALL                             R6 5 1
       38 GETTABLEKS                       R8 R3 K6 ["Stroke"]
       40 GETTABLEKS                       R8 R8 K7 ["Thicker"]
       42 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       43 GETIMPORT                        R7 K10 [math.floor]
       45 CALL                             R7 1 1
       46 GETUPVAL                         R8 3
       47 GETTABLEKS                       R8 R8 K11 ["createElement"]
       49 GETUPVAL                         R9 6
       50 GETUPVAL                         R10 7
       51 MOVE                             R11 R2
       52 DUPTABLE                         R12 K22 [{"isDisabled", "selection", "onActivated", "stateLayer", "backgroundStyle", "padding", "cursor", "tag", "ref", "GroupTransparency"}]
       53 GETTABLEKS                       R13 R2 K12 ["isDisabled"]
       55 SETTABLEKS                       R13 R12 K12 ["isDisabled"]
       57 DUPTABLE                         R13 K28 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
       58 GETTABLEKS                       R15 R2 K12 ["isDisabled"]
       60 JUMPIFNOT                        R15 ; [+2]
       61 LOADB                            R14 0
       62 JUMP                             ; [+2]
       63 GETTABLEKS                       R14 R2 K23 ["Selectable"]
       65 SETTABLEKS                       R14 R13 K23 ["Selectable"]
       67 GETTABLEKS                       R14 R2 K24 ["NextSelectionUp"]
       69 SETTABLEKS                       R14 R13 K24 ["NextSelectionUp"]
       71 GETTABLEKS                       R14 R2 K25 ["NextSelectionDown"]
       73 SETTABLEKS                       R14 R13 K25 ["NextSelectionDown"]
       75 GETTABLEKS                       R14 R2 K26 ["NextSelectionLeft"]
       77 SETTABLEKS                       R14 R13 K26 ["NextSelectionLeft"]
       79 GETTABLEKS                       R14 R2 K27 ["NextSelectionRight"]
       81 SETTABLEKS                       R14 R13 K27 ["NextSelectionRight"]
       83 SETTABLEKS                       R13 R12 K13 ["selection"]
       85 GETTABLEKS                       R13 R2 K14 ["onActivated"]
       87 SETTABLEKS                       R13 R12 K14 ["onActivated"]
       89 GETTABLEKS                       R14 R2 K5 ["isChecked"]
       91 JUMPIFNOT                        R14 ; [+7]
       92 DUPTABLE                         R13 K30 [{"mode"}]
       93 GETUPVAL                         R14 8
       94 GETTABLEKS                       R14 R14 K31 ["Inverse"]
       96 SETTABLEKS                       R14 R13 K29 ["mode"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R13
      100 SETTABLEKS                       R13 R12 K15 ["stateLayer"]
      102 GETTABLEKS                       R13 R6 K32 ["chip"]
      104 GETTABLEKS                       R13 R13 K16 ["backgroundStyle"]
      106 SETTABLEKS                       R13 R12 K16 ["backgroundStyle"]
      108 GETTABLEKS                       R13 R6 K32 ["chip"]
      110 GETTABLEKS                       R13 R13 K17 ["padding"]
      112 SETTABLEKS                       R13 R12 K17 ["padding"]
      114 DUPTABLE                         R13 K36 [{"radius", "offset", "borderWidth"}]
      115 GETIMPORT                        R14 K39 [UDim.new]
      117 LOADN                            R15 0
      118 GETTABLEKS                       R16 R3 K40 ["Radius"]
      120 GETTABLEKS                       R16 R16 K41 ["Circle"]
      122 CALL                             R14 2 1
      123 SETTABLEKS                       R14 R13 K33 ["radius"]
      125 MULK                             R14 R7 K42 [2]
      126 SETTABLEKS                       R14 R13 K34 ["offset"]
      128 SETTABLEKS                       R7 R13 K35 ["borderWidth"]
      130 SETTABLEKS                       R13 R12 K18 ["cursor"]
      132 GETTABLEKS                       R13 R6 K32 ["chip"]
      134 GETTABLEKS                       R13 R13 K19 ["tag"]
      136 SETTABLEKS                       R13 R12 K19 ["tag"]
      138 SETTABLEKS                       R1 R12 K20 ["ref"]
      140 GETTABLEKS                       R14 R2 K12 ["isDisabled"]
      142 JUMPIFNOT                        R14 ; [+4]
      143 GETUPVAL                         R13 9
      144 GETTABLEKS                       R13 R13 K43 ["DISABLED_TRANSPARENCY"]
      146 JUMP                             ; [+1]
      147 LOADN                            R13 0
      148 SETTABLEKS                       R13 R12 K21 ["GroupTransparency"]
      150 CALL                             R10 2 1
      151 GETUPVAL                         R11 3
      152 GETTABLEKS                       R11 R11 K11 ["createElement"]
      154 GETUPVAL                         R12 10
      155 GETTABLEKS                       R12 R12 K44 ["Provider"]
      157 DUPTABLE                         R13 K46 [{"value"}]
      158 DUPTABLE                         R14 K50 [{["colorMode"], ["isIconSize"] = True}]
      159 GETTABLEKS                       R16 R2 K5 ["isChecked"]
      161 JUMPIFNOT                        R16 ; [+4]
      162 GETUPVAL                         R15 11
      163 GETTABLEKS                       R15 R15 K31 ["Inverse"]
      165 JUMP                             ; [+3]
      166 GETUPVAL                         R15 11
      167 GETTABLEKS                       R15 R15 K51 ["Color"]
      169 SETTABLEKS                       R15 R14 K47 ["colorMode"]
      171 SETTABLEKS                       R14 R13 K45 ["value"]
      173 DUPTABLE                         R14 K55 [{"Leading", "Text", "Trailing"}]
      174 JUMPIFNOT                        R4 ; [+38]
      175 GETUPVAL                         R15 3
      176 GETTABLEKS                       R15 R15 K11 ["createElement"]
      178 GETUPVAL                         R16 12
      179 DUPTABLE                         R17 K61 [{["isLeading"] = True, ["config"], ["size"], ["chipBackgroundStyle"], ["contentStyle"], ["isDisabled"], ["testId"]}]
      180 SETTABLEKS                       R4 R17 K57 ["config"]
      182 GETTABLEKS                       R18 R2 K4 ["size"]
      184 SETTABLEKS                       R18 R17 K4 ["size"]
      186 GETTABLEKS                       R18 R6 K32 ["chip"]
      188 GETTABLEKS                       R18 R18 K16 ["backgroundStyle"]
      190 SETTABLEKS                       R18 R17 K58 ["chipBackgroundStyle"]
      192 GETTABLEKS                       R18 R6 K62 ["text"]
      194 GETTABLEKS                       R18 R18 K59 ["contentStyle"]
      196 SETTABLEKS                       R18 R17 K59 ["contentStyle"]
      198 GETTABLEKS                       R18 R2 K12 ["isDisabled"]
      200 SETTABLEKS                       R18 R17 K12 ["isDisabled"]
      202 LOADK                            R19 K63 ["%*--leading-accessory"]
      203 GETTABLEKS                       R21 R2 K60 ["testId"]
      205 NAMECALL                         R19 R19 K64 ["format"]
      207 CALL                             R19 2 1
      208 MOVE                             R18 R19
      209 SETTABLEKS                       R18 R17 K60 ["testId"]
      211 CALL                             R15 2 1
      212 JUMP                             ; [+1]
      213 LOADNIL                          R15
      214 SETTABLEKS                       R15 R14 K52 ["Leading"]
      216 GETTABLEKS                       R16 R2 K62 ["text"]
      218 JUMPIFNOT                        R16 ; [+42]
      219 GETTABLEKS                       R16 R2 K62 ["text"]
      221 JUMPIFEQKS                       R16 K65 [""] ; [+39]
      223 GETUPVAL                         R15 3
      224 GETTABLEKS                       R15 R15 K11 ["createElement"]
      226 GETUPVAL                         R16 13
      227 DUPTABLE                         R17 K68 [{["Text"], ["textStyle"], ["LayoutOrder"] = 2, ["tag"], ["padding"], ["testId"]}]
      228 GETTABLEKS                       R18 R2 K62 ["text"]
      230 SETTABLEKS                       R18 R17 K53 ["Text"]
      232 GETTABLEKS                       R18 R6 K62 ["text"]
      234 GETTABLEKS                       R18 R18 K59 ["contentStyle"]
      236 SETTABLEKS                       R18 R17 K66 ["textStyle"]
      238 GETTABLEKS                       R18 R6 K62 ["text"]
      240 GETTABLEKS                       R18 R18 K19 ["tag"]
      242 SETTABLEKS                       R18 R17 K19 ["tag"]
      244 GETTABLEKS                       R18 R6 K62 ["text"]
      246 GETTABLEKS                       R18 R18 K17 ["padding"]
      248 SETTABLEKS                       R18 R17 K17 ["padding"]
      250 LOADK                            R19 K69 ["%*--text"]
      251 GETTABLEKS                       R21 R2 K60 ["testId"]
      253 NAMECALL                         R19 R19 K64 ["format"]
      255 CALL                             R19 2 1
      256 MOVE                             R18 R19
      257 SETTABLEKS                       R18 R17 K60 ["testId"]
      259 CALL                             R15 2 1
      260 JUMP                             ; [+1]
      261 LOADNIL                          R15
      262 SETTABLEKS                       R15 R14 K53 ["Text"]
      264 JUMPIFNOT                        R5 ; [+38]
      265 GETUPVAL                         R15 3
      266 GETTABLEKS                       R15 R15 K11 ["createElement"]
      268 GETUPVAL                         R16 12
      269 DUPTABLE                         R17 K71 [{["isLeading"] = False, ["config"], ["size"], ["chipBackgroundStyle"], ["contentStyle"], ["isDisabled"], ["testId"]}]
      270 SETTABLEKS                       R5 R17 K57 ["config"]
      272 GETTABLEKS                       R18 R2 K4 ["size"]
      274 SETTABLEKS                       R18 R17 K4 ["size"]
      276 GETTABLEKS                       R18 R6 K32 ["chip"]
      278 GETTABLEKS                       R18 R18 K16 ["backgroundStyle"]
      280 SETTABLEKS                       R18 R17 K58 ["chipBackgroundStyle"]
      282 GETTABLEKS                       R18 R6 K62 ["text"]
      284 GETTABLEKS                       R18 R18 K59 ["contentStyle"]
      286 SETTABLEKS                       R18 R17 K59 ["contentStyle"]
      288 GETTABLEKS                       R18 R2 K12 ["isDisabled"]
      290 SETTABLEKS                       R18 R17 K12 ["isDisabled"]
      292 LOADK                            R19 K72 ["%*--trailing-accessory"]
      293 GETTABLEKS                       R21 R2 K60 ["testId"]
      295 NAMECALL                         R19 R19 K64 ["format"]
      297 CALL                             R19 2 1
      298 MOVE                             R18 R19
      299 SETTABLEKS                       R18 R17 K60 ["testId"]
      301 CALL                             R15 2 1
      302 JUMP                             ; [+1]
      303 LOADNIL                          R15
      304 SETTABLEKS                       R15 R14 K54 ["Trailing"]
      306 CALL                             R11 3 -1
      307 CALL                             R8 -1 -1
      308 RETURN                           R8 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Constants"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Providers"]
       23 GETTABLEKS                       R5 R5 K10 ["Style"]
       25 GETTABLEKS                       R5 R5 K11 ["PresentationContext"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Components"]
       32 GETTABLEKS                       R6 R6 K13 ["Text"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R7 K14 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Components"]
       46 GETTABLEKS                       R8 R8 K15 ["View"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K9 ["Providers"]
       53 GETTABLEKS                       R9 R9 K10 ["Style"]
       55 GETTABLEKS                       R9 R9 K16 ["useTokens"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K17 ["Utility"]
       62 GETTABLEKS                       R10 R10 K18 ["withCommonProps"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K17 ["Utility"]
       69 GETTABLEKS                       R11 R11 K19 ["withDefaults"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETIMPORT                        R12 K1 [script]
       76 GETTABLEKS                       R12 R12 K4 ["Parent"]
       78 GETTABLEKS                       R12 R12 K20 ["Accessory"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R13 R0 K21 ["Enums"]
       85 GETTABLEKS                       R13 R13 K22 ["IconPosition"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R14 R0 K21 ["Enums"]
       92 GETTABLEKS                       R14 R14 K23 ["ColorMode"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R15 R0 K21 ["Enums"]
       99 GETTABLEKS                       R15 R15 K24 ["StateLayerMode"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K6 [require]
      104 GETTABLEKS                       R16 R0 K21 ["Enums"]
      106 GETTABLEKS                       R16 R16 K25 ["CursorType"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K6 [require]
      111 GETTABLEKS                       R17 R0 K21 ["Enums"]
      113 GETTABLEKS                       R17 R17 K26 ["ChipSize"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K6 [require]
      118 GETIMPORT                        R18 K1 [script]
      120 GETTABLEKS                       R18 R18 K4 ["Parent"]
      122 GETTABLEKS                       R18 R18 K27 ["useChipVariants"]
      124 CALL                             R17 1 1
      125 DUPTABLE                         R18 K36 [{["isChecked"] = False, ["Selectable"] = True, ["isDisabled"] = False, ["size"], ["testId"] = "--foundation-chip"}]
      126 GETTABLEKS                       R19 R16 K37 ["Medium"]
      128 SETTABLEKS                       R19 R18 K33 ["size"]
      130 DUPCLOSURE                       R19 K38 [PROTO_1]
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R5
      145 GETTABLEKS                       R20 R2 K39 ["memo"]
      147 GETTABLEKS                       R21 R2 K40 ["forwardRef"]
      149 MOVE                             R22 R19
      150 CALL                             R21 1 -1
      151 CALL                             R20 -1 -1
      152 RETURN                           R20 -1
