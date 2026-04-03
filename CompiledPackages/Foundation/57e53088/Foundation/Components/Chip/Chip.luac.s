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
       27 GETUPVAL                         R11 6
       28 GETTABLEKS                       R10 R11 K5 ["FoundationAddUtilityVariantToChip"]
       30 JUMPIFNOT                        R10 ; [+3]
       31 GETTABLEKS                       R9 R2 K6 ["variant"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R9
       35 GETTABLEKS                       R10 R2 K7 ["isChecked"]
       37 JUMPIFNOTEQKNIL                  R4 ; [+2]
       39 LOADB                            R11 0 +1
       40 LOADB                            R11 1
       41 JUMPIFNOTEQKNIL                  R5 ; [+2]
       43 LOADB                            R12 0 +1
       44 LOADB                            R12 1
       45 CALL                             R6 6 1
       46 GETTABLEKS                       R9 R3 K8 ["Stroke"]
       48 GETTABLEKS                       R8 R9 K9 ["Thicker"]
       50 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       51 GETIMPORT                        R7 K12 [math.floor]
       53 CALL                             R7 1 1
       54 GETUPVAL                         R9 3
       55 GETTABLEKS                       R8 R9 K13 ["createElement"]
       57 GETUPVAL                         R9 7
       58 GETUPVAL                         R10 8
       59 MOVE                             R11 R2
       60 DUPTABLE                         R12 K24 [{"isDisabled", "selection", "onActivated", "stateLayer", "backgroundStyle", "padding", "cursor", "tag", "ref", "GroupTransparency"}]
       61 GETTABLEKS                       R13 R2 K14 ["isDisabled"]
       63 SETTABLEKS                       R13 R12 K14 ["isDisabled"]
       65 DUPTABLE                         R13 K30 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
       66 GETTABLEKS                       R15 R2 K14 ["isDisabled"]
       68 JUMPIFNOT                        R15 ; [+2]
       69 LOADB                            R14 0
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R14 R2 K25 ["Selectable"]
       73 SETTABLEKS                       R14 R13 K25 ["Selectable"]
       75 GETTABLEKS                       R14 R2 K26 ["NextSelectionUp"]
       77 SETTABLEKS                       R14 R13 K26 ["NextSelectionUp"]
       79 GETTABLEKS                       R14 R2 K27 ["NextSelectionDown"]
       81 SETTABLEKS                       R14 R13 K27 ["NextSelectionDown"]
       83 GETTABLEKS                       R14 R2 K28 ["NextSelectionLeft"]
       85 SETTABLEKS                       R14 R13 K28 ["NextSelectionLeft"]
       87 GETTABLEKS                       R14 R2 K29 ["NextSelectionRight"]
       89 SETTABLEKS                       R14 R13 K29 ["NextSelectionRight"]
       91 SETTABLEKS                       R13 R12 K15 ["selection"]
       93 GETTABLEKS                       R13 R2 K16 ["onActivated"]
       95 SETTABLEKS                       R13 R12 K16 ["onActivated"]
       97 GETTABLEKS                       R14 R2 K7 ["isChecked"]
       99 JUMPIFNOT                        R14 ; [+7]
      100 DUPTABLE                         R13 K32 [{"mode"}]
      101 GETUPVAL                         R15 9
      102 GETTABLEKS                       R14 R15 K33 ["Inverse"]
      104 SETTABLEKS                       R14 R13 K31 ["mode"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R13
      108 SETTABLEKS                       R13 R12 K17 ["stateLayer"]
      110 GETTABLEKS                       R14 R6 K34 ["chip"]
      112 GETTABLEKS                       R13 R14 K18 ["backgroundStyle"]
      114 SETTABLEKS                       R13 R12 K18 ["backgroundStyle"]
      116 GETTABLEKS                       R14 R6 K34 ["chip"]
      118 GETTABLEKS                       R13 R14 K19 ["padding"]
      120 SETTABLEKS                       R13 R12 K19 ["padding"]
      122 DUPTABLE                         R13 K38 [{"radius", "offset", "borderWidth"}]
      123 GETIMPORT                        R14 K41 [UDim.new]
      125 LOADN                            R15 0
      126 GETTABLEKS                       R17 R3 K42 ["Radius"]
      128 GETTABLEKS                       R16 R17 K43 ["Circle"]
      130 CALL                             R14 2 1
      131 SETTABLEKS                       R14 R13 K35 ["radius"]
      133 MULK                             R14 R7 K44 [2]
      134 SETTABLEKS                       R14 R13 K36 ["offset"]
      136 SETTABLEKS                       R7 R13 K37 ["borderWidth"]
      138 SETTABLEKS                       R13 R12 K20 ["cursor"]
      140 GETTABLEKS                       R14 R6 K34 ["chip"]
      142 GETTABLEKS                       R13 R14 K21 ["tag"]
      144 SETTABLEKS                       R13 R12 K21 ["tag"]
      146 SETTABLEKS                       R1 R12 K22 ["ref"]
      148 GETTABLEKS                       R14 R2 K14 ["isDisabled"]
      150 JUMPIFNOT                        R14 ; [+4]
      151 GETUPVAL                         R14 10
      152 GETTABLEKS                       R13 R14 K45 ["DISABLED_TRANSPARENCY"]
      154 JUMP                             ; [+1]
      155 LOADN                            R13 0
      156 SETTABLEKS                       R13 R12 K23 ["GroupTransparency"]
      158 CALL                             R10 2 1
      159 GETUPVAL                         R12 3
      160 GETTABLEKS                       R11 R12 K13 ["createElement"]
      162 GETUPVAL                         R13 11
      163 GETTABLEKS                       R12 R13 K46 ["Provider"]
      165 DUPTABLE                         R13 K48 [{"value"}]
      166 DUPTABLE                         R14 K51 [{"colorMode", "isIconSize"}]
      167 GETTABLEKS                       R16 R2 K7 ["isChecked"]
      169 JUMPIFNOT                        R16 ; [+4]
      170 GETUPVAL                         R16 12
      171 GETTABLEKS                       R15 R16 K33 ["Inverse"]
      173 JUMP                             ; [+3]
      174 GETUPVAL                         R16 12
      175 GETTABLEKS                       R15 R16 K52 ["Color"]
      177 SETTABLEKS                       R15 R14 K49 ["colorMode"]
      179 LOADB                            R15 1
      180 SETTABLEKS                       R15 R14 K50 ["isIconSize"]
      182 SETTABLEKS                       R14 R13 K47 ["value"]
      184 DUPTABLE                         R14 K56 [{"Leading", "Text", "Trailing"}]
      185 JUMPIFNOT                        R4 ; [+41]
      186 GETUPVAL                         R16 3
      187 GETTABLEKS                       R15 R16 K13 ["createElement"]
      189 GETUPVAL                         R16 13
      190 DUPTABLE                         R17 K62 [{"isLeading", "config", "size", "chipBackgroundStyle", "contentStyle", "isDisabled", "testId"}]
      191 LOADB                            R18 1
      192 SETTABLEKS                       R18 R17 K57 ["isLeading"]
      194 SETTABLEKS                       R4 R17 K58 ["config"]
      196 GETTABLEKS                       R18 R2 K4 ["size"]
      198 SETTABLEKS                       R18 R17 K4 ["size"]
      200 GETTABLEKS                       R19 R6 K34 ["chip"]
      202 GETTABLEKS                       R18 R19 K18 ["backgroundStyle"]
      204 SETTABLEKS                       R18 R17 K59 ["chipBackgroundStyle"]
      206 GETTABLEKS                       R19 R6 K63 ["text"]
      208 GETTABLEKS                       R18 R19 K60 ["contentStyle"]
      210 SETTABLEKS                       R18 R17 K60 ["contentStyle"]
      212 GETTABLEKS                       R18 R2 K14 ["isDisabled"]
      214 SETTABLEKS                       R18 R17 K14 ["isDisabled"]
      216 LOADK                            R19 K64 ["%*--leading-accessory"]
      217 GETTABLEKS                       R21 R2 K61 ["testId"]
      219 NAMECALL                         R19 R19 K65 ["format"]
      221 CALL                             R19 2 1
      222 MOVE                             R18 R19
      223 SETTABLEKS                       R18 R17 K61 ["testId"]
      225 CALL                             R15 2 1
      226 JUMP                             ; [+1]
      227 LOADNIL                          R15
      228 SETTABLEKS                       R15 R14 K53 ["Leading"]
      230 GETTABLEKS                       R16 R2 K63 ["text"]
      232 JUMPIFNOT                        R16 ; [+45]
      233 GETTABLEKS                       R16 R2 K63 ["text"]
      235 JUMPIFEQKS                       R16 K66 [""] ; [+42]
      237 GETUPVAL                         R16 3
      238 GETTABLEKS                       R15 R16 K13 ["createElement"]
      240 GETUPVAL                         R16 14
      241 DUPTABLE                         R17 K69 [{"Text", "textStyle", "LayoutOrder", "tag", "padding", "testId"}]
      242 GETTABLEKS                       R18 R2 K63 ["text"]
      244 SETTABLEKS                       R18 R17 K54 ["Text"]
      246 GETTABLEKS                       R19 R6 K63 ["text"]
      248 GETTABLEKS                       R18 R19 K60 ["contentStyle"]
      250 SETTABLEKS                       R18 R17 K67 ["textStyle"]
      252 LOADN                            R18 2
      253 SETTABLEKS                       R18 R17 K68 ["LayoutOrder"]
      255 GETTABLEKS                       R19 R6 K63 ["text"]
      257 GETTABLEKS                       R18 R19 K21 ["tag"]
      259 SETTABLEKS                       R18 R17 K21 ["tag"]
      261 GETTABLEKS                       R19 R6 K63 ["text"]
      263 GETTABLEKS                       R18 R19 K19 ["padding"]
      265 SETTABLEKS                       R18 R17 K19 ["padding"]
      267 LOADK                            R19 K70 ["%*--text"]
      268 GETTABLEKS                       R21 R2 K61 ["testId"]
      270 NAMECALL                         R19 R19 K65 ["format"]
      272 CALL                             R19 2 1
      273 MOVE                             R18 R19
      274 SETTABLEKS                       R18 R17 K61 ["testId"]
      276 CALL                             R15 2 1
      277 JUMP                             ; [+1]
      278 LOADNIL                          R15
      279 SETTABLEKS                       R15 R14 K54 ["Text"]
      281 JUMPIFNOT                        R5 ; [+41]
      282 GETUPVAL                         R16 3
      283 GETTABLEKS                       R15 R16 K13 ["createElement"]
      285 GETUPVAL                         R16 13
      286 DUPTABLE                         R17 K62 [{"isLeading", "config", "size", "chipBackgroundStyle", "contentStyle", "isDisabled", "testId"}]
      287 LOADB                            R18 0
      288 SETTABLEKS                       R18 R17 K57 ["isLeading"]
      290 SETTABLEKS                       R5 R17 K58 ["config"]
      292 GETTABLEKS                       R18 R2 K4 ["size"]
      294 SETTABLEKS                       R18 R17 K4 ["size"]
      296 GETTABLEKS                       R19 R6 K34 ["chip"]
      298 GETTABLEKS                       R18 R19 K18 ["backgroundStyle"]
      300 SETTABLEKS                       R18 R17 K59 ["chipBackgroundStyle"]
      302 GETTABLEKS                       R19 R6 K63 ["text"]
      304 GETTABLEKS                       R18 R19 K60 ["contentStyle"]
      306 SETTABLEKS                       R18 R17 K60 ["contentStyle"]
      308 GETTABLEKS                       R18 R2 K14 ["isDisabled"]
      310 SETTABLEKS                       R18 R17 K14 ["isDisabled"]
      312 LOADK                            R19 K71 ["%*--trailing-accessory"]
      313 GETTABLEKS                       R21 R2 K61 ["testId"]
      315 NAMECALL                         R19 R19 K65 ["format"]
      317 CALL                             R19 2 1
      318 MOVE                             R18 R19
      319 SETTABLEKS                       R18 R17 K61 ["testId"]
      321 CALL                             R15 2 1
      322 JUMP                             ; [+1]
      323 LOADNIL                          R15
      324 SETTABLEKS                       R15 R14 K55 ["Trailing"]
      326 CALL                             R11 3 -1
      327 CALL                             R8 -1 -1
      328 RETURN                           R8 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R8 R0 K11 ["Providers"]
       30 GETTABLEKS                       R7 R8 K12 ["Style"]
       32 GETTABLEKS                       R6 R7 K13 ["PresentationContext"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K14 ["Components"]
       39 GETTABLEKS                       R7 R8 K15 ["Text"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Components"]
       46 GETTABLEKS                       R8 R9 K16 ["Types"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K14 ["Components"]
       53 GETTABLEKS                       R9 R10 K17 ["View"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R12 R0 K11 ["Providers"]
       60 GETTABLEKS                       R11 R12 K12 ["Style"]
       62 GETTABLEKS                       R10 R11 K18 ["useTokens"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K9 ["Utility"]
       69 GETTABLEKS                       R11 R12 K19 ["withCommonProps"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K9 ["Utility"]
       76 GETTABLEKS                       R12 R13 K20 ["withDefaults"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETIMPORT                        R15 K1 [script]
       83 GETTABLEKS                       R14 R15 K4 ["Parent"]
       85 GETTABLEKS                       R13 R14 K21 ["Accessory"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R15 R0 K22 ["Enums"]
       92 GETTABLEKS                       R14 R15 K23 ["IconPosition"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R16 R0 K22 ["Enums"]
       99 GETTABLEKS                       R15 R16 K24 ["ColorMode"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K6 [require]
      104 GETTABLEKS                       R17 R0 K22 ["Enums"]
      106 GETTABLEKS                       R16 R17 K25 ["StateLayerMode"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K6 [require]
      111 GETTABLEKS                       R18 R0 K22 ["Enums"]
      113 GETTABLEKS                       R17 R18 K26 ["CursorType"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K6 [require]
      118 GETTABLEKS                       R19 R0 K22 ["Enums"]
      120 GETTABLEKS                       R18 R19 K27 ["ChipSize"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K6 [require]
      125 GETTABLEKS                       R20 R0 K22 ["Enums"]
      127 GETTABLEKS                       R19 R20 K28 ["ChipVariant"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K6 [require]
      132 GETIMPORT                        R22 K1 [script]
      134 GETTABLEKS                       R21 R22 K4 ["Parent"]
      136 GETTABLEKS                       R20 R21 K29 ["useChipVariants"]
      138 CALL                             R19 1 1
      139 DUPTABLE                         R20 K36 [{"isChecked", "Selectable", "isDisabled", "size", "variant", "testId"}]
      140 LOADB                            R21 0
      141 SETTABLEKS                       R21 R20 K30 ["isChecked"]
      143 LOADB                            R21 1
      144 SETTABLEKS                       R21 R20 K31 ["Selectable"]
      146 LOADB                            R21 0
      147 SETTABLEKS                       R21 R20 K32 ["isDisabled"]
      149 GETTABLEKS                       R21 R17 K37 ["Medium"]
      151 SETTABLEKS                       R21 R20 K33 ["size"]
      153 GETTABLEKS                       R22 R4 K38 ["FoundationAddUtilityVariantToChip"]
      155 JUMPIFNOT                        R22 ; [+3]
      156 GETTABLEKS                       R21 R18 K39 ["Standard"]
      158 JUMP                             ; [+1]
      159 LOADNIL                          R21
      160 SETTABLEKS                       R21 R20 K34 ["variant"]
      162 LOADK                            R21 K40 ["--foundation-chip"]
      163 SETTABLEKS                       R21 R20 K35 ["testId"]
      165 DUPCLOSURE                       R21 K41 [PROTO_1]
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R6
      181 GETTABLEKS                       R22 R2 K42 ["memo"]
      183 GETTABLEKS                       R23 R2 K43 ["forwardRef"]
      185 MOVE                             R24 R21
      186 CALL                             R23 1 -1
      187 CALL                             R22 -1 -1
      188 RETURN                           R22 -1
