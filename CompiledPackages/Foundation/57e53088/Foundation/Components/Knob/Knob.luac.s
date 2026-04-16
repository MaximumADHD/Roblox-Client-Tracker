PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R7 0
        2 GETTABLEKS                       R6 R7 K3 ["Color"]
        4 GETTABLEKS                       R5 R6 K4 ["Extended"]
        6 GETTABLEKS                       R4 R5 K5 ["White"]
        8 GETTABLEKS                       R3 R4 K6 ["White_100"]
       10 GETTABLEKS                       R2 R3 K0 ["Color3"]
       12 SETTABLEKS                       R2 R1 K0 ["Color3"]
       14 GETTABLEKS                       R2 R0 K1 ["Transparency"]
       16 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       18 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K2 [UDim2.fromOffset]
        3 MULK                             R4 R0 K3 [2]
        4 MULK                             R5 R0 K3 [2]
        5 CALL                             R3 2 1
        6 SUB                              R1 R2 R3
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["knob"]
        3 GETTABLEKS                       R0 R1 K1 ["size"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["stroke"]
        8 JUMPIFNOT                        R1 ; [+39]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K2 ["stroke"]
       12 GETTABLEKS                       R1 R2 K3 ["Thickness"]
       14 JUMPIFNOT                        R1 ; [+33]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K4 ["isBinding"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K2 ["stroke"]
       21 GETTABLEKS                       R2 R3 K3 ["Thickness"]
       23 CALL                             R1 1 1
       24 JUMPIFNOT                        R1 ; [+12]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R2 R3 K2 ["stroke"]
       28 GETTABLEKS                       R1 R2 K3 ["Thickness"]
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          REF R0
       32 NAMECALL                         R1 R1 K5 ["map"]
       34 CALL                             R1 2 -1
       35 CLOSEUPVALS                      R0
       36 RETURN                           R1 -1
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R2 R3 K2 ["stroke"]
       40 GETTABLEKS                       R1 R2 K3 ["Thickness"]
       42 GETIMPORT                        R2 K8 [UDim2.fromOffset]
       44 MULK                             R3 R1 K9 [2]
       45 MULK                             R4 R1 K9 [2]
       46 CALL                             R2 2 1
       47 SUB                              R0 R0 R2
       48 CLOSEUPVALS                      R0
       49 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETTABLEKS                       R2 R0 K0 ["Color3"]
        3 SETTABLEKS                       R2 R1 K0 ["Color3"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K1 ["Transparency"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["DISABLED_TRANSPARENCY"]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       14 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETTABLEKS                       R2 R0 K0 ["Color3"]
        3 SETTABLEKS                       R2 R1 K0 ["Color3"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K1 ["Transparency"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["DISABLED_TRANSPARENCY"]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       14 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["stroke"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K0 ["stroke"]
        6 JUMPIFNOT                        R2 ; [+21]
        7 JUMPIFEQKNIL                     R0 ; [+20]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K1 ["isDisabled"]
       12 JUMPIFNOT                        R2 ; [+15]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K2 ["join"]
       16 MOVE                             R3 R1
       17 DUPTABLE                         R4 K4 [{"Transparency"}]
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R0
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R7 R8 K5 ["DISABLED_TRANSPARENCY"]
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K3 ["Transparency"]
       26 CALL                             R2 2 1
       27 MOVE                             R1 R2
       28 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 4
        9 MOVE                             R5 R2
       10 GETTABLEKS                       R6 R1 K0 ["size"]
       12 MOVE                             R7 R3
       13 JUMPIFNOT                        R7 ; [+9]
       14 GETTABLEKS                       R8 R3 K1 ["colorMode"]
       16 GETUPVAL                         R10 5
       17 GETTABLEKS                       R9 R10 K2 ["Inverse"]
       19 JUMPIFEQ                         R8 R9 ; [+2]
       21 LOADB                            R7 0 +1
       22 LOADB                            R7 1
       23 CALL                             R4 3 1
       24 GETTABLEKS                       R5 R1 K3 ["style"]
       26 JUMPIF                           R5 ; [+4]
       27 GETTABLEKS                       R6 R4 K4 ["knob"]
       29 GETTABLEKS                       R5 R6 K3 ["style"]
       31 GETUPVAL                         R7 6
       32 GETTABLEKS                       R6 R7 K5 ["useCallback"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R2
       36 NEWTABLE                         R8 0 1
       38 MOVE                             R9 R2
       39 SETLIST                          R8 R9 1 [1]
       41 CALL                             R6 2 1
       42 GETUPVAL                         R7 7
       43 GETTABLEKS                       R9 R1 K6 ["stroke"]
       45 JUMPIFNOT                        R9 ; [+5]
       46 GETTABLEKS                       R9 R1 K6 ["stroke"]
       48 GETTABLEKS                       R8 R9 K7 ["Transparency"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R8
       52 CALL                             R7 1 1
       53 GETUPVAL                         R8 7
       54 MOVE                             R9 R5
       55 CALL                             R8 1 1
       56 GETUPVAL                         R9 7
       57 GETTABLEKS                       R11 R4 K4 ["knob"]
       59 GETTABLEKS                       R10 R11 K3 ["style"]
       61 CALL                             R9 1 1
       62 GETUPVAL                         R11 6
       63 GETTABLEKS                       R10 R11 K8 ["useMemo"]
       65 NEWCLOSURE                       R11 P1
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U8
       69 NEWTABLE                         R12 0 2
       71 MOVE                             R13 R4
       72 GETTABLEKS                       R14 R1 K6 ["stroke"]
       74 SETLIST                          R12 R13 2 [1]
       76 CALL                             R10 2 1
       77 GETUPVAL                         R12 6
       78 GETTABLEKS                       R11 R12 K9 ["createElement"]
       80 GETUPVAL                         R12 9
       81 GETUPVAL                         R13 10
       82 MOVE                             R14 R1
       83 DUPTABLE                         R15 K12 [{"Size", "isDisabled"}]
       84 GETTABLEKS                       R17 R4 K4 ["knob"]
       86 GETTABLEKS                       R16 R17 K0 ["size"]
       88 SETTABLEKS                       R16 R15 K10 ["Size"]
       90 GETUPVAL                         R18 11
       91 GETTABLEKS                       R17 R18 K13 ["FoundationToggleVisualUpdate"]
       93 JUMPIFNOT                        R17 ; [+3]
       94 GETTABLEKS                       R16 R1 K11 ["isDisabled"]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R16
       98 SETTABLEKS                       R16 R15 K11 ["isDisabled"]
      100 CALL                             R13 2 1
      101 DUPTABLE                         R14 K16 [{"Icon", "Shadow"}]
      102 GETUPVAL                         R17 11
      103 GETTABLEKS                       R16 R17 K13 ["FoundationToggleVisualUpdate"]
      105 JUMPIFNOT                        R16 ; [+76]
      106 GETTABLEKS                       R16 R1 K17 ["icon"]
      108 JUMPIFNOT                        R16 ; [+73]
      109 GETUPVAL                         R16 6
      110 GETTABLEKS                       R15 R16 K9 ["createElement"]
      112 GETUPVAL                         R16 9
      113 DUPTABLE                         R17 K21 [{"tag", "Size", "ZIndex", "backgroundStyle"}]
      114 GETTABLEKS                       R19 R4 K4 ["knob"]
      116 GETTABLEKS                       R18 R19 K18 ["tag"]
      118 SETTABLEKS                       R18 R17 K18 ["tag"]
      120 SETTABLEKS                       R10 R17 K10 ["Size"]
      122 LOADN                            R18 4
      123 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
      125 GETTABLEKS                       R19 R4 K22 ["iconContainer"]
      127 GETTABLEKS                       R18 R19 K20 ["backgroundStyle"]
      129 SETTABLEKS                       R18 R17 K20 ["backgroundStyle"]
      131 GETUPVAL                         R19 6
      132 GETTABLEKS                       R18 R19 K9 ["createElement"]
      134 GETUPVAL                         R19 12
      135 DUPTABLE                         R20 K26 [{"name", "variant", "style", "size", "testId"}]
      136 GETTABLEKS                       R22 R1 K17 ["icon"]
      138 GETTABLEKS                       R21 R22 K23 ["name"]
      140 SETTABLEKS                       R21 R20 K23 ["name"]
      142 GETTABLEKS                       R22 R1 K17 ["icon"]
      144 GETTABLEKS                       R21 R22 K24 ["variant"]
      146 SETTABLEKS                       R21 R20 K24 ["variant"]
      148 GETTABLEKS                       R22 R1 K11 ["isDisabled"]
      150 JUMPIFNOT                        R22 ; [+7]
      151 DUPCLOSURE                       R23 K27 [PROTO_3]
      152 CAPTURE                          UPVAL U13
      153 CAPTURE                          UPVAL U14
      154 NAMECALL                         R21 R9 K28 ["map"]
      156 CALL                             R21 2 1
      157 JUMP                             ; [+4]
      158 GETTABLEKS                       R22 R4 K4 ["knob"]
      160 GETTABLEKS                       R21 R22 K3 ["style"]
      162 SETTABLEKS                       R21 R20 K3 ["style"]
      164 GETTABLEKS                       R22 R4 K4 ["knob"]
      166 GETTABLEKS                       R21 R22 K29 ["iconSize"]
      168 SETTABLEKS                       R21 R20 K0 ["size"]
      170 LOADK                            R22 K30 ["%*--icon"]
      171 GETTABLEKS                       R24 R1 K25 ["testId"]
      173 NAMECALL                         R22 R22 K31 ["format"]
      175 CALL                             R22 2 1
      176 MOVE                             R21 R22
      177 SETTABLEKS                       R21 R20 K25 ["testId"]
      179 CALL                             R18 2 -1
      180 CALL                             R15 -1 1
      181 JUMP                             ; [+52]
      182 GETUPVAL                         R16 6
      183 GETTABLEKS                       R15 R16 K9 ["createElement"]
      185 GETUPVAL                         R16 9
      186 DUPTABLE                         R17 K32 [{"tag", "backgroundStyle", "Size", "stroke", "ZIndex", "testId"}]
      187 GETTABLEKS                       R19 R4 K4 ["knob"]
      189 GETTABLEKS                       R18 R19 K18 ["tag"]
      191 SETTABLEKS                       R18 R17 K18 ["tag"]
      193 GETTABLEKS                       R19 R1 K11 ["isDisabled"]
      195 JUMPIFNOT                        R19 ; [+7]
      196 DUPCLOSURE                       R20 K33 [PROTO_4]
      197 CAPTURE                          UPVAL U13
      198 CAPTURE                          UPVAL U14
      199 NAMECALL                         R18 R8 K28 ["map"]
      201 CALL                             R18 2 1
      202 JUMP                             ; [+1]
      203 MOVE                             R18 R5
      204 SETTABLEKS                       R18 R17 K20 ["backgroundStyle"]
      206 SETTABLEKS                       R10 R17 K10 ["Size"]
      208 NEWCLOSURE                       R20 P4
      209 CAPTURE                          VAL R1
      210 CAPTURE                          UPVAL U15
      211 CAPTURE                          UPVAL U13
      212 CAPTURE                          UPVAL U14
      213 NAMECALL                         R18 R7 K28 ["map"]
      215 CALL                             R18 2 1
      216 NAMECALL                         R18 R18 K34 ["getValue"]
      218 CALL                             R18 1 1
      219 SETTABLEKS                       R18 R17 K6 ["stroke"]
      221 LOADN                            R18 4
      222 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
      224 LOADK                            R19 K35 ["%*--circle"]
      225 GETTABLEKS                       R21 R1 K25 ["testId"]
      227 NAMECALL                         R19 R19 K31 ["format"]
      229 CALL                             R19 2 1
      230 MOVE                             R18 R19
      231 SETTABLEKS                       R18 R17 K25 ["testId"]
      233 CALL                             R15 2 1
      234 SETTABLEKS                       R15 R14 K14 ["Icon"]
      236 GETTABLEKS                       R16 R1 K36 ["hasShadow"]
      238 JUMPIFNOT                        R16 ; [+57]
      239 GETUPVAL                         R17 11
      240 GETTABLEKS                       R16 R17 K13 ["FoundationToggleVisualUpdate"]
      242 JUMPIFNOT                        R16 ; [+3]
      243 GETTABLEKS                       R16 R1 K11 ["isDisabled"]
      245 JUMPIF                           R16 ; [+50]
      246 GETUPVAL                         R16 6
      247 GETTABLEKS                       R15 R16 K9 ["createElement"]
      249 GETUPVAL                         R16 16
      250 DUPTABLE                         R17 K39 [{"tag", "imageStyle", "Image", "Size", "ZIndex", "testId"}]
      251 GETTABLEKS                       R19 R4 K40 ["knobShadow"]
      253 GETTABLEKS                       R18 R19 K18 ["tag"]
      255 SETTABLEKS                       R18 R17 K18 ["tag"]
      257 GETUPVAL                         R20 8
      258 GETTABLEKS                       R19 R20 K41 ["isBinding"]
      260 MOVE                             R20 R5
      261 CALL                             R19 1 1
      262 JUMPIFNOT                        R19 ; [+5]
      263 MOVE                             R20 R6
      264 NAMECALL                         R18 R5 K28 ["map"]
      266 CALL                             R18 2 1
      267 JUMP                             ; [+3]
      268 MOVE                             R18 R6
      269 MOVE                             R19 R5
      270 CALL                             R18 1 1
      271 SETTABLEKS                       R18 R17 K37 ["imageStyle"]
      273 LOADK                            R18 K42 ["component_assets/dropshadow_28"]
      274 SETTABLEKS                       R18 R17 K38 ["Image"]
      276 GETTABLEKS                       R19 R4 K40 ["knobShadow"]
      278 GETTABLEKS                       R18 R19 K0 ["size"]
      280 SETTABLEKS                       R18 R17 K10 ["Size"]
      282 LOADN                            R18 3
      283 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
      285 LOADK                            R19 K43 ["%*--shadow"]
      286 GETTABLEKS                       R21 R1 K25 ["testId"]
      288 NAMECALL                         R19 R19 K31 ["format"]
      290 CALL                             R19 2 1
      291 MOVE                             R18 R19
      292 SETTABLEKS                       R18 R17 K25 ["testId"]
      294 CALL                             R15 2 1
      295 JUMP                             ; [+1]
      296 LOADNIL                          R15
      297 SETTABLEKS                       R15 R14 K15 ["Shadow"]
      299 CALL                             R11 3 -1
      300 RETURN                           R11 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactIs"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R0 K11 ["Components"]
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Constants"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R6 K13 ["Icon"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R6 K14 ["Image"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K6 [require]
       48 GETTABLEKS                       R11 R6 K15 ["Types"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K6 [require]
       53 GETTABLEKS                       R12 R6 K16 ["View"]
       55 CALL                             R11 1 1
       56 GETIMPORT                        R12 K6 [require]
       58 GETTABLEKS                       R14 R0 K17 ["Utility"]
       60 GETTABLEKS                       R13 R14 K18 ["blendTransparencies"]
       62 CALL                             R12 1 1
       63 GETIMPORT                        R13 K6 [require]
       65 GETTABLEKS                       R15 R0 K17 ["Utility"]
       67 GETTABLEKS                       R14 R15 K19 ["useBindable"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K6 [require]
       72 GETTABLEKS                       R16 R0 K17 ["Utility"]
       74 GETTABLEKS                       R15 R16 K20 ["withCommonProps"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K6 [require]
       79 GETTABLEKS                       R17 R0 K17 ["Utility"]
       81 GETTABLEKS                       R16 R17 K21 ["withDefaults"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K6 [require]
       86 GETIMPORT                        R19 K1 [script]
       88 GETTABLEKS                       R18 R19 K4 ["Parent"]
       90 GETTABLEKS                       R17 R18 K22 ["useKnobVariants"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K6 [require]
       95 GETTABLEKS                       R20 R0 K23 ["Providers"]
       97 GETTABLEKS                       R19 R20 K24 ["Style"]
       99 GETTABLEKS                       R18 R19 K25 ["useTokens"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R19 K6 [require]
      104 GETTABLEKS                       R22 R0 K23 ["Providers"]
      106 GETTABLEKS                       R21 R22 K24 ["Style"]
      108 GETTABLEKS                       R20 R21 K26 ["PresentationContext"]
      110 CALL                             R19 1 1
      111 GETTABLEKS                       R18 R19 K27 ["usePresentationContext"]
      113 GETIMPORT                        R19 K6 [require]
      115 GETTABLEKS                       R21 R0 K28 ["Enums"]
      117 GETTABLEKS                       R20 R21 K29 ["ColorMode"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K6 [require]
      122 GETTABLEKS                       R22 R0 K28 ["Enums"]
      124 GETTABLEKS                       R21 R22 K30 ["InputSize"]
      126 CALL                             R20 1 1
      127 GETIMPORT                        R21 K6 [require]
      129 GETTABLEKS                       R23 R0 K17 ["Utility"]
      131 GETTABLEKS                       R22 R23 K31 ["Flags"]
      133 CALL                             R21 1 1
      134 DUPTABLE                         R22 K36 [{"size", "hasShadow", "isDisabled", "testId"}]
      135 GETTABLEKS                       R23 R20 K37 ["Medium"]
      137 SETTABLEKS                       R23 R22 K32 ["size"]
      139 LOADB                            R23 1
      140 SETTABLEKS                       R23 R22 K33 ["hasShadow"]
      142 LOADB                            R23 0
      143 SETTABLEKS                       R23 R22 K34 ["isDisabled"]
      145 LOADK                            R23 K38 ["--foundation-knob"]
      146 SETTABLEKS                       R23 R22 K35 ["testId"]
      148 DUPCLOSURE                       R23 K39 [PROTO_6]
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R22
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R21
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R9
      166 GETTABLEKS                       R24 R4 K40 ["memo"]
      168 MOVE                             R25 R23
      169 CALL                             R24 1 -1
      170 RETURN                           R24 -1
