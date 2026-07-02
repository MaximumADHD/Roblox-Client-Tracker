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
       27 GETTABLEKS                       R9 R2 K5 ["variant"]
       29 GETTABLEKS                       R10 R2 K6 ["isChecked"]
       31 JUMPIFNOTEQKNIL                  R4 ; [+2]
       33 LOADB                            R11 0 +1
       34 LOADB                            R11 1
       35 JUMPIFNOTEQKNIL                  R5 ; [+2]
       37 LOADB                            R12 0 +1
       38 LOADB                            R12 1
       39 CALL                             R6 6 1
       40 GETTABLEKS                       R8 R3 K7 ["Stroke"]
       42 GETTABLEKS                       R8 R8 K8 ["Thicker"]
       44 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       45 GETIMPORT                        R7 K11 [math.floor]
       47 CALL                             R7 1 1
       48 GETUPVAL                         R8 3
       49 GETTABLEKS                       R8 R8 K12 ["createElement"]
       51 GETUPVAL                         R9 6
       52 GETUPVAL                         R10 7
       53 MOVE                             R11 R2
       54 DUPTABLE                         R12 K23 [{"isDisabled", "selection", "onActivated", "stateLayer", "backgroundStyle", "padding", "cursor", "tag", "ref", "GroupTransparency"}]
       55 GETTABLEKS                       R13 R2 K13 ["isDisabled"]
       57 SETTABLEKS                       R13 R12 K13 ["isDisabled"]
       59 DUPTABLE                         R13 K29 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
       60 GETTABLEKS                       R15 R2 K13 ["isDisabled"]
       62 JUMPIFNOT                        R15 ; [+2]
       63 LOADB                            R14 0
       64 JUMP                             ; [+2]
       65 GETTABLEKS                       R14 R2 K24 ["Selectable"]
       67 SETTABLEKS                       R14 R13 K24 ["Selectable"]
       69 GETTABLEKS                       R14 R2 K25 ["NextSelectionUp"]
       71 SETTABLEKS                       R14 R13 K25 ["NextSelectionUp"]
       73 GETTABLEKS                       R14 R2 K26 ["NextSelectionDown"]
       75 SETTABLEKS                       R14 R13 K26 ["NextSelectionDown"]
       77 GETTABLEKS                       R14 R2 K27 ["NextSelectionLeft"]
       79 SETTABLEKS                       R14 R13 K27 ["NextSelectionLeft"]
       81 GETTABLEKS                       R14 R2 K28 ["NextSelectionRight"]
       83 SETTABLEKS                       R14 R13 K28 ["NextSelectionRight"]
       85 SETTABLEKS                       R13 R12 K14 ["selection"]
       87 GETTABLEKS                       R13 R2 K15 ["onActivated"]
       89 SETTABLEKS                       R13 R12 K15 ["onActivated"]
       91 GETTABLEKS                       R14 R2 K6 ["isChecked"]
       93 JUMPIFNOT                        R14 ; [+7]
       94 DUPTABLE                         R13 K31 [{"mode"}]
       95 GETUPVAL                         R14 8
       96 GETTABLEKS                       R14 R14 K32 ["Inverse"]
       98 SETTABLEKS                       R14 R13 K30 ["mode"]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R13
      102 SETTABLEKS                       R13 R12 K16 ["stateLayer"]
      104 GETTABLEKS                       R13 R6 K33 ["chip"]
      106 GETTABLEKS                       R13 R13 K17 ["backgroundStyle"]
      108 SETTABLEKS                       R13 R12 K17 ["backgroundStyle"]
      110 GETTABLEKS                       R13 R6 K33 ["chip"]
      112 GETTABLEKS                       R13 R13 K18 ["padding"]
      114 SETTABLEKS                       R13 R12 K18 ["padding"]
      116 DUPTABLE                         R13 K37 [{"radius", "offset", "borderWidth"}]
      117 GETIMPORT                        R14 K40 [UDim.new]
      119 LOADN                            R15 0
      120 GETTABLEKS                       R16 R3 K41 ["Radius"]
      122 GETTABLEKS                       R16 R16 K42 ["Circle"]
      124 CALL                             R14 2 1
      125 SETTABLEKS                       R14 R13 K34 ["radius"]
      127 MULK                             R14 R7 K43 [2]
      128 SETTABLEKS                       R14 R13 K35 ["offset"]
      130 SETTABLEKS                       R7 R13 K36 ["borderWidth"]
      132 SETTABLEKS                       R13 R12 K19 ["cursor"]
      134 GETTABLEKS                       R13 R6 K33 ["chip"]
      136 GETTABLEKS                       R13 R13 K20 ["tag"]
      138 SETTABLEKS                       R13 R12 K20 ["tag"]
      140 SETTABLEKS                       R1 R12 K21 ["ref"]
      142 GETTABLEKS                       R14 R2 K13 ["isDisabled"]
      144 JUMPIFNOT                        R14 ; [+4]
      145 GETUPVAL                         R13 9
      146 GETTABLEKS                       R13 R13 K44 ["DISABLED_TRANSPARENCY"]
      148 JUMP                             ; [+1]
      149 LOADN                            R13 0
      150 SETTABLEKS                       R13 R12 K22 ["GroupTransparency"]
      152 CALL                             R10 2 1
      153 GETUPVAL                         R11 3
      154 GETTABLEKS                       R11 R11 K12 ["createElement"]
      156 GETUPVAL                         R12 10
      157 GETTABLEKS                       R12 R12 K45 ["Provider"]
      159 DUPTABLE                         R13 K47 [{"value"}]
      160 DUPTABLE                         R14 K51 [{["colorMode"], ["isIconSize"] = True}]
      161 GETTABLEKS                       R16 R2 K6 ["isChecked"]
      163 JUMPIFNOT                        R16 ; [+4]
      164 GETUPVAL                         R15 11
      165 GETTABLEKS                       R15 R15 K32 ["Inverse"]
      167 JUMP                             ; [+3]
      168 GETUPVAL                         R15 11
      169 GETTABLEKS                       R15 R15 K52 ["Color"]
      171 SETTABLEKS                       R15 R14 K48 ["colorMode"]
      173 SETTABLEKS                       R14 R13 K46 ["value"]
      175 DUPTABLE                         R14 K56 [{"Leading", "Text", "Trailing"}]
      176 JUMPIFNOT                        R4 ; [+38]
      177 GETUPVAL                         R15 3
      178 GETTABLEKS                       R15 R15 K12 ["createElement"]
      180 GETUPVAL                         R16 12
      181 DUPTABLE                         R17 K62 [{["isLeading"] = True, ["config"], ["size"], ["chipBackgroundStyle"], ["contentStyle"], ["isDisabled"], ["testId"]}]
      182 SETTABLEKS                       R4 R17 K58 ["config"]
      184 GETTABLEKS                       R18 R2 K4 ["size"]
      186 SETTABLEKS                       R18 R17 K4 ["size"]
      188 GETTABLEKS                       R18 R6 K33 ["chip"]
      190 GETTABLEKS                       R18 R18 K17 ["backgroundStyle"]
      192 SETTABLEKS                       R18 R17 K59 ["chipBackgroundStyle"]
      194 GETTABLEKS                       R18 R6 K63 ["text"]
      196 GETTABLEKS                       R18 R18 K60 ["contentStyle"]
      198 SETTABLEKS                       R18 R17 K60 ["contentStyle"]
      200 GETTABLEKS                       R18 R2 K13 ["isDisabled"]
      202 SETTABLEKS                       R18 R17 K13 ["isDisabled"]
      204 LOADK                            R19 K64 ["%*--leading-accessory"]
      205 GETTABLEKS                       R21 R2 K61 ["testId"]
      207 NAMECALL                         R19 R19 K65 ["format"]
      209 CALL                             R19 2 1
      210 MOVE                             R18 R19
      211 SETTABLEKS                       R18 R17 K61 ["testId"]
      213 CALL                             R15 2 1
      214 JUMP                             ; [+1]
      215 LOADNIL                          R15
      216 SETTABLEKS                       R15 R14 K53 ["Leading"]
      218 GETTABLEKS                       R16 R2 K63 ["text"]
      220 JUMPIFNOT                        R16 ; [+42]
      221 GETTABLEKS                       R16 R2 K63 ["text"]
      223 JUMPIFEQKS                       R16 K66 [""] ; [+39]
      225 GETUPVAL                         R15 3
      226 GETTABLEKS                       R15 R15 K12 ["createElement"]
      228 GETUPVAL                         R16 13
      229 DUPTABLE                         R17 K69 [{["Text"], ["textStyle"], ["LayoutOrder"] = 2, ["tag"], ["padding"], ["testId"]}]
      230 GETTABLEKS                       R18 R2 K63 ["text"]
      232 SETTABLEKS                       R18 R17 K54 ["Text"]
      234 GETTABLEKS                       R18 R6 K63 ["text"]
      236 GETTABLEKS                       R18 R18 K60 ["contentStyle"]
      238 SETTABLEKS                       R18 R17 K67 ["textStyle"]
      240 GETTABLEKS                       R18 R6 K63 ["text"]
      242 GETTABLEKS                       R18 R18 K20 ["tag"]
      244 SETTABLEKS                       R18 R17 K20 ["tag"]
      246 GETTABLEKS                       R18 R6 K63 ["text"]
      248 GETTABLEKS                       R18 R18 K18 ["padding"]
      250 SETTABLEKS                       R18 R17 K18 ["padding"]
      252 LOADK                            R19 K70 ["%*--text"]
      253 GETTABLEKS                       R21 R2 K61 ["testId"]
      255 NAMECALL                         R19 R19 K65 ["format"]
      257 CALL                             R19 2 1
      258 MOVE                             R18 R19
      259 SETTABLEKS                       R18 R17 K61 ["testId"]
      261 CALL                             R15 2 1
      262 JUMP                             ; [+1]
      263 LOADNIL                          R15
      264 SETTABLEKS                       R15 R14 K54 ["Text"]
      266 JUMPIFNOT                        R5 ; [+38]
      267 GETUPVAL                         R15 3
      268 GETTABLEKS                       R15 R15 K12 ["createElement"]
      270 GETUPVAL                         R16 12
      271 DUPTABLE                         R17 K72 [{["isLeading"] = False, ["config"], ["size"], ["chipBackgroundStyle"], ["contentStyle"], ["isDisabled"], ["testId"]}]
      272 SETTABLEKS                       R5 R17 K58 ["config"]
      274 GETTABLEKS                       R18 R2 K4 ["size"]
      276 SETTABLEKS                       R18 R17 K4 ["size"]
      278 GETTABLEKS                       R18 R6 K33 ["chip"]
      280 GETTABLEKS                       R18 R18 K17 ["backgroundStyle"]
      282 SETTABLEKS                       R18 R17 K59 ["chipBackgroundStyle"]
      284 GETTABLEKS                       R18 R6 K63 ["text"]
      286 GETTABLEKS                       R18 R18 K60 ["contentStyle"]
      288 SETTABLEKS                       R18 R17 K60 ["contentStyle"]
      290 GETTABLEKS                       R18 R2 K13 ["isDisabled"]
      292 SETTABLEKS                       R18 R17 K13 ["isDisabled"]
      294 LOADK                            R19 K73 ["%*--trailing-accessory"]
      295 GETTABLEKS                       R21 R2 K61 ["testId"]
      297 NAMECALL                         R19 R19 K65 ["format"]
      299 CALL                             R19 2 1
      300 MOVE                             R18 R19
      301 SETTABLEKS                       R18 R17 K61 ["testId"]
      303 CALL                             R15 2 1
      304 JUMP                             ; [+1]
      305 LOADNIL                          R15
      306 SETTABLEKS                       R15 R14 K55 ["Trailing"]
      308 CALL                             R11 3 -1
      309 CALL                             R8 -1 -1
      310 RETURN                           R8 -1

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
      118 GETTABLEKS                       R18 R0 K21 ["Enums"]
      120 GETTABLEKS                       R18 R18 K27 ["ChipVariant"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K6 [require]
      125 GETIMPORT                        R19 K1 [script]
      127 GETTABLEKS                       R19 R19 K4 ["Parent"]
      129 GETTABLEKS                       R19 R19 K28 ["useChipVariants"]
      131 CALL                             R18 1 1
      132 DUPTABLE                         R19 K38 [{["isChecked"] = False, ["Selectable"] = True, ["isDisabled"] = False, ["size"], ["variant"], ["testId"] = "--foundation-chip"}]
      133 GETTABLEKS                       R20 R16 K39 ["Medium"]
      135 SETTABLEKS                       R20 R19 K34 ["size"]
      137 GETTABLEKS                       R20 R17 K40 ["Standard"]
      139 SETTABLEKS                       R20 R19 K35 ["variant"]
      141 DUPCLOSURE                       R20 K41 [PROTO_1]
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R5
      156 GETTABLEKS                       R21 R2 K42 ["memo"]
      158 GETTABLEKS                       R22 R2 K43 ["forwardRef"]
      160 MOVE                             R23 R20
      161 CALL                             R22 1 -1
      162 CALL                             R21 -1 -1
      163 RETURN                           R21 -1
