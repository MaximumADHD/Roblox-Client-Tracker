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
       42 GETUPVAL                         R7 6
       43 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       45 NEWCLOSURE                       R8 P1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U7
       49 NEWTABLE                         R9 0 2
       51 MOVE                             R10 R4
       52 GETTABLEKS                       R11 R1 K7 ["stroke"]
       54 SETLIST                          R9 R10 2 [1]
       56 CALL                             R7 2 1
       57 GETUPVAL                         R8 6
       58 GETTABLEKS                       R8 R8 K8 ["createElement"]
       60 GETUPVAL                         R9 8
       61 GETUPVAL                         R10 9
       62 MOVE                             R11 R1
       63 DUPTABLE                         R12 K12 [{"Size", "isDisabled", "GroupTransparency"}]
       64 GETTABLEKS                       R13 R4 K4 ["knob"]
       66 GETTABLEKS                       R13 R13 K0 ["size"]
       68 SETTABLEKS                       R13 R12 K9 ["Size"]
       70 GETUPVAL                         R14 10
       71 GETTABLEKS                       R14 R14 K13 ["FoundationToggleVisualUpdate"]
       73 JUMPIFNOT                        R14 ; [+3]
       74 GETTABLEKS                       R13 R1 K10 ["isDisabled"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R13
       78 SETTABLEKS                       R13 R12 K10 ["isDisabled"]
       80 GETUPVAL                         R14 10
       81 GETTABLEKS                       R14 R14 K13 ["FoundationToggleVisualUpdate"]
       83 JUMPIFNOT                        R14 ; [+7]
       84 GETTABLEKS                       R14 R1 K10 ["isDisabled"]
       86 JUMPIFNOT                        R14 ; [+4]
       87 GETUPVAL                         R13 11
       88 GETTABLEKS                       R13 R13 K14 ["DISABLED_TRANSPARENCY"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R13
       92 SETTABLEKS                       R13 R12 K11 ["GroupTransparency"]
       94 CALL                             R10 2 1
       95 DUPTABLE                         R11 K17 [{"Icon", "Shadow"}]
       96 GETUPVAL                         R13 10
       97 GETTABLEKS                       R13 R13 K13 ["FoundationToggleVisualUpdate"]
       99 JUMPIFNOT                        R13 ; [+66]
      100 GETTABLEKS                       R13 R1 K18 ["icon"]
      102 JUMPIFNOT                        R13 ; [+63]
      103 GETUPVAL                         R12 6
      104 GETTABLEKS                       R12 R12 K8 ["createElement"]
      106 GETUPVAL                         R13 8
      107 DUPTABLE                         R14 K22 [{"tag", "Size", "ZIndex", "backgroundStyle"}]
      108 GETTABLEKS                       R15 R4 K4 ["knob"]
      110 GETTABLEKS                       R15 R15 K19 ["tag"]
      112 SETTABLEKS                       R15 R14 K19 ["tag"]
      114 SETTABLEKS                       R7 R14 K9 ["Size"]
      116 LOADN                            R15 4
      117 SETTABLEKS                       R15 R14 K20 ["ZIndex"]
      119 GETTABLEKS                       R15 R4 K23 ["iconContainer"]
      121 GETTABLEKS                       R15 R15 K21 ["backgroundStyle"]
      123 SETTABLEKS                       R15 R14 K21 ["backgroundStyle"]
      125 GETUPVAL                         R15 6
      126 GETTABLEKS                       R15 R15 K8 ["createElement"]
      128 GETUPVAL                         R16 12
      129 DUPTABLE                         R17 K27 [{"name", "variant", "style", "size", "testId"}]
      130 GETTABLEKS                       R18 R1 K18 ["icon"]
      132 GETTABLEKS                       R18 R18 K24 ["name"]
      134 SETTABLEKS                       R18 R17 K24 ["name"]
      136 GETTABLEKS                       R18 R1 K18 ["icon"]
      138 GETTABLEKS                       R18 R18 K25 ["variant"]
      140 SETTABLEKS                       R18 R17 K25 ["variant"]
      142 GETTABLEKS                       R18 R4 K4 ["knob"]
      144 GETTABLEKS                       R18 R18 K3 ["style"]
      146 SETTABLEKS                       R18 R17 K3 ["style"]
      148 GETTABLEKS                       R18 R4 K4 ["knob"]
      150 GETTABLEKS                       R18 R18 K28 ["iconSize"]
      152 SETTABLEKS                       R18 R17 K0 ["size"]
      154 LOADK                            R19 K29 ["%*--icon"]
      155 GETTABLEKS                       R21 R1 K26 ["testId"]
      157 NAMECALL                         R19 R19 K30 ["format"]
      159 CALL                             R19 2 1
      160 MOVE                             R18 R19
      161 SETTABLEKS                       R18 R17 K26 ["testId"]
      163 CALL                             R15 2 -1
      164 CALL                             R12 -1 1
      165 JUMP                             ; [+32]
      166 GETUPVAL                         R12 6
      167 GETTABLEKS                       R12 R12 K8 ["createElement"]
      169 GETUPVAL                         R13 8
      170 DUPTABLE                         R14 K31 [{"tag", "backgroundStyle", "Size", "stroke", "ZIndex", "testId"}]
      171 GETTABLEKS                       R15 R4 K4 ["knob"]
      173 GETTABLEKS                       R15 R15 K19 ["tag"]
      175 SETTABLEKS                       R15 R14 K19 ["tag"]
      177 SETTABLEKS                       R5 R14 K21 ["backgroundStyle"]
      179 SETTABLEKS                       R7 R14 K9 ["Size"]
      181 GETTABLEKS                       R15 R1 K7 ["stroke"]
      183 SETTABLEKS                       R15 R14 K7 ["stroke"]
      185 LOADN                            R15 4
      186 SETTABLEKS                       R15 R14 K20 ["ZIndex"]
      188 LOADK                            R16 K32 ["%*--circle"]
      189 GETTABLEKS                       R18 R1 K26 ["testId"]
      191 NAMECALL                         R16 R16 K30 ["format"]
      193 CALL                             R16 2 1
      194 MOVE                             R15 R16
      195 SETTABLEKS                       R15 R14 K26 ["testId"]
      197 CALL                             R12 2 1
      198 SETTABLEKS                       R12 R11 K15 ["Icon"]
      200 GETTABLEKS                       R13 R1 K33 ["hasShadow"]
      202 JUMPIFNOT                        R13 ; [+57]
      203 GETUPVAL                         R13 10
      204 GETTABLEKS                       R13 R13 K13 ["FoundationToggleVisualUpdate"]
      206 JUMPIFNOT                        R13 ; [+3]
      207 GETTABLEKS                       R13 R1 K10 ["isDisabled"]
      209 JUMPIF                           R13 ; [+50]
      210 GETUPVAL                         R12 6
      211 GETTABLEKS                       R12 R12 K8 ["createElement"]
      213 GETUPVAL                         R13 13
      214 DUPTABLE                         R14 K36 [{"tag", "imageStyle", "Image", "Size", "ZIndex", "testId"}]
      215 GETTABLEKS                       R15 R4 K37 ["knobShadow"]
      217 GETTABLEKS                       R15 R15 K19 ["tag"]
      219 SETTABLEKS                       R15 R14 K19 ["tag"]
      221 GETUPVAL                         R16 7
      222 GETTABLEKS                       R16 R16 K38 ["isBinding"]
      224 MOVE                             R17 R5
      225 CALL                             R16 1 1
      226 JUMPIFNOT                        R16 ; [+5]
      227 MOVE                             R17 R6
      228 NAMECALL                         R15 R5 K39 ["map"]
      230 CALL                             R15 2 1
      231 JUMP                             ; [+3]
      232 MOVE                             R15 R6
      233 MOVE                             R16 R5
      234 CALL                             R15 1 1
      235 SETTABLEKS                       R15 R14 K34 ["imageStyle"]
      237 LOADK                            R15 K40 ["component_assets/dropshadow_28"]
      238 SETTABLEKS                       R15 R14 K35 ["Image"]
      240 GETTABLEKS                       R15 R4 K37 ["knobShadow"]
      242 GETTABLEKS                       R15 R15 K0 ["size"]
      244 SETTABLEKS                       R15 R14 K9 ["Size"]
      246 LOADN                            R15 3
      247 SETTABLEKS                       R15 R14 K20 ["ZIndex"]
      249 LOADK                            R16 K41 ["%*--shadow"]
      250 GETTABLEKS                       R18 R1 K26 ["testId"]
      252 NAMECALL                         R16 R16 K30 ["format"]
      254 CALL                             R16 2 1
      255 MOVE                             R15 R16
      256 SETTABLEKS                       R15 R14 K26 ["testId"]
      258 CALL                             R12 2 1
      259 JUMP                             ; [+1]
      260 LOADNIL                          R12
      261 SETTABLEKS                       R12 R11 K16 ["Shadow"]
      263 CALL                             R8 3 -1
      264 RETURN                           R8 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["ReactIs"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["BuilderIcons"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R0 K10 ["Components"]
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Constants"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R5 K12 ["Image"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R5 K13 ["Icon"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R5 K14 ["View"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K6 [require]
       48 GETTABLEKS                       R11 R5 K15 ["Types"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K6 [require]
       53 GETTABLEKS                       R12 R0 K16 ["Utility"]
       55 GETTABLEKS                       R12 R12 K17 ["withCommonProps"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K6 [require]
       60 GETTABLEKS                       R13 R0 K16 ["Utility"]
       62 GETTABLEKS                       R13 R13 K18 ["withDefaults"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K6 [require]
       67 GETIMPORT                        R14 K1 [script]
       69 GETTABLEKS                       R14 R14 K4 ["Parent"]
       71 GETTABLEKS                       R14 R14 K19 ["useKnobVariants"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K6 [require]
       76 GETTABLEKS                       R15 R0 K20 ["Providers"]
       78 GETTABLEKS                       R15 R15 K21 ["Style"]
       80 GETTABLEKS                       R15 R15 K22 ["useTokens"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K6 [require]
       85 GETTABLEKS                       R16 R0 K20 ["Providers"]
       87 GETTABLEKS                       R16 R16 K21 ["Style"]
       89 GETTABLEKS                       R16 R16 K23 ["PresentationContext"]
       91 CALL                             R15 1 1
       92 GETTABLEKS                       R15 R15 K24 ["usePresentationContext"]
       94 GETIMPORT                        R16 K6 [require]
       96 GETTABLEKS                       R17 R0 K25 ["Enums"]
       98 GETTABLEKS                       R17 R17 K26 ["ColorMode"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K6 [require]
      103 GETTABLEKS                       R18 R0 K25 ["Enums"]
      105 GETTABLEKS                       R18 R18 K27 ["InputSize"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K6 [require]
      110 GETTABLEKS                       R19 R0 K16 ["Utility"]
      112 GETTABLEKS                       R19 R19 K28 ["Flags"]
      114 CALL                             R18 1 1
      115 DUPTABLE                         R19 K33 [{"size", "hasShadow", "isDisabled", "testId"}]
      116 GETTABLEKS                       R20 R17 K34 ["Medium"]
      118 SETTABLEKS                       R20 R19 K29 ["size"]
      120 LOADB                            R20 1
      121 SETTABLEKS                       R20 R19 K30 ["hasShadow"]
      123 LOADB                            R20 0
      124 SETTABLEKS                       R20 R19 K31 ["isDisabled"]
      126 LOADK                            R20 K35 ["--foundation-knob"]
      127 SETTABLEKS                       R20 R19 K32 ["testId"]
      129 DUPCLOSURE                       R20 K36 [PROTO_3]
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R7
      144 GETTABLEKS                       R21 R2 K37 ["memo"]
      146 MOVE                             R22 R20
      147 CALL                             R21 1 -1
      148 RETURN                           R21 -1
