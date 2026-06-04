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
      158 DUPTABLE                         R14 K49 [{"colorMode", "isIconSize"}]
      159 GETTABLEKS                       R16 R2 K5 ["isChecked"]
      161 JUMPIFNOT                        R16 ; [+4]
      162 GETUPVAL                         R15 11
      163 GETTABLEKS                       R15 R15 K31 ["Inverse"]
      165 JUMP                             ; [+3]
      166 GETUPVAL                         R15 11
      167 GETTABLEKS                       R15 R15 K50 ["Color"]
      169 SETTABLEKS                       R15 R14 K47 ["colorMode"]
      171 LOADB                            R15 1
      172 SETTABLEKS                       R15 R14 K48 ["isIconSize"]
      174 SETTABLEKS                       R14 R13 K45 ["value"]
      176 DUPTABLE                         R14 K54 [{"Leading", "Text", "Trailing"}]
      177 JUMPIFNOT                        R4 ; [+41]
      178 GETUPVAL                         R15 3
      179 GETTABLEKS                       R15 R15 K11 ["createElement"]
      181 GETUPVAL                         R16 12
      182 DUPTABLE                         R17 K60 [{"isLeading", "config", "size", "chipBackgroundStyle", "contentStyle", "isDisabled", "testId"}]
      183 LOADB                            R18 1
      184 SETTABLEKS                       R18 R17 K55 ["isLeading"]
      186 SETTABLEKS                       R4 R17 K56 ["config"]
      188 GETTABLEKS                       R18 R2 K4 ["size"]
      190 SETTABLEKS                       R18 R17 K4 ["size"]
      192 GETTABLEKS                       R18 R6 K32 ["chip"]
      194 GETTABLEKS                       R18 R18 K16 ["backgroundStyle"]
      196 SETTABLEKS                       R18 R17 K57 ["chipBackgroundStyle"]
      198 GETTABLEKS                       R18 R6 K61 ["text"]
      200 GETTABLEKS                       R18 R18 K58 ["contentStyle"]
      202 SETTABLEKS                       R18 R17 K58 ["contentStyle"]
      204 GETTABLEKS                       R18 R2 K12 ["isDisabled"]
      206 SETTABLEKS                       R18 R17 K12 ["isDisabled"]
      208 LOADK                            R19 K62 ["%*--leading-accessory"]
      209 GETTABLEKS                       R21 R2 K59 ["testId"]
      211 NAMECALL                         R19 R19 K63 ["format"]
      213 CALL                             R19 2 1
      214 MOVE                             R18 R19
      215 SETTABLEKS                       R18 R17 K59 ["testId"]
      217 CALL                             R15 2 1
      218 JUMP                             ; [+1]
      219 LOADNIL                          R15
      220 SETTABLEKS                       R15 R14 K51 ["Leading"]
      222 GETTABLEKS                       R16 R2 K61 ["text"]
      224 JUMPIFNOT                        R16 ; [+45]
      225 GETTABLEKS                       R16 R2 K61 ["text"]
      227 JUMPIFEQKS                       R16 K64 [""] ; [+42]
      229 GETUPVAL                         R15 3
      230 GETTABLEKS                       R15 R15 K11 ["createElement"]
      232 GETUPVAL                         R16 13
      233 DUPTABLE                         R17 K67 [{"Text", "textStyle", "LayoutOrder", "tag", "padding", "testId"}]
      234 GETTABLEKS                       R18 R2 K61 ["text"]
      236 SETTABLEKS                       R18 R17 K52 ["Text"]
      238 GETTABLEKS                       R18 R6 K61 ["text"]
      240 GETTABLEKS                       R18 R18 K58 ["contentStyle"]
      242 SETTABLEKS                       R18 R17 K65 ["textStyle"]
      244 LOADN                            R18 2
      245 SETTABLEKS                       R18 R17 K66 ["LayoutOrder"]
      247 GETTABLEKS                       R18 R6 K61 ["text"]
      249 GETTABLEKS                       R18 R18 K19 ["tag"]
      251 SETTABLEKS                       R18 R17 K19 ["tag"]
      253 GETTABLEKS                       R18 R6 K61 ["text"]
      255 GETTABLEKS                       R18 R18 K17 ["padding"]
      257 SETTABLEKS                       R18 R17 K17 ["padding"]
      259 LOADK                            R19 K68 ["%*--text"]
      260 GETTABLEKS                       R21 R2 K59 ["testId"]
      262 NAMECALL                         R19 R19 K63 ["format"]
      264 CALL                             R19 2 1
      265 MOVE                             R18 R19
      266 SETTABLEKS                       R18 R17 K59 ["testId"]
      268 CALL                             R15 2 1
      269 JUMP                             ; [+1]
      270 LOADNIL                          R15
      271 SETTABLEKS                       R15 R14 K52 ["Text"]
      273 JUMPIFNOT                        R5 ; [+41]
      274 GETUPVAL                         R15 3
      275 GETTABLEKS                       R15 R15 K11 ["createElement"]
      277 GETUPVAL                         R16 12
      278 DUPTABLE                         R17 K60 [{"isLeading", "config", "size", "chipBackgroundStyle", "contentStyle", "isDisabled", "testId"}]
      279 LOADB                            R18 0
      280 SETTABLEKS                       R18 R17 K55 ["isLeading"]
      282 SETTABLEKS                       R5 R17 K56 ["config"]
      284 GETTABLEKS                       R18 R2 K4 ["size"]
      286 SETTABLEKS                       R18 R17 K4 ["size"]
      288 GETTABLEKS                       R18 R6 K32 ["chip"]
      290 GETTABLEKS                       R18 R18 K16 ["backgroundStyle"]
      292 SETTABLEKS                       R18 R17 K57 ["chipBackgroundStyle"]
      294 GETTABLEKS                       R18 R6 K61 ["text"]
      296 GETTABLEKS                       R18 R18 K58 ["contentStyle"]
      298 SETTABLEKS                       R18 R17 K58 ["contentStyle"]
      300 GETTABLEKS                       R18 R2 K12 ["isDisabled"]
      302 SETTABLEKS                       R18 R17 K12 ["isDisabled"]
      304 LOADK                            R19 K69 ["%*--trailing-accessory"]
      305 GETTABLEKS                       R21 R2 K59 ["testId"]
      307 NAMECALL                         R19 R19 K63 ["format"]
      309 CALL                             R19 2 1
      310 MOVE                             R18 R19
      311 SETTABLEKS                       R18 R17 K59 ["testId"]
      313 CALL                             R15 2 1
      314 JUMP                             ; [+1]
      315 LOADNIL                          R15
      316 SETTABLEKS                       R15 R14 K53 ["Trailing"]
      318 CALL                             R11 3 -1
      319 CALL                             R8 -1 -1
      320 RETURN                           R8 -1

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
      125 DUPTABLE                         R18 K33 [{"isChecked", "Selectable", "isDisabled", "size", "testId"}]
      126 LOADB                            R19 0
      127 SETTABLEKS                       R19 R18 K28 ["isChecked"]
      129 LOADB                            R19 1
      130 SETTABLEKS                       R19 R18 K29 ["Selectable"]
      132 LOADB                            R19 0
      133 SETTABLEKS                       R19 R18 K30 ["isDisabled"]
      135 GETTABLEKS                       R19 R16 K34 ["Medium"]
      137 SETTABLEKS                       R19 R18 K31 ["size"]
      139 LOADK                            R19 K35 ["--foundation-chip"]
      140 SETTABLEKS                       R19 R18 K32 ["testId"]
      142 DUPCLOSURE                       R19 K36 [PROTO_1]
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R5
      157 GETTABLEKS                       R20 R2 K37 ["memo"]
      159 GETTABLEKS                       R21 R2 K38 ["forwardRef"]
      161 MOVE                             R22 R19
      162 CALL                             R21 1 -1
      163 CALL                             R20 -1 -1
      164 RETURN                           R20 -1
