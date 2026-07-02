PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["leading"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["trailing"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["icon"]
        9 JUMPIFEQKNIL                     R2 ; [+39]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["icon"]
       14 FASTCALL1                        TYPEOF R3 ; [+2]
       15 GETIMPORT                        R2 K4 [typeof]
       17 CALL                             R2 1 1
       18 JUMPIFNOTEQKS                    R2 K5 ["string"] ; [+9]
       20 DUPTABLE                         R2 K7 [{"iconName"}]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K2 ["icon"]
       24 SETTABLEKS                       R3 R2 K6 ["iconName"]
       26 MOVE                             R0 R2
       27 JUMP                             ; [+21]
       28 DUPTABLE                         R2 K7 [{"iconName"}]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K2 ["icon"]
       32 GETTABLEKS                       R3 R3 K8 ["name"]
       34 SETTABLEKS                       R3 R2 K6 ["iconName"]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K2 ["icon"]
       39 GETTABLEKS                       R3 R3 K9 ["position"]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K10 ["Left"]
       44 JUMPIFNOTEQ                      R3 R4 ; [+3]
       46 MOVE                             R0 R2
       47 JUMP                             ; [+1]
       48 MOVE                             R1 R2
       49 FASTCALL1                        TYPEOF R0 ; [+3]
       50 MOVE                             R3 R0
       51 GETIMPORT                        R2 K4 [typeof]
       53 CALL                             R2 1 1
       54 JUMPIFNOTEQKS                    R2 K11 ["table"] ; [+9]
       56 GETTABLEKS                       R2 R0 K12 ["isCircular"]
       58 JUMPIFNOT                        R2 ; [+5]
       59 GETUPVAL                         R2 2
       60 GETTABLEKS                       R2 R2 K13 ["Filled"]
       62 SETTABLEKS                       R2 R0 K14 ["iconVariant"]
       64 FASTCALL1                        TYPEOF R1 ; [+3]
       65 MOVE                             R3 R1
       66 GETIMPORT                        R2 K4 [typeof]
       68 CALL                             R2 1 1
       69 JUMPIFNOTEQKS                    R2 K11 ["table"] ; [+9]
       71 GETTABLEKS                       R2 R1 K12 ["isCircular"]
       73 JUMPIFNOT                        R2 ; [+5]
       74 GETUPVAL                         R2 2
       75 GETTABLEKS                       R2 R2 K13 ["Filled"]
       77 SETTABLEKS                       R2 R1 K14 ["iconVariant"]
       79 RETURN                           R0 2

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 GETUPVAL                         R6 3
        9 GETTABLEKS                       R6 R6 K0 ["FoundationChipBeta"]
       11 JUMPIFNOT                        R6 ; [+21]
       12 GETUPVAL                         R6 4
       13 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 NEWTABLE                         R8 0 3
       21 GETTABLEKS                       R9 R2 K2 ["leading"]
       23 GETTABLEKS                       R10 R2 K3 ["icon"]
       25 GETTABLEKS                       R11 R2 K4 ["trailing"]
       27 SETLIST                          R8 R9 3 [1]
       29 CALL                             R6 2 2
       30 MOVE                             R4 R6
       31 MOVE                             R5 R7
       32 JUMP                             ; [+19]
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U5
       39 NEWTABLE                         R8 0 3
       41 GETTABLEKS                       R9 R2 K2 ["leading"]
       43 GETTABLEKS                       R10 R2 K3 ["icon"]
       45 GETTABLEKS                       R11 R2 K4 ["trailing"]
       47 SETLIST                          R8 R9 3 [1]
       49 CALL                             R6 2 2
       50 MOVE                             R4 R6
       51 MOVE                             R5 R7
       52 GETUPVAL                         R6 7
       53 MOVE                             R7 R3
       54 GETTABLEKS                       R8 R2 K5 ["size"]
       56 GETTABLEKS                       R9 R2 K6 ["variant"]
       58 GETTABLEKS                       R10 R2 K7 ["isChecked"]
       60 JUMPIFNOTEQKNIL                  R4 ; [+2]
       62 LOADB                            R11 0 +1
       63 LOADB                            R11 1
       64 JUMPIFNOTEQKNIL                  R5 ; [+2]
       66 LOADB                            R12 0 +1
       67 LOADB                            R12 1
       68 CALL                             R6 6 1
       69 GETTABLEKS                       R8 R3 K8 ["Stroke"]
       71 GETTABLEKS                       R8 R8 K9 ["Thicker"]
       73 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       74 GETIMPORT                        R7 K12 [math.floor]
       76 CALL                             R7 1 1
       77 GETUPVAL                         R8 4
       78 GETTABLEKS                       R8 R8 K13 ["createElement"]
       80 GETUPVAL                         R9 8
       81 GETUPVAL                         R10 9
       82 MOVE                             R11 R2
       83 DUPTABLE                         R12 K24 [{"isDisabled", "selection", "onActivated", "stateLayer", "backgroundStyle", "padding", "cursor", "tag", "ref", "GroupTransparency"}]
       84 GETTABLEKS                       R13 R2 K14 ["isDisabled"]
       86 SETTABLEKS                       R13 R12 K14 ["isDisabled"]
       88 DUPTABLE                         R13 K30 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
       89 GETTABLEKS                       R15 R2 K14 ["isDisabled"]
       91 JUMPIFNOT                        R15 ; [+2]
       92 LOADB                            R14 0
       93 JUMP                             ; [+2]
       94 GETTABLEKS                       R14 R2 K25 ["Selectable"]
       96 SETTABLEKS                       R14 R13 K25 ["Selectable"]
       98 GETTABLEKS                       R14 R2 K26 ["NextSelectionUp"]
      100 SETTABLEKS                       R14 R13 K26 ["NextSelectionUp"]
      102 GETTABLEKS                       R14 R2 K27 ["NextSelectionDown"]
      104 SETTABLEKS                       R14 R13 K27 ["NextSelectionDown"]
      106 GETTABLEKS                       R14 R2 K28 ["NextSelectionLeft"]
      108 SETTABLEKS                       R14 R13 K28 ["NextSelectionLeft"]
      110 GETTABLEKS                       R14 R2 K29 ["NextSelectionRight"]
      112 SETTABLEKS                       R14 R13 K29 ["NextSelectionRight"]
      114 SETTABLEKS                       R13 R12 K15 ["selection"]
      116 GETTABLEKS                       R13 R2 K16 ["onActivated"]
      118 SETTABLEKS                       R13 R12 K16 ["onActivated"]
      120 GETTABLEKS                       R14 R2 K7 ["isChecked"]
      122 JUMPIFNOT                        R14 ; [+7]
      123 DUPTABLE                         R13 K32 [{"mode"}]
      124 GETUPVAL                         R14 10
      125 GETTABLEKS                       R14 R14 K33 ["Inverse"]
      127 SETTABLEKS                       R14 R13 K31 ["mode"]
      129 JUMP                             ; [+1]
      130 LOADNIL                          R13
      131 SETTABLEKS                       R13 R12 K17 ["stateLayer"]
      133 GETTABLEKS                       R13 R6 K34 ["chip"]
      135 GETTABLEKS                       R13 R13 K18 ["backgroundStyle"]
      137 SETTABLEKS                       R13 R12 K18 ["backgroundStyle"]
      139 GETTABLEKS                       R13 R6 K34 ["chip"]
      141 GETTABLEKS                       R13 R13 K19 ["padding"]
      143 SETTABLEKS                       R13 R12 K19 ["padding"]
      145 DUPTABLE                         R13 K38 [{"radius", "offset", "borderWidth"}]
      146 GETIMPORT                        R14 K41 [UDim.new]
      148 LOADN                            R15 0
      149 GETTABLEKS                       R16 R3 K42 ["Radius"]
      151 GETTABLEKS                       R16 R16 K43 ["Circle"]
      153 CALL                             R14 2 1
      154 SETTABLEKS                       R14 R13 K35 ["radius"]
      156 MULK                             R14 R7 K44 [2]
      157 SETTABLEKS                       R14 R13 K36 ["offset"]
      159 SETTABLEKS                       R7 R13 K37 ["borderWidth"]
      161 SETTABLEKS                       R13 R12 K20 ["cursor"]
      163 GETTABLEKS                       R13 R6 K34 ["chip"]
      165 GETTABLEKS                       R13 R13 K21 ["tag"]
      167 SETTABLEKS                       R13 R12 K21 ["tag"]
      169 SETTABLEKS                       R1 R12 K22 ["ref"]
      171 GETTABLEKS                       R14 R2 K14 ["isDisabled"]
      173 JUMPIFNOT                        R14 ; [+4]
      174 GETUPVAL                         R13 11
      175 GETTABLEKS                       R13 R13 K45 ["DISABLED_TRANSPARENCY"]
      177 JUMP                             ; [+1]
      178 LOADN                            R13 0
      179 SETTABLEKS                       R13 R12 K23 ["GroupTransparency"]
      181 CALL                             R10 2 1
      182 GETUPVAL                         R11 4
      183 GETTABLEKS                       R11 R11 K13 ["createElement"]
      185 GETUPVAL                         R12 12
      186 GETTABLEKS                       R12 R12 K46 ["Provider"]
      188 DUPTABLE                         R13 K48 [{"value"}]
      189 DUPTABLE                         R14 K52 [{["colorMode"], ["isIconSize"] = True}]
      190 GETTABLEKS                       R16 R2 K7 ["isChecked"]
      192 JUMPIFNOT                        R16 ; [+4]
      193 GETUPVAL                         R15 13
      194 GETTABLEKS                       R15 R15 K33 ["Inverse"]
      196 JUMP                             ; [+3]
      197 GETUPVAL                         R15 13
      198 GETTABLEKS                       R15 R15 K53 ["Color"]
      200 SETTABLEKS                       R15 R14 K49 ["colorMode"]
      202 SETTABLEKS                       R14 R13 K47 ["value"]
      204 DUPTABLE                         R14 K57 [{"Leading", "Text", "Trailing"}]
      205 JUMPIFNOT                        R4 ; [+38]
      206 GETUPVAL                         R15 4
      207 GETTABLEKS                       R15 R15 K13 ["createElement"]
      209 GETUPVAL                         R16 14
      210 DUPTABLE                         R17 K63 [{["isLeading"] = True, ["config"], ["size"], ["chipBackgroundStyle"], ["contentStyle"], ["isDisabled"], ["testId"]}]
      211 SETTABLEKS                       R4 R17 K59 ["config"]
      213 GETTABLEKS                       R18 R2 K5 ["size"]
      215 SETTABLEKS                       R18 R17 K5 ["size"]
      217 GETTABLEKS                       R18 R6 K34 ["chip"]
      219 GETTABLEKS                       R18 R18 K18 ["backgroundStyle"]
      221 SETTABLEKS                       R18 R17 K60 ["chipBackgroundStyle"]
      223 GETTABLEKS                       R18 R6 K64 ["text"]
      225 GETTABLEKS                       R18 R18 K61 ["contentStyle"]
      227 SETTABLEKS                       R18 R17 K61 ["contentStyle"]
      229 GETTABLEKS                       R18 R2 K14 ["isDisabled"]
      231 SETTABLEKS                       R18 R17 K14 ["isDisabled"]
      233 LOADK                            R19 K65 ["%*--leading-accessory"]
      234 GETTABLEKS                       R21 R2 K62 ["testId"]
      236 NAMECALL                         R19 R19 K66 ["format"]
      238 CALL                             R19 2 1
      239 MOVE                             R18 R19
      240 SETTABLEKS                       R18 R17 K62 ["testId"]
      242 CALL                             R15 2 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R15
      245 SETTABLEKS                       R15 R14 K54 ["Leading"]
      247 GETTABLEKS                       R16 R2 K64 ["text"]
      249 JUMPIFNOT                        R16 ; [+42]
      250 GETTABLEKS                       R16 R2 K64 ["text"]
      252 JUMPIFEQKS                       R16 K67 [""] ; [+39]
      254 GETUPVAL                         R15 4
      255 GETTABLEKS                       R15 R15 K13 ["createElement"]
      257 GETUPVAL                         R16 15
      258 DUPTABLE                         R17 K70 [{["Text"], ["textStyle"], ["LayoutOrder"] = 2, ["tag"], ["padding"], ["testId"]}]
      259 GETTABLEKS                       R18 R2 K64 ["text"]
      261 SETTABLEKS                       R18 R17 K55 ["Text"]
      263 GETTABLEKS                       R18 R6 K64 ["text"]
      265 GETTABLEKS                       R18 R18 K61 ["contentStyle"]
      267 SETTABLEKS                       R18 R17 K68 ["textStyle"]
      269 GETTABLEKS                       R18 R6 K64 ["text"]
      271 GETTABLEKS                       R18 R18 K21 ["tag"]
      273 SETTABLEKS                       R18 R17 K21 ["tag"]
      275 GETTABLEKS                       R18 R6 K64 ["text"]
      277 GETTABLEKS                       R18 R18 K19 ["padding"]
      279 SETTABLEKS                       R18 R17 K19 ["padding"]
      281 LOADK                            R19 K71 ["%*--text"]
      282 GETTABLEKS                       R21 R2 K62 ["testId"]
      284 NAMECALL                         R19 R19 K66 ["format"]
      286 CALL                             R19 2 1
      287 MOVE                             R18 R19
      288 SETTABLEKS                       R18 R17 K62 ["testId"]
      290 CALL                             R15 2 1
      291 JUMP                             ; [+1]
      292 LOADNIL                          R15
      293 SETTABLEKS                       R15 R14 K55 ["Text"]
      295 JUMPIFNOT                        R5 ; [+38]
      296 GETUPVAL                         R15 4
      297 GETTABLEKS                       R15 R15 K13 ["createElement"]
      299 GETUPVAL                         R16 14
      300 DUPTABLE                         R17 K73 [{["isLeading"] = False, ["config"], ["size"], ["chipBackgroundStyle"], ["contentStyle"], ["isDisabled"], ["testId"]}]
      301 SETTABLEKS                       R5 R17 K59 ["config"]
      303 GETTABLEKS                       R18 R2 K5 ["size"]
      305 SETTABLEKS                       R18 R17 K5 ["size"]
      307 GETTABLEKS                       R18 R6 K34 ["chip"]
      309 GETTABLEKS                       R18 R18 K18 ["backgroundStyle"]
      311 SETTABLEKS                       R18 R17 K60 ["chipBackgroundStyle"]
      313 GETTABLEKS                       R18 R6 K64 ["text"]
      315 GETTABLEKS                       R18 R18 K61 ["contentStyle"]
      317 SETTABLEKS                       R18 R17 K61 ["contentStyle"]
      319 GETTABLEKS                       R18 R2 K14 ["isDisabled"]
      321 SETTABLEKS                       R18 R17 K14 ["isDisabled"]
      323 LOADK                            R19 K74 ["%*--trailing-accessory"]
      324 GETTABLEKS                       R21 R2 K62 ["testId"]
      326 NAMECALL                         R19 R19 K66 ["format"]
      328 CALL                             R19 2 1
      329 MOVE                             R18 R19
      330 SETTABLEKS                       R18 R17 K62 ["testId"]
      332 CALL                             R15 2 1
      333 JUMP                             ; [+1]
      334 LOADNIL                          R15
      335 SETTABLEKS                       R15 R14 K56 ["Trailing"]
      337 CALL                             R11 3 -1
      338 CALL                             R8 -1 -1
      339 RETURN                           R8 -1

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
       19 GETTABLEKS                       R4 R3 K9 ["IconVariant"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Constants"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Utility"]
       30 GETTABLEKS                       R7 R7 K12 ["Flags"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R0 K13 ["Providers"]
       37 GETTABLEKS                       R8 R8 K14 ["Style"]
       39 GETTABLEKS                       R8 R8 K15 ["PresentationContext"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R0 K16 ["Components"]
       46 GETTABLEKS                       R9 R9 K17 ["Text"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K6 [require]
       51 GETTABLEKS                       R10 R0 K16 ["Components"]
       53 GETTABLEKS                       R10 R10 K18 ["Types"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Components"]
       60 GETTABLEKS                       R11 R11 K19 ["View"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R12 R0 K13 ["Providers"]
       67 GETTABLEKS                       R12 R12 K14 ["Style"]
       69 GETTABLEKS                       R12 R12 K20 ["useTokens"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K6 [require]
       74 GETTABLEKS                       R13 R0 K11 ["Utility"]
       76 GETTABLEKS                       R13 R13 K21 ["withCommonProps"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K6 [require]
       81 GETTABLEKS                       R14 R0 K11 ["Utility"]
       83 GETTABLEKS                       R14 R14 K22 ["withDefaults"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K6 [require]
       88 GETIMPORT                        R15 K1 [script]
       90 GETTABLEKS                       R15 R15 K4 ["Parent"]
       92 GETTABLEKS                       R15 R15 K23 ["Accessory"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K6 [require]
       97 GETTABLEKS                       R16 R0 K24 ["Enums"]
       99 GETTABLEKS                       R16 R16 K25 ["IconPosition"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K6 [require]
      104 GETTABLEKS                       R17 R0 K24 ["Enums"]
      106 GETTABLEKS                       R17 R17 K26 ["ColorMode"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K6 [require]
      111 GETTABLEKS                       R18 R0 K24 ["Enums"]
      113 GETTABLEKS                       R18 R18 K27 ["StateLayerMode"]
      115 CALL                             R17 1 1
      116 GETIMPORT                        R18 K6 [require]
      118 GETTABLEKS                       R19 R0 K24 ["Enums"]
      120 GETTABLEKS                       R19 R19 K28 ["CursorType"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETTABLEKS                       R20 R0 K24 ["Enums"]
      127 GETTABLEKS                       R20 R20 K29 ["ChipSize"]
      129 CALL                             R19 1 1
      130 GETIMPORT                        R20 K6 [require]
      132 GETTABLEKS                       R21 R0 K24 ["Enums"]
      134 GETTABLEKS                       R21 R21 K30 ["ChipVariant"]
      136 CALL                             R20 1 1
      137 GETIMPORT                        R21 K6 [require]
      139 GETIMPORT                        R22 K1 [script]
      141 GETTABLEKS                       R22 R22 K4 ["Parent"]
      143 GETTABLEKS                       R22 R22 K31 ["useChipVariants"]
      145 CALL                             R21 1 1
      146 DUPTABLE                         R22 K41 [{["isChecked"] = False, ["Selectable"] = True, ["isDisabled"] = False, ["size"], ["variant"], ["testId"] = "--foundation-chip"}]
      147 GETTABLEKS                       R23 R19 K42 ["Medium"]
      149 SETTABLEKS                       R23 R22 K37 ["size"]
      151 GETTABLEKS                       R23 R20 K43 ["Standard"]
      153 SETTABLEKS                       R23 R22 K38 ["variant"]
      155 DUPCLOSURE                       R23 K44 [PROTO_2]
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R21
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R8
      172 GETTABLEKS                       R24 R2 K45 ["memo"]
      174 GETTABLEKS                       R25 R2 K46 ["forwardRef"]
      176 MOVE                             R26 R23
      177 CALL                             R25 1 -1
      178 CALL                             R24 -1 -1
      179 RETURN                           R24 -1
