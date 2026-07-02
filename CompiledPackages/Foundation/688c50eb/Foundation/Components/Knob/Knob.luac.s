PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["Color"]
        4 GETTABLEKS                       R2 R2 K4 ["Extended"]
        6 GETTABLEKS                       R2 R2 K5 ["White"]
        8 GETTABLEKS                       R2 R2 K6 ["White_100"]
       10 GETTABLEKS                       R2 R2 K0 ["Color3"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["knob"]
        3 GETTABLEKS                       R0 R0 K1 ["size"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["stroke"]
        8 JUMPIFNOT                        R1 ; [+39]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["stroke"]
       12 GETTABLEKS                       R1 R1 K3 ["Thickness"]
       14 JUMPIFNOT                        R1 ; [+33]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K4 ["isBinding"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K2 ["stroke"]
       21 GETTABLEKS                       R2 R2 K3 ["Thickness"]
       23 CALL                             R1 1 1
       24 JUMPIFNOT                        R1 ; [+12]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K2 ["stroke"]
       28 GETTABLEKS                       R1 R1 K3 ["Thickness"]
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          REF R0
       32 NAMECALL                         R1 R1 K5 ["map"]
       34 CALL                             R1 2 -1
       35 CLOSEUPVALS                      R0
       36 RETURN                           R1 -1
       37 GETUPVAL                         R1 1
       38 GETTABLEKS                       R1 R1 K2 ["stroke"]
       40 GETTABLEKS                       R1 R1 K3 ["Thickness"]
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
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["DISABLED_TRANSPARENCY"]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       14 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETTABLEKS                       R2 R0 K0 ["Color3"]
        3 SETTABLEKS                       R2 R1 K0 ["Color3"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K1 ["Transparency"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["DISABLED_TRANSPARENCY"]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       14 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stroke"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["stroke"]
        6 JUMPIFNOT                        R2 ; [+21]
        7 JUMPIFEQKNIL                     R0 ; [+20]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K1 ["isDisabled"]
       12 JUMPIFNOT                        R2 ; [+15]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K2 ["join"]
       16 MOVE                             R3 R1
       17 DUPTABLE                         R4 K4 [{"Transparency"}]
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R0
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K5 ["DISABLED_TRANSPARENCY"]
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
       16 GETUPVAL                         R9 5
       17 GETTABLEKS                       R9 R9 K2 ["Inverse"]
       19 JUMPIFEQ                         R8 R9 ; [+2]
       21 LOADB                            R7 0 +1
       22 LOADB                            R7 1
       23 CALL                             R4 3 1
       24 GETTABLEKS                       R5 R1 K3 ["style"]
       26 JUMPIF                           R5 ; [+4]
       27 GETTABLEKS                       R5 R4 K4 ["knob"]
       29 GETTABLEKS                       R5 R5 K3 ["style"]
       31 GETUPVAL                         R6 6
       32 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R2
       36 NEWTABLE                         R8 0 1
       38 MOVE                             R9 R2
       39 SETLIST                          R8 R9 1 [1]
       41 CALL                             R6 2 1
       42 GETUPVAL                         R7 7
       43 GETTABLEKS                       R9 R1 K6 ["stroke"]
       45 JUMPIFNOT                        R9 ; [+5]
       46 GETTABLEKS                       R8 R1 K6 ["stroke"]
       48 GETTABLEKS                       R8 R8 K7 ["Transparency"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R8
       52 CALL                             R7 1 1
       53 GETUPVAL                         R8 7
       54 MOVE                             R9 R5
       55 CALL                             R8 1 1
       56 GETUPVAL                         R9 7
       57 GETTABLEKS                       R10 R4 K4 ["knob"]
       59 GETTABLEKS                       R10 R10 K3 ["style"]
       61 CALL                             R9 1 1
       62 GETUPVAL                         R10 6
       63 GETTABLEKS                       R10 R10 K8 ["useMemo"]
       65 NEWCLOSURE                       R11 P1
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U8
       69 NEWTABLE                         R12 0 2
       71 MOVE                             R13 R4
       72 GETTABLEKS                       R14 R1 K6 ["stroke"]
       74 SETLIST                          R12 R13 2 [1]
       76 CALL                             R10 2 1
       77 GETUPVAL                         R11 6
       78 GETTABLEKS                       R11 R11 K9 ["createElement"]
       80 GETUPVAL                         R12 9
       81 GETUPVAL                         R13 10
       82 MOVE                             R14 R1
       83 DUPTABLE                         R15 K12 [{"Size", "isDisabled"}]
       84 GETTABLEKS                       R16 R4 K4 ["knob"]
       86 GETTABLEKS                       R16 R16 K0 ["size"]
       88 SETTABLEKS                       R16 R15 K10 ["Size"]
       90 GETUPVAL                         R17 11
       91 GETTABLEKS                       R17 R17 K13 ["FoundationToggleVisualUpdate"]
       93 JUMPIFNOT                        R17 ; [+3]
       94 GETTABLEKS                       R16 R1 K11 ["isDisabled"]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R16
       98 SETTABLEKS                       R16 R15 K11 ["isDisabled"]
      100 CALL                             R13 2 1
      101 DUPTABLE                         R14 K16 [{"Icon", "Shadow"}]
      102 GETUPVAL                         R16 11
      103 GETTABLEKS                       R16 R16 K13 ["FoundationToggleVisualUpdate"]
      105 JUMPIFNOT                        R16 ; [+73]
      106 GETTABLEKS                       R16 R1 K17 ["icon"]
      108 JUMPIFNOT                        R16 ; [+70]
      109 GETUPVAL                         R15 6
      110 GETTABLEKS                       R15 R15 K9 ["createElement"]
      112 GETUPVAL                         R16 9
      113 DUPTABLE                         R17 K22 [{["tag"], ["Size"], ["ZIndex"] = 4, ["backgroundStyle"]}]
      114 GETTABLEKS                       R18 R4 K4 ["knob"]
      116 GETTABLEKS                       R18 R18 K18 ["tag"]
      118 SETTABLEKS                       R18 R17 K18 ["tag"]
      120 SETTABLEKS                       R10 R17 K10 ["Size"]
      122 GETTABLEKS                       R18 R4 K23 ["iconContainer"]
      124 GETTABLEKS                       R18 R18 K21 ["backgroundStyle"]
      126 SETTABLEKS                       R18 R17 K21 ["backgroundStyle"]
      128 GETUPVAL                         R18 6
      129 GETTABLEKS                       R18 R18 K9 ["createElement"]
      131 GETUPVAL                         R19 12
      132 DUPTABLE                         R20 K27 [{"name", "variant", "style", "size", "testId"}]
      133 GETTABLEKS                       R21 R1 K17 ["icon"]
      135 GETTABLEKS                       R21 R21 K24 ["name"]
      137 SETTABLEKS                       R21 R20 K24 ["name"]
      139 GETTABLEKS                       R21 R1 K17 ["icon"]
      141 GETTABLEKS                       R21 R21 K25 ["variant"]
      143 SETTABLEKS                       R21 R20 K25 ["variant"]
      145 GETTABLEKS                       R22 R1 K11 ["isDisabled"]
      147 JUMPIFNOT                        R22 ; [+7]
      148 DUPCLOSURE                       R23 K28 [PROTO_3]
      149 CAPTURE                          UPVAL U13
      150 CAPTURE                          UPVAL U14
      151 NAMECALL                         R21 R9 K29 ["map"]
      153 CALL                             R21 2 1
      154 JUMP                             ; [+4]
      155 GETTABLEKS                       R21 R4 K4 ["knob"]
      157 GETTABLEKS                       R21 R21 K3 ["style"]
      159 SETTABLEKS                       R21 R20 K3 ["style"]
      161 GETTABLEKS                       R21 R4 K4 ["knob"]
      163 GETTABLEKS                       R21 R21 K30 ["iconSize"]
      165 SETTABLEKS                       R21 R20 K0 ["size"]
      167 LOADK                            R22 K31 ["%*--icon"]
      168 GETTABLEKS                       R24 R1 K26 ["testId"]
      170 NAMECALL                         R22 R22 K32 ["format"]
      172 CALL                             R22 2 1
      173 MOVE                             R21 R22
      174 SETTABLEKS                       R21 R20 K26 ["testId"]
      176 CALL                             R18 2 -1
      177 CALL                             R15 -1 1
      178 JUMP                             ; [+49]
      179 GETUPVAL                         R15 6
      180 GETTABLEKS                       R15 R15 K9 ["createElement"]
      182 GETUPVAL                         R16 9
      183 DUPTABLE                         R17 K33 [{["tag"], ["backgroundStyle"], ["Size"], ["stroke"], ["ZIndex"] = 4, ["testId"]}]
      184 GETTABLEKS                       R18 R4 K4 ["knob"]
      186 GETTABLEKS                       R18 R18 K18 ["tag"]
      188 SETTABLEKS                       R18 R17 K18 ["tag"]
      190 GETTABLEKS                       R19 R1 K11 ["isDisabled"]
      192 JUMPIFNOT                        R19 ; [+7]
      193 DUPCLOSURE                       R20 K34 [PROTO_4]
      194 CAPTURE                          UPVAL U13
      195 CAPTURE                          UPVAL U14
      196 NAMECALL                         R18 R8 K29 ["map"]
      198 CALL                             R18 2 1
      199 JUMP                             ; [+1]
      200 MOVE                             R18 R5
      201 SETTABLEKS                       R18 R17 K21 ["backgroundStyle"]
      203 SETTABLEKS                       R10 R17 K10 ["Size"]
      205 NEWCLOSURE                       R20 P4
      206 CAPTURE                          VAL R1
      207 CAPTURE                          UPVAL U15
      208 CAPTURE                          UPVAL U13
      209 CAPTURE                          UPVAL U14
      210 NAMECALL                         R18 R7 K29 ["map"]
      212 CALL                             R18 2 1
      213 NAMECALL                         R18 R18 K35 ["getValue"]
      215 CALL                             R18 1 1
      216 SETTABLEKS                       R18 R17 K6 ["stroke"]
      218 LOADK                            R19 K36 ["%*--circle"]
      219 GETTABLEKS                       R21 R1 K26 ["testId"]
      221 NAMECALL                         R19 R19 K32 ["format"]
      223 CALL                             R19 2 1
      224 MOVE                             R18 R19
      225 SETTABLEKS                       R18 R17 K26 ["testId"]
      227 CALL                             R15 2 1
      228 SETTABLEKS                       R15 R14 K14 ["Icon"]
      230 GETTABLEKS                       R16 R1 K37 ["hasShadow"]
      232 JUMPIFNOT                        R16 ; [+51]
      233 GETUPVAL                         R16 11
      234 GETTABLEKS                       R16 R16 K13 ["FoundationToggleVisualUpdate"]
      236 JUMPIFNOT                        R16 ; [+3]
      237 GETTABLEKS                       R16 R1 K11 ["isDisabled"]
      239 JUMPIF                           R16 ; [+44]
      240 GETUPVAL                         R15 6
      241 GETTABLEKS                       R15 R15 K9 ["createElement"]
      243 GETUPVAL                         R16 16
      244 DUPTABLE                         R17 K42 [{["tag"], ["imageStyle"], ["Image"] = "component_assets/dropshadow_28", ["Size"], ["ZIndex"] = 3, ["testId"]}]
      245 GETTABLEKS                       R18 R4 K43 ["knobShadow"]
      247 GETTABLEKS                       R18 R18 K18 ["tag"]
      249 SETTABLEKS                       R18 R17 K18 ["tag"]
      251 GETUPVAL                         R19 8
      252 GETTABLEKS                       R19 R19 K44 ["isBinding"]
      254 MOVE                             R20 R5
      255 CALL                             R19 1 1
      256 JUMPIFNOT                        R19 ; [+5]
      257 MOVE                             R20 R6
      258 NAMECALL                         R18 R5 K29 ["map"]
      260 CALL                             R18 2 1
      261 JUMP                             ; [+3]
      262 MOVE                             R18 R6
      263 MOVE                             R19 R5
      264 CALL                             R18 1 1
      265 SETTABLEKS                       R18 R17 K38 ["imageStyle"]
      267 GETTABLEKS                       R18 R4 K43 ["knobShadow"]
      269 GETTABLEKS                       R18 R18 K0 ["size"]
      271 SETTABLEKS                       R18 R17 K10 ["Size"]
      273 LOADK                            R19 K45 ["%*--shadow"]
      274 GETTABLEKS                       R21 R1 K26 ["testId"]
      276 NAMECALL                         R19 R19 K32 ["format"]
      278 CALL                             R19 2 1
      279 MOVE                             R18 R19
      280 SETTABLEKS                       R18 R17 K26 ["testId"]
      282 CALL                             R15 2 1
      283 JUMP                             ; [+1]
      284 LOADNIL                          R15
      285 SETTABLEKS                       R15 R14 K15 ["Shadow"]
      287 CALL                             R11 3 -1
      288 RETURN                           R11 -1

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
       58 GETTABLEKS                       R13 R0 K17 ["Utility"]
       60 GETTABLEKS                       R13 R13 K18 ["blendTransparencies"]
       62 CALL                             R12 1 1
       63 GETIMPORT                        R13 K6 [require]
       65 GETTABLEKS                       R14 R0 K17 ["Utility"]
       67 GETTABLEKS                       R14 R14 K19 ["useBindable"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K6 [require]
       72 GETTABLEKS                       R15 R0 K17 ["Utility"]
       74 GETTABLEKS                       R15 R15 K20 ["withCommonProps"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K6 [require]
       79 GETTABLEKS                       R16 R0 K17 ["Utility"]
       81 GETTABLEKS                       R16 R16 K21 ["withDefaults"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K6 [require]
       86 GETIMPORT                        R17 K1 [script]
       88 GETTABLEKS                       R17 R17 K4 ["Parent"]
       90 GETTABLEKS                       R17 R17 K22 ["useKnobVariants"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K6 [require]
       95 GETTABLEKS                       R18 R0 K23 ["Providers"]
       97 GETTABLEKS                       R18 R18 K24 ["Style"]
       99 GETTABLEKS                       R18 R18 K25 ["useTokens"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K6 [require]
      104 GETTABLEKS                       R19 R0 K23 ["Providers"]
      106 GETTABLEKS                       R19 R19 K24 ["Style"]
      108 GETTABLEKS                       R19 R19 K26 ["PresentationContext"]
      110 CALL                             R18 1 1
      111 GETTABLEKS                       R18 R18 K27 ["usePresentationContext"]
      113 GETIMPORT                        R19 K6 [require]
      115 GETTABLEKS                       R20 R0 K28 ["Enums"]
      117 GETTABLEKS                       R20 R20 K29 ["ColorMode"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K6 [require]
      122 GETTABLEKS                       R21 R0 K28 ["Enums"]
      124 GETTABLEKS                       R21 R21 K30 ["InputSize"]
      126 CALL                             R20 1 1
      127 GETIMPORT                        R21 K6 [require]
      129 GETTABLEKS                       R22 R0 K17 ["Utility"]
      131 GETTABLEKS                       R22 R22 K31 ["Flags"]
      133 CALL                             R21 1 1
      134 DUPTABLE                         R22 K39 [{["size"], ["hasShadow"] = True, ["isDisabled"] = False, ["testId"] = "--foundation-knob"}]
      135 GETTABLEKS                       R23 R20 K40 ["Medium"]
      137 SETTABLEKS                       R23 R22 K32 ["size"]
      139 DUPCLOSURE                       R23 K41 [PROTO_6]
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R22
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R21
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R9
      157 GETTABLEKS                       R24 R4 K42 ["memo"]
      159 MOVE                             R25 R23
      160 CALL                             R24 1 -1
      161 RETURN                           R24 -1
