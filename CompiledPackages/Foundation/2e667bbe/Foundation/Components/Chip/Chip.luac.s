PROTO_0:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["icon"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+8]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["leading"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["trailing"]
       13 RETURN                           R2 2
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["icon"]
       17 FASTCALL1                        TYPEOF R3 ; [+2]
       18 GETIMPORT                        R2 K4 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K5 ["string"] ; [+9]
       23 DUPTABLE                         R2 K7 [{"iconName"}]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K0 ["icon"]
       27 SETTABLEKS                       R3 R2 K6 ["iconName"]
       29 MOVE                             R0 R2
       30 JUMP                             ; [+21]
       31 DUPTABLE                         R2 K7 [{"iconName"}]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K0 ["icon"]
       35 GETTABLEKS                       R3 R4 K8 ["name"]
       37 SETTABLEKS                       R3 R2 K6 ["iconName"]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R4 R5 K0 ["icon"]
       42 GETTABLEKS                       R3 R4 K9 ["position"]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R4 R5 K10 ["Left"]
       47 JUMPIFNOTEQ                      R3 R4 ; [+3]
       49 MOVE                             R0 R2
       50 JUMP                             ; [+1]
       51 MOVE                             R1 R2
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R3 R4 K1 ["leading"]
       55 OR                               R2 R3 R0
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R4 R5 K2 ["trailing"]
       59 OR                               R3 R4 R1
       60 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R4 R5 K0 ["useMemo"]
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
       38 GETTABLEKS                       R9 R3 K6 ["Stroke"]
       40 GETTABLEKS                       R8 R9 K7 ["Thicker"]
       42 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       43 GETIMPORT                        R7 K10 [math.floor]
       45 CALL                             R7 1 1
       46 GETUPVAL                         R9 3
       47 GETTABLEKS                       R8 R9 K11 ["createElement"]
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
       93 GETUPVAL                         R15 8
       94 GETTABLEKS                       R14 R15 K31 ["Inverse"]
       96 SETTABLEKS                       R14 R13 K29 ["mode"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R13
      100 SETTABLEKS                       R13 R12 K15 ["stateLayer"]
      102 GETTABLEKS                       R14 R6 K32 ["chip"]
      104 GETTABLEKS                       R13 R14 K16 ["backgroundStyle"]
      106 SETTABLEKS                       R13 R12 K16 ["backgroundStyle"]
      108 GETTABLEKS                       R14 R6 K32 ["chip"]
      110 GETTABLEKS                       R13 R14 K17 ["padding"]
      112 SETTABLEKS                       R13 R12 K17 ["padding"]
      114 DUPTABLE                         R13 K36 [{"radius", "offset", "borderWidth"}]
      115 GETIMPORT                        R14 K39 [UDim.new]
      117 LOADN                            R15 0
      118 GETTABLEKS                       R17 R3 K40 ["Radius"]
      120 GETTABLEKS                       R16 R17 K41 ["Circle"]
      122 CALL                             R14 2 1
      123 SETTABLEKS                       R14 R13 K33 ["radius"]
      125 MULK                             R14 R7 K42 [2]
      126 SETTABLEKS                       R14 R13 K34 ["offset"]
      128 SETTABLEKS                       R7 R13 K35 ["borderWidth"]
      130 SETTABLEKS                       R13 R12 K18 ["cursor"]
      132 GETTABLEKS                       R14 R6 K32 ["chip"]
      134 GETTABLEKS                       R13 R14 K19 ["tag"]
      136 SETTABLEKS                       R13 R12 K19 ["tag"]
      138 SETTABLEKS                       R1 R12 K20 ["ref"]
      140 GETTABLEKS                       R14 R2 K12 ["isDisabled"]
      142 JUMPIFNOT                        R14 ; [+4]
      143 GETUPVAL                         R14 9
      144 GETTABLEKS                       R13 R14 K43 ["DISABLED_TRANSPARENCY"]
      146 JUMP                             ; [+1]
      147 LOADN                            R13 0
      148 SETTABLEKS                       R13 R12 K21 ["GroupTransparency"]
      150 CALL                             R10 2 1
      151 GETUPVAL                         R12 3
      152 GETTABLEKS                       R11 R12 K11 ["createElement"]
      154 GETUPVAL                         R13 10
      155 GETTABLEKS                       R12 R13 K44 ["Provider"]
      157 DUPTABLE                         R13 K46 [{"value"}]
      158 DUPTABLE                         R14 K49 [{"isInverse", "isIconSize"}]
      159 GETTABLEKS                       R15 R2 K5 ["isChecked"]
      161 SETTABLEKS                       R15 R14 K47 ["isInverse"]
      163 LOADB                            R15 1
      164 SETTABLEKS                       R15 R14 K48 ["isIconSize"]
      166 SETTABLEKS                       R14 R13 K45 ["value"]
      168 DUPTABLE                         R14 K53 [{"Leading", "Text", "Trailing"}]
      169 JUMPIFNOT                        R4 ; [+41]
      170 GETUPVAL                         R16 3
      171 GETTABLEKS                       R15 R16 K11 ["createElement"]
      173 GETUPVAL                         R16 11
      174 DUPTABLE                         R17 K59 [{"isLeading", "config", "size", "chipBackgroundStyle", "contentStyle", "isDisabled", "testId"}]
      175 LOADB                            R18 1
      176 SETTABLEKS                       R18 R17 K54 ["isLeading"]
      178 SETTABLEKS                       R4 R17 K55 ["config"]
      180 GETTABLEKS                       R18 R2 K4 ["size"]
      182 SETTABLEKS                       R18 R17 K4 ["size"]
      184 GETTABLEKS                       R19 R6 K32 ["chip"]
      186 GETTABLEKS                       R18 R19 K16 ["backgroundStyle"]
      188 SETTABLEKS                       R18 R17 K56 ["chipBackgroundStyle"]
      190 GETTABLEKS                       R19 R6 K60 ["text"]
      192 GETTABLEKS                       R18 R19 K57 ["contentStyle"]
      194 SETTABLEKS                       R18 R17 K57 ["contentStyle"]
      196 GETTABLEKS                       R18 R2 K12 ["isDisabled"]
      198 SETTABLEKS                       R18 R17 K12 ["isDisabled"]
      200 LOADK                            R19 K61 ["%*--leading-accessory"]
      201 GETTABLEKS                       R21 R2 K58 ["testId"]
      203 NAMECALL                         R19 R19 K62 ["format"]
      205 CALL                             R19 2 1
      206 MOVE                             R18 R19
      207 SETTABLEKS                       R18 R17 K58 ["testId"]
      209 CALL                             R15 2 1
      210 JUMP                             ; [+1]
      211 LOADNIL                          R15
      212 SETTABLEKS                       R15 R14 K50 ["Leading"]
      214 GETTABLEKS                       R16 R2 K60 ["text"]
      216 JUMPIFNOT                        R16 ; [+36]
      217 GETTABLEKS                       R16 R2 K60 ["text"]
      219 JUMPIFEQKS                       R16 K63 [""] ; [+33]
      221 GETUPVAL                         R16 3
      222 GETTABLEKS                       R15 R16 K11 ["createElement"]
      224 GETUPVAL                         R16 12
      225 DUPTABLE                         R17 K66 [{"Text", "textStyle", "LayoutOrder", "tag", "padding"}]
      226 GETTABLEKS                       R18 R2 K60 ["text"]
      228 SETTABLEKS                       R18 R17 K51 ["Text"]
      230 GETTABLEKS                       R19 R6 K60 ["text"]
      232 GETTABLEKS                       R18 R19 K57 ["contentStyle"]
      234 SETTABLEKS                       R18 R17 K64 ["textStyle"]
      236 LOADN                            R18 2
      237 SETTABLEKS                       R18 R17 K65 ["LayoutOrder"]
      239 GETTABLEKS                       R19 R6 K60 ["text"]
      241 GETTABLEKS                       R18 R19 K19 ["tag"]
      243 SETTABLEKS                       R18 R17 K19 ["tag"]
      245 GETTABLEKS                       R19 R6 K60 ["text"]
      247 GETTABLEKS                       R18 R19 K17 ["padding"]
      249 SETTABLEKS                       R18 R17 K17 ["padding"]
      251 CALL                             R15 2 1
      252 JUMP                             ; [+1]
      253 LOADNIL                          R15
      254 SETTABLEKS                       R15 R14 K51 ["Text"]
      256 JUMPIFNOT                        R5 ; [+41]
      257 GETUPVAL                         R16 3
      258 GETTABLEKS                       R15 R16 K11 ["createElement"]
      260 GETUPVAL                         R16 11
      261 DUPTABLE                         R17 K59 [{"isLeading", "config", "size", "chipBackgroundStyle", "contentStyle", "isDisabled", "testId"}]
      262 LOADB                            R18 0
      263 SETTABLEKS                       R18 R17 K54 ["isLeading"]
      265 SETTABLEKS                       R5 R17 K55 ["config"]
      267 GETTABLEKS                       R18 R2 K4 ["size"]
      269 SETTABLEKS                       R18 R17 K4 ["size"]
      271 GETTABLEKS                       R19 R6 K32 ["chip"]
      273 GETTABLEKS                       R18 R19 K16 ["backgroundStyle"]
      275 SETTABLEKS                       R18 R17 K56 ["chipBackgroundStyle"]
      277 GETTABLEKS                       R19 R6 K60 ["text"]
      279 GETTABLEKS                       R18 R19 K57 ["contentStyle"]
      281 SETTABLEKS                       R18 R17 K57 ["contentStyle"]
      283 GETTABLEKS                       R18 R2 K12 ["isDisabled"]
      285 SETTABLEKS                       R18 R17 K12 ["isDisabled"]
      287 LOADK                            R19 K67 ["%*--trailing-accessory"]
      288 GETTABLEKS                       R21 R2 K58 ["testId"]
      290 NAMECALL                         R19 R19 K62 ["format"]
      292 CALL                             R19 2 1
      293 MOVE                             R18 R19
      294 SETTABLEKS                       R18 R17 K58 ["testId"]
      296 CALL                             R15 2 1
      297 JUMP                             ; [+1]
      298 LOADNIL                          R15
      299 SETTABLEKS                       R15 R14 K52 ["Trailing"]
      301 CALL                             R11 3 -1
      302 CALL                             R8 -1 -1
      303 RETURN                           R8 -1

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
       16 GETTABLEKS                       R6 R0 K8 ["Providers"]
       18 GETTABLEKS                       R5 R6 K9 ["Style"]
       20 GETTABLEKS                       R4 R5 K10 ["useTokens"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K11 ["Components"]
       27 GETTABLEKS                       R5 R6 K12 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K11 ["Components"]
       34 GETTABLEKS                       R6 R7 K13 ["View"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K11 ["Components"]
       41 GETTABLEKS                       R7 R8 K14 ["Text"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R9 R0 K15 ["Utility"]
       48 GETTABLEKS                       R8 R9 K16 ["withDefaults"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K15 ["Utility"]
       55 GETTABLEKS                       R9 R10 K17 ["withCommonProps"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R12 R0 K8 ["Providers"]
       62 GETTABLEKS                       R11 R12 K9 ["Style"]
       64 GETTABLEKS                       R10 R11 K18 ["PresentationContext"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R11 R0 K19 ["Constants"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETIMPORT                        R14 K1 [script]
       76 GETTABLEKS                       R13 R14 K4 ["Parent"]
       78 GETTABLEKS                       R12 R13 K20 ["Accessory"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R14 R0 K21 ["Enums"]
       85 GETTABLEKS                       R13 R14 K22 ["IconPosition"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R15 R0 K21 ["Enums"]
       92 GETTABLEKS                       R14 R15 K23 ["StateLayerMode"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R16 R0 K21 ["Enums"]
       99 GETTABLEKS                       R15 R16 K24 ["CursorType"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K6 [require]
      104 GETTABLEKS                       R17 R0 K21 ["Enums"]
      106 GETTABLEKS                       R16 R17 K25 ["ChipSize"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K6 [require]
      111 GETIMPORT                        R19 K1 [script]
      113 GETTABLEKS                       R18 R19 K4 ["Parent"]
      115 GETTABLEKS                       R17 R18 K26 ["useChipVariants"]
      117 CALL                             R16 1 1
      118 DUPTABLE                         R17 K32 [{"isChecked", "Selectable", "isDisabled", "size", "testId"}]
      119 LOADB                            R18 0
      120 SETTABLEKS                       R18 R17 K27 ["isChecked"]
      122 LOADB                            R18 1
      123 SETTABLEKS                       R18 R17 K28 ["Selectable"]
      125 LOADB                            R18 0
      126 SETTABLEKS                       R18 R17 K29 ["isDisabled"]
      128 GETTABLEKS                       R18 R15 K33 ["Medium"]
      130 SETTABLEKS                       R18 R17 K30 ["size"]
      132 LOADK                            R18 K34 ["--foundation-chip"]
      133 SETTABLEKS                       R18 R17 K31 ["testId"]
      135 DUPCLOSURE                       R18 K35 [PROTO_1]
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R6
      149 GETTABLEKS                       R19 R2 K36 ["memo"]
      151 GETTABLEKS                       R20 R2 K37 ["forwardRef"]
      153 MOVE                             R21 R18
      154 CALL                             R20 1 -1
      155 CALL                             R19 -1 -1
      156 RETURN                           R19 -1
