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
       42 LOADNIL                          R7
       43 LOADNIL                          R8
       44 LOADNIL                          R9
       45 GETUPVAL                         R10 7
       46 GETTABLEKS                       R10 R10 K6 ["FoundationKnobRemoveGroupTransparency"]
       48 JUMPIFNOT                        R10 ; [+23]
       49 GETUPVAL                         R10 8
       50 GETTABLEKS                       R12 R1 K7 ["stroke"]
       52 JUMPIFNOT                        R12 ; [+5]
       53 GETTABLEKS                       R11 R1 K7 ["stroke"]
       55 GETTABLEKS                       R11 R11 K8 ["Transparency"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R11
       59 CALL                             R10 1 1
       60 MOVE                             R7 R10
       61 GETUPVAL                         R10 8
       62 MOVE                             R11 R5
       63 CALL                             R10 1 1
       64 MOVE                             R8 R10
       65 GETUPVAL                         R10 8
       66 GETTABLEKS                       R11 R4 K4 ["knob"]
       68 GETTABLEKS                       R11 R11 K3 ["style"]
       70 CALL                             R10 1 1
       71 MOVE                             R9 R10
       72 GETUPVAL                         R10 6
       73 GETTABLEKS                       R10 R10 K9 ["useMemo"]
       75 NEWCLOSURE                       R11 P1
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R1
       78 CAPTURE                          UPVAL U9
       79 NEWTABLE                         R12 0 2
       81 MOVE                             R13 R4
       82 GETTABLEKS                       R14 R1 K7 ["stroke"]
       84 SETLIST                          R12 R13 2 [1]
       86 CALL                             R10 2 1
       87 GETUPVAL                         R11 6
       88 GETTABLEKS                       R11 R11 K10 ["createElement"]
       90 GETUPVAL                         R12 10
       91 GETUPVAL                         R13 11
       92 MOVE                             R14 R1
       93 DUPTABLE                         R15 K14 [{"Size", "isDisabled", "GroupTransparency"}]
       94 GETTABLEKS                       R16 R4 K4 ["knob"]
       96 GETTABLEKS                       R16 R16 K0 ["size"]
       98 SETTABLEKS                       R16 R15 K11 ["Size"]
      100 GETUPVAL                         R17 7
      101 GETTABLEKS                       R17 R17 K15 ["FoundationToggleVisualUpdate"]
      103 JUMPIFNOT                        R17 ; [+3]
      104 GETTABLEKS                       R16 R1 K12 ["isDisabled"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R16
      108 SETTABLEKS                       R16 R15 K12 ["isDisabled"]
      110 GETUPVAL                         R17 7
      111 GETTABLEKS                       R17 R17 K6 ["FoundationKnobRemoveGroupTransparency"]
      113 JUMPIF                           R17 ; [+11]
      114 GETUPVAL                         R17 7
      115 GETTABLEKS                       R17 R17 K15 ["FoundationToggleVisualUpdate"]
      117 JUMPIFNOT                        R17 ; [+7]
      118 GETTABLEKS                       R17 R1 K12 ["isDisabled"]
      120 JUMPIFNOT                        R17 ; [+4]
      121 GETUPVAL                         R16 12
      122 GETTABLEKS                       R16 R16 K16 ["DISABLED_TRANSPARENCY"]
      124 JUMP                             ; [+1]
      125 LOADNIL                          R16
      126 SETTABLEKS                       R16 R15 K13 ["GroupTransparency"]
      128 CALL                             R13 2 1
      129 DUPTABLE                         R14 K19 [{"Icon", "Shadow"}]
      130 GETUPVAL                         R16 7
      131 GETTABLEKS                       R16 R16 K15 ["FoundationToggleVisualUpdate"]
      133 JUMPIFNOT                        R16 ; [+77]
      134 GETTABLEKS                       R16 R1 K20 ["icon"]
      136 JUMPIFNOT                        R16 ; [+74]
      137 GETUPVAL                         R15 6
      138 GETTABLEKS                       R15 R15 K10 ["createElement"]
      140 GETUPVAL                         R16 10
      141 DUPTABLE                         R17 K25 [{["tag"], ["Size"], ["ZIndex"] = 4, ["backgroundStyle"]}]
      142 GETTABLEKS                       R18 R4 K4 ["knob"]
      144 GETTABLEKS                       R18 R18 K21 ["tag"]
      146 SETTABLEKS                       R18 R17 K21 ["tag"]
      148 SETTABLEKS                       R10 R17 K11 ["Size"]
      150 GETTABLEKS                       R18 R4 K26 ["iconContainer"]
      152 GETTABLEKS                       R18 R18 K24 ["backgroundStyle"]
      154 SETTABLEKS                       R18 R17 K24 ["backgroundStyle"]
      156 GETUPVAL                         R18 6
      157 GETTABLEKS                       R18 R18 K10 ["createElement"]
      159 GETUPVAL                         R19 13
      160 DUPTABLE                         R20 K30 [{"name", "variant", "style", "size", "testId"}]
      161 GETTABLEKS                       R21 R1 K20 ["icon"]
      163 GETTABLEKS                       R21 R21 K27 ["name"]
      165 SETTABLEKS                       R21 R20 K27 ["name"]
      167 GETTABLEKS                       R21 R1 K20 ["icon"]
      169 GETTABLEKS                       R21 R21 K28 ["variant"]
      171 SETTABLEKS                       R21 R20 K28 ["variant"]
      173 GETUPVAL                         R22 7
      174 GETTABLEKS                       R22 R22 K6 ["FoundationKnobRemoveGroupTransparency"]
      176 JUMPIFNOT                        R22 ; [+10]
      177 GETTABLEKS                       R22 R1 K12 ["isDisabled"]
      179 JUMPIFNOT                        R22 ; [+7]
      180 DUPCLOSURE                       R23 K31 [PROTO_3]
      181 CAPTURE                          UPVAL U14
      182 CAPTURE                          UPVAL U12
      183 NAMECALL                         R21 R9 K32 ["map"]
      185 CALL                             R21 2 1
      186 JUMP                             ; [+4]
      187 GETTABLEKS                       R21 R4 K4 ["knob"]
      189 GETTABLEKS                       R21 R21 K3 ["style"]
      191 SETTABLEKS                       R21 R20 K3 ["style"]
      193 GETTABLEKS                       R21 R4 K4 ["knob"]
      195 GETTABLEKS                       R21 R21 K33 ["iconSize"]
      197 SETTABLEKS                       R21 R20 K0 ["size"]
      199 LOADK                            R22 K34 ["%*--icon"]
      200 GETTABLEKS                       R24 R1 K29 ["testId"]
      202 NAMECALL                         R22 R22 K35 ["format"]
      204 CALL                             R22 2 1
      205 MOVE                             R21 R22
      206 SETTABLEKS                       R21 R20 K29 ["testId"]
      208 CALL                             R18 2 -1
      209 CALL                             R15 -1 1
      210 JUMP                             ; [+60]
      211 GETUPVAL                         R15 6
      212 GETTABLEKS                       R15 R15 K10 ["createElement"]
      214 GETUPVAL                         R16 10
      215 DUPTABLE                         R17 K36 [{["tag"], ["backgroundStyle"], ["Size"], ["stroke"], ["ZIndex"] = 4, ["testId"]}]
      216 GETTABLEKS                       R18 R4 K4 ["knob"]
      218 GETTABLEKS                       R18 R18 K21 ["tag"]
      220 SETTABLEKS                       R18 R17 K21 ["tag"]
      222 GETUPVAL                         R19 7
      223 GETTABLEKS                       R19 R19 K6 ["FoundationKnobRemoveGroupTransparency"]
      225 JUMPIFNOT                        R19 ; [+10]
      226 GETTABLEKS                       R19 R1 K12 ["isDisabled"]
      228 JUMPIFNOT                        R19 ; [+7]
      229 DUPCLOSURE                       R20 K37 [PROTO_4]
      230 CAPTURE                          UPVAL U14
      231 CAPTURE                          UPVAL U12
      232 NAMECALL                         R18 R8 K32 ["map"]
      234 CALL                             R18 2 1
      235 JUMP                             ; [+1]
      236 MOVE                             R18 R5
      237 SETTABLEKS                       R18 R17 K24 ["backgroundStyle"]
      239 SETTABLEKS                       R10 R17 K11 ["Size"]
      241 GETUPVAL                         R19 7
      242 GETTABLEKS                       R19 R19 K6 ["FoundationKnobRemoveGroupTransparency"]
      244 JUMPIFNOT                        R19 ; [+12]
      245 NEWCLOSURE                       R20 P4
      246 CAPTURE                          VAL R1
      247 CAPTURE                          UPVAL U15
      248 CAPTURE                          UPVAL U14
      249 CAPTURE                          UPVAL U12
      250 NAMECALL                         R18 R7 K32 ["map"]
      252 CALL                             R18 2 1
      253 NAMECALL                         R18 R18 K38 ["getValue"]
      255 CALL                             R18 1 1
      256 JUMP                             ; [+2]
      257 GETTABLEKS                       R18 R1 K7 ["stroke"]
      259 SETTABLEKS                       R18 R17 K7 ["stroke"]
      261 LOADK                            R19 K39 ["%*--circle"]
      262 GETTABLEKS                       R21 R1 K29 ["testId"]
      264 NAMECALL                         R19 R19 K35 ["format"]
      266 CALL                             R19 2 1
      267 MOVE                             R18 R19
      268 SETTABLEKS                       R18 R17 K29 ["testId"]
      270 CALL                             R15 2 1
      271 SETTABLEKS                       R15 R14 K17 ["Icon"]
      273 GETTABLEKS                       R16 R1 K40 ["hasShadow"]
      275 JUMPIFNOT                        R16 ; [+51]
      276 GETUPVAL                         R16 7
      277 GETTABLEKS                       R16 R16 K15 ["FoundationToggleVisualUpdate"]
      279 JUMPIFNOT                        R16 ; [+3]
      280 GETTABLEKS                       R16 R1 K12 ["isDisabled"]
      282 JUMPIF                           R16 ; [+44]
      283 GETUPVAL                         R15 6
      284 GETTABLEKS                       R15 R15 K10 ["createElement"]
      286 GETUPVAL                         R16 16
      287 DUPTABLE                         R17 K45 [{["tag"], ["imageStyle"], ["Image"] = "component_assets/dropshadow_28", ["Size"], ["ZIndex"] = 3, ["testId"]}]
      288 GETTABLEKS                       R18 R4 K46 ["knobShadow"]
      290 GETTABLEKS                       R18 R18 K21 ["tag"]
      292 SETTABLEKS                       R18 R17 K21 ["tag"]
      294 GETUPVAL                         R19 9
      295 GETTABLEKS                       R19 R19 K47 ["isBinding"]
      297 MOVE                             R20 R5
      298 CALL                             R19 1 1
      299 JUMPIFNOT                        R19 ; [+5]
      300 MOVE                             R20 R6
      301 NAMECALL                         R18 R5 K32 ["map"]
      303 CALL                             R18 2 1
      304 JUMP                             ; [+3]
      305 MOVE                             R18 R6
      306 MOVE                             R19 R5
      307 CALL                             R18 1 1
      308 SETTABLEKS                       R18 R17 K41 ["imageStyle"]
      310 GETTABLEKS                       R18 R4 K46 ["knobShadow"]
      312 GETTABLEKS                       R18 R18 K0 ["size"]
      314 SETTABLEKS                       R18 R17 K11 ["Size"]
      316 LOADK                            R19 K48 ["%*--shadow"]
      317 GETTABLEKS                       R21 R1 K29 ["testId"]
      319 NAMECALL                         R19 R19 K35 ["format"]
      321 CALL                             R19 2 1
      322 MOVE                             R18 R19
      323 SETTABLEKS                       R18 R17 K29 ["testId"]
      325 CALL                             R15 2 1
      326 JUMP                             ; [+1]
      327 LOADNIL                          R15
      328 SETTABLEKS                       R15 R14 K18 ["Shadow"]
      330 CALL                             R11 3 -1
      331 RETURN                           R11 -1

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
      147 CAPTURE                          VAL R21
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R9
      157 GETTABLEKS                       R24 R4 K42 ["memo"]
      159 MOVE                             R25 R23
      160 CALL                             R24 1 -1
      161 RETURN                           R24 -1
