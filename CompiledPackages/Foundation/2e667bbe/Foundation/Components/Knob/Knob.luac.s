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
       13 JUMPIFNOT                        R7 ; [+2]
       14 GETTABLEKS                       R7 R3 K1 ["isInverse"]
       16 CALL                             R4 3 1
       17 GETTABLEKS                       R5 R1 K2 ["style"]
       19 JUMPIF                           R5 ; [+4]
       20 GETTABLEKS                       R6 R4 K3 ["knob"]
       22 GETTABLEKS                       R5 R6 K2 ["style"]
       24 GETUPVAL                         R7 5
       25 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R8 0 1
       31 MOVE                             R9 R2
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R8 5
       36 GETTABLEKS                       R7 R8 K5 ["useMemo"]
       38 NEWCLOSURE                       R8 P1
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U6
       42 NEWTABLE                         R9 0 2
       44 MOVE                             R10 R4
       45 GETTABLEKS                       R11 R1 K6 ["stroke"]
       47 SETLIST                          R9 R10 2 [1]
       49 CALL                             R7 2 1
       50 GETUPVAL                         R9 5
       51 GETTABLEKS                       R8 R9 K7 ["createElement"]
       53 GETUPVAL                         R9 7
       54 GETUPVAL                         R10 8
       55 MOVE                             R11 R1
       56 DUPTABLE                         R12 K11 [{"Size", "isDisabled", "GroupTransparency"}]
       57 GETTABLEKS                       R14 R4 K3 ["knob"]
       59 GETTABLEKS                       R13 R14 K0 ["size"]
       61 SETTABLEKS                       R13 R12 K8 ["Size"]
       63 GETUPVAL                         R15 9
       64 GETTABLEKS                       R14 R15 K12 ["FoundationUpdateKnobComponent"]
       66 JUMPIFNOT                        R14 ; [+3]
       67 GETTABLEKS                       R13 R1 K9 ["isDisabled"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R13
       71 SETTABLEKS                       R13 R12 K9 ["isDisabled"]
       73 GETUPVAL                         R15 9
       74 GETTABLEKS                       R14 R15 K12 ["FoundationUpdateKnobComponent"]
       76 JUMPIFNOT                        R14 ; [+7]
       77 GETTABLEKS                       R14 R1 K9 ["isDisabled"]
       79 JUMPIFNOT                        R14 ; [+4]
       80 GETUPVAL                         R14 10
       81 GETTABLEKS                       R13 R14 K13 ["DISABLED_TRANSPARENCY"]
       83 JUMP                             ; [+1]
       84 LOADNIL                          R13
       85 SETTABLEKS                       R13 R12 K10 ["GroupTransparency"]
       87 CALL                             R10 2 1
       88 DUPTABLE                         R11 K16 [{"Icon", "Shadow"}]
       89 GETUPVAL                         R14 9
       90 GETTABLEKS                       R13 R14 K12 ["FoundationUpdateKnobComponent"]
       92 JUMPIFNOT                        R13 ; [+66]
       93 GETTABLEKS                       R13 R1 K17 ["icon"]
       95 JUMPIFNOT                        R13 ; [+63]
       96 GETUPVAL                         R13 5
       97 GETTABLEKS                       R12 R13 K7 ["createElement"]
       99 GETUPVAL                         R13 7
      100 DUPTABLE                         R14 K21 [{"tag", "Size", "ZIndex", "backgroundStyle"}]
      101 GETTABLEKS                       R16 R4 K3 ["knob"]
      103 GETTABLEKS                       R15 R16 K18 ["tag"]
      105 SETTABLEKS                       R15 R14 K18 ["tag"]
      107 SETTABLEKS                       R7 R14 K8 ["Size"]
      109 LOADN                            R15 4
      110 SETTABLEKS                       R15 R14 K19 ["ZIndex"]
      112 GETTABLEKS                       R16 R4 K22 ["iconContainer"]
      114 GETTABLEKS                       R15 R16 K20 ["backgroundStyle"]
      116 SETTABLEKS                       R15 R14 K20 ["backgroundStyle"]
      118 GETUPVAL                         R16 5
      119 GETTABLEKS                       R15 R16 K7 ["createElement"]
      121 GETUPVAL                         R16 11
      122 DUPTABLE                         R17 K26 [{"name", "variant", "style", "size", "testId"}]
      123 GETTABLEKS                       R19 R1 K17 ["icon"]
      125 GETTABLEKS                       R18 R19 K23 ["name"]
      127 SETTABLEKS                       R18 R17 K23 ["name"]
      129 GETTABLEKS                       R19 R1 K17 ["icon"]
      131 GETTABLEKS                       R18 R19 K24 ["variant"]
      133 SETTABLEKS                       R18 R17 K24 ["variant"]
      135 GETTABLEKS                       R19 R4 K3 ["knob"]
      137 GETTABLEKS                       R18 R19 K2 ["style"]
      139 SETTABLEKS                       R18 R17 K2 ["style"]
      141 GETTABLEKS                       R19 R4 K3 ["knob"]
      143 GETTABLEKS                       R18 R19 K27 ["iconSize"]
      145 SETTABLEKS                       R18 R17 K0 ["size"]
      147 LOADK                            R19 K28 ["%*--icon"]
      148 GETTABLEKS                       R21 R1 K25 ["testId"]
      150 NAMECALL                         R19 R19 K29 ["format"]
      152 CALL                             R19 2 1
      153 MOVE                             R18 R19
      154 SETTABLEKS                       R18 R17 K25 ["testId"]
      156 CALL                             R15 2 -1
      157 CALL                             R12 -1 1
      158 JUMP                             ; [+32]
      159 GETUPVAL                         R13 5
      160 GETTABLEKS                       R12 R13 K7 ["createElement"]
      162 GETUPVAL                         R13 7
      163 DUPTABLE                         R14 K30 [{"tag", "backgroundStyle", "Size", "stroke", "ZIndex", "testId"}]
      164 GETTABLEKS                       R16 R4 K3 ["knob"]
      166 GETTABLEKS                       R15 R16 K18 ["tag"]
      168 SETTABLEKS                       R15 R14 K18 ["tag"]
      170 SETTABLEKS                       R5 R14 K20 ["backgroundStyle"]
      172 SETTABLEKS                       R7 R14 K8 ["Size"]
      174 GETTABLEKS                       R15 R1 K6 ["stroke"]
      176 SETTABLEKS                       R15 R14 K6 ["stroke"]
      178 LOADN                            R15 4
      179 SETTABLEKS                       R15 R14 K19 ["ZIndex"]
      181 LOADK                            R16 K31 ["%*--circle"]
      182 GETTABLEKS                       R18 R1 K25 ["testId"]
      184 NAMECALL                         R16 R16 K29 ["format"]
      186 CALL                             R16 2 1
      187 MOVE                             R15 R16
      188 SETTABLEKS                       R15 R14 K25 ["testId"]
      190 CALL                             R12 2 1
      191 SETTABLEKS                       R12 R11 K14 ["Icon"]
      193 GETTABLEKS                       R13 R1 K32 ["hasShadow"]
      195 JUMPIFNOT                        R13 ; [+57]
      196 GETUPVAL                         R14 9
      197 GETTABLEKS                       R13 R14 K12 ["FoundationUpdateKnobComponent"]
      199 JUMPIFNOT                        R13 ; [+3]
      200 GETTABLEKS                       R13 R1 K9 ["isDisabled"]
      202 JUMPIF                           R13 ; [+50]
      203 GETUPVAL                         R13 5
      204 GETTABLEKS                       R12 R13 K7 ["createElement"]
      206 GETUPVAL                         R13 12
      207 DUPTABLE                         R14 K35 [{"tag", "imageStyle", "Image", "Size", "ZIndex", "testId"}]
      208 GETTABLEKS                       R16 R4 K36 ["knobShadow"]
      210 GETTABLEKS                       R15 R16 K18 ["tag"]
      212 SETTABLEKS                       R15 R14 K18 ["tag"]
      214 GETUPVAL                         R17 6
      215 GETTABLEKS                       R16 R17 K37 ["isBinding"]
      217 MOVE                             R17 R5
      218 CALL                             R16 1 1
      219 JUMPIFNOT                        R16 ; [+5]
      220 MOVE                             R17 R6
      221 NAMECALL                         R15 R5 K38 ["map"]
      223 CALL                             R15 2 1
      224 JUMP                             ; [+3]
      225 MOVE                             R15 R6
      226 MOVE                             R16 R5
      227 CALL                             R15 1 1
      228 SETTABLEKS                       R15 R14 K33 ["imageStyle"]
      230 LOADK                            R15 K39 ["component_assets/dropshadow_28"]
      231 SETTABLEKS                       R15 R14 K34 ["Image"]
      233 GETTABLEKS                       R16 R4 K36 ["knobShadow"]
      235 GETTABLEKS                       R15 R16 K0 ["size"]
      237 SETTABLEKS                       R15 R14 K8 ["Size"]
      239 LOADN                            R15 3
      240 SETTABLEKS                       R15 R14 K19 ["ZIndex"]
      242 LOADK                            R16 K40 ["%*--shadow"]
      243 GETTABLEKS                       R18 R1 K25 ["testId"]
      245 NAMECALL                         R16 R16 K29 ["format"]
      247 CALL                             R16 2 1
      248 MOVE                             R15 R16
      249 SETTABLEKS                       R15 R14 K25 ["testId"]
      251 CALL                             R12 2 1
      252 JUMP                             ; [+1]
      253 LOADNIL                          R12
      254 SETTABLEKS                       R12 R11 K15 ["Shadow"]
      256 CALL                             R8 3 -1
      257 RETURN                           R8 -1

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
       53 GETTABLEKS                       R13 R0 K16 ["Utility"]
       55 GETTABLEKS                       R12 R13 K17 ["withCommonProps"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K6 [require]
       60 GETTABLEKS                       R14 R0 K16 ["Utility"]
       62 GETTABLEKS                       R13 R14 K18 ["withDefaults"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K6 [require]
       67 GETIMPORT                        R16 K1 [script]
       69 GETTABLEKS                       R15 R16 K4 ["Parent"]
       71 GETTABLEKS                       R14 R15 K19 ["useKnobVariants"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K6 [require]
       76 GETTABLEKS                       R17 R0 K20 ["Providers"]
       78 GETTABLEKS                       R16 R17 K21 ["Style"]
       80 GETTABLEKS                       R15 R16 K22 ["useTokens"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R16 K6 [require]
       85 GETTABLEKS                       R19 R0 K20 ["Providers"]
       87 GETTABLEKS                       R18 R19 K21 ["Style"]
       89 GETTABLEKS                       R17 R18 K23 ["PresentationContext"]
       91 CALL                             R16 1 1
       92 GETTABLEKS                       R15 R16 K24 ["usePresentationContext"]
       94 GETIMPORT                        R16 K6 [require]
       96 GETTABLEKS                       R18 R0 K25 ["Enums"]
       98 GETTABLEKS                       R17 R18 K26 ["InputSize"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K6 [require]
      103 GETTABLEKS                       R19 R0 K16 ["Utility"]
      105 GETTABLEKS                       R18 R19 K27 ["Flags"]
      107 CALL                             R17 1 1
      108 DUPTABLE                         R18 K32 [{"size", "hasShadow", "isDisabled", "testId"}]
      109 GETTABLEKS                       R19 R16 K33 ["Medium"]
      111 SETTABLEKS                       R19 R18 K28 ["size"]
      113 LOADB                            R19 1
      114 SETTABLEKS                       R19 R18 K29 ["hasShadow"]
      116 LOADB                            R19 0
      117 SETTABLEKS                       R19 R18 K30 ["isDisabled"]
      119 LOADK                            R19 K34 ["--foundation-knob"]
      120 SETTABLEKS                       R19 R18 K31 ["testId"]
      122 DUPCLOSURE                       R19 K35 [PROTO_3]
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R7
      136 GETTABLEKS                       R20 R2 K36 ["memo"]
      138 MOVE                             R21 R19
      139 CALL                             R20 1 -1
      140 RETURN                           R20 -1
